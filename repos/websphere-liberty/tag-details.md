<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `websphere-liberty`

-	[`websphere-liberty:beta`](#websphere-libertybeta)
-	[`websphere-liberty:javaee7`](#websphere-libertyjavaee7)
-	[`websphere-liberty:javaee8`](#websphere-libertyjavaee8)
-	[`websphere-liberty:kernel`](#websphere-libertykernel)
-	[`websphere-liberty:latest`](#websphere-libertylatest)
-	[`websphere-liberty:microProfile`](#websphere-libertymicroprofile)
-	[`websphere-liberty:springBoot1`](#websphere-libertyspringboot1)
-	[`websphere-liberty:springBoot2`](#websphere-libertyspringboot2)
-	[`websphere-liberty:webProfile7`](#websphere-libertywebprofile7)
-	[`websphere-liberty:webProfile8`](#websphere-libertywebprofile8)

## `websphere-liberty:beta`

```console
$ docker pull websphere-liberty@sha256:d7ccd36457813a53000ed55ff12f90028fe5e03436c3faacd188d51c0177c5b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:beta` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:881f276a4f4d5656831c31f73b855541964218cba51af4a70c7a0783c3c5214b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.3 MB (273283156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6081fdc680ba8ae1a72b418cacb2dda942ca15336e2ae301826367a8d045ed6`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 26 Jul 2018 22:23:08 GMT
ADD file:204fb7ccb19ff7e863331131138621ff4d22720b3718e8f296902cc7d4f635b5 in / 
# Thu, 26 Jul 2018 22:23:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:23:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:23:11 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:14:00 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 26 Jul 2018 23:14:13 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 13 Aug 2018 22:21:13 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Mon, 13 Aug 2018 22:22:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 13 Aug 2018 22:22:05 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Mon, 13 Aug 2018 23:17:21 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Mon, 13 Aug 2018 23:17:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 13 Aug 2018 23:33:01 GMT
ENV LIBERTY_VERSION=2018.8.0_0
# Mon, 13 Aug 2018 23:33:19 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Mon, 13 Aug 2018 23:33:20 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Aug 2018 23:33:20 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 13 Aug 2018 23:33:21 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Mon, 13 Aug 2018 23:33:23 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 13 Aug 2018 23:33:23 GMT
COPY file:3b23d7d17672e2c49786942609f319a90591738e9dfd67f95b1df374561c29ce in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Mon, 13 Aug 2018 23:33:23 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 13 Aug 2018 23:33:23 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:8ee29e426c26c79e7ba03ccc8bbc7fe99db00ffcbccb679d9c643b5546d8dc8a`  
		Last Modified: Thu, 26 Jul 2018 22:27:22 GMT  
		Size: 43.2 MB (43228646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e83b260b73b908ebabde46b72fc5790bf4f029b53acbbfe35da8ff8fba795ac`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26b65fd1143ee4f9b7b6b958aeafdb996172d10b723f0bba24335a8f7ae692c`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dca07f8222e24aab97f026444d66a7604e4ae2b708cf079ff67a90c42efa60`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420ae9e10b3f6a74f527914bc3c766b128435a62eca1061f41167205d5b0230`  
		Last Modified: Thu, 26 Jul 2018 22:26:54 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0a3902ea56575347cec98de9cdea35051edefa24d67eccb50d1883d1343fdb`  
		Last Modified: Thu, 26 Jul 2018 23:22:16 GMT  
		Size: 3.0 MB (3021010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01da43ccf6625a7f02104b7b1e0d7d5830af2342d2325f3b602cb0348daf11a4`  
		Last Modified: Mon, 13 Aug 2018 22:28:41 GMT  
		Size: 127.7 MB (127680807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112122e37aaf233d36dffe8730b9e40099be847317cdaf295eabe7103c28ca29`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 422.3 KB (422323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ab4f9b1981e28c9652056810ec3910f5d8294bf7af509487cfe14520577100`  
		Last Modified: Mon, 13 Aug 2018 23:38:30 GMT  
		Size: 98.9 MB (98925650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9046418943eec8e122db6c983b79f54da47d08d26e7abc0a313a6741781148ea`  
		Last Modified: Mon, 13 Aug 2018 23:38:16 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463ddbc8d1b195268ee7e64384d5ead0a349e7546354d9de980b06b2c64755c7`  
		Last Modified: Mon, 13 Aug 2018 23:38:17 GMT  
		Size: 1.6 KB (1619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c05a811be444d41b933a9b48274316ce64648f5d164d3b5b1d0f1725cabcc6`  
		Last Modified: Mon, 13 Aug 2018 23:38:16 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:beta` - linux; 386

```console
$ docker pull websphere-liberty@sha256:dcdab7f3c707dccd8c99300b44c9e10db48f0b127a03e8eae51de3c5dad3619a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.6 MB (261551311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e67440753d2d09ca6014bdd6f7e35a7e2945ecbc514f27e5166fbe4ca90779a1`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Jul 2018 11:04:12 GMT
ADD file:bf213ed5365ee4c9a7f64ec5c337df6779168f609a0fb0ddd2cdf558df419aca in / 
# Fri, 27 Jul 2018 11:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 11:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 11:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 11:04:16 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 11:38:49 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 27 Jul 2018 11:39:16 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 11:11:05 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Tue, 14 Aug 2018 11:11:55 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 14 Aug 2018 11:11:55 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 14 Aug 2018 11:41:00 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 14 Aug 2018 11:41:18 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 11:54:30 GMT
ENV LIBERTY_VERSION=2018.8.0_0
# Tue, 14 Aug 2018 11:54:48 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Tue, 14 Aug 2018 11:54:48 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 11:54:49 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 14 Aug 2018 11:54:49 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 14 Aug 2018 11:54:51 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 14 Aug 2018 11:54:52 GMT
COPY file:3b23d7d17672e2c49786942609f319a90591738e9dfd67f95b1df374561c29ce in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Tue, 14 Aug 2018 11:54:52 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 14 Aug 2018 11:54:52 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:79c3321cd1db5170b2b17e4e7904e999afc88c5ba9168e6632c722f0ced80f2b`  
		Last Modified: Fri, 27 Jul 2018 11:08:03 GMT  
		Size: 43.5 MB (43498084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc08ce9a961adeec10d1eadfa16bc1cb9d2f8994e5d43432500a75cfaa09c6c`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d8c15b299b1de7aa1b6fb37d83b146c59e520ce7bfc25254544262ca705b48`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a97a3925b890b18279fac470160ce2e973a10ef456dce7d174780d4e24550f3`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c844083148ae3343326e2b07dc524e55fee4f261a1637e68ac86a32b97c4ce16`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a671001a55a0ce3af1d3064a1d7f01929b03423102de31cd7a87dd86f9751cd1`  
		Last Modified: Fri, 27 Jul 2018 11:43:11 GMT  
		Size: 2.9 MB (2875978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf1c7d8d3570a128e852fb2ae238df36286ff940f972ef1e06ddf48c532eb1d`  
		Last Modified: Tue, 14 Aug 2018 11:14:55 GMT  
		Size: 115.8 MB (115826066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c236c11960c0afaa57e2847a219cb26308cc4cd5a8c1b49e99454bd6cfb041b8`  
		Last Modified: Tue, 14 Aug 2018 11:55:16 GMT  
		Size: 420.9 KB (420854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a79d050ccbcd92226ff5efdd9972442c48fc3ac5d7b084ef328bd004f6af954`  
		Last Modified: Tue, 14 Aug 2018 11:59:54 GMT  
		Size: 98.9 MB (98925652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e51ee2ece134272b2f838692fcad370535ef87b2b5ce906e1330a5fed76d3fe`  
		Last Modified: Tue, 14 Aug 2018 11:59:39 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528fc60898b732bf2d98a3770d78146b1c49edd97fadd24e6e723eab52ce67ef`  
		Last Modified: Tue, 14 Aug 2018 11:59:40 GMT  
		Size: 1.6 KB (1619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064debbe07f0f477c94182dd55d545c553537b72a5164c2dff27739652a537bf`  
		Last Modified: Tue, 14 Aug 2018 11:59:39 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:beta` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:1bd1a309f898213aa7e6d37d63392cc8ed663680f2a90b1cadc306baf8bdda05
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.9 MB (288856854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dd286f35aee0e63cf2ddd230ac8b376e9052917f5eff27f80c8b922c8922e67`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 17 Jul 2018 11:24:32 GMT
ADD file:93b9efc61400dd63da35d3bdf0a8937a0e869256c0a1448918c67d8dd4bb9a44 in / 
# Tue, 17 Jul 2018 11:24:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:24:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:24:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:25:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:25:09 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 20:11:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 17 Jul 2018 20:11:32 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 09:12:38 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Tue, 14 Aug 2018 09:15:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 14 Aug 2018 09:15:14 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 14 Aug 2018 10:42:38 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 14 Aug 2018 10:43:05 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 11:02:01 GMT
ENV LIBERTY_VERSION=2018.8.0_0
# Tue, 14 Aug 2018 11:04:05 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Tue, 14 Aug 2018 11:04:06 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 11:04:07 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 14 Aug 2018 11:04:13 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 14 Aug 2018 11:04:26 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 14 Aug 2018 11:04:28 GMT
COPY file:3b23d7d17672e2c49786942609f319a90591738e9dfd67f95b1df374561c29ce in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Tue, 14 Aug 2018 11:04:31 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 14 Aug 2018 11:04:32 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:1d42d48bcb676f02dfc09c86eb381bee74fb84bdad7247d643311c55e97b03e1`  
		Last Modified: Tue, 17 Jul 2018 11:28:58 GMT  
		Size: 45.5 MB (45543237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7257a0c84303a4e1bc7b272c1795b237b5a819780dc3ee848bd9aa516c0833`  
		Last Modified: Tue, 17 Jul 2018 11:28:44 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8d824019e9337c4643bb01728d9d6d1dce98f3db1b568a0db0ece041f5d4f9`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795728728939c3ed0a7b959cf48ae72dcbab4d7b2bf437b3bead8ddd238ca995`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5d42ebe2b0960d616db6b6868bb1f7f47842478d500b1e5d783fa2b2baf876`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7946b06c85eb566d0b328fd27ed4fa31e7603df969091339b9fdd0b138f0a90c`  
		Last Modified: Tue, 17 Jul 2018 20:27:29 GMT  
		Size: 2.9 MB (2880626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb44982ef279dae05091f0cb16ce63dc3db69aa358cb51a9726564901c31390`  
		Last Modified: Tue, 14 Aug 2018 09:25:05 GMT  
		Size: 141.0 MB (141049504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423488ee12fa4eee7a8d264c5813f321144aa3101435766b6f1b38c69d78abc0`  
		Last Modified: Tue, 14 Aug 2018 11:05:15 GMT  
		Size: 453.1 KB (453068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f85115af06ede6dc61b83959706302ea9b1697a7944a114d4546c9a3b628f8a`  
		Last Modified: Tue, 14 Aug 2018 11:09:15 GMT  
		Size: 98.9 MB (98925567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e09120956f1689efa904b9318ed719f622730bba227cebd3a56d3631ee6ecdcb`  
		Last Modified: Tue, 14 Aug 2018 11:09:03 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026470727799ef155895105a62bd4e7495b94e49fcbcad601cdddabe2cb9c905`  
		Last Modified: Tue, 14 Aug 2018 11:09:02 GMT  
		Size: 1.7 KB (1671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f21d457377008bf1e15d08b8b35b13e2abd733b00b46cccdd34b8faa8d489e8f`  
		Last Modified: Tue, 14 Aug 2018 11:09:03 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:beta` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:91a4cb1ee10eab96f1fd8cc6a2ad97120dfac7b1e4523369fe957930d0d154b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.3 MB (271313046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d49ff94a11029636826720ba6f11bb1968dfc5e6ae3032004850cdc7f2e33cc5`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Jul 2018 12:59:42 GMT
ADD file:3370b396b7b93b08d1f609f06e321c05d930dc00cb6ae8f0f65d4ed39166245b in / 
# Fri, 27 Jul 2018 12:59:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:59:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:59:44 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:59:45 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:59:45 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:16:38 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 27 Jul 2018 13:16:46 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 12:17:25 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Tue, 14 Aug 2018 12:18:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 14 Aug 2018 12:18:06 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 14 Aug 2018 12:42:37 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 14 Aug 2018 12:42:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 12:58:10 GMT
ENV LIBERTY_VERSION=2018.8.0_0
# Tue, 14 Aug 2018 12:58:25 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Tue, 14 Aug 2018 12:58:26 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 12:58:26 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 14 Aug 2018 12:58:26 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 14 Aug 2018 12:58:28 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 14 Aug 2018 12:58:28 GMT
COPY file:3b23d7d17672e2c49786942609f319a90591738e9dfd67f95b1df374561c29ce in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Tue, 14 Aug 2018 12:58:28 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 14 Aug 2018 12:58:28 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:3c676c78c45c4416ba6a9c1bcadd5156f03d0bca9e31f85fc01fca458930cfd5`  
		Last Modified: Fri, 27 Jul 2018 13:01:00 GMT  
		Size: 42.2 MB (42233178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a735e77c595422e7ecd0ca0e6359ba21a9769b86c1b6231aebfe8feacd95dcc7`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccb796144ba65e756e8cdfdf093072cbe9255706f96d95aad84fa242f1afb41`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe28213b67e6813cbc89ec0b7034fb71c4896077f9cbfab52de63f4c0201fc1e`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aefcb4b684bed9db0f7491ecade1c76f4268b4216658445ffa9942809ea5299d`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38506499c0863fa74e87358752273bd0f6b80ed1a533dfbbf8106533b5cfa2b`  
		Last Modified: Fri, 27 Jul 2018 13:19:25 GMT  
		Size: 2.8 MB (2764795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b7c9c3592488d9c92e4304ffa5ed6cba0528fe123f114e9070ad9ca2a61d8c`  
		Last Modified: Tue, 14 Aug 2018 12:20:37 GMT  
		Size: 127.0 MB (126957355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073576dab032cab1aacb1ad08982bb8fb96c5daf60d793b889ed219a089dca3e`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 427.5 KB (427473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b773b9ab17557106cf4b86b9d07d3c9591c35304bc931e55f6e4d55ecca6c5`  
		Last Modified: Tue, 14 Aug 2018 13:01:29 GMT  
		Size: 98.9 MB (98925614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f821e8f1970e090935b8b8568866665edd29aa955e6824ed4dbc253a5aee99e1`  
		Last Modified: Tue, 14 Aug 2018 13:01:14 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1afe59d852e6384ea0bc6263d9e029a3d371639903054eac56170d20cabfc97`  
		Last Modified: Tue, 14 Aug 2018 13:01:15 GMT  
		Size: 1.6 KB (1615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfde408b0b109faa117c9abef079134a6bbc80b5288e247e25a13728cce91264`  
		Last Modified: Tue, 14 Aug 2018 13:01:13 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:javaee7`

```console
$ docker pull websphere-liberty@sha256:9b17634a0e1b70489bdbe167aa0682d927e1527279a15f7a17585445d4ce2ada
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:javaee7` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:4e77d19811f284d31c8e2bc3ce55ca4fc8849f2b25caa673fa42045be2ec7ce5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.6 MB (300569603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a04ee401c6ab8117e754ce220100dc5c80a09c6914d247d16516310a6993012f`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 26 Jul 2018 22:23:08 GMT
ADD file:204fb7ccb19ff7e863331131138621ff4d22720b3718e8f296902cc7d4f635b5 in / 
# Thu, 26 Jul 2018 22:23:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:23:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:23:11 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:14:00 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 26 Jul 2018 23:14:13 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 13 Aug 2018 22:21:13 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Mon, 13 Aug 2018 22:22:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 13 Aug 2018 22:22:05 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Mon, 13 Aug 2018 23:17:21 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Mon, 13 Aug 2018 23:17:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 13 Aug 2018 23:17:38 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Mon, 13 Aug 2018 23:17:38 GMT
ARG LIBERTY_URL
# Mon, 13 Aug 2018 23:17:39 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 13 Aug 2018 23:17:43 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 13 Aug 2018 23:17:44 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Aug 2018 23:17:44 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Mon, 13 Aug 2018 23:17:44 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 13 Aug 2018 23:17:45 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Mon, 13 Aug 2018 23:17:47 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 13 Aug 2018 23:17:47 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Mon, 13 Aug 2018 23:17:48 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 13 Aug 2018 23:17:48 GMT
ENV KEYSTORE_REQUIRED=true
# Mon, 13 Aug 2018 23:17:48 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Mon, 13 Aug 2018 23:17:48 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Mon, 13 Aug 2018 23:18:39 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 13 Aug 2018 23:27:42 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Mon, 13 Aug 2018 23:27:42 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Mon, 13 Aug 2018 23:28:03 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:8ee29e426c26c79e7ba03ccc8bbc7fe99db00ffcbccb679d9c643b5546d8dc8a`  
		Last Modified: Thu, 26 Jul 2018 22:27:22 GMT  
		Size: 43.2 MB (43228646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e83b260b73b908ebabde46b72fc5790bf4f029b53acbbfe35da8ff8fba795ac`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26b65fd1143ee4f9b7b6b958aeafdb996172d10b723f0bba24335a8f7ae692c`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dca07f8222e24aab97f026444d66a7604e4ae2b708cf079ff67a90c42efa60`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420ae9e10b3f6a74f527914bc3c766b128435a62eca1061f41167205d5b0230`  
		Last Modified: Thu, 26 Jul 2018 22:26:54 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0a3902ea56575347cec98de9cdea35051edefa24d67eccb50d1883d1343fdb`  
		Last Modified: Thu, 26 Jul 2018 23:22:16 GMT  
		Size: 3.0 MB (3021010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01da43ccf6625a7f02104b7b1e0d7d5830af2342d2325f3b602cb0348daf11a4`  
		Last Modified: Mon, 13 Aug 2018 22:28:41 GMT  
		Size: 127.7 MB (127680807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112122e37aaf233d36dffe8730b9e40099be847317cdaf295eabe7103c28ca29`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 422.3 KB (422323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34cc873fb8227d589bcff22c347867fa1ad45ef857e6713d1dc72e8005bf2a1`  
		Last Modified: Mon, 13 Aug 2018 23:33:50 GMT  
		Size: 12.5 MB (12494055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3acc1083d068ca97baf77794d1f1d1bd49daa4212155b8b272d75dbb4858f07`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b6ba759a53614c07247e87c087c69d0eb399b3201390c23c1181d9a37567b1`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 644.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233bcd4d4732830f99144a25500a9ed00458a61b9aed7d89250d7c7f9d23e205`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9520b6205b6f1ff3d6bce31a938adb912eeb256136c5fccaa6f7e2dd8c505c50`  
		Last Modified: Mon, 13 Aug 2018 23:36:16 GMT  
		Size: 97.9 MB (97938063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81497fbfb6639aa4221ca9988195abab6acb2da78380011724dc1b325e4330d2`  
		Last Modified: Mon, 13 Aug 2018 23:36:02 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c168a37157ff4a5da8e9fc7c7294829a53b3da82522cb9749e13b37529b804ab`  
		Last Modified: Mon, 13 Aug 2018 23:36:08 GMT  
		Size: 15.8 MB (15779473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee7` - linux; 386

```console
$ docker pull websphere-liberty@sha256:32c2eb05eb6d013d1d5da814a3a95276c4cd4c611bab5bbe7a1e2b247c38b515
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.2 MB (289246397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:086def8c4530a6de1b7e3d206abd05f94fe184fc1204516fd30a0b33e7973d20`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Jul 2018 11:04:12 GMT
ADD file:bf213ed5365ee4c9a7f64ec5c337df6779168f609a0fb0ddd2cdf558df419aca in / 
# Fri, 27 Jul 2018 11:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 11:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 11:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 11:04:16 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 11:38:49 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 27 Jul 2018 11:39:16 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 11:11:05 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Tue, 14 Aug 2018 11:11:55 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 14 Aug 2018 11:11:55 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 14 Aug 2018 11:41:00 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 14 Aug 2018 11:41:18 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 11:41:18 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 14 Aug 2018 11:41:18 GMT
ARG LIBERTY_URL
# Tue, 14 Aug 2018 11:41:18 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 14 Aug 2018 11:41:23 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 14 Aug 2018 11:41:23 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 11:41:24 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 14 Aug 2018 11:41:24 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 14 Aug 2018 11:41:25 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 14 Aug 2018 11:41:26 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 14 Aug 2018 11:41:27 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 14 Aug 2018 11:41:27 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 14 Aug 2018 11:41:27 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 14 Aug 2018 11:41:27 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 14 Aug 2018 11:41:28 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 14 Aug 2018 11:41:44 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 14 Aug 2018 11:49:10 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 14 Aug 2018 11:49:10 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Tue, 14 Aug 2018 11:49:31 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:79c3321cd1db5170b2b17e4e7904e999afc88c5ba9168e6632c722f0ced80f2b`  
		Last Modified: Fri, 27 Jul 2018 11:08:03 GMT  
		Size: 43.5 MB (43498084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc08ce9a961adeec10d1eadfa16bc1cb9d2f8994e5d43432500a75cfaa09c6c`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d8c15b299b1de7aa1b6fb37d83b146c59e520ce7bfc25254544262ca705b48`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a97a3925b890b18279fac470160ce2e973a10ef456dce7d174780d4e24550f3`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c844083148ae3343326e2b07dc524e55fee4f261a1637e68ac86a32b97c4ce16`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a671001a55a0ce3af1d3064a1d7f01929b03423102de31cd7a87dd86f9751cd1`  
		Last Modified: Fri, 27 Jul 2018 11:43:11 GMT  
		Size: 2.9 MB (2875978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf1c7d8d3570a128e852fb2ae238df36286ff940f972ef1e06ddf48c532eb1d`  
		Last Modified: Tue, 14 Aug 2018 11:14:55 GMT  
		Size: 115.8 MB (115826066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c236c11960c0afaa57e2847a219cb26308cc4cd5a8c1b49e99454bd6cfb041b8`  
		Last Modified: Tue, 14 Aug 2018 11:55:16 GMT  
		Size: 420.9 KB (420854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88c78c385e77906144318dfac59e3a218eafd81d7816a51c21526ad68a6bcfc`  
		Last Modified: Tue, 14 Aug 2018 11:55:18 GMT  
		Size: 12.5 MB (12494063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f43e525757c1e0afb6a0d13ce4244001ef5f606abdebaf3c06e453ab295bc01`  
		Last Modified: Tue, 14 Aug 2018 11:55:15 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3891494cacfb98e93f4cd252fa3b22f383f7e177701d87452d41c46a4ced3c`  
		Last Modified: Tue, 14 Aug 2018 11:55:15 GMT  
		Size: 643.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1caf93ce53d1d37e6bf605f2fc3b2747253c58b2799060ac66a0f8e3df5d32a`  
		Last Modified: Tue, 14 Aug 2018 11:55:16 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f58a66fe425e36e122e5099a0f0b249df25cca69142b5189d693a979eefaa8f`  
		Last Modified: Tue, 14 Aug 2018 11:57:37 GMT  
		Size: 97.9 MB (97938042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ccb1617579add96bea3b816478fce15953aee61fe2a17998c5edffbbe5c683`  
		Last Modified: Tue, 14 Aug 2018 11:57:24 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170574cbd15dcfbf1bf6820a55efa344c010a38165764baf20380d7ab3ba8e65`  
		Last Modified: Tue, 14 Aug 2018 11:57:30 GMT  
		Size: 16.2 MB (16188128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee7` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:d68b41a3af1e775ff83f45eb3506d335dde2e35e54bbc5c544afa0882a5b10a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.0 MB (316037813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2afa0ffaabe1abd6f4ddd7e27f28d15dcff663bc9b66b461b0fba038ebaf79d7`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 17 Jul 2018 11:24:32 GMT
ADD file:93b9efc61400dd63da35d3bdf0a8937a0e869256c0a1448918c67d8dd4bb9a44 in / 
# Tue, 17 Jul 2018 11:24:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:24:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:24:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:25:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:25:09 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 20:11:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 17 Jul 2018 20:11:32 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 09:12:38 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Tue, 14 Aug 2018 09:15:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 14 Aug 2018 09:15:14 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 14 Aug 2018 10:42:38 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 14 Aug 2018 10:43:05 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 10:43:07 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 14 Aug 2018 10:43:09 GMT
ARG LIBERTY_URL
# Tue, 14 Aug 2018 10:43:12 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 14 Aug 2018 10:43:27 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 14 Aug 2018 10:43:28 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 10:43:29 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 14 Aug 2018 10:43:30 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 14 Aug 2018 10:43:31 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 14 Aug 2018 10:43:38 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 14 Aug 2018 10:43:40 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 14 Aug 2018 10:43:42 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 14 Aug 2018 10:43:43 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 14 Aug 2018 10:43:45 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 14 Aug 2018 10:43:47 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 14 Aug 2018 10:44:06 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 14 Aug 2018 10:53:09 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 14 Aug 2018 10:53:11 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Tue, 14 Aug 2018 10:53:38 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:1d42d48bcb676f02dfc09c86eb381bee74fb84bdad7247d643311c55e97b03e1`  
		Last Modified: Tue, 17 Jul 2018 11:28:58 GMT  
		Size: 45.5 MB (45543237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7257a0c84303a4e1bc7b272c1795b237b5a819780dc3ee848bd9aa516c0833`  
		Last Modified: Tue, 17 Jul 2018 11:28:44 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8d824019e9337c4643bb01728d9d6d1dce98f3db1b568a0db0ece041f5d4f9`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795728728939c3ed0a7b959cf48ae72dcbab4d7b2bf437b3bead8ddd238ca995`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5d42ebe2b0960d616db6b6868bb1f7f47842478d500b1e5d783fa2b2baf876`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7946b06c85eb566d0b328fd27ed4fa31e7603df969091339b9fdd0b138f0a90c`  
		Last Modified: Tue, 17 Jul 2018 20:27:29 GMT  
		Size: 2.9 MB (2880626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb44982ef279dae05091f0cb16ce63dc3db69aa358cb51a9726564901c31390`  
		Last Modified: Tue, 14 Aug 2018 09:25:05 GMT  
		Size: 141.0 MB (141049504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423488ee12fa4eee7a8d264c5813f321144aa3101435766b6f1b38c69d78abc0`  
		Last Modified: Tue, 14 Aug 2018 11:05:15 GMT  
		Size: 453.1 KB (453068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29471e72446f127436d8f107ee3de613da2a3b5f04ae9c0f25c250f0afcf6f15`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 12.5 MB (12494063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c80f464edd2f18839071d0e7ff2b90028b2b99b4f28acb15dbbd509424c5fa`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacd2428802e3d54c9194b62cb5d164b20c5a7ccdfa4952895114ba9721f4caa`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 690.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07f8736665d59f0a84cc5e7645ecb97417f9ec707b7d47992042fd58a8a3c42`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f933980020d27ad3aef24914f81b81b1e175aba3d1c5a37146ecac88a84c1e67`  
		Last Modified: Tue, 14 Aug 2018 11:07:27 GMT  
		Size: 97.9 MB (97944893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea4fdbbbbc238ed024a2712a299204d809b42dadc7841ac157b3b93729f959f`  
		Last Modified: Tue, 14 Aug 2018 11:07:12 GMT  
		Size: 922.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a6dc920e438c7ee8f74101cd801e54787072d3c99d219f168094df4e31d1b22`  
		Last Modified: Tue, 14 Aug 2018 11:07:19 GMT  
		Size: 15.7 MB (15667053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee7` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:dba7c0727fbf75e730b2de25be1815413dea341a16300e20a169987c40290db3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.8 MB (298842763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff48ddadd412fe7bbc7821bff63a64efac84915ec8f410468889389ce00f609d`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Jul 2018 12:59:42 GMT
ADD file:3370b396b7b93b08d1f609f06e321c05d930dc00cb6ae8f0f65d4ed39166245b in / 
# Fri, 27 Jul 2018 12:59:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:59:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:59:44 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:59:45 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:59:45 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:16:38 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 27 Jul 2018 13:16:46 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 12:17:25 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Tue, 14 Aug 2018 12:18:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 14 Aug 2018 12:18:06 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 14 Aug 2018 12:42:37 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 14 Aug 2018 12:42:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 12:42:44 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 14 Aug 2018 12:42:44 GMT
ARG LIBERTY_URL
# Tue, 14 Aug 2018 12:42:44 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 14 Aug 2018 12:42:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 14 Aug 2018 12:42:50 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 12:42:50 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 14 Aug 2018 12:42:50 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 14 Aug 2018 12:42:51 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 14 Aug 2018 12:42:54 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 14 Aug 2018 12:42:54 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 14 Aug 2018 12:42:54 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 14 Aug 2018 12:42:55 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 14 Aug 2018 12:42:55 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 14 Aug 2018 12:42:55 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 14 Aug 2018 12:43:09 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 14 Aug 2018 12:52:11 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 14 Aug 2018 12:52:12 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Tue, 14 Aug 2018 12:53:01 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:3c676c78c45c4416ba6a9c1bcadd5156f03d0bca9e31f85fc01fca458930cfd5`  
		Last Modified: Fri, 27 Jul 2018 13:01:00 GMT  
		Size: 42.2 MB (42233178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a735e77c595422e7ecd0ca0e6359ba21a9769b86c1b6231aebfe8feacd95dcc7`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccb796144ba65e756e8cdfdf093072cbe9255706f96d95aad84fa242f1afb41`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe28213b67e6813cbc89ec0b7034fb71c4896077f9cbfab52de63f4c0201fc1e`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aefcb4b684bed9db0f7491ecade1c76f4268b4216658445ffa9942809ea5299d`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38506499c0863fa74e87358752273bd0f6b80ed1a533dfbbf8106533b5cfa2b`  
		Last Modified: Fri, 27 Jul 2018 13:19:25 GMT  
		Size: 2.8 MB (2764795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b7c9c3592488d9c92e4304ffa5ed6cba0528fe123f114e9070ad9ca2a61d8c`  
		Last Modified: Tue, 14 Aug 2018 12:20:37 GMT  
		Size: 127.0 MB (126957355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073576dab032cab1aacb1ad08982bb8fb96c5daf60d793b889ed219a089dca3e`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 427.5 KB (427473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7517d1495fc28b2961bd0adf416504ce76132726337fabec4e97738785ee2113`  
		Last Modified: Tue, 14 Aug 2018 12:58:47 GMT  
		Size: 12.5 MB (12494060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474d3f2020f1d313de7941e967153bda49632d6295536ac32cb6ae7651c90f48`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd8fe8e0d0960623174e1b507b86839c92304e4f5658f10e8470576e9b52d71`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24cc4e77213d5c99eafc9bd57f812b316684d02c4bc326eeaa05689295e7865c`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 973.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10674e83a3a3166b0a849db92d59abf1651cb669d2a1ed2f686a01da8255cd1d`  
		Last Modified: Tue, 14 Aug 2018 13:00:16 GMT  
		Size: 97.9 MB (97938214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d993d9654c314e1260e8a2aa273f618ff7f914771d812fac6014d6db6694142d`  
		Last Modified: Tue, 14 Aug 2018 13:00:07 GMT  
		Size: 924.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b3bb781e4a256b6323fd15078af14ace4a2704ca9bea3de637206cbc33ac3e`  
		Last Modified: Tue, 14 Aug 2018 13:00:11 GMT  
		Size: 16.0 MB (16022548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:javaee8`

```console
$ docker pull websphere-liberty@sha256:36181d04e802d5474fd8f2dc09571bc6f0a6060c0e3f4043a7f4dff6bb666146
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:javaee8` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:2db50f070ec7cbd5637b202bd0cc19454d407535fec09909930a9af6981544b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.6 MB (309554470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:774f4b850ee6aaa928d8f988985a4f850a477bb9e0ee0f5680d7e0d485a0c7d8`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 26 Jul 2018 22:23:08 GMT
ADD file:204fb7ccb19ff7e863331131138621ff4d22720b3718e8f296902cc7d4f635b5 in / 
# Thu, 26 Jul 2018 22:23:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:23:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:23:11 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:14:00 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 26 Jul 2018 23:14:13 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 13 Aug 2018 22:21:13 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Mon, 13 Aug 2018 22:22:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 13 Aug 2018 22:22:05 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Mon, 13 Aug 2018 23:17:21 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Mon, 13 Aug 2018 23:17:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 13 Aug 2018 23:17:38 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Mon, 13 Aug 2018 23:17:38 GMT
ARG LIBERTY_URL
# Mon, 13 Aug 2018 23:17:39 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 13 Aug 2018 23:17:43 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 13 Aug 2018 23:17:44 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Aug 2018 23:17:44 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Mon, 13 Aug 2018 23:17:44 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 13 Aug 2018 23:17:45 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Mon, 13 Aug 2018 23:17:47 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 13 Aug 2018 23:17:47 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Mon, 13 Aug 2018 23:17:48 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 13 Aug 2018 23:17:48 GMT
ENV KEYSTORE_REQUIRED=true
# Mon, 13 Aug 2018 23:17:48 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Mon, 13 Aug 2018 23:17:48 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Mon, 13 Aug 2018 23:18:39 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 13 Aug 2018 23:32:17 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Mon, 13 Aug 2018 23:32:18 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Mon, 13 Aug 2018 23:32:39 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:8ee29e426c26c79e7ba03ccc8bbc7fe99db00ffcbccb679d9c643b5546d8dc8a`  
		Last Modified: Thu, 26 Jul 2018 22:27:22 GMT  
		Size: 43.2 MB (43228646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e83b260b73b908ebabde46b72fc5790bf4f029b53acbbfe35da8ff8fba795ac`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26b65fd1143ee4f9b7b6b958aeafdb996172d10b723f0bba24335a8f7ae692c`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dca07f8222e24aab97f026444d66a7604e4ae2b708cf079ff67a90c42efa60`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420ae9e10b3f6a74f527914bc3c766b128435a62eca1061f41167205d5b0230`  
		Last Modified: Thu, 26 Jul 2018 22:26:54 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0a3902ea56575347cec98de9cdea35051edefa24d67eccb50d1883d1343fdb`  
		Last Modified: Thu, 26 Jul 2018 23:22:16 GMT  
		Size: 3.0 MB (3021010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01da43ccf6625a7f02104b7b1e0d7d5830af2342d2325f3b602cb0348daf11a4`  
		Last Modified: Mon, 13 Aug 2018 22:28:41 GMT  
		Size: 127.7 MB (127680807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112122e37aaf233d36dffe8730b9e40099be847317cdaf295eabe7103c28ca29`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 422.3 KB (422323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34cc873fb8227d589bcff22c347867fa1ad45ef857e6713d1dc72e8005bf2a1`  
		Last Modified: Mon, 13 Aug 2018 23:33:50 GMT  
		Size: 12.5 MB (12494055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3acc1083d068ca97baf77794d1f1d1bd49daa4212155b8b272d75dbb4858f07`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b6ba759a53614c07247e87c087c69d0eb399b3201390c23c1181d9a37567b1`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 644.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233bcd4d4732830f99144a25500a9ed00458a61b9aed7d89250d7c7f9d23e205`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76a31ddba90c966ddc8392c5422ca0f3dd9d5373543f0e5a61cd2c69c48dc38c`  
		Last Modified: Mon, 13 Aug 2018 23:37:32 GMT  
		Size: 106.7 MB (106670518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa4a99773c1dbe00d2581faa2f4e263b085d9c05c72f29d9f75175023a205f8c`  
		Last Modified: Mon, 13 Aug 2018 23:37:19 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1f0105c00b7bd6643aa63178f54e1faa211ce0ffdd24f602beaf6ea0e82a7d`  
		Last Modified: Mon, 13 Aug 2018 23:37:25 GMT  
		Size: 16.0 MB (16031885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee8` - linux; 386

```console
$ docker pull websphere-liberty@sha256:65aa24b1e7297d0f0965a5634ea522a8c63fa85b409d8fa31dc1d1554b90cdfd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.2 MB (298167936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8901d1eb7538605003a45e9fbb95cb421de495b76235b1a1f8d6a70a03a84789`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Jul 2018 11:04:12 GMT
ADD file:bf213ed5365ee4c9a7f64ec5c337df6779168f609a0fb0ddd2cdf558df419aca in / 
# Fri, 27 Jul 2018 11:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 11:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 11:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 11:04:16 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 11:38:49 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 27 Jul 2018 11:39:16 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 11:11:05 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Tue, 14 Aug 2018 11:11:55 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 14 Aug 2018 11:11:55 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 14 Aug 2018 11:41:00 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 14 Aug 2018 11:41:18 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 11:41:18 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 14 Aug 2018 11:41:18 GMT
ARG LIBERTY_URL
# Tue, 14 Aug 2018 11:41:18 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 14 Aug 2018 11:41:23 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 14 Aug 2018 11:41:23 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 11:41:24 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 14 Aug 2018 11:41:24 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 14 Aug 2018 11:41:25 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 14 Aug 2018 11:41:26 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 14 Aug 2018 11:41:27 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 14 Aug 2018 11:41:27 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 14 Aug 2018 11:41:27 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 14 Aug 2018 11:41:27 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 14 Aug 2018 11:41:28 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 14 Aug 2018 11:41:44 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 14 Aug 2018 11:53:36 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 14 Aug 2018 11:53:36 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Tue, 14 Aug 2018 11:54:00 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:79c3321cd1db5170b2b17e4e7904e999afc88c5ba9168e6632c722f0ced80f2b`  
		Last Modified: Fri, 27 Jul 2018 11:08:03 GMT  
		Size: 43.5 MB (43498084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc08ce9a961adeec10d1eadfa16bc1cb9d2f8994e5d43432500a75cfaa09c6c`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d8c15b299b1de7aa1b6fb37d83b146c59e520ce7bfc25254544262ca705b48`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a97a3925b890b18279fac470160ce2e973a10ef456dce7d174780d4e24550f3`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c844083148ae3343326e2b07dc524e55fee4f261a1637e68ac86a32b97c4ce16`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a671001a55a0ce3af1d3064a1d7f01929b03423102de31cd7a87dd86f9751cd1`  
		Last Modified: Fri, 27 Jul 2018 11:43:11 GMT  
		Size: 2.9 MB (2875978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf1c7d8d3570a128e852fb2ae238df36286ff940f972ef1e06ddf48c532eb1d`  
		Last Modified: Tue, 14 Aug 2018 11:14:55 GMT  
		Size: 115.8 MB (115826066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c236c11960c0afaa57e2847a219cb26308cc4cd5a8c1b49e99454bd6cfb041b8`  
		Last Modified: Tue, 14 Aug 2018 11:55:16 GMT  
		Size: 420.9 KB (420854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88c78c385e77906144318dfac59e3a218eafd81d7816a51c21526ad68a6bcfc`  
		Last Modified: Tue, 14 Aug 2018 11:55:18 GMT  
		Size: 12.5 MB (12494063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f43e525757c1e0afb6a0d13ce4244001ef5f606abdebaf3c06e453ab295bc01`  
		Last Modified: Tue, 14 Aug 2018 11:55:15 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3891494cacfb98e93f4cd252fa3b22f383f7e177701d87452d41c46a4ced3c`  
		Last Modified: Tue, 14 Aug 2018 11:55:15 GMT  
		Size: 643.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1caf93ce53d1d37e6bf605f2fc3b2747253c58b2799060ac66a0f8e3df5d32a`  
		Last Modified: Tue, 14 Aug 2018 11:55:16 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57bce7f4011deaf60a13895649f75d0cdc58c1ecc4d11255e8f18e10e453092f`  
		Last Modified: Tue, 14 Aug 2018 11:58:59 GMT  
		Size: 106.7 MB (106670543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de2079168f3032aef842e3edc8fd1f06c3b77c99509e6a53dc07ff0054231705`  
		Last Modified: Tue, 14 Aug 2018 11:58:45 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e843cfe566056fb046989bddb22537cea3da495c7b7310b4bc13db0788cb9f07`  
		Last Modified: Tue, 14 Aug 2018 11:58:52 GMT  
		Size: 16.4 MB (16377166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee8` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:d9d07a392bab90ce4e78ec0142f9f61a7e2b061d4ecd41917cef474f3fce6119
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.6 MB (324601205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:685a2b82fba25006622969ffda937ac6382da30c5a368512d0ae4cbb7bb56ba5`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 17 Jul 2018 11:24:32 GMT
ADD file:93b9efc61400dd63da35d3bdf0a8937a0e869256c0a1448918c67d8dd4bb9a44 in / 
# Tue, 17 Jul 2018 11:24:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:24:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:24:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:25:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:25:09 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 20:11:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 17 Jul 2018 20:11:32 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 09:12:38 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Tue, 14 Aug 2018 09:15:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 14 Aug 2018 09:15:14 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 14 Aug 2018 10:42:38 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 14 Aug 2018 10:43:05 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 10:43:07 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 14 Aug 2018 10:43:09 GMT
ARG LIBERTY_URL
# Tue, 14 Aug 2018 10:43:12 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 14 Aug 2018 10:43:27 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 14 Aug 2018 10:43:28 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 10:43:29 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 14 Aug 2018 10:43:30 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 14 Aug 2018 10:43:31 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 14 Aug 2018 10:43:38 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 14 Aug 2018 10:43:40 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 14 Aug 2018 10:43:42 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 14 Aug 2018 10:43:43 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 14 Aug 2018 10:43:45 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 14 Aug 2018 10:43:47 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 14 Aug 2018 10:44:06 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 14 Aug 2018 11:00:27 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 14 Aug 2018 11:00:34 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Tue, 14 Aug 2018 11:01:28 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:1d42d48bcb676f02dfc09c86eb381bee74fb84bdad7247d643311c55e97b03e1`  
		Last Modified: Tue, 17 Jul 2018 11:28:58 GMT  
		Size: 45.5 MB (45543237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7257a0c84303a4e1bc7b272c1795b237b5a819780dc3ee848bd9aa516c0833`  
		Last Modified: Tue, 17 Jul 2018 11:28:44 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8d824019e9337c4643bb01728d9d6d1dce98f3db1b568a0db0ece041f5d4f9`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795728728939c3ed0a7b959cf48ae72dcbab4d7b2bf437b3bead8ddd238ca995`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5d42ebe2b0960d616db6b6868bb1f7f47842478d500b1e5d783fa2b2baf876`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7946b06c85eb566d0b328fd27ed4fa31e7603df969091339b9fdd0b138f0a90c`  
		Last Modified: Tue, 17 Jul 2018 20:27:29 GMT  
		Size: 2.9 MB (2880626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb44982ef279dae05091f0cb16ce63dc3db69aa358cb51a9726564901c31390`  
		Last Modified: Tue, 14 Aug 2018 09:25:05 GMT  
		Size: 141.0 MB (141049504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423488ee12fa4eee7a8d264c5813f321144aa3101435766b6f1b38c69d78abc0`  
		Last Modified: Tue, 14 Aug 2018 11:05:15 GMT  
		Size: 453.1 KB (453068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29471e72446f127436d8f107ee3de613da2a3b5f04ae9c0f25c250f0afcf6f15`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 12.5 MB (12494063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c80f464edd2f18839071d0e7ff2b90028b2b99b4f28acb15dbbd509424c5fa`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacd2428802e3d54c9194b62cb5d164b20c5a7ccdfa4952895114ba9721f4caa`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 690.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07f8736665d59f0a84cc5e7645ecb97417f9ec707b7d47992042fd58a8a3c42`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ea86b220ac39ed11d7433ecfe80fcb63674eaf6a34723ee93deedebdc5c052`  
		Last Modified: Tue, 14 Aug 2018 11:08:37 GMT  
		Size: 106.7 MB (106674739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40bb5f03ed85c45c4d477ca6c2c57e5655b29a80ac190e728b4bde24a5d88c16`  
		Last Modified: Tue, 14 Aug 2018 11:08:20 GMT  
		Size: 922.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b4bb98b5fcda844ddabb9b9728117a8049c68463ed40b4647faad72d0690e5`  
		Last Modified: Tue, 14 Aug 2018 11:08:27 GMT  
		Size: 15.5 MB (15500599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee8` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:cd72354d6d2312c4c39b3d280cee82da53cf4c07094d8d12760c289e291b4148
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.6 MB (307626675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0d0aed949c7395787837c6e600197b895dcdba6cd000a7506d634324ea13dbb`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Jul 2018 12:59:42 GMT
ADD file:3370b396b7b93b08d1f609f06e321c05d930dc00cb6ae8f0f65d4ed39166245b in / 
# Fri, 27 Jul 2018 12:59:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:59:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:59:44 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:59:45 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:59:45 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:16:38 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 27 Jul 2018 13:16:46 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 12:17:25 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Tue, 14 Aug 2018 12:18:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 14 Aug 2018 12:18:06 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 14 Aug 2018 12:42:37 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 14 Aug 2018 12:42:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 12:42:44 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 14 Aug 2018 12:42:44 GMT
ARG LIBERTY_URL
# Tue, 14 Aug 2018 12:42:44 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 14 Aug 2018 12:42:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 14 Aug 2018 12:42:50 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 12:42:50 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 14 Aug 2018 12:42:50 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 14 Aug 2018 12:42:51 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 14 Aug 2018 12:42:54 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 14 Aug 2018 12:42:54 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 14 Aug 2018 12:42:54 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 14 Aug 2018 12:42:55 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 14 Aug 2018 12:42:55 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 14 Aug 2018 12:42:55 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 14 Aug 2018 12:43:09 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 14 Aug 2018 12:57:40 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 14 Aug 2018 12:57:41 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Tue, 14 Aug 2018 12:58:00 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:3c676c78c45c4416ba6a9c1bcadd5156f03d0bca9e31f85fc01fca458930cfd5`  
		Last Modified: Fri, 27 Jul 2018 13:01:00 GMT  
		Size: 42.2 MB (42233178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a735e77c595422e7ecd0ca0e6359ba21a9769b86c1b6231aebfe8feacd95dcc7`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccb796144ba65e756e8cdfdf093072cbe9255706f96d95aad84fa242f1afb41`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe28213b67e6813cbc89ec0b7034fb71c4896077f9cbfab52de63f4c0201fc1e`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aefcb4b684bed9db0f7491ecade1c76f4268b4216658445ffa9942809ea5299d`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38506499c0863fa74e87358752273bd0f6b80ed1a533dfbbf8106533b5cfa2b`  
		Last Modified: Fri, 27 Jul 2018 13:19:25 GMT  
		Size: 2.8 MB (2764795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b7c9c3592488d9c92e4304ffa5ed6cba0528fe123f114e9070ad9ca2a61d8c`  
		Last Modified: Tue, 14 Aug 2018 12:20:37 GMT  
		Size: 127.0 MB (126957355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073576dab032cab1aacb1ad08982bb8fb96c5daf60d793b889ed219a089dca3e`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 427.5 KB (427473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7517d1495fc28b2961bd0adf416504ce76132726337fabec4e97738785ee2113`  
		Last Modified: Tue, 14 Aug 2018 12:58:47 GMT  
		Size: 12.5 MB (12494060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474d3f2020f1d313de7941e967153bda49632d6295536ac32cb6ae7651c90f48`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd8fe8e0d0960623174e1b507b86839c92304e4f5658f10e8470576e9b52d71`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24cc4e77213d5c99eafc9bd57f812b316684d02c4bc326eeaa05689295e7865c`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 973.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54532f74fb116046485cffb5ce7a9daccbad809e94ac6852516edba725c5b38`  
		Last Modified: Tue, 14 Aug 2018 13:00:50 GMT  
		Size: 106.7 MB (106670170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf58cb1c912d38e36452c60061034ccc1a695ce024d961b04182ca7389c3f43d`  
		Last Modified: Tue, 14 Aug 2018 13:00:41 GMT  
		Size: 922.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e974edac71d34349d014e66eb2742d652f0bc8456f6eb768d95825c4af5d7d7b`  
		Last Modified: Tue, 14 Aug 2018 13:00:44 GMT  
		Size: 16.1 MB (16074506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:kernel`

```console
$ docker pull websphere-liberty@sha256:aacb18e553869a079f8c66169bf9e2dd35542fa5f5e1ecd328430d81c7e43f5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:kernel` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:41a9bab8ce9443981928c274b0116b99b57c6a1a3804fd3f7dbfd10388a6a4c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.9 MB (186851141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27b73e09097d49c2d6e7a553dc35d79d1dc77fc0d105355e24d176df3061e003`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 26 Jul 2018 22:23:08 GMT
ADD file:204fb7ccb19ff7e863331131138621ff4d22720b3718e8f296902cc7d4f635b5 in / 
# Thu, 26 Jul 2018 22:23:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:23:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:23:11 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:14:00 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 26 Jul 2018 23:14:13 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 13 Aug 2018 22:21:13 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Mon, 13 Aug 2018 22:22:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 13 Aug 2018 22:22:05 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Mon, 13 Aug 2018 23:17:21 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Mon, 13 Aug 2018 23:17:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 13 Aug 2018 23:17:38 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Mon, 13 Aug 2018 23:17:38 GMT
ARG LIBERTY_URL
# Mon, 13 Aug 2018 23:17:39 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 13 Aug 2018 23:17:43 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 13 Aug 2018 23:17:44 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Aug 2018 23:17:44 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Mon, 13 Aug 2018 23:17:44 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 13 Aug 2018 23:17:45 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Mon, 13 Aug 2018 23:17:47 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 13 Aug 2018 23:17:47 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Mon, 13 Aug 2018 23:17:48 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 13 Aug 2018 23:17:48 GMT
ENV KEYSTORE_REQUIRED=true
# Mon, 13 Aug 2018 23:17:48 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Mon, 13 Aug 2018 23:17:48 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:8ee29e426c26c79e7ba03ccc8bbc7fe99db00ffcbccb679d9c643b5546d8dc8a`  
		Last Modified: Thu, 26 Jul 2018 22:27:22 GMT  
		Size: 43.2 MB (43228646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e83b260b73b908ebabde46b72fc5790bf4f029b53acbbfe35da8ff8fba795ac`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26b65fd1143ee4f9b7b6b958aeafdb996172d10b723f0bba24335a8f7ae692c`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dca07f8222e24aab97f026444d66a7604e4ae2b708cf079ff67a90c42efa60`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420ae9e10b3f6a74f527914bc3c766b128435a62eca1061f41167205d5b0230`  
		Last Modified: Thu, 26 Jul 2018 22:26:54 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0a3902ea56575347cec98de9cdea35051edefa24d67eccb50d1883d1343fdb`  
		Last Modified: Thu, 26 Jul 2018 23:22:16 GMT  
		Size: 3.0 MB (3021010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01da43ccf6625a7f02104b7b1e0d7d5830af2342d2325f3b602cb0348daf11a4`  
		Last Modified: Mon, 13 Aug 2018 22:28:41 GMT  
		Size: 127.7 MB (127680807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112122e37aaf233d36dffe8730b9e40099be847317cdaf295eabe7103c28ca29`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 422.3 KB (422323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34cc873fb8227d589bcff22c347867fa1ad45ef857e6713d1dc72e8005bf2a1`  
		Last Modified: Mon, 13 Aug 2018 23:33:50 GMT  
		Size: 12.5 MB (12494055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3acc1083d068ca97baf77794d1f1d1bd49daa4212155b8b272d75dbb4858f07`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b6ba759a53614c07247e87c087c69d0eb399b3201390c23c1181d9a37567b1`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 644.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233bcd4d4732830f99144a25500a9ed00458a61b9aed7d89250d7c7f9d23e205`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:kernel` - linux; 386

```console
$ docker pull websphere-liberty@sha256:a4d2252ccb040dfc8b73837bc214af97f01dc4451816301a7e4cb9251b4b334d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175119302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2d24b72975d60080dff082140d6726cb067791e30ed351069f44ef95e637fc6`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Jul 2018 11:04:12 GMT
ADD file:bf213ed5365ee4c9a7f64ec5c337df6779168f609a0fb0ddd2cdf558df419aca in / 
# Fri, 27 Jul 2018 11:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 11:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 11:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 11:04:16 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 11:38:49 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 27 Jul 2018 11:39:16 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 11:11:05 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Tue, 14 Aug 2018 11:11:55 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 14 Aug 2018 11:11:55 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 14 Aug 2018 11:41:00 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 14 Aug 2018 11:41:18 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 11:41:18 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 14 Aug 2018 11:41:18 GMT
ARG LIBERTY_URL
# Tue, 14 Aug 2018 11:41:18 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 14 Aug 2018 11:41:23 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 14 Aug 2018 11:41:23 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 11:41:24 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 14 Aug 2018 11:41:24 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 14 Aug 2018 11:41:25 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 14 Aug 2018 11:41:26 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 14 Aug 2018 11:41:27 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 14 Aug 2018 11:41:27 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 14 Aug 2018 11:41:27 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 14 Aug 2018 11:41:27 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 14 Aug 2018 11:41:28 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:79c3321cd1db5170b2b17e4e7904e999afc88c5ba9168e6632c722f0ced80f2b`  
		Last Modified: Fri, 27 Jul 2018 11:08:03 GMT  
		Size: 43.5 MB (43498084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc08ce9a961adeec10d1eadfa16bc1cb9d2f8994e5d43432500a75cfaa09c6c`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d8c15b299b1de7aa1b6fb37d83b146c59e520ce7bfc25254544262ca705b48`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a97a3925b890b18279fac470160ce2e973a10ef456dce7d174780d4e24550f3`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c844083148ae3343326e2b07dc524e55fee4f261a1637e68ac86a32b97c4ce16`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a671001a55a0ce3af1d3064a1d7f01929b03423102de31cd7a87dd86f9751cd1`  
		Last Modified: Fri, 27 Jul 2018 11:43:11 GMT  
		Size: 2.9 MB (2875978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf1c7d8d3570a128e852fb2ae238df36286ff940f972ef1e06ddf48c532eb1d`  
		Last Modified: Tue, 14 Aug 2018 11:14:55 GMT  
		Size: 115.8 MB (115826066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c236c11960c0afaa57e2847a219cb26308cc4cd5a8c1b49e99454bd6cfb041b8`  
		Last Modified: Tue, 14 Aug 2018 11:55:16 GMT  
		Size: 420.9 KB (420854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88c78c385e77906144318dfac59e3a218eafd81d7816a51c21526ad68a6bcfc`  
		Last Modified: Tue, 14 Aug 2018 11:55:18 GMT  
		Size: 12.5 MB (12494063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f43e525757c1e0afb6a0d13ce4244001ef5f606abdebaf3c06e453ab295bc01`  
		Last Modified: Tue, 14 Aug 2018 11:55:15 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3891494cacfb98e93f4cd252fa3b22f383f7e177701d87452d41c46a4ced3c`  
		Last Modified: Tue, 14 Aug 2018 11:55:15 GMT  
		Size: 643.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1caf93ce53d1d37e6bf605f2fc3b2747253c58b2799060ac66a0f8e3df5d32a`  
		Last Modified: Tue, 14 Aug 2018 11:55:16 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:kernel` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:45d0e6492f87a10fd4f4616e2c82cb43049002287e04d207a5ec97874f6c05f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.4 MB (202424945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45f18b2e4c540c392276f386c1bc14d729c669f07ae3e7aabddff3bed45a6fa`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 17 Jul 2018 11:24:32 GMT
ADD file:93b9efc61400dd63da35d3bdf0a8937a0e869256c0a1448918c67d8dd4bb9a44 in / 
# Tue, 17 Jul 2018 11:24:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:24:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:24:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:25:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:25:09 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 20:11:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 17 Jul 2018 20:11:32 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 09:12:38 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Tue, 14 Aug 2018 09:15:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 14 Aug 2018 09:15:14 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 14 Aug 2018 10:42:38 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 14 Aug 2018 10:43:05 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 10:43:07 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 14 Aug 2018 10:43:09 GMT
ARG LIBERTY_URL
# Tue, 14 Aug 2018 10:43:12 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 14 Aug 2018 10:43:27 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 14 Aug 2018 10:43:28 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 10:43:29 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 14 Aug 2018 10:43:30 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 14 Aug 2018 10:43:31 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 14 Aug 2018 10:43:38 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 14 Aug 2018 10:43:40 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 14 Aug 2018 10:43:42 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 14 Aug 2018 10:43:43 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 14 Aug 2018 10:43:45 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 14 Aug 2018 10:43:47 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:1d42d48bcb676f02dfc09c86eb381bee74fb84bdad7247d643311c55e97b03e1`  
		Last Modified: Tue, 17 Jul 2018 11:28:58 GMT  
		Size: 45.5 MB (45543237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7257a0c84303a4e1bc7b272c1795b237b5a819780dc3ee848bd9aa516c0833`  
		Last Modified: Tue, 17 Jul 2018 11:28:44 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8d824019e9337c4643bb01728d9d6d1dce98f3db1b568a0db0ece041f5d4f9`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795728728939c3ed0a7b959cf48ae72dcbab4d7b2bf437b3bead8ddd238ca995`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5d42ebe2b0960d616db6b6868bb1f7f47842478d500b1e5d783fa2b2baf876`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7946b06c85eb566d0b328fd27ed4fa31e7603df969091339b9fdd0b138f0a90c`  
		Last Modified: Tue, 17 Jul 2018 20:27:29 GMT  
		Size: 2.9 MB (2880626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb44982ef279dae05091f0cb16ce63dc3db69aa358cb51a9726564901c31390`  
		Last Modified: Tue, 14 Aug 2018 09:25:05 GMT  
		Size: 141.0 MB (141049504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423488ee12fa4eee7a8d264c5813f321144aa3101435766b6f1b38c69d78abc0`  
		Last Modified: Tue, 14 Aug 2018 11:05:15 GMT  
		Size: 453.1 KB (453068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29471e72446f127436d8f107ee3de613da2a3b5f04ae9c0f25c250f0afcf6f15`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 12.5 MB (12494063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c80f464edd2f18839071d0e7ff2b90028b2b99b4f28acb15dbbd509424c5fa`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacd2428802e3d54c9194b62cb5d164b20c5a7ccdfa4952895114ba9721f4caa`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 690.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07f8736665d59f0a84cc5e7645ecb97417f9ec707b7d47992042fd58a8a3c42`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:kernel` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:098fafc621124dfa767a015b2b770e606054dcf5052a7fe517ab48c29bd1a654
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.9 MB (184881077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52528d36909722d8e620c00db733052e139520a38307a21bc08fc021c5f78eee`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Jul 2018 12:59:42 GMT
ADD file:3370b396b7b93b08d1f609f06e321c05d930dc00cb6ae8f0f65d4ed39166245b in / 
# Fri, 27 Jul 2018 12:59:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:59:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:59:44 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:59:45 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:59:45 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:16:38 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 27 Jul 2018 13:16:46 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 12:17:25 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Tue, 14 Aug 2018 12:18:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 14 Aug 2018 12:18:06 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 14 Aug 2018 12:42:37 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 14 Aug 2018 12:42:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 12:42:44 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 14 Aug 2018 12:42:44 GMT
ARG LIBERTY_URL
# Tue, 14 Aug 2018 12:42:44 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 14 Aug 2018 12:42:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 14 Aug 2018 12:42:50 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 12:42:50 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 14 Aug 2018 12:42:50 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 14 Aug 2018 12:42:51 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 14 Aug 2018 12:42:54 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 14 Aug 2018 12:42:54 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 14 Aug 2018 12:42:54 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 14 Aug 2018 12:42:55 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 14 Aug 2018 12:42:55 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 14 Aug 2018 12:42:55 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:3c676c78c45c4416ba6a9c1bcadd5156f03d0bca9e31f85fc01fca458930cfd5`  
		Last Modified: Fri, 27 Jul 2018 13:01:00 GMT  
		Size: 42.2 MB (42233178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a735e77c595422e7ecd0ca0e6359ba21a9769b86c1b6231aebfe8feacd95dcc7`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccb796144ba65e756e8cdfdf093072cbe9255706f96d95aad84fa242f1afb41`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe28213b67e6813cbc89ec0b7034fb71c4896077f9cbfab52de63f4c0201fc1e`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aefcb4b684bed9db0f7491ecade1c76f4268b4216658445ffa9942809ea5299d`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38506499c0863fa74e87358752273bd0f6b80ed1a533dfbbf8106533b5cfa2b`  
		Last Modified: Fri, 27 Jul 2018 13:19:25 GMT  
		Size: 2.8 MB (2764795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b7c9c3592488d9c92e4304ffa5ed6cba0528fe123f114e9070ad9ca2a61d8c`  
		Last Modified: Tue, 14 Aug 2018 12:20:37 GMT  
		Size: 127.0 MB (126957355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073576dab032cab1aacb1ad08982bb8fb96c5daf60d793b889ed219a089dca3e`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 427.5 KB (427473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7517d1495fc28b2961bd0adf416504ce76132726337fabec4e97738785ee2113`  
		Last Modified: Tue, 14 Aug 2018 12:58:47 GMT  
		Size: 12.5 MB (12494060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474d3f2020f1d313de7941e967153bda49632d6295536ac32cb6ae7651c90f48`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd8fe8e0d0960623174e1b507b86839c92304e4f5658f10e8470576e9b52d71`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24cc4e77213d5c99eafc9bd57f812b316684d02c4bc326eeaa05689295e7865c`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 973.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:latest`

```console
$ docker pull websphere-liberty@sha256:faa9acf449934aaf161ae8686675877eb0c11c2a2cbc6bd6263fe5b92d7d3488
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:latest` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:2db50f070ec7cbd5637b202bd0cc19454d407535fec09909930a9af6981544b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.6 MB (309554470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:774f4b850ee6aaa928d8f988985a4f850a477bb9e0ee0f5680d7e0d485a0c7d8`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 26 Jul 2018 22:23:08 GMT
ADD file:204fb7ccb19ff7e863331131138621ff4d22720b3718e8f296902cc7d4f635b5 in / 
# Thu, 26 Jul 2018 22:23:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:23:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:23:11 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:14:00 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 26 Jul 2018 23:14:13 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 13 Aug 2018 22:21:13 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Mon, 13 Aug 2018 22:22:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 13 Aug 2018 22:22:05 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Mon, 13 Aug 2018 23:17:21 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Mon, 13 Aug 2018 23:17:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 13 Aug 2018 23:17:38 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Mon, 13 Aug 2018 23:17:38 GMT
ARG LIBERTY_URL
# Mon, 13 Aug 2018 23:17:39 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 13 Aug 2018 23:17:43 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 13 Aug 2018 23:17:44 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Aug 2018 23:17:44 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Mon, 13 Aug 2018 23:17:44 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 13 Aug 2018 23:17:45 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Mon, 13 Aug 2018 23:17:47 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 13 Aug 2018 23:17:47 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Mon, 13 Aug 2018 23:17:48 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 13 Aug 2018 23:17:48 GMT
ENV KEYSTORE_REQUIRED=true
# Mon, 13 Aug 2018 23:17:48 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Mon, 13 Aug 2018 23:17:48 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Mon, 13 Aug 2018 23:18:39 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 13 Aug 2018 23:32:17 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Mon, 13 Aug 2018 23:32:18 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Mon, 13 Aug 2018 23:32:39 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:8ee29e426c26c79e7ba03ccc8bbc7fe99db00ffcbccb679d9c643b5546d8dc8a`  
		Last Modified: Thu, 26 Jul 2018 22:27:22 GMT  
		Size: 43.2 MB (43228646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e83b260b73b908ebabde46b72fc5790bf4f029b53acbbfe35da8ff8fba795ac`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26b65fd1143ee4f9b7b6b958aeafdb996172d10b723f0bba24335a8f7ae692c`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dca07f8222e24aab97f026444d66a7604e4ae2b708cf079ff67a90c42efa60`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420ae9e10b3f6a74f527914bc3c766b128435a62eca1061f41167205d5b0230`  
		Last Modified: Thu, 26 Jul 2018 22:26:54 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0a3902ea56575347cec98de9cdea35051edefa24d67eccb50d1883d1343fdb`  
		Last Modified: Thu, 26 Jul 2018 23:22:16 GMT  
		Size: 3.0 MB (3021010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01da43ccf6625a7f02104b7b1e0d7d5830af2342d2325f3b602cb0348daf11a4`  
		Last Modified: Mon, 13 Aug 2018 22:28:41 GMT  
		Size: 127.7 MB (127680807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112122e37aaf233d36dffe8730b9e40099be847317cdaf295eabe7103c28ca29`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 422.3 KB (422323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34cc873fb8227d589bcff22c347867fa1ad45ef857e6713d1dc72e8005bf2a1`  
		Last Modified: Mon, 13 Aug 2018 23:33:50 GMT  
		Size: 12.5 MB (12494055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3acc1083d068ca97baf77794d1f1d1bd49daa4212155b8b272d75dbb4858f07`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b6ba759a53614c07247e87c087c69d0eb399b3201390c23c1181d9a37567b1`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 644.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233bcd4d4732830f99144a25500a9ed00458a61b9aed7d89250d7c7f9d23e205`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76a31ddba90c966ddc8392c5422ca0f3dd9d5373543f0e5a61cd2c69c48dc38c`  
		Last Modified: Mon, 13 Aug 2018 23:37:32 GMT  
		Size: 106.7 MB (106670518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa4a99773c1dbe00d2581faa2f4e263b085d9c05c72f29d9f75175023a205f8c`  
		Last Modified: Mon, 13 Aug 2018 23:37:19 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1f0105c00b7bd6643aa63178f54e1faa211ce0ffdd24f602beaf6ea0e82a7d`  
		Last Modified: Mon, 13 Aug 2018 23:37:25 GMT  
		Size: 16.0 MB (16031885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:latest` - linux; 386

```console
$ docker pull websphere-liberty@sha256:65aa24b1e7297d0f0965a5634ea522a8c63fa85b409d8fa31dc1d1554b90cdfd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.2 MB (298167936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8901d1eb7538605003a45e9fbb95cb421de495b76235b1a1f8d6a70a03a84789`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Jul 2018 11:04:12 GMT
ADD file:bf213ed5365ee4c9a7f64ec5c337df6779168f609a0fb0ddd2cdf558df419aca in / 
# Fri, 27 Jul 2018 11:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 11:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 11:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 11:04:16 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 11:38:49 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 27 Jul 2018 11:39:16 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 11:11:05 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Tue, 14 Aug 2018 11:11:55 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 14 Aug 2018 11:11:55 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 14 Aug 2018 11:41:00 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 14 Aug 2018 11:41:18 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 11:41:18 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 14 Aug 2018 11:41:18 GMT
ARG LIBERTY_URL
# Tue, 14 Aug 2018 11:41:18 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 14 Aug 2018 11:41:23 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 14 Aug 2018 11:41:23 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 11:41:24 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 14 Aug 2018 11:41:24 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 14 Aug 2018 11:41:25 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 14 Aug 2018 11:41:26 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 14 Aug 2018 11:41:27 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 14 Aug 2018 11:41:27 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 14 Aug 2018 11:41:27 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 14 Aug 2018 11:41:27 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 14 Aug 2018 11:41:28 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 14 Aug 2018 11:41:44 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 14 Aug 2018 11:53:36 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 14 Aug 2018 11:53:36 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Tue, 14 Aug 2018 11:54:00 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:79c3321cd1db5170b2b17e4e7904e999afc88c5ba9168e6632c722f0ced80f2b`  
		Last Modified: Fri, 27 Jul 2018 11:08:03 GMT  
		Size: 43.5 MB (43498084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc08ce9a961adeec10d1eadfa16bc1cb9d2f8994e5d43432500a75cfaa09c6c`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d8c15b299b1de7aa1b6fb37d83b146c59e520ce7bfc25254544262ca705b48`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a97a3925b890b18279fac470160ce2e973a10ef456dce7d174780d4e24550f3`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c844083148ae3343326e2b07dc524e55fee4f261a1637e68ac86a32b97c4ce16`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a671001a55a0ce3af1d3064a1d7f01929b03423102de31cd7a87dd86f9751cd1`  
		Last Modified: Fri, 27 Jul 2018 11:43:11 GMT  
		Size: 2.9 MB (2875978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf1c7d8d3570a128e852fb2ae238df36286ff940f972ef1e06ddf48c532eb1d`  
		Last Modified: Tue, 14 Aug 2018 11:14:55 GMT  
		Size: 115.8 MB (115826066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c236c11960c0afaa57e2847a219cb26308cc4cd5a8c1b49e99454bd6cfb041b8`  
		Last Modified: Tue, 14 Aug 2018 11:55:16 GMT  
		Size: 420.9 KB (420854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88c78c385e77906144318dfac59e3a218eafd81d7816a51c21526ad68a6bcfc`  
		Last Modified: Tue, 14 Aug 2018 11:55:18 GMT  
		Size: 12.5 MB (12494063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f43e525757c1e0afb6a0d13ce4244001ef5f606abdebaf3c06e453ab295bc01`  
		Last Modified: Tue, 14 Aug 2018 11:55:15 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3891494cacfb98e93f4cd252fa3b22f383f7e177701d87452d41c46a4ced3c`  
		Last Modified: Tue, 14 Aug 2018 11:55:15 GMT  
		Size: 643.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1caf93ce53d1d37e6bf605f2fc3b2747253c58b2799060ac66a0f8e3df5d32a`  
		Last Modified: Tue, 14 Aug 2018 11:55:16 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57bce7f4011deaf60a13895649f75d0cdc58c1ecc4d11255e8f18e10e453092f`  
		Last Modified: Tue, 14 Aug 2018 11:58:59 GMT  
		Size: 106.7 MB (106670543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de2079168f3032aef842e3edc8fd1f06c3b77c99509e6a53dc07ff0054231705`  
		Last Modified: Tue, 14 Aug 2018 11:58:45 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e843cfe566056fb046989bddb22537cea3da495c7b7310b4bc13db0788cb9f07`  
		Last Modified: Tue, 14 Aug 2018 11:58:52 GMT  
		Size: 16.4 MB (16377166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:latest` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:d9d07a392bab90ce4e78ec0142f9f61a7e2b061d4ecd41917cef474f3fce6119
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.6 MB (324601205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:685a2b82fba25006622969ffda937ac6382da30c5a368512d0ae4cbb7bb56ba5`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 17 Jul 2018 11:24:32 GMT
ADD file:93b9efc61400dd63da35d3bdf0a8937a0e869256c0a1448918c67d8dd4bb9a44 in / 
# Tue, 17 Jul 2018 11:24:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:24:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:24:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:25:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:25:09 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 20:11:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 17 Jul 2018 20:11:32 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 09:12:38 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Tue, 14 Aug 2018 09:15:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 14 Aug 2018 09:15:14 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 14 Aug 2018 10:42:38 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 14 Aug 2018 10:43:05 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 10:43:07 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 14 Aug 2018 10:43:09 GMT
ARG LIBERTY_URL
# Tue, 14 Aug 2018 10:43:12 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 14 Aug 2018 10:43:27 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 14 Aug 2018 10:43:28 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 10:43:29 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 14 Aug 2018 10:43:30 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 14 Aug 2018 10:43:31 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 14 Aug 2018 10:43:38 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 14 Aug 2018 10:43:40 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 14 Aug 2018 10:43:42 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 14 Aug 2018 10:43:43 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 14 Aug 2018 10:43:45 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 14 Aug 2018 10:43:47 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 14 Aug 2018 10:44:06 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 14 Aug 2018 11:00:27 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 14 Aug 2018 11:00:34 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Tue, 14 Aug 2018 11:01:28 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:1d42d48bcb676f02dfc09c86eb381bee74fb84bdad7247d643311c55e97b03e1`  
		Last Modified: Tue, 17 Jul 2018 11:28:58 GMT  
		Size: 45.5 MB (45543237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7257a0c84303a4e1bc7b272c1795b237b5a819780dc3ee848bd9aa516c0833`  
		Last Modified: Tue, 17 Jul 2018 11:28:44 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8d824019e9337c4643bb01728d9d6d1dce98f3db1b568a0db0ece041f5d4f9`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795728728939c3ed0a7b959cf48ae72dcbab4d7b2bf437b3bead8ddd238ca995`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5d42ebe2b0960d616db6b6868bb1f7f47842478d500b1e5d783fa2b2baf876`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7946b06c85eb566d0b328fd27ed4fa31e7603df969091339b9fdd0b138f0a90c`  
		Last Modified: Tue, 17 Jul 2018 20:27:29 GMT  
		Size: 2.9 MB (2880626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb44982ef279dae05091f0cb16ce63dc3db69aa358cb51a9726564901c31390`  
		Last Modified: Tue, 14 Aug 2018 09:25:05 GMT  
		Size: 141.0 MB (141049504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423488ee12fa4eee7a8d264c5813f321144aa3101435766b6f1b38c69d78abc0`  
		Last Modified: Tue, 14 Aug 2018 11:05:15 GMT  
		Size: 453.1 KB (453068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29471e72446f127436d8f107ee3de613da2a3b5f04ae9c0f25c250f0afcf6f15`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 12.5 MB (12494063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c80f464edd2f18839071d0e7ff2b90028b2b99b4f28acb15dbbd509424c5fa`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacd2428802e3d54c9194b62cb5d164b20c5a7ccdfa4952895114ba9721f4caa`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 690.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07f8736665d59f0a84cc5e7645ecb97417f9ec707b7d47992042fd58a8a3c42`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ea86b220ac39ed11d7433ecfe80fcb63674eaf6a34723ee93deedebdc5c052`  
		Last Modified: Tue, 14 Aug 2018 11:08:37 GMT  
		Size: 106.7 MB (106674739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40bb5f03ed85c45c4d477ca6c2c57e5655b29a80ac190e728b4bde24a5d88c16`  
		Last Modified: Tue, 14 Aug 2018 11:08:20 GMT  
		Size: 922.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b4bb98b5fcda844ddabb9b9728117a8049c68463ed40b4647faad72d0690e5`  
		Last Modified: Tue, 14 Aug 2018 11:08:27 GMT  
		Size: 15.5 MB (15500599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:latest` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:62bab514335087b7f8540597c6b19e2fc51a24b0b0f24df52cd315fa7efce2cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.4 MB (307357333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a601317adcc5878023d87d9250b5caa9592ce4c61a450cdbf931043bf99f8feb`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Jul 2018 12:59:42 GMT
ADD file:3370b396b7b93b08d1f609f06e321c05d930dc00cb6ae8f0f65d4ed39166245b in / 
# Fri, 27 Jul 2018 12:59:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:59:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:59:44 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:59:45 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:59:45 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:16:38 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 27 Jul 2018 13:16:46 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:16:46 GMT
ENV JAVA_VERSION=1.8.0_sr5fp17
# Fri, 27 Jul 2018 13:17:27 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e502345ad25ac4e3e71eccdd77872aec8bc4ecd02866064cf8493e053d486ca7';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f8eced52ecfc49cc4d7c7c51317c937beca6b5f4bde465ce77d022278df7cbd4';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f49ea4b093d047b68c4f5782c16a4c56a94c2dbea1c0d51501e29533396db5e3';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8a7805f5a28effdbe61ddf7e52a1dd7ab9f260d9c3c75d01d61146acfeb31f5e';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='361f7ed9e34094d94c38d1cc3af9dd6056706a649b87814be95737cc9adbc175';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 27 Jul 2018 13:17:27 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 27 Jul 2018 13:36:20 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Fri, 27 Jul 2018 13:36:26 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:36:26 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Fri, 27 Jul 2018 13:36:26 GMT
ARG LIBERTY_URL
# Fri, 27 Jul 2018 13:36:26 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 27 Jul 2018 13:36:30 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 27 Jul 2018 13:36:30 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jul 2018 13:36:30 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Fri, 27 Jul 2018 13:36:30 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 27 Jul 2018 13:36:31 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Fri, 27 Jul 2018 13:36:32 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 27 Jul 2018 13:36:32 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Fri, 27 Jul 2018 13:36:32 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 27 Jul 2018 13:36:33 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 27 Jul 2018 13:36:33 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Fri, 27 Jul 2018 13:36:33 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Fri, 27 Jul 2018 13:36:41 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 27 Jul 2018 13:46:18 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 27 Jul 2018 13:46:18 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Fri, 27 Jul 2018 13:46:39 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:3c676c78c45c4416ba6a9c1bcadd5156f03d0bca9e31f85fc01fca458930cfd5`  
		Last Modified: Fri, 27 Jul 2018 13:01:00 GMT  
		Size: 42.2 MB (42233178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a735e77c595422e7ecd0ca0e6359ba21a9769b86c1b6231aebfe8feacd95dcc7`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccb796144ba65e756e8cdfdf093072cbe9255706f96d95aad84fa242f1afb41`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe28213b67e6813cbc89ec0b7034fb71c4896077f9cbfab52de63f4c0201fc1e`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aefcb4b684bed9db0f7491ecade1c76f4268b4216658445ffa9942809ea5299d`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38506499c0863fa74e87358752273bd0f6b80ed1a533dfbbf8106533b5cfa2b`  
		Last Modified: Fri, 27 Jul 2018 13:19:25 GMT  
		Size: 2.8 MB (2764795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a28ff408ae02a5e5cbc863e17373cae9e1f31e86c82ca7a32ccb54ed234db8`  
		Last Modified: Fri, 27 Jul 2018 13:19:36 GMT  
		Size: 126.7 MB (126682628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ce1280684a5c10dbb3c52c7ed06e6cbcd778d4b349b6e80a8d7dec6004b91c`  
		Last Modified: Fri, 27 Jul 2018 13:47:35 GMT  
		Size: 427.4 KB (427438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c45c827ba2a8c0b1469f789aa756d4dd99ce355e07a3e52ea10a66ff2ab24fc`  
		Last Modified: Fri, 27 Jul 2018 13:47:36 GMT  
		Size: 12.5 MB (12494057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832fe7741fed322f4d03408e91fde54f0360f912a7fef732ce4d71160bf2a1f5`  
		Last Modified: Fri, 27 Jul 2018 13:47:35 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24be9befd6a41c1512c749d6e7bfca287e9a98662fcadc4757fc9f5454c926f0`  
		Last Modified: Fri, 27 Jul 2018 13:47:35 GMT  
		Size: 639.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8399a0221fa22628d614e668017c86b2cf6a292069e8bb35c3a9fb26769602d9`  
		Last Modified: Fri, 27 Jul 2018 13:47:35 GMT  
		Size: 971.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e51fc54343f0cacc00e2693b1d93a648e6723b317e4a4d19935af2955621c`  
		Last Modified: Fri, 27 Jul 2018 13:49:21 GMT  
		Size: 106.7 MB (106670726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcdd29bb9a0f2a18f5b24adbfc6563e21bedc0aeeeeb9988436f03c4d0daf89b`  
		Last Modified: Fri, 27 Jul 2018 13:49:07 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f9e40fd4d784974b2aeba2c50aae7b18cdbd0e108e4502dbf30b3df006e365`  
		Last Modified: Fri, 27 Jul 2018 13:49:14 GMT  
		Size: 16.1 MB (16079375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:microProfile`

```console
$ docker pull websphere-liberty@sha256:a284f46e0647fc5e43e259c87e67f1564c031b0f87af0ba8d77cabff9b19fea0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:microProfile` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:921de9f50f6ab1685e0e6f24b83f12d752fea492c5b2913cc9653cb26f6ae11e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272393894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9037f50f6570aaf276ce222b7660e0e3e07542492034d211bdce6add598724cb`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 26 Jul 2018 22:23:08 GMT
ADD file:204fb7ccb19ff7e863331131138621ff4d22720b3718e8f296902cc7d4f635b5 in / 
# Thu, 26 Jul 2018 22:23:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:23:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:23:11 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:14:00 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 26 Jul 2018 23:14:13 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 13 Aug 2018 22:21:13 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Mon, 13 Aug 2018 22:22:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 13 Aug 2018 22:22:05 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Mon, 13 Aug 2018 23:17:21 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Mon, 13 Aug 2018 23:17:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 13 Aug 2018 23:17:38 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Mon, 13 Aug 2018 23:17:38 GMT
ARG LIBERTY_URL
# Mon, 13 Aug 2018 23:17:39 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 13 Aug 2018 23:17:43 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 13 Aug 2018 23:17:44 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Aug 2018 23:17:44 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Mon, 13 Aug 2018 23:17:44 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 13 Aug 2018 23:17:45 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Mon, 13 Aug 2018 23:17:47 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 13 Aug 2018 23:17:47 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Mon, 13 Aug 2018 23:17:48 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 13 Aug 2018 23:17:48 GMT
ENV KEYSTORE_REQUIRED=true
# Mon, 13 Aug 2018 23:17:48 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Mon, 13 Aug 2018 23:17:48 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Mon, 13 Aug 2018 23:18:39 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 13 Aug 2018 23:20:02 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionCache-1.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Mon, 13 Aug 2018 23:20:14 GMT
COPY file:592487234213902c327fc4393ffb64101e23a5604cb12a8c7d9568e92281788d in /config/ 
# Mon, 13 Aug 2018 23:20:30 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:8ee29e426c26c79e7ba03ccc8bbc7fe99db00ffcbccb679d9c643b5546d8dc8a`  
		Last Modified: Thu, 26 Jul 2018 22:27:22 GMT  
		Size: 43.2 MB (43228646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e83b260b73b908ebabde46b72fc5790bf4f029b53acbbfe35da8ff8fba795ac`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26b65fd1143ee4f9b7b6b958aeafdb996172d10b723f0bba24335a8f7ae692c`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dca07f8222e24aab97f026444d66a7604e4ae2b708cf079ff67a90c42efa60`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420ae9e10b3f6a74f527914bc3c766b128435a62eca1061f41167205d5b0230`  
		Last Modified: Thu, 26 Jul 2018 22:26:54 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0a3902ea56575347cec98de9cdea35051edefa24d67eccb50d1883d1343fdb`  
		Last Modified: Thu, 26 Jul 2018 23:22:16 GMT  
		Size: 3.0 MB (3021010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01da43ccf6625a7f02104b7b1e0d7d5830af2342d2325f3b602cb0348daf11a4`  
		Last Modified: Mon, 13 Aug 2018 22:28:41 GMT  
		Size: 127.7 MB (127680807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112122e37aaf233d36dffe8730b9e40099be847317cdaf295eabe7103c28ca29`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 422.3 KB (422323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34cc873fb8227d589bcff22c347867fa1ad45ef857e6713d1dc72e8005bf2a1`  
		Last Modified: Mon, 13 Aug 2018 23:33:50 GMT  
		Size: 12.5 MB (12494055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3acc1083d068ca97baf77794d1f1d1bd49daa4212155b8b272d75dbb4858f07`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b6ba759a53614c07247e87c087c69d0eb399b3201390c23c1181d9a37567b1`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 644.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233bcd4d4732830f99144a25500a9ed00458a61b9aed7d89250d7c7f9d23e205`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f48309439fd9a1d0e74bbee36a40f4435df5f28b7931dabb7bdb85fa027efb14`  
		Last Modified: Mon, 13 Aug 2018 23:34:20 GMT  
		Size: 73.8 MB (73768742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb62a1d73911a50717aba0f60c9d5bf491faf23b6eb4d92e6e54a0fd0b368b09`  
		Last Modified: Mon, 13 Aug 2018 23:34:13 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bffb68d8f7e53924a57b1950399f5621edb15cc538a22ba779b0373111452b7`  
		Last Modified: Mon, 13 Aug 2018 23:34:16 GMT  
		Size: 11.8 MB (11773452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile` - linux; 386

```console
$ docker pull websphere-liberty@sha256:f5c194bf61808cda58a3e10d7e0cf354020899eac508b10748bcf17f2739b768
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261074617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fafe588937e0b61a3c229a258cd087d51155fc0a3b0f19c2eb0e252123b9d1f`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Jul 2018 11:04:12 GMT
ADD file:bf213ed5365ee4c9a7f64ec5c337df6779168f609a0fb0ddd2cdf558df419aca in / 
# Fri, 27 Jul 2018 11:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 11:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 11:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 11:04:16 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 11:38:49 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 27 Jul 2018 11:39:16 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 11:11:05 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Tue, 14 Aug 2018 11:11:55 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 14 Aug 2018 11:11:55 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 14 Aug 2018 11:41:00 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 14 Aug 2018 11:41:18 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 11:41:18 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 14 Aug 2018 11:41:18 GMT
ARG LIBERTY_URL
# Tue, 14 Aug 2018 11:41:18 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 14 Aug 2018 11:41:23 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 14 Aug 2018 11:41:23 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 11:41:24 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 14 Aug 2018 11:41:24 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 14 Aug 2018 11:41:25 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 14 Aug 2018 11:41:26 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 14 Aug 2018 11:41:27 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 14 Aug 2018 11:41:27 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 14 Aug 2018 11:41:27 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 14 Aug 2018 11:41:27 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 14 Aug 2018 11:41:28 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 14 Aug 2018 11:41:44 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 14 Aug 2018 11:43:02 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionCache-1.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 14 Aug 2018 11:43:03 GMT
COPY file:592487234213902c327fc4393ffb64101e23a5604cb12a8c7d9568e92281788d in /config/ 
# Tue, 14 Aug 2018 11:43:19 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:79c3321cd1db5170b2b17e4e7904e999afc88c5ba9168e6632c722f0ced80f2b`  
		Last Modified: Fri, 27 Jul 2018 11:08:03 GMT  
		Size: 43.5 MB (43498084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc08ce9a961adeec10d1eadfa16bc1cb9d2f8994e5d43432500a75cfaa09c6c`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d8c15b299b1de7aa1b6fb37d83b146c59e520ce7bfc25254544262ca705b48`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a97a3925b890b18279fac470160ce2e973a10ef456dce7d174780d4e24550f3`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c844083148ae3343326e2b07dc524e55fee4f261a1637e68ac86a32b97c4ce16`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a671001a55a0ce3af1d3064a1d7f01929b03423102de31cd7a87dd86f9751cd1`  
		Last Modified: Fri, 27 Jul 2018 11:43:11 GMT  
		Size: 2.9 MB (2875978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf1c7d8d3570a128e852fb2ae238df36286ff940f972ef1e06ddf48c532eb1d`  
		Last Modified: Tue, 14 Aug 2018 11:14:55 GMT  
		Size: 115.8 MB (115826066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c236c11960c0afaa57e2847a219cb26308cc4cd5a8c1b49e99454bd6cfb041b8`  
		Last Modified: Tue, 14 Aug 2018 11:55:16 GMT  
		Size: 420.9 KB (420854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88c78c385e77906144318dfac59e3a218eafd81d7816a51c21526ad68a6bcfc`  
		Last Modified: Tue, 14 Aug 2018 11:55:18 GMT  
		Size: 12.5 MB (12494063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f43e525757c1e0afb6a0d13ce4244001ef5f606abdebaf3c06e453ab295bc01`  
		Last Modified: Tue, 14 Aug 2018 11:55:15 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3891494cacfb98e93f4cd252fa3b22f383f7e177701d87452d41c46a4ced3c`  
		Last Modified: Tue, 14 Aug 2018 11:55:15 GMT  
		Size: 643.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1caf93ce53d1d37e6bf605f2fc3b2747253c58b2799060ac66a0f8e3df5d32a`  
		Last Modified: Tue, 14 Aug 2018 11:55:16 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d3faff6a386b62a46e44c85bb350c45754eccc76b94fb5a5e31934489dbe29`  
		Last Modified: Tue, 14 Aug 2018 11:55:47 GMT  
		Size: 73.8 MB (73768813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ac041a6e64fc878ae5a54492483708bf39e3638b8cbad012df16ceda8eae6e`  
		Last Modified: Tue, 14 Aug 2018 11:55:39 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b060324796255cd56cf65517d1c257126a00e9c58a2e521dfdc9f638f7ad55e6`  
		Last Modified: Tue, 14 Aug 2018 11:55:43 GMT  
		Size: 12.2 MB (12185944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:05e9d0fa8fd60220a8a55182f612706481fac398ddd553d66f24a8bfd84d6405
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.1 MB (288130654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad6c72ecd56c60a8757ddf11755240c11b69373d122e25059ef37fd286a3aad8`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 17 Jul 2018 11:24:32 GMT
ADD file:93b9efc61400dd63da35d3bdf0a8937a0e869256c0a1448918c67d8dd4bb9a44 in / 
# Tue, 17 Jul 2018 11:24:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:24:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:24:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:25:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:25:09 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 20:11:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 17 Jul 2018 20:11:32 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 09:12:38 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Tue, 14 Aug 2018 09:15:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 14 Aug 2018 09:15:14 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 14 Aug 2018 10:42:38 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 14 Aug 2018 10:43:05 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 10:43:07 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 14 Aug 2018 10:43:09 GMT
ARG LIBERTY_URL
# Tue, 14 Aug 2018 10:43:12 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 14 Aug 2018 10:43:27 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 14 Aug 2018 10:43:28 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 10:43:29 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 14 Aug 2018 10:43:30 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 14 Aug 2018 10:43:31 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 14 Aug 2018 10:43:38 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 14 Aug 2018 10:43:40 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 14 Aug 2018 10:43:42 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 14 Aug 2018 10:43:43 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 14 Aug 2018 10:43:45 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 14 Aug 2018 10:43:47 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 14 Aug 2018 10:44:06 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 14 Aug 2018 10:45:56 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionCache-1.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 14 Aug 2018 10:46:00 GMT
COPY file:592487234213902c327fc4393ffb64101e23a5604cb12a8c7d9568e92281788d in /config/ 
# Tue, 14 Aug 2018 10:46:25 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:1d42d48bcb676f02dfc09c86eb381bee74fb84bdad7247d643311c55e97b03e1`  
		Last Modified: Tue, 17 Jul 2018 11:28:58 GMT  
		Size: 45.5 MB (45543237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7257a0c84303a4e1bc7b272c1795b237b5a819780dc3ee848bd9aa516c0833`  
		Last Modified: Tue, 17 Jul 2018 11:28:44 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8d824019e9337c4643bb01728d9d6d1dce98f3db1b568a0db0ece041f5d4f9`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795728728939c3ed0a7b959cf48ae72dcbab4d7b2bf437b3bead8ddd238ca995`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5d42ebe2b0960d616db6b6868bb1f7f47842478d500b1e5d783fa2b2baf876`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7946b06c85eb566d0b328fd27ed4fa31e7603df969091339b9fdd0b138f0a90c`  
		Last Modified: Tue, 17 Jul 2018 20:27:29 GMT  
		Size: 2.9 MB (2880626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb44982ef279dae05091f0cb16ce63dc3db69aa358cb51a9726564901c31390`  
		Last Modified: Tue, 14 Aug 2018 09:25:05 GMT  
		Size: 141.0 MB (141049504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423488ee12fa4eee7a8d264c5813f321144aa3101435766b6f1b38c69d78abc0`  
		Last Modified: Tue, 14 Aug 2018 11:05:15 GMT  
		Size: 453.1 KB (453068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29471e72446f127436d8f107ee3de613da2a3b5f04ae9c0f25c250f0afcf6f15`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 12.5 MB (12494063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c80f464edd2f18839071d0e7ff2b90028b2b99b4f28acb15dbbd509424c5fa`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacd2428802e3d54c9194b62cb5d164b20c5a7ccdfa4952895114ba9721f4caa`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 690.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07f8736665d59f0a84cc5e7645ecb97417f9ec707b7d47992042fd58a8a3c42`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c74c7168cbf65b48f02c196ae5c2bacc7ae7d9db9299b533a5f7c295f396eeff`  
		Last Modified: Tue, 14 Aug 2018 11:05:50 GMT  
		Size: 73.8 MB (73771810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d5219a2dcac8d5946c75f05423bee80a29e1f7c80d70613e82288eee2b53d0`  
		Last Modified: Tue, 14 Aug 2018 11:05:34 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b63c30bf80b187c35a2e72026061eea381cd3b2b64aafccdd1e421a83843f8`  
		Last Modified: Tue, 14 Aug 2018 11:05:39 GMT  
		Size: 11.9 MB (11933341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:c0e83aacb64f29529d2d1a8fba50d9beaa5d2b8e5bc7e104aa7b267b8ea540ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270677450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91b19e229ac920f75f33ac57958f4c1061fa0c670c7bfc36df98f0a8a5b30c9b`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Jul 2018 12:59:42 GMT
ADD file:3370b396b7b93b08d1f609f06e321c05d930dc00cb6ae8f0f65d4ed39166245b in / 
# Fri, 27 Jul 2018 12:59:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:59:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:59:44 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:59:45 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:59:45 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:16:38 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 27 Jul 2018 13:16:46 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 12:17:25 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Tue, 14 Aug 2018 12:18:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 14 Aug 2018 12:18:06 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 14 Aug 2018 12:42:37 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 14 Aug 2018 12:42:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 12:42:44 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 14 Aug 2018 12:42:44 GMT
ARG LIBERTY_URL
# Tue, 14 Aug 2018 12:42:44 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 14 Aug 2018 12:42:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 14 Aug 2018 12:42:50 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 12:42:50 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 14 Aug 2018 12:42:50 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 14 Aug 2018 12:42:51 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 14 Aug 2018 12:42:54 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 14 Aug 2018 12:42:54 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 14 Aug 2018 12:42:54 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 14 Aug 2018 12:42:55 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 14 Aug 2018 12:42:55 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 14 Aug 2018 12:42:55 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 14 Aug 2018 12:43:09 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 14 Aug 2018 12:44:47 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionCache-1.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 14 Aug 2018 12:44:48 GMT
COPY file:592487234213902c327fc4393ffb64101e23a5604cb12a8c7d9568e92281788d in /config/ 
# Tue, 14 Aug 2018 12:45:24 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:3c676c78c45c4416ba6a9c1bcadd5156f03d0bca9e31f85fc01fca458930cfd5`  
		Last Modified: Fri, 27 Jul 2018 13:01:00 GMT  
		Size: 42.2 MB (42233178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a735e77c595422e7ecd0ca0e6359ba21a9769b86c1b6231aebfe8feacd95dcc7`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccb796144ba65e756e8cdfdf093072cbe9255706f96d95aad84fa242f1afb41`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe28213b67e6813cbc89ec0b7034fb71c4896077f9cbfab52de63f4c0201fc1e`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aefcb4b684bed9db0f7491ecade1c76f4268b4216658445ffa9942809ea5299d`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38506499c0863fa74e87358752273bd0f6b80ed1a533dfbbf8106533b5cfa2b`  
		Last Modified: Fri, 27 Jul 2018 13:19:25 GMT  
		Size: 2.8 MB (2764795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b7c9c3592488d9c92e4304ffa5ed6cba0528fe123f114e9070ad9ca2a61d8c`  
		Last Modified: Tue, 14 Aug 2018 12:20:37 GMT  
		Size: 127.0 MB (126957355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073576dab032cab1aacb1ad08982bb8fb96c5daf60d793b889ed219a089dca3e`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 427.5 KB (427473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7517d1495fc28b2961bd0adf416504ce76132726337fabec4e97738785ee2113`  
		Last Modified: Tue, 14 Aug 2018 12:58:47 GMT  
		Size: 12.5 MB (12494060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474d3f2020f1d313de7941e967153bda49632d6295536ac32cb6ae7651c90f48`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd8fe8e0d0960623174e1b507b86839c92304e4f5658f10e8470576e9b52d71`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24cc4e77213d5c99eafc9bd57f812b316684d02c4bc326eeaa05689295e7865c`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 973.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1038970cb34fea71963a22ba0eafee25118ec5568a72e865bbbcca4a88fe16`  
		Last Modified: Tue, 14 Aug 2018 12:59:07 GMT  
		Size: 73.8 MB (73768808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8b11474fa1deaa437b4c8f1d040028ecad183920eaa6b570e453f61a6edff2`  
		Last Modified: Tue, 14 Aug 2018 12:58:55 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3127cd36febbf37c46f58d35e0e05b77a6ffba13b650d7d550d5de8b2af6a7c`  
		Last Modified: Tue, 14 Aug 2018 12:59:02 GMT  
		Size: 12.0 MB (12027010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:springBoot1`

```console
$ docker pull websphere-liberty@sha256:919f7aa70cee149eaea6251562795b2d2a2d6bddddb47f627e9da1fe750ce56f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:springBoot1` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:85172b978f16c4a74fe2a49021d7cb2eaa8ff5727bf14dce7cf81177c3a9cc19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.9 MB (213874244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d279855a21b23a00e330432544c18cb82c6aafabfa533069673d7f45703a512`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 26 Jul 2018 22:23:08 GMT
ADD file:204fb7ccb19ff7e863331131138621ff4d22720b3718e8f296902cc7d4f635b5 in / 
# Thu, 26 Jul 2018 22:23:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:23:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:23:11 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:14:00 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 26 Jul 2018 23:14:13 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 13 Aug 2018 22:21:13 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Mon, 13 Aug 2018 22:22:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 13 Aug 2018 22:22:05 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Mon, 13 Aug 2018 23:17:21 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Mon, 13 Aug 2018 23:17:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 13 Aug 2018 23:17:38 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Mon, 13 Aug 2018 23:17:38 GMT
ARG LIBERTY_URL
# Mon, 13 Aug 2018 23:17:39 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 13 Aug 2018 23:17:43 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 13 Aug 2018 23:17:44 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Aug 2018 23:17:44 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Mon, 13 Aug 2018 23:17:44 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 13 Aug 2018 23:17:45 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Mon, 13 Aug 2018 23:17:47 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 13 Aug 2018 23:17:47 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Mon, 13 Aug 2018 23:17:48 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 13 Aug 2018 23:17:48 GMT
ENV KEYSTORE_REQUIRED=true
# Mon, 13 Aug 2018 23:17:48 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Mon, 13 Aug 2018 23:17:48 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Mon, 13 Aug 2018 23:18:39 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 13 Aug 2018 23:21:43 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-1.5 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Mon, 13 Aug 2018 23:21:44 GMT
COPY file:01d87f11d05fde398ec003f0aeae67fd944b6f2f7ca7d69b7d29cac22e0318e7 in /config/ 
# Mon, 13 Aug 2018 23:21:54 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:8ee29e426c26c79e7ba03ccc8bbc7fe99db00ffcbccb679d9c643b5546d8dc8a`  
		Last Modified: Thu, 26 Jul 2018 22:27:22 GMT  
		Size: 43.2 MB (43228646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e83b260b73b908ebabde46b72fc5790bf4f029b53acbbfe35da8ff8fba795ac`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26b65fd1143ee4f9b7b6b958aeafdb996172d10b723f0bba24335a8f7ae692c`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dca07f8222e24aab97f026444d66a7604e4ae2b708cf079ff67a90c42efa60`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420ae9e10b3f6a74f527914bc3c766b128435a62eca1061f41167205d5b0230`  
		Last Modified: Thu, 26 Jul 2018 22:26:54 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0a3902ea56575347cec98de9cdea35051edefa24d67eccb50d1883d1343fdb`  
		Last Modified: Thu, 26 Jul 2018 23:22:16 GMT  
		Size: 3.0 MB (3021010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01da43ccf6625a7f02104b7b1e0d7d5830af2342d2325f3b602cb0348daf11a4`  
		Last Modified: Mon, 13 Aug 2018 22:28:41 GMT  
		Size: 127.7 MB (127680807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112122e37aaf233d36dffe8730b9e40099be847317cdaf295eabe7103c28ca29`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 422.3 KB (422323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34cc873fb8227d589bcff22c347867fa1ad45ef857e6713d1dc72e8005bf2a1`  
		Last Modified: Mon, 13 Aug 2018 23:33:50 GMT  
		Size: 12.5 MB (12494055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3acc1083d068ca97baf77794d1f1d1bd49daa4212155b8b272d75dbb4858f07`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b6ba759a53614c07247e87c087c69d0eb399b3201390c23c1181d9a37567b1`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 644.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233bcd4d4732830f99144a25500a9ed00458a61b9aed7d89250d7c7f9d23e205`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73541ed43e9a121e516f7a42599941b99ddeabec394536bd3745a4abb9e9b43`  
		Last Modified: Mon, 13 Aug 2018 23:34:43 GMT  
		Size: 18.6 MB (18598117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96dbf998264976adf3dfa1fde60f05575e6a0197ea54140bb36e0e16fcd4168a`  
		Last Modified: Mon, 13 Aug 2018 23:34:42 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8eb06f3a3caa54b50e21307947684f30a6183ecab1067ea19e1dad64f5ac546`  
		Last Modified: Mon, 13 Aug 2018 23:34:44 GMT  
		Size: 8.4 MB (8424437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:springBoot1` - linux; 386

```console
$ docker pull websphere-liberty@sha256:5dbab68f527e20b5544ccb6311a7be2f9a69bb78e77561d6f69fbcb6e40045ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.4 MB (202370344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9125bd31091f67453fe54b2c4afb7839bb5775b83717cd722e3dc14acf6d596`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Jul 2018 11:04:12 GMT
ADD file:bf213ed5365ee4c9a7f64ec5c337df6779168f609a0fb0ddd2cdf558df419aca in / 
# Fri, 27 Jul 2018 11:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 11:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 11:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 11:04:16 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 11:38:49 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 27 Jul 2018 11:39:16 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 11:11:05 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Tue, 14 Aug 2018 11:11:55 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 14 Aug 2018 11:11:55 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 14 Aug 2018 11:41:00 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 14 Aug 2018 11:41:18 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 11:41:18 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 14 Aug 2018 11:41:18 GMT
ARG LIBERTY_URL
# Tue, 14 Aug 2018 11:41:18 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 14 Aug 2018 11:41:23 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 14 Aug 2018 11:41:23 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 11:41:24 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 14 Aug 2018 11:41:24 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 14 Aug 2018 11:41:25 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 14 Aug 2018 11:41:26 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 14 Aug 2018 11:41:27 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 14 Aug 2018 11:41:27 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 14 Aug 2018 11:41:27 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 14 Aug 2018 11:41:27 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 14 Aug 2018 11:41:28 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 14 Aug 2018 11:41:44 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 14 Aug 2018 11:44:03 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-1.5 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 14 Aug 2018 11:44:06 GMT
COPY file:01d87f11d05fde398ec003f0aeae67fd944b6f2f7ca7d69b7d29cac22e0318e7 in /config/ 
# Tue, 14 Aug 2018 11:44:17 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:79c3321cd1db5170b2b17e4e7904e999afc88c5ba9168e6632c722f0ced80f2b`  
		Last Modified: Fri, 27 Jul 2018 11:08:03 GMT  
		Size: 43.5 MB (43498084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc08ce9a961adeec10d1eadfa16bc1cb9d2f8994e5d43432500a75cfaa09c6c`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d8c15b299b1de7aa1b6fb37d83b146c59e520ce7bfc25254544262ca705b48`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a97a3925b890b18279fac470160ce2e973a10ef456dce7d174780d4e24550f3`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c844083148ae3343326e2b07dc524e55fee4f261a1637e68ac86a32b97c4ce16`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a671001a55a0ce3af1d3064a1d7f01929b03423102de31cd7a87dd86f9751cd1`  
		Last Modified: Fri, 27 Jul 2018 11:43:11 GMT  
		Size: 2.9 MB (2875978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf1c7d8d3570a128e852fb2ae238df36286ff940f972ef1e06ddf48c532eb1d`  
		Last Modified: Tue, 14 Aug 2018 11:14:55 GMT  
		Size: 115.8 MB (115826066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c236c11960c0afaa57e2847a219cb26308cc4cd5a8c1b49e99454bd6cfb041b8`  
		Last Modified: Tue, 14 Aug 2018 11:55:16 GMT  
		Size: 420.9 KB (420854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88c78c385e77906144318dfac59e3a218eafd81d7816a51c21526ad68a6bcfc`  
		Last Modified: Tue, 14 Aug 2018 11:55:18 GMT  
		Size: 12.5 MB (12494063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f43e525757c1e0afb6a0d13ce4244001ef5f606abdebaf3c06e453ab295bc01`  
		Last Modified: Tue, 14 Aug 2018 11:55:15 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3891494cacfb98e93f4cd252fa3b22f383f7e177701d87452d41c46a4ced3c`  
		Last Modified: Tue, 14 Aug 2018 11:55:15 GMT  
		Size: 643.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1caf93ce53d1d37e6bf605f2fc3b2747253c58b2799060ac66a0f8e3df5d32a`  
		Last Modified: Tue, 14 Aug 2018 11:55:16 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95258389b8623f9b3b027276b7a9fea9589604114162f6957e6d47924b4d83e8`  
		Last Modified: Tue, 14 Aug 2018 11:56:09 GMT  
		Size: 18.6 MB (18598167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55c8479216465978684fa32ed6f10da3902905e2e3aa22d900c5afb49a30252`  
		Last Modified: Tue, 14 Aug 2018 11:56:06 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d835cd8566595f51847e544aa05de52ca4ae93a8df9fa9ef7e748887c0ef7303`  
		Last Modified: Tue, 14 Aug 2018 11:56:10 GMT  
		Size: 8.7 MB (8652328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:springBoot1` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:6f049b8c62be93b7c3a6469c6c0c0e33479b60a456f188f56134e68cfde43add
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229269719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3200e7e847364b4ea4d9dfa46e94ae4ce953cee2aaedc854dedc53d14b29b24`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 17 Jul 2018 11:24:32 GMT
ADD file:93b9efc61400dd63da35d3bdf0a8937a0e869256c0a1448918c67d8dd4bb9a44 in / 
# Tue, 17 Jul 2018 11:24:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:24:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:24:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:25:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:25:09 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 20:11:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 17 Jul 2018 20:11:32 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 09:12:38 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Tue, 14 Aug 2018 09:15:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 14 Aug 2018 09:15:14 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 14 Aug 2018 10:42:38 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 14 Aug 2018 10:43:05 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 10:43:07 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 14 Aug 2018 10:43:09 GMT
ARG LIBERTY_URL
# Tue, 14 Aug 2018 10:43:12 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 14 Aug 2018 10:43:27 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 14 Aug 2018 10:43:28 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 10:43:29 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 14 Aug 2018 10:43:30 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 14 Aug 2018 10:43:31 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 14 Aug 2018 10:43:38 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 14 Aug 2018 10:43:40 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 14 Aug 2018 10:43:42 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 14 Aug 2018 10:43:43 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 14 Aug 2018 10:43:45 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 14 Aug 2018 10:43:47 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 14 Aug 2018 10:44:06 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 14 Aug 2018 10:47:02 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-1.5 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 14 Aug 2018 10:47:03 GMT
COPY file:01d87f11d05fde398ec003f0aeae67fd944b6f2f7ca7d69b7d29cac22e0318e7 in /config/ 
# Tue, 14 Aug 2018 10:47:15 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:1d42d48bcb676f02dfc09c86eb381bee74fb84bdad7247d643311c55e97b03e1`  
		Last Modified: Tue, 17 Jul 2018 11:28:58 GMT  
		Size: 45.5 MB (45543237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7257a0c84303a4e1bc7b272c1795b237b5a819780dc3ee848bd9aa516c0833`  
		Last Modified: Tue, 17 Jul 2018 11:28:44 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8d824019e9337c4643bb01728d9d6d1dce98f3db1b568a0db0ece041f5d4f9`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795728728939c3ed0a7b959cf48ae72dcbab4d7b2bf437b3bead8ddd238ca995`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5d42ebe2b0960d616db6b6868bb1f7f47842478d500b1e5d783fa2b2baf876`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7946b06c85eb566d0b328fd27ed4fa31e7603df969091339b9fdd0b138f0a90c`  
		Last Modified: Tue, 17 Jul 2018 20:27:29 GMT  
		Size: 2.9 MB (2880626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb44982ef279dae05091f0cb16ce63dc3db69aa358cb51a9726564901c31390`  
		Last Modified: Tue, 14 Aug 2018 09:25:05 GMT  
		Size: 141.0 MB (141049504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423488ee12fa4eee7a8d264c5813f321144aa3101435766b6f1b38c69d78abc0`  
		Last Modified: Tue, 14 Aug 2018 11:05:15 GMT  
		Size: 453.1 KB (453068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29471e72446f127436d8f107ee3de613da2a3b5f04ae9c0f25c250f0afcf6f15`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 12.5 MB (12494063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c80f464edd2f18839071d0e7ff2b90028b2b99b4f28acb15dbbd509424c5fa`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacd2428802e3d54c9194b62cb5d164b20c5a7ccdfa4952895114ba9721f4caa`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 690.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07f8736665d59f0a84cc5e7645ecb97417f9ec707b7d47992042fd58a8a3c42`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8ad372a08242ccecd6231fbdf343c896b37b30aa6505f0d7c45569b209a8fb4`  
		Last Modified: Tue, 14 Aug 2018 11:06:10 GMT  
		Size: 18.6 MB (18598754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27aa9032a95a482a2fe228bea12462933897f57dfb438ea860d0b40056e4e3d8`  
		Last Modified: Tue, 14 Aug 2018 11:06:08 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944e50ef0d3002bec2f20524f45243bff8bed7ff07b83b0203a7db0effb6ebd0`  
		Last Modified: Tue, 14 Aug 2018 11:06:11 GMT  
		Size: 8.2 MB (8245477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:springBoot1` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:becff3dbb27fd284a03395b3e6e2c56e60702118ce58532f3929a52482fa2158
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.9 MB (211925366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52eb4bccfd81dd25d6d71acedb3f93c743e820a43fc08b32c3b903cf64311277`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Jul 2018 12:59:42 GMT
ADD file:3370b396b7b93b08d1f609f06e321c05d930dc00cb6ae8f0f65d4ed39166245b in / 
# Fri, 27 Jul 2018 12:59:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:59:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:59:44 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:59:45 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:59:45 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:16:38 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 27 Jul 2018 13:16:46 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 12:17:25 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Tue, 14 Aug 2018 12:18:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 14 Aug 2018 12:18:06 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 14 Aug 2018 12:42:37 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 14 Aug 2018 12:42:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 12:42:44 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 14 Aug 2018 12:42:44 GMT
ARG LIBERTY_URL
# Tue, 14 Aug 2018 12:42:44 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 14 Aug 2018 12:42:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 14 Aug 2018 12:42:50 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 12:42:50 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 14 Aug 2018 12:42:50 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 14 Aug 2018 12:42:51 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 14 Aug 2018 12:42:54 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 14 Aug 2018 12:42:54 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 14 Aug 2018 12:42:54 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 14 Aug 2018 12:42:55 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 14 Aug 2018 12:42:55 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 14 Aug 2018 12:42:55 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 14 Aug 2018 12:43:09 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 14 Aug 2018 12:45:59 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-1.5 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 14 Aug 2018 12:45:59 GMT
COPY file:01d87f11d05fde398ec003f0aeae67fd944b6f2f7ca7d69b7d29cac22e0318e7 in /config/ 
# Tue, 14 Aug 2018 12:46:07 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:3c676c78c45c4416ba6a9c1bcadd5156f03d0bca9e31f85fc01fca458930cfd5`  
		Last Modified: Fri, 27 Jul 2018 13:01:00 GMT  
		Size: 42.2 MB (42233178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a735e77c595422e7ecd0ca0e6359ba21a9769b86c1b6231aebfe8feacd95dcc7`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccb796144ba65e756e8cdfdf093072cbe9255706f96d95aad84fa242f1afb41`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe28213b67e6813cbc89ec0b7034fb71c4896077f9cbfab52de63f4c0201fc1e`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aefcb4b684bed9db0f7491ecade1c76f4268b4216658445ffa9942809ea5299d`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38506499c0863fa74e87358752273bd0f6b80ed1a533dfbbf8106533b5cfa2b`  
		Last Modified: Fri, 27 Jul 2018 13:19:25 GMT  
		Size: 2.8 MB (2764795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b7c9c3592488d9c92e4304ffa5ed6cba0528fe123f114e9070ad9ca2a61d8c`  
		Last Modified: Tue, 14 Aug 2018 12:20:37 GMT  
		Size: 127.0 MB (126957355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073576dab032cab1aacb1ad08982bb8fb96c5daf60d793b889ed219a089dca3e`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 427.5 KB (427473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7517d1495fc28b2961bd0adf416504ce76132726337fabec4e97738785ee2113`  
		Last Modified: Tue, 14 Aug 2018 12:58:47 GMT  
		Size: 12.5 MB (12494060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474d3f2020f1d313de7941e967153bda49632d6295536ac32cb6ae7651c90f48`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd8fe8e0d0960623174e1b507b86839c92304e4f5658f10e8470576e9b52d71`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24cc4e77213d5c99eafc9bd57f812b316684d02c4bc326eeaa05689295e7865c`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 973.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:879433d8e527d05746b978f7f4a8346088b07a679aaae2e3717f4502d41c94e8`  
		Last Modified: Tue, 14 Aug 2018 12:59:23 GMT  
		Size: 18.6 MB (18598147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc701653b8322351bfb05e7b6b135d5ab6dcc851aa1ea4bd0cb9307bc2546a69`  
		Last Modified: Tue, 14 Aug 2018 12:59:20 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c6d554c7070499a5948102fe5694e92a8d8f0e64874b3c3530b5d79a87ce831`  
		Last Modified: Tue, 14 Aug 2018 12:59:24 GMT  
		Size: 8.4 MB (8445598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:springBoot2`

```console
$ docker pull websphere-liberty@sha256:3424cc3498d03a29ed893496ec709a6851eb99bebc66b892cbe1173e7b03b3fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:springBoot2` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:2606e66fac0902ea3c4e3d2b55ac9287007a5225362c81b9d5987c4033db9f3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.9 MB (213911909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02bf89d8263f2e47153f302c78fcd70d179438c6185d88f57e5858c5aa3a4186`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 26 Jul 2018 22:23:08 GMT
ADD file:204fb7ccb19ff7e863331131138621ff4d22720b3718e8f296902cc7d4f635b5 in / 
# Thu, 26 Jul 2018 22:23:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:23:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:23:11 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:14:00 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 26 Jul 2018 23:14:13 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 13 Aug 2018 22:21:13 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Mon, 13 Aug 2018 22:22:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 13 Aug 2018 22:22:05 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Mon, 13 Aug 2018 23:17:21 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Mon, 13 Aug 2018 23:17:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 13 Aug 2018 23:17:38 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Mon, 13 Aug 2018 23:17:38 GMT
ARG LIBERTY_URL
# Mon, 13 Aug 2018 23:17:39 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 13 Aug 2018 23:17:43 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 13 Aug 2018 23:17:44 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Aug 2018 23:17:44 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Mon, 13 Aug 2018 23:17:44 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 13 Aug 2018 23:17:45 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Mon, 13 Aug 2018 23:17:47 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 13 Aug 2018 23:17:47 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Mon, 13 Aug 2018 23:17:48 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 13 Aug 2018 23:17:48 GMT
ENV KEYSTORE_REQUIRED=true
# Mon, 13 Aug 2018 23:17:48 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Mon, 13 Aug 2018 23:17:48 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Mon, 13 Aug 2018 23:18:39 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 13 Aug 2018 23:23:12 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-2.0 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Mon, 13 Aug 2018 23:23:12 GMT
COPY file:9bd7671f14eb4dab5e8157daf2d04f397fe5fb91e12a88930e54b90e462cac3c in /config/ 
# Mon, 13 Aug 2018 23:23:24 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:8ee29e426c26c79e7ba03ccc8bbc7fe99db00ffcbccb679d9c643b5546d8dc8a`  
		Last Modified: Thu, 26 Jul 2018 22:27:22 GMT  
		Size: 43.2 MB (43228646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e83b260b73b908ebabde46b72fc5790bf4f029b53acbbfe35da8ff8fba795ac`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26b65fd1143ee4f9b7b6b958aeafdb996172d10b723f0bba24335a8f7ae692c`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dca07f8222e24aab97f026444d66a7604e4ae2b708cf079ff67a90c42efa60`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420ae9e10b3f6a74f527914bc3c766b128435a62eca1061f41167205d5b0230`  
		Last Modified: Thu, 26 Jul 2018 22:26:54 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0a3902ea56575347cec98de9cdea35051edefa24d67eccb50d1883d1343fdb`  
		Last Modified: Thu, 26 Jul 2018 23:22:16 GMT  
		Size: 3.0 MB (3021010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01da43ccf6625a7f02104b7b1e0d7d5830af2342d2325f3b602cb0348daf11a4`  
		Last Modified: Mon, 13 Aug 2018 22:28:41 GMT  
		Size: 127.7 MB (127680807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112122e37aaf233d36dffe8730b9e40099be847317cdaf295eabe7103c28ca29`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 422.3 KB (422323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34cc873fb8227d589bcff22c347867fa1ad45ef857e6713d1dc72e8005bf2a1`  
		Last Modified: Mon, 13 Aug 2018 23:33:50 GMT  
		Size: 12.5 MB (12494055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3acc1083d068ca97baf77794d1f1d1bd49daa4212155b8b272d75dbb4858f07`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b6ba759a53614c07247e87c087c69d0eb399b3201390c23c1181d9a37567b1`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 644.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233bcd4d4732830f99144a25500a9ed00458a61b9aed7d89250d7c7f9d23e205`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5615b3de8cdeb380b55bba966c694003fdc372e028b8dcbcec77c2ece52d025`  
		Last Modified: Mon, 13 Aug 2018 23:35:09 GMT  
		Size: 18.6 MB (18598332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1eccc83afc6612ef21a269df28d34d5f9b0ca802b0c69edf9be0515919e236`  
		Last Modified: Mon, 13 Aug 2018 23:35:06 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848517cd0968493854e5a8a66f1fb3cca8cef8d9133c9f620d64a2136cd14321`  
		Last Modified: Mon, 13 Aug 2018 23:35:09 GMT  
		Size: 8.5 MB (8461888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:springBoot2` - linux; 386

```console
$ docker pull websphere-liberty@sha256:a34273aa5cab9d5485bdd76bddfd97d96106d5312254e0321d367ec0148284ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.4 MB (202416576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6a74d36331772d03afcf5b807482bdc56cc2821d92996fef5d90e4b63cf5708`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Jul 2018 11:04:12 GMT
ADD file:bf213ed5365ee4c9a7f64ec5c337df6779168f609a0fb0ddd2cdf558df419aca in / 
# Fri, 27 Jul 2018 11:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 11:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 11:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 11:04:16 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 11:38:49 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 27 Jul 2018 11:39:16 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 11:11:05 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Tue, 14 Aug 2018 11:11:55 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 14 Aug 2018 11:11:55 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 14 Aug 2018 11:41:00 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 14 Aug 2018 11:41:18 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 11:41:18 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 14 Aug 2018 11:41:18 GMT
ARG LIBERTY_URL
# Tue, 14 Aug 2018 11:41:18 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 14 Aug 2018 11:41:23 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 14 Aug 2018 11:41:23 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 11:41:24 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 14 Aug 2018 11:41:24 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 14 Aug 2018 11:41:25 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 14 Aug 2018 11:41:26 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 14 Aug 2018 11:41:27 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 14 Aug 2018 11:41:27 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 14 Aug 2018 11:41:27 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 14 Aug 2018 11:41:27 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 14 Aug 2018 11:41:28 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 14 Aug 2018 11:41:44 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 14 Aug 2018 11:45:03 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-2.0 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 14 Aug 2018 11:45:04 GMT
COPY file:9bd7671f14eb4dab5e8157daf2d04f397fe5fb91e12a88930e54b90e462cac3c in /config/ 
# Tue, 14 Aug 2018 11:45:15 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:79c3321cd1db5170b2b17e4e7904e999afc88c5ba9168e6632c722f0ced80f2b`  
		Last Modified: Fri, 27 Jul 2018 11:08:03 GMT  
		Size: 43.5 MB (43498084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc08ce9a961adeec10d1eadfa16bc1cb9d2f8994e5d43432500a75cfaa09c6c`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d8c15b299b1de7aa1b6fb37d83b146c59e520ce7bfc25254544262ca705b48`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a97a3925b890b18279fac470160ce2e973a10ef456dce7d174780d4e24550f3`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c844083148ae3343326e2b07dc524e55fee4f261a1637e68ac86a32b97c4ce16`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a671001a55a0ce3af1d3064a1d7f01929b03423102de31cd7a87dd86f9751cd1`  
		Last Modified: Fri, 27 Jul 2018 11:43:11 GMT  
		Size: 2.9 MB (2875978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf1c7d8d3570a128e852fb2ae238df36286ff940f972ef1e06ddf48c532eb1d`  
		Last Modified: Tue, 14 Aug 2018 11:14:55 GMT  
		Size: 115.8 MB (115826066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c236c11960c0afaa57e2847a219cb26308cc4cd5a8c1b49e99454bd6cfb041b8`  
		Last Modified: Tue, 14 Aug 2018 11:55:16 GMT  
		Size: 420.9 KB (420854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88c78c385e77906144318dfac59e3a218eafd81d7816a51c21526ad68a6bcfc`  
		Last Modified: Tue, 14 Aug 2018 11:55:18 GMT  
		Size: 12.5 MB (12494063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f43e525757c1e0afb6a0d13ce4244001ef5f606abdebaf3c06e453ab295bc01`  
		Last Modified: Tue, 14 Aug 2018 11:55:15 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3891494cacfb98e93f4cd252fa3b22f383f7e177701d87452d41c46a4ced3c`  
		Last Modified: Tue, 14 Aug 2018 11:55:15 GMT  
		Size: 643.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1caf93ce53d1d37e6bf605f2fc3b2747253c58b2799060ac66a0f8e3df5d32a`  
		Last Modified: Tue, 14 Aug 2018 11:55:16 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8764f7675a30ce614fb4fbb1b6505fedfd905265398014e23e2e37f937da76f0`  
		Last Modified: Tue, 14 Aug 2018 11:56:30 GMT  
		Size: 18.6 MB (18598306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a362f62e87dfb1026ecf5cf196a6ecc0805dc8da178cf4a710be771cde313b3b`  
		Last Modified: Tue, 14 Aug 2018 11:56:28 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4850056db5fd114b4486f268668c8487dc7ac4f54c395eb1b76a5433695c9723`  
		Last Modified: Tue, 14 Aug 2018 11:56:33 GMT  
		Size: 8.7 MB (8698421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:springBoot2` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:ebc3e968a6c18191cfe6318b74166f8011a3d54213f27b826d59f5a5f25697dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229253403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2f88def9c4111e9e666dfbe0a71f32f4a27955491225f481c34e6263f648f59`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 17 Jul 2018 11:24:32 GMT
ADD file:93b9efc61400dd63da35d3bdf0a8937a0e869256c0a1448918c67d8dd4bb9a44 in / 
# Tue, 17 Jul 2018 11:24:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:24:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:24:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:25:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:25:09 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 20:11:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 17 Jul 2018 20:11:32 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 09:12:38 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Tue, 14 Aug 2018 09:15:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 14 Aug 2018 09:15:14 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 14 Aug 2018 10:42:38 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 14 Aug 2018 10:43:05 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 10:43:07 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 14 Aug 2018 10:43:09 GMT
ARG LIBERTY_URL
# Tue, 14 Aug 2018 10:43:12 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 14 Aug 2018 10:43:27 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 14 Aug 2018 10:43:28 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 10:43:29 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 14 Aug 2018 10:43:30 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 14 Aug 2018 10:43:31 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 14 Aug 2018 10:43:38 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 14 Aug 2018 10:43:40 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 14 Aug 2018 10:43:42 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 14 Aug 2018 10:43:43 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 14 Aug 2018 10:43:45 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 14 Aug 2018 10:43:47 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 14 Aug 2018 10:44:06 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 14 Aug 2018 10:47:54 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-2.0 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 14 Aug 2018 10:47:56 GMT
COPY file:9bd7671f14eb4dab5e8157daf2d04f397fe5fb91e12a88930e54b90e462cac3c in /config/ 
# Tue, 14 Aug 2018 10:48:08 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:1d42d48bcb676f02dfc09c86eb381bee74fb84bdad7247d643311c55e97b03e1`  
		Last Modified: Tue, 17 Jul 2018 11:28:58 GMT  
		Size: 45.5 MB (45543237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7257a0c84303a4e1bc7b272c1795b237b5a819780dc3ee848bd9aa516c0833`  
		Last Modified: Tue, 17 Jul 2018 11:28:44 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8d824019e9337c4643bb01728d9d6d1dce98f3db1b568a0db0ece041f5d4f9`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795728728939c3ed0a7b959cf48ae72dcbab4d7b2bf437b3bead8ddd238ca995`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5d42ebe2b0960d616db6b6868bb1f7f47842478d500b1e5d783fa2b2baf876`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7946b06c85eb566d0b328fd27ed4fa31e7603df969091339b9fdd0b138f0a90c`  
		Last Modified: Tue, 17 Jul 2018 20:27:29 GMT  
		Size: 2.9 MB (2880626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb44982ef279dae05091f0cb16ce63dc3db69aa358cb51a9726564901c31390`  
		Last Modified: Tue, 14 Aug 2018 09:25:05 GMT  
		Size: 141.0 MB (141049504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423488ee12fa4eee7a8d264c5813f321144aa3101435766b6f1b38c69d78abc0`  
		Last Modified: Tue, 14 Aug 2018 11:05:15 GMT  
		Size: 453.1 KB (453068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29471e72446f127436d8f107ee3de613da2a3b5f04ae9c0f25c250f0afcf6f15`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 12.5 MB (12494063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c80f464edd2f18839071d0e7ff2b90028b2b99b4f28acb15dbbd509424c5fa`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacd2428802e3d54c9194b62cb5d164b20c5a7ccdfa4952895114ba9721f4caa`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 690.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07f8736665d59f0a84cc5e7645ecb97417f9ec707b7d47992042fd58a8a3c42`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4565e56c8d89bb6d570c681ac0f9df401382150229fd7747db50e4e02c4080e7`  
		Last Modified: Tue, 14 Aug 2018 11:06:30 GMT  
		Size: 18.6 MB (18598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a190ae6114055a057b198464368f17df3ab8da663685dfe77ba294dfd83b7d`  
		Last Modified: Tue, 14 Aug 2018 11:06:28 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77435adbd419d4545f65e87746aa4f615963b6992851b045f5a0920aacc49e8e`  
		Last Modified: Tue, 14 Aug 2018 11:06:31 GMT  
		Size: 8.2 MB (8229069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:springBoot2` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:0fb1609d5050a98e3b41b261f3e887b04708765d0945b61f9a4dd29a9b5a34fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.2 MB (212181311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5ca34a18219043b2e17791230ce03fce360e4379e2e922b0336ca47552aad20`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Jul 2018 12:59:42 GMT
ADD file:3370b396b7b93b08d1f609f06e321c05d930dc00cb6ae8f0f65d4ed39166245b in / 
# Fri, 27 Jul 2018 12:59:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:59:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:59:44 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:59:45 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:59:45 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:16:38 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 27 Jul 2018 13:16:46 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 12:17:25 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Tue, 14 Aug 2018 12:18:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 14 Aug 2018 12:18:06 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 14 Aug 2018 12:42:37 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 14 Aug 2018 12:42:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 12:42:44 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 14 Aug 2018 12:42:44 GMT
ARG LIBERTY_URL
# Tue, 14 Aug 2018 12:42:44 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 14 Aug 2018 12:42:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 14 Aug 2018 12:42:50 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 12:42:50 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 14 Aug 2018 12:42:50 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 14 Aug 2018 12:42:51 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 14 Aug 2018 12:42:54 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 14 Aug 2018 12:42:54 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 14 Aug 2018 12:42:54 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 14 Aug 2018 12:42:55 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 14 Aug 2018 12:42:55 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 14 Aug 2018 12:42:55 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 14 Aug 2018 12:43:09 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 14 Aug 2018 12:46:43 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-2.0 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 14 Aug 2018 12:46:45 GMT
COPY file:9bd7671f14eb4dab5e8157daf2d04f397fe5fb91e12a88930e54b90e462cac3c in /config/ 
# Tue, 14 Aug 2018 12:47:17 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:3c676c78c45c4416ba6a9c1bcadd5156f03d0bca9e31f85fc01fca458930cfd5`  
		Last Modified: Fri, 27 Jul 2018 13:01:00 GMT  
		Size: 42.2 MB (42233178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a735e77c595422e7ecd0ca0e6359ba21a9769b86c1b6231aebfe8feacd95dcc7`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccb796144ba65e756e8cdfdf093072cbe9255706f96d95aad84fa242f1afb41`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe28213b67e6813cbc89ec0b7034fb71c4896077f9cbfab52de63f4c0201fc1e`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aefcb4b684bed9db0f7491ecade1c76f4268b4216658445ffa9942809ea5299d`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38506499c0863fa74e87358752273bd0f6b80ed1a533dfbbf8106533b5cfa2b`  
		Last Modified: Fri, 27 Jul 2018 13:19:25 GMT  
		Size: 2.8 MB (2764795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b7c9c3592488d9c92e4304ffa5ed6cba0528fe123f114e9070ad9ca2a61d8c`  
		Last Modified: Tue, 14 Aug 2018 12:20:37 GMT  
		Size: 127.0 MB (126957355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073576dab032cab1aacb1ad08982bb8fb96c5daf60d793b889ed219a089dca3e`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 427.5 KB (427473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7517d1495fc28b2961bd0adf416504ce76132726337fabec4e97738785ee2113`  
		Last Modified: Tue, 14 Aug 2018 12:58:47 GMT  
		Size: 12.5 MB (12494060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474d3f2020f1d313de7941e967153bda49632d6295536ac32cb6ae7651c90f48`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd8fe8e0d0960623174e1b507b86839c92304e4f5658f10e8470576e9b52d71`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24cc4e77213d5c99eafc9bd57f812b316684d02c4bc326eeaa05689295e7865c`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 973.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe483073ecf7b67f7803281860d58153016e096641be1c1d4a2ed42c12a910d4`  
		Last Modified: Tue, 14 Aug 2018 12:59:39 GMT  
		Size: 18.6 MB (18598327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b23d0839bfdcd5925e993b2811aab693b484f6144e7b6c13ccfdd455598139`  
		Last Modified: Tue, 14 Aug 2018 12:59:36 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:582f28f6bc2575bcc9874150cae83c50b9f52cb0aab73995fc9dcdc40d129721`  
		Last Modified: Tue, 14 Aug 2018 12:59:39 GMT  
		Size: 8.7 MB (8701362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:webProfile7`

```console
$ docker pull websphere-liberty@sha256:28a10a655a29bb06591fd48121fcabdbb8447224c232ed99e15f44f349a11058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:webProfile7` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:1a839c815de6a063b3f109e41b05ec12c8018c1ccec955fd90e8e7f69d0d22dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272109637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d2259609e46b5ea4b3159af13b8dde8c4d1a9204cba238a8d02707365900d48`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 26 Jul 2018 22:23:08 GMT
ADD file:204fb7ccb19ff7e863331131138621ff4d22720b3718e8f296902cc7d4f635b5 in / 
# Thu, 26 Jul 2018 22:23:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:23:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:23:11 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:14:00 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 26 Jul 2018 23:14:13 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 13 Aug 2018 22:21:13 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Mon, 13 Aug 2018 22:22:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 13 Aug 2018 22:22:05 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Mon, 13 Aug 2018 23:17:21 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Mon, 13 Aug 2018 23:17:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 13 Aug 2018 23:17:38 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Mon, 13 Aug 2018 23:17:38 GMT
ARG LIBERTY_URL
# Mon, 13 Aug 2018 23:17:39 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 13 Aug 2018 23:17:43 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 13 Aug 2018 23:17:44 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Aug 2018 23:17:44 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Mon, 13 Aug 2018 23:17:44 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 13 Aug 2018 23:17:45 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Mon, 13 Aug 2018 23:17:47 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 13 Aug 2018 23:17:47 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Mon, 13 Aug 2018 23:17:48 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 13 Aug 2018 23:17:48 GMT
ENV KEYSTORE_REQUIRED=true
# Mon, 13 Aug 2018 23:17:48 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Mon, 13 Aug 2018 23:17:48 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Mon, 13 Aug 2018 23:18:39 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 13 Aug 2018 23:25:09 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 sessionCache-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Mon, 13 Aug 2018 23:25:10 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Mon, 13 Aug 2018 23:25:26 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:8ee29e426c26c79e7ba03ccc8bbc7fe99db00ffcbccb679d9c643b5546d8dc8a`  
		Last Modified: Thu, 26 Jul 2018 22:27:22 GMT  
		Size: 43.2 MB (43228646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e83b260b73b908ebabde46b72fc5790bf4f029b53acbbfe35da8ff8fba795ac`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26b65fd1143ee4f9b7b6b958aeafdb996172d10b723f0bba24335a8f7ae692c`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dca07f8222e24aab97f026444d66a7604e4ae2b708cf079ff67a90c42efa60`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420ae9e10b3f6a74f527914bc3c766b128435a62eca1061f41167205d5b0230`  
		Last Modified: Thu, 26 Jul 2018 22:26:54 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0a3902ea56575347cec98de9cdea35051edefa24d67eccb50d1883d1343fdb`  
		Last Modified: Thu, 26 Jul 2018 23:22:16 GMT  
		Size: 3.0 MB (3021010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01da43ccf6625a7f02104b7b1e0d7d5830af2342d2325f3b602cb0348daf11a4`  
		Last Modified: Mon, 13 Aug 2018 22:28:41 GMT  
		Size: 127.7 MB (127680807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112122e37aaf233d36dffe8730b9e40099be847317cdaf295eabe7103c28ca29`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 422.3 KB (422323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34cc873fb8227d589bcff22c347867fa1ad45ef857e6713d1dc72e8005bf2a1`  
		Last Modified: Mon, 13 Aug 2018 23:33:50 GMT  
		Size: 12.5 MB (12494055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3acc1083d068ca97baf77794d1f1d1bd49daa4212155b8b272d75dbb4858f07`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b6ba759a53614c07247e87c087c69d0eb399b3201390c23c1181d9a37567b1`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 644.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233bcd4d4732830f99144a25500a9ed00458a61b9aed7d89250d7c7f9d23e205`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7383dfa07b0f8c05d516a95d33ec6ba2709e531f07221d237ada79aae070e183`  
		Last Modified: Mon, 13 Aug 2018 23:35:36 GMT  
		Size: 73.8 MB (73768777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2086f9524f38676ca49b37b7f2642230747d4d22733a6386fb91f752e5b72a55`  
		Last Modified: Mon, 13 Aug 2018 23:35:28 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de510d9a3af3938d6885ddccdf48b624f0bac0c5c7fee1fd8dca7f45afea0dd0`  
		Last Modified: Mon, 13 Aug 2018 23:35:32 GMT  
		Size: 11.5 MB (11489161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile7` - linux; 386

```console
$ docker pull websphere-liberty@sha256:325d2f0b4e7c116a7b9fa473c21da1629452abfe5a41acdee7860d6a58550618
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.4 MB (260405537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e682e0f516d4db80ee9bf6b83a42ebdbdf1137146b9aa13f17d5884acc4d979`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Jul 2018 11:04:12 GMT
ADD file:bf213ed5365ee4c9a7f64ec5c337df6779168f609a0fb0ddd2cdf558df419aca in / 
# Fri, 27 Jul 2018 11:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 11:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 11:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 11:04:16 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 11:38:49 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 27 Jul 2018 11:39:16 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 11:11:05 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Tue, 14 Aug 2018 11:11:55 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 14 Aug 2018 11:11:55 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 14 Aug 2018 11:41:00 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 14 Aug 2018 11:41:18 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 11:41:18 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 14 Aug 2018 11:41:18 GMT
ARG LIBERTY_URL
# Tue, 14 Aug 2018 11:41:18 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 14 Aug 2018 11:41:23 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 14 Aug 2018 11:41:23 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 11:41:24 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 14 Aug 2018 11:41:24 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 14 Aug 2018 11:41:25 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 14 Aug 2018 11:41:26 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 14 Aug 2018 11:41:27 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 14 Aug 2018 11:41:27 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 14 Aug 2018 11:41:27 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 14 Aug 2018 11:41:27 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 14 Aug 2018 11:41:28 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 14 Aug 2018 11:41:44 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 14 Aug 2018 11:46:52 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 sessionCache-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 14 Aug 2018 11:46:53 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Tue, 14 Aug 2018 11:47:09 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:79c3321cd1db5170b2b17e4e7904e999afc88c5ba9168e6632c722f0ced80f2b`  
		Last Modified: Fri, 27 Jul 2018 11:08:03 GMT  
		Size: 43.5 MB (43498084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc08ce9a961adeec10d1eadfa16bc1cb9d2f8994e5d43432500a75cfaa09c6c`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d8c15b299b1de7aa1b6fb37d83b146c59e520ce7bfc25254544262ca705b48`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a97a3925b890b18279fac470160ce2e973a10ef456dce7d174780d4e24550f3`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c844083148ae3343326e2b07dc524e55fee4f261a1637e68ac86a32b97c4ce16`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a671001a55a0ce3af1d3064a1d7f01929b03423102de31cd7a87dd86f9751cd1`  
		Last Modified: Fri, 27 Jul 2018 11:43:11 GMT  
		Size: 2.9 MB (2875978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf1c7d8d3570a128e852fb2ae238df36286ff940f972ef1e06ddf48c532eb1d`  
		Last Modified: Tue, 14 Aug 2018 11:14:55 GMT  
		Size: 115.8 MB (115826066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c236c11960c0afaa57e2847a219cb26308cc4cd5a8c1b49e99454bd6cfb041b8`  
		Last Modified: Tue, 14 Aug 2018 11:55:16 GMT  
		Size: 420.9 KB (420854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88c78c385e77906144318dfac59e3a218eafd81d7816a51c21526ad68a6bcfc`  
		Last Modified: Tue, 14 Aug 2018 11:55:18 GMT  
		Size: 12.5 MB (12494063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f43e525757c1e0afb6a0d13ce4244001ef5f606abdebaf3c06e453ab295bc01`  
		Last Modified: Tue, 14 Aug 2018 11:55:15 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3891494cacfb98e93f4cd252fa3b22f383f7e177701d87452d41c46a4ced3c`  
		Last Modified: Tue, 14 Aug 2018 11:55:15 GMT  
		Size: 643.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1caf93ce53d1d37e6bf605f2fc3b2747253c58b2799060ac66a0f8e3df5d32a`  
		Last Modified: Tue, 14 Aug 2018 11:55:16 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab6a2635c3a982233e8d1ee024f95ca734592c0c2b2430dea862d6f72ed869ff`  
		Last Modified: Tue, 14 Aug 2018 11:57:00 GMT  
		Size: 73.8 MB (73768967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03dbac4cbc2275686e37619108b7d759911f2a1ef8f55b8bb203e16a5fc9f68`  
		Last Modified: Tue, 14 Aug 2018 11:56:51 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e0e7276dc1855d206527fac2493f22e1ca2fa3fc17db41b12efe97ee20d392c`  
		Last Modified: Tue, 14 Aug 2018 11:57:02 GMT  
		Size: 11.5 MB (11516708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile7` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:fe988dc7a2f9253fb9ca95030fa1ccba953c5ef2f087b92b61c283724bd526f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.4 MB (287423878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3287ca3a666efe9877a88c39ad4f6834a0ee5aea9deb063caa4bc19fdeffbf28`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 17 Jul 2018 11:24:32 GMT
ADD file:93b9efc61400dd63da35d3bdf0a8937a0e869256c0a1448918c67d8dd4bb9a44 in / 
# Tue, 17 Jul 2018 11:24:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:24:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:24:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:25:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:25:09 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 20:11:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 17 Jul 2018 20:11:32 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 09:12:38 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Tue, 14 Aug 2018 09:15:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 14 Aug 2018 09:15:14 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 14 Aug 2018 10:42:38 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 14 Aug 2018 10:43:05 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 10:43:07 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 14 Aug 2018 10:43:09 GMT
ARG LIBERTY_URL
# Tue, 14 Aug 2018 10:43:12 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 14 Aug 2018 10:43:27 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 14 Aug 2018 10:43:28 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 10:43:29 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 14 Aug 2018 10:43:30 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 14 Aug 2018 10:43:31 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 14 Aug 2018 10:43:38 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 14 Aug 2018 10:43:40 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 14 Aug 2018 10:43:42 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 14 Aug 2018 10:43:43 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 14 Aug 2018 10:43:45 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 14 Aug 2018 10:43:47 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 14 Aug 2018 10:44:06 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 14 Aug 2018 10:49:58 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 sessionCache-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 14 Aug 2018 10:49:59 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Tue, 14 Aug 2018 10:50:17 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:1d42d48bcb676f02dfc09c86eb381bee74fb84bdad7247d643311c55e97b03e1`  
		Last Modified: Tue, 17 Jul 2018 11:28:58 GMT  
		Size: 45.5 MB (45543237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7257a0c84303a4e1bc7b272c1795b237b5a819780dc3ee848bd9aa516c0833`  
		Last Modified: Tue, 17 Jul 2018 11:28:44 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8d824019e9337c4643bb01728d9d6d1dce98f3db1b568a0db0ece041f5d4f9`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795728728939c3ed0a7b959cf48ae72dcbab4d7b2bf437b3bead8ddd238ca995`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5d42ebe2b0960d616db6b6868bb1f7f47842478d500b1e5d783fa2b2baf876`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7946b06c85eb566d0b328fd27ed4fa31e7603df969091339b9fdd0b138f0a90c`  
		Last Modified: Tue, 17 Jul 2018 20:27:29 GMT  
		Size: 2.9 MB (2880626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb44982ef279dae05091f0cb16ce63dc3db69aa358cb51a9726564901c31390`  
		Last Modified: Tue, 14 Aug 2018 09:25:05 GMT  
		Size: 141.0 MB (141049504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423488ee12fa4eee7a8d264c5813f321144aa3101435766b6f1b38c69d78abc0`  
		Last Modified: Tue, 14 Aug 2018 11:05:15 GMT  
		Size: 453.1 KB (453068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29471e72446f127436d8f107ee3de613da2a3b5f04ae9c0f25c250f0afcf6f15`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 12.5 MB (12494063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c80f464edd2f18839071d0e7ff2b90028b2b99b4f28acb15dbbd509424c5fa`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacd2428802e3d54c9194b62cb5d164b20c5a7ccdfa4952895114ba9721f4caa`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 690.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07f8736665d59f0a84cc5e7645ecb97417f9ec707b7d47992042fd58a8a3c42`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971b8f70cf0aeb84328aef2a2707b8b14f222ba3f6f5853959199b344631d46d`  
		Last Modified: Tue, 14 Aug 2018 11:06:55 GMT  
		Size: 73.8 MB (73771539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62aecd052d2ce1f303312af74688c2b213abaacf70ae61bb715c30cf7bc3576e`  
		Last Modified: Tue, 14 Aug 2018 11:06:44 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4cbf8211dd7400ca2745d0855724590d858c0fdc46c08c2b7df543261a8cf9`  
		Last Modified: Tue, 14 Aug 2018 11:06:49 GMT  
		Size: 11.2 MB (11226838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile7` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:473f3ac3f912037109c9f5428e5775f0302deeb075fbfac694fa1b455ab72747
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270198176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86e941ac854b14290fdc68f2112a1acc2284d722b6b273a9ac538d7877bcd250`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Jul 2018 12:59:42 GMT
ADD file:3370b396b7b93b08d1f609f06e321c05d930dc00cb6ae8f0f65d4ed39166245b in / 
# Fri, 27 Jul 2018 12:59:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:59:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:59:44 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:59:45 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:59:45 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:16:38 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 27 Jul 2018 13:16:46 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 12:17:25 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Tue, 14 Aug 2018 12:18:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 14 Aug 2018 12:18:06 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 14 Aug 2018 12:42:37 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 14 Aug 2018 12:42:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 12:42:44 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 14 Aug 2018 12:42:44 GMT
ARG LIBERTY_URL
# Tue, 14 Aug 2018 12:42:44 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 14 Aug 2018 12:42:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 14 Aug 2018 12:42:50 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 12:42:50 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 14 Aug 2018 12:42:50 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 14 Aug 2018 12:42:51 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 14 Aug 2018 12:42:54 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 14 Aug 2018 12:42:54 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 14 Aug 2018 12:42:54 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 14 Aug 2018 12:42:55 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 14 Aug 2018 12:42:55 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 14 Aug 2018 12:42:55 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 14 Aug 2018 12:43:09 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 14 Aug 2018 12:48:54 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 sessionCache-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 14 Aug 2018 12:48:55 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Tue, 14 Aug 2018 12:49:12 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:3c676c78c45c4416ba6a9c1bcadd5156f03d0bca9e31f85fc01fca458930cfd5`  
		Last Modified: Fri, 27 Jul 2018 13:01:00 GMT  
		Size: 42.2 MB (42233178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a735e77c595422e7ecd0ca0e6359ba21a9769b86c1b6231aebfe8feacd95dcc7`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccb796144ba65e756e8cdfdf093072cbe9255706f96d95aad84fa242f1afb41`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe28213b67e6813cbc89ec0b7034fb71c4896077f9cbfab52de63f4c0201fc1e`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aefcb4b684bed9db0f7491ecade1c76f4268b4216658445ffa9942809ea5299d`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38506499c0863fa74e87358752273bd0f6b80ed1a533dfbbf8106533b5cfa2b`  
		Last Modified: Fri, 27 Jul 2018 13:19:25 GMT  
		Size: 2.8 MB (2764795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b7c9c3592488d9c92e4304ffa5ed6cba0528fe123f114e9070ad9ca2a61d8c`  
		Last Modified: Tue, 14 Aug 2018 12:20:37 GMT  
		Size: 127.0 MB (126957355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073576dab032cab1aacb1ad08982bb8fb96c5daf60d793b889ed219a089dca3e`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 427.5 KB (427473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7517d1495fc28b2961bd0adf416504ce76132726337fabec4e97738785ee2113`  
		Last Modified: Tue, 14 Aug 2018 12:58:47 GMT  
		Size: 12.5 MB (12494060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474d3f2020f1d313de7941e967153bda49632d6295536ac32cb6ae7651c90f48`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd8fe8e0d0960623174e1b507b86839c92304e4f5658f10e8470576e9b52d71`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24cc4e77213d5c99eafc9bd57f812b316684d02c4bc326eeaa05689295e7865c`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 973.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af84c153f67fa57767c5a63391f29e8d894e818905d79058763516b58cbe591`  
		Last Modified: Tue, 14 Aug 2018 12:59:58 GMT  
		Size: 73.8 MB (73768770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbc720071791ca05441c5c29914e3226a3ad6c581ce2cbb9662f90b25a067e8`  
		Last Modified: Tue, 14 Aug 2018 12:59:48 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096cd34c1856dd616b4c1115349e41a09a5541167d48401dd3a6d515f8203e87`  
		Last Modified: Tue, 14 Aug 2018 12:59:54 GMT  
		Size: 11.5 MB (11547775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:webProfile8`

```console
$ docker pull websphere-liberty@sha256:3aff07d1ce55e07094b276aa30e1d29ea0793267299c4890bcd90579a07380a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:webProfile8` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:d7bce839453e1921c9334c7bf742d593223cec200742f9037e2ce5f259f414ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.3 MB (271261689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e82b0d9d29e4441ea04b3cedf4e90a449d05300de893d12135fc21be5ac084b7`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 26 Jul 2018 22:23:08 GMT
ADD file:204fb7ccb19ff7e863331131138621ff4d22720b3718e8f296902cc7d4f635b5 in / 
# Thu, 26 Jul 2018 22:23:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:23:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:23:11 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:14:00 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 26 Jul 2018 23:14:13 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 13 Aug 2018 22:21:13 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Mon, 13 Aug 2018 22:22:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 13 Aug 2018 22:22:05 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Mon, 13 Aug 2018 23:17:21 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Mon, 13 Aug 2018 23:17:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 13 Aug 2018 23:17:38 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Mon, 13 Aug 2018 23:17:38 GMT
ARG LIBERTY_URL
# Mon, 13 Aug 2018 23:17:39 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 13 Aug 2018 23:17:43 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 13 Aug 2018 23:17:44 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Aug 2018 23:17:44 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Mon, 13 Aug 2018 23:17:44 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 13 Aug 2018 23:17:45 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Mon, 13 Aug 2018 23:17:47 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 13 Aug 2018 23:17:47 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Mon, 13 Aug 2018 23:17:48 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 13 Aug 2018 23:17:48 GMT
ENV KEYSTORE_REQUIRED=true
# Mon, 13 Aug 2018 23:17:48 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Mon, 13 Aug 2018 23:17:48 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Mon, 13 Aug 2018 23:18:39 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 13 Aug 2018 23:29:33 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Mon, 13 Aug 2018 23:29:33 GMT
COPY file:2bacdb39d56c776a0d7ebecf922a9e9800e5a41f1ddc1d823ee04a029d580682 in /config/ 
# Mon, 13 Aug 2018 23:29:49 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:8ee29e426c26c79e7ba03ccc8bbc7fe99db00ffcbccb679d9c643b5546d8dc8a`  
		Last Modified: Thu, 26 Jul 2018 22:27:22 GMT  
		Size: 43.2 MB (43228646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e83b260b73b908ebabde46b72fc5790bf4f029b53acbbfe35da8ff8fba795ac`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26b65fd1143ee4f9b7b6b958aeafdb996172d10b723f0bba24335a8f7ae692c`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dca07f8222e24aab97f026444d66a7604e4ae2b708cf079ff67a90c42efa60`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420ae9e10b3f6a74f527914bc3c766b128435a62eca1061f41167205d5b0230`  
		Last Modified: Thu, 26 Jul 2018 22:26:54 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0a3902ea56575347cec98de9cdea35051edefa24d67eccb50d1883d1343fdb`  
		Last Modified: Thu, 26 Jul 2018 23:22:16 GMT  
		Size: 3.0 MB (3021010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01da43ccf6625a7f02104b7b1e0d7d5830af2342d2325f3b602cb0348daf11a4`  
		Last Modified: Mon, 13 Aug 2018 22:28:41 GMT  
		Size: 127.7 MB (127680807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112122e37aaf233d36dffe8730b9e40099be847317cdaf295eabe7103c28ca29`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 422.3 KB (422323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34cc873fb8227d589bcff22c347867fa1ad45ef857e6713d1dc72e8005bf2a1`  
		Last Modified: Mon, 13 Aug 2018 23:33:50 GMT  
		Size: 12.5 MB (12494055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3acc1083d068ca97baf77794d1f1d1bd49daa4212155b8b272d75dbb4858f07`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b6ba759a53614c07247e87c087c69d0eb399b3201390c23c1181d9a37567b1`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 644.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233bcd4d4732830f99144a25500a9ed00458a61b9aed7d89250d7c7f9d23e205`  
		Last Modified: Mon, 13 Aug 2018 23:33:48 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a3d7035bb990a65de0d22925d037bd9ba8a882ec9aee7241048225afebc8c3`  
		Last Modified: Mon, 13 Aug 2018 23:36:51 GMT  
		Size: 72.8 MB (72847974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14b68370beab03159f06bd5f64414ec86d4d9e60db56af6346262ec3c358abe`  
		Last Modified: Mon, 13 Aug 2018 23:36:42 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725d50f6bbbf6008262f22373979c6d0c34eca02f703c9db030646cad842bbd7`  
		Last Modified: Mon, 13 Aug 2018 23:36:47 GMT  
		Size: 11.6 MB (11562015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile8` - linux; 386

```console
$ docker pull websphere-liberty@sha256:2c1b114fe98d58ab9ea22574309fd8406e65475158253e6ce914de5d01210abe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259782801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e766b18e90d4e42f2f6d8b66e791c4bc7779246775dd68d6118d3e63f42de59`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Jul 2018 11:04:12 GMT
ADD file:bf213ed5365ee4c9a7f64ec5c337df6779168f609a0fb0ddd2cdf558df419aca in / 
# Fri, 27 Jul 2018 11:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 11:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 11:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 11:04:16 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 11:38:49 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 27 Jul 2018 11:39:16 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 11:11:05 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Tue, 14 Aug 2018 11:11:55 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 14 Aug 2018 11:11:55 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 14 Aug 2018 11:41:00 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 14 Aug 2018 11:41:18 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 11:41:18 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 14 Aug 2018 11:41:18 GMT
ARG LIBERTY_URL
# Tue, 14 Aug 2018 11:41:18 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 14 Aug 2018 11:41:23 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 14 Aug 2018 11:41:23 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 11:41:24 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 14 Aug 2018 11:41:24 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 14 Aug 2018 11:41:25 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 14 Aug 2018 11:41:26 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 14 Aug 2018 11:41:27 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 14 Aug 2018 11:41:27 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 14 Aug 2018 11:41:27 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 14 Aug 2018 11:41:27 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 14 Aug 2018 11:41:28 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 14 Aug 2018 11:41:44 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 14 Aug 2018 11:51:17 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 14 Aug 2018 11:51:17 GMT
COPY file:2bacdb39d56c776a0d7ebecf922a9e9800e5a41f1ddc1d823ee04a029d580682 in /config/ 
# Tue, 14 Aug 2018 11:51:35 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:79c3321cd1db5170b2b17e4e7904e999afc88c5ba9168e6632c722f0ced80f2b`  
		Last Modified: Fri, 27 Jul 2018 11:08:03 GMT  
		Size: 43.5 MB (43498084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc08ce9a961adeec10d1eadfa16bc1cb9d2f8994e5d43432500a75cfaa09c6c`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d8c15b299b1de7aa1b6fb37d83b146c59e520ce7bfc25254544262ca705b48`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a97a3925b890b18279fac470160ce2e973a10ef456dce7d174780d4e24550f3`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c844083148ae3343326e2b07dc524e55fee4f261a1637e68ac86a32b97c4ce16`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a671001a55a0ce3af1d3064a1d7f01929b03423102de31cd7a87dd86f9751cd1`  
		Last Modified: Fri, 27 Jul 2018 11:43:11 GMT  
		Size: 2.9 MB (2875978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf1c7d8d3570a128e852fb2ae238df36286ff940f972ef1e06ddf48c532eb1d`  
		Last Modified: Tue, 14 Aug 2018 11:14:55 GMT  
		Size: 115.8 MB (115826066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c236c11960c0afaa57e2847a219cb26308cc4cd5a8c1b49e99454bd6cfb041b8`  
		Last Modified: Tue, 14 Aug 2018 11:55:16 GMT  
		Size: 420.9 KB (420854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88c78c385e77906144318dfac59e3a218eafd81d7816a51c21526ad68a6bcfc`  
		Last Modified: Tue, 14 Aug 2018 11:55:18 GMT  
		Size: 12.5 MB (12494063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f43e525757c1e0afb6a0d13ce4244001ef5f606abdebaf3c06e453ab295bc01`  
		Last Modified: Tue, 14 Aug 2018 11:55:15 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3891494cacfb98e93f4cd252fa3b22f383f7e177701d87452d41c46a4ced3c`  
		Last Modified: Tue, 14 Aug 2018 11:55:15 GMT  
		Size: 643.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1caf93ce53d1d37e6bf605f2fc3b2747253c58b2799060ac66a0f8e3df5d32a`  
		Last Modified: Tue, 14 Aug 2018 11:55:16 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bacc4aaaca1f568d62f29a7b3c7ba5bdbc7872b1fbb4645a105c9e381eea992`  
		Last Modified: Tue, 14 Aug 2018 11:58:23 GMT  
		Size: 72.8 MB (72847774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c356638cd5b0a6eb0dc2382d573359ce4aebe2fd6d7f4e4c720c7f274bc2d75e`  
		Last Modified: Tue, 14 Aug 2018 11:58:13 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3167a569de6ffcd62480c209fcc60c0a714f5aced161f59463f6a30fba75fe0c`  
		Last Modified: Tue, 14 Aug 2018 11:58:19 GMT  
		Size: 11.8 MB (11815165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile8` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:bde4841dd04a7ba254d1ac524a8731ff32e8c6563e7e88a176eb2c9ead5ed0fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.7 MB (286710770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f97fc17209e751b51db111811acd1669648660aac75d7fd532e3bd20ea27584`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 17 Jul 2018 11:24:32 GMT
ADD file:93b9efc61400dd63da35d3bdf0a8937a0e869256c0a1448918c67d8dd4bb9a44 in / 
# Tue, 17 Jul 2018 11:24:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:24:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:24:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:25:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:25:09 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 20:11:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 17 Jul 2018 20:11:32 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 09:12:38 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Tue, 14 Aug 2018 09:15:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 14 Aug 2018 09:15:14 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 14 Aug 2018 10:42:38 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 14 Aug 2018 10:43:05 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 10:43:07 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 14 Aug 2018 10:43:09 GMT
ARG LIBERTY_URL
# Tue, 14 Aug 2018 10:43:12 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 14 Aug 2018 10:43:27 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 14 Aug 2018 10:43:28 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 10:43:29 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 14 Aug 2018 10:43:30 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 14 Aug 2018 10:43:31 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 14 Aug 2018 10:43:38 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 14 Aug 2018 10:43:40 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 14 Aug 2018 10:43:42 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 14 Aug 2018 10:43:43 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 14 Aug 2018 10:43:45 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 14 Aug 2018 10:43:47 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 14 Aug 2018 10:44:06 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 14 Aug 2018 10:55:52 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 14 Aug 2018 10:55:53 GMT
COPY file:2bacdb39d56c776a0d7ebecf922a9e9800e5a41f1ddc1d823ee04a029d580682 in /config/ 
# Tue, 14 Aug 2018 10:56:15 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:1d42d48bcb676f02dfc09c86eb381bee74fb84bdad7247d643311c55e97b03e1`  
		Last Modified: Tue, 17 Jul 2018 11:28:58 GMT  
		Size: 45.5 MB (45543237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7257a0c84303a4e1bc7b272c1795b237b5a819780dc3ee848bd9aa516c0833`  
		Last Modified: Tue, 17 Jul 2018 11:28:44 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8d824019e9337c4643bb01728d9d6d1dce98f3db1b568a0db0ece041f5d4f9`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795728728939c3ed0a7b959cf48ae72dcbab4d7b2bf437b3bead8ddd238ca995`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5d42ebe2b0960d616db6b6868bb1f7f47842478d500b1e5d783fa2b2baf876`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7946b06c85eb566d0b328fd27ed4fa31e7603df969091339b9fdd0b138f0a90c`  
		Last Modified: Tue, 17 Jul 2018 20:27:29 GMT  
		Size: 2.9 MB (2880626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb44982ef279dae05091f0cb16ce63dc3db69aa358cb51a9726564901c31390`  
		Last Modified: Tue, 14 Aug 2018 09:25:05 GMT  
		Size: 141.0 MB (141049504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423488ee12fa4eee7a8d264c5813f321144aa3101435766b6f1b38c69d78abc0`  
		Last Modified: Tue, 14 Aug 2018 11:05:15 GMT  
		Size: 453.1 KB (453068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29471e72446f127436d8f107ee3de613da2a3b5f04ae9c0f25c250f0afcf6f15`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 12.5 MB (12494063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c80f464edd2f18839071d0e7ff2b90028b2b99b4f28acb15dbbd509424c5fa`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacd2428802e3d54c9194b62cb5d164b20c5a7ccdfa4952895114ba9721f4caa`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 690.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07f8736665d59f0a84cc5e7645ecb97417f9ec707b7d47992042fd58a8a3c42`  
		Last Modified: Tue, 14 Aug 2018 11:05:14 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56545a00025c8909114ef18e546653a50bd0f6f5270ea79cd5c9d1df59da0f9`  
		Last Modified: Tue, 14 Aug 2018 11:08:07 GMT  
		Size: 72.9 MB (72851684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5413fec7e07646631d97b46850157b83a3269f43625c9e9b9fa3f6bb2eb8c6c0`  
		Last Modified: Tue, 14 Aug 2018 11:07:51 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa229d58485d5aba769cc874778f7046e79b6a50371307787fe1e0e22a90b71`  
		Last Modified: Tue, 14 Aug 2018 11:07:58 GMT  
		Size: 11.4 MB (11433582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile8` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:b8cbe01851b13662f1dd09da30eaf9cbce8a663fdf16a9d38aa6cec52ef5c893
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.6 MB (269640836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb27f91a4df6a2a27004b72c5f5a485ba8ca9520d451dd8bb224ec5d47d39e80`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Jul 2018 12:59:42 GMT
ADD file:3370b396b7b93b08d1f609f06e321c05d930dc00cb6ae8f0f65d4ed39166245b in / 
# Fri, 27 Jul 2018 12:59:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:59:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:59:44 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:59:45 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:59:45 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:16:38 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 27 Jul 2018 13:16:46 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 12:17:25 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Tue, 14 Aug 2018 12:18:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 14 Aug 2018 12:18:06 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 14 Aug 2018 12:42:37 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 14 Aug 2018 12:42:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 12:42:44 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 14 Aug 2018 12:42:44 GMT
ARG LIBERTY_URL
# Tue, 14 Aug 2018 12:42:44 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 14 Aug 2018 12:42:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 14 Aug 2018 12:42:50 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 12:42:50 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 14 Aug 2018 12:42:50 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 14 Aug 2018 12:42:51 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 14 Aug 2018 12:42:54 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 14 Aug 2018 12:42:54 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 14 Aug 2018 12:42:54 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 14 Aug 2018 12:42:55 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 14 Aug 2018 12:42:55 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 14 Aug 2018 12:42:55 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 14 Aug 2018 12:43:09 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 14 Aug 2018 12:55:07 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 14 Aug 2018 12:55:08 GMT
COPY file:2bacdb39d56c776a0d7ebecf922a9e9800e5a41f1ddc1d823ee04a029d580682 in /config/ 
# Tue, 14 Aug 2018 12:55:43 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:3c676c78c45c4416ba6a9c1bcadd5156f03d0bca9e31f85fc01fca458930cfd5`  
		Last Modified: Fri, 27 Jul 2018 13:01:00 GMT  
		Size: 42.2 MB (42233178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a735e77c595422e7ecd0ca0e6359ba21a9769b86c1b6231aebfe8feacd95dcc7`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccb796144ba65e756e8cdfdf093072cbe9255706f96d95aad84fa242f1afb41`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe28213b67e6813cbc89ec0b7034fb71c4896077f9cbfab52de63f4c0201fc1e`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aefcb4b684bed9db0f7491ecade1c76f4268b4216658445ffa9942809ea5299d`  
		Last Modified: Fri, 27 Jul 2018 13:00:52 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38506499c0863fa74e87358752273bd0f6b80ed1a533dfbbf8106533b5cfa2b`  
		Last Modified: Fri, 27 Jul 2018 13:19:25 GMT  
		Size: 2.8 MB (2764795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b7c9c3592488d9c92e4304ffa5ed6cba0528fe123f114e9070ad9ca2a61d8c`  
		Last Modified: Tue, 14 Aug 2018 12:20:37 GMT  
		Size: 127.0 MB (126957355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073576dab032cab1aacb1ad08982bb8fb96c5daf60d793b889ed219a089dca3e`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 427.5 KB (427473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7517d1495fc28b2961bd0adf416504ce76132726337fabec4e97738785ee2113`  
		Last Modified: Tue, 14 Aug 2018 12:58:47 GMT  
		Size: 12.5 MB (12494060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474d3f2020f1d313de7941e967153bda49632d6295536ac32cb6ae7651c90f48`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd8fe8e0d0960623174e1b507b86839c92304e4f5658f10e8470576e9b52d71`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24cc4e77213d5c99eafc9bd57f812b316684d02c4bc326eeaa05689295e7865c`  
		Last Modified: Tue, 14 Aug 2018 12:58:45 GMT  
		Size: 973.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51720d6bcfd0194e00ee75b7977745b7a5b4e1291e814632e6434324d863eff`  
		Last Modified: Tue, 14 Aug 2018 13:00:32 GMT  
		Size: 72.8 MB (72848188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c98f4101b1a6ae68b9f43d1938a8e3807c6d91d6a19618afebc2a0a4c8cc0a`  
		Last Modified: Tue, 14 Aug 2018 13:00:24 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d33442c476ac0c2eab758da303c3d0102791b3d6fa6556bf0ddb26e56e8692`  
		Last Modified: Tue, 14 Aug 2018 13:00:27 GMT  
		Size: 11.9 MB (11911013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
