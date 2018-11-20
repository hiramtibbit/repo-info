<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ibmjava`

-	[`ibmjava:8`](#ibmjava8)
-	[`ibmjava:8-jre`](#ibmjava8-jre)
-	[`ibmjava:8-jre-alpine`](#ibmjava8-jre-alpine)
-	[`ibmjava:8-sdk`](#ibmjava8-sdk)
-	[`ibmjava:8-sdk-alpine`](#ibmjava8-sdk-alpine)
-	[`ibmjava:8-sfj`](#ibmjava8-sfj)
-	[`ibmjava:8-sfj-alpine`](#ibmjava8-sfj-alpine)
-	[`ibmjava:jre`](#ibmjavajre)
-	[`ibmjava:jre-alpine`](#ibmjavajre-alpine)
-	[`ibmjava:latest`](#ibmjavalatest)
-	[`ibmjava:sdk`](#ibmjavasdk)
-	[`ibmjava:sdk-alpine`](#ibmjavasdk-alpine)
-	[`ibmjava:sfj`](#ibmjavasfj)
-	[`ibmjava:sfj-alpine`](#ibmjavasfj-alpine)

## `ibmjava:8`

```console
$ docker pull ibmjava@sha256:e805cf8c3d1d7f1ee2f7f9137eb781e9cf7da7f73b3b40daf426d6682390a6a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ibmjava:8` - linux; amd64

```console
$ docker pull ibmjava@sha256:f2005ce2c964cb6cb31694a6efa52ec95ffe09c076e3f121fb0ff7745f17901d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173875365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef7d78475a0233a9905e1af754bbcf82aa42e4ce324d3fa0b1c5fb05c5888276`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:15:45 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 19 Nov 2018 22:15:54 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:15:55 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Mon, 19 Nov 2018 22:16:37 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9fcca491b709b40400cd43fe35894b890cffef45f07c6f971d8c307e0e10828d';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='72481fb9cb1747c0ef698ad8e795e6bb2e5db23102db110865a53b3c63d5763d';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6e4ec2291f4ae28b69f268617c9969defc1bbe01c728c89cf6ae9f7218774beb';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='e235a7bfa2e48234466e54dddfe4f6e2085aab29795e21a3b327fce4945fe01a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='813dca327966269d4bda4a7fae12f52d9e85b5f906934352f831ecda47499a87';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 19 Nov 2018 22:16:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b2fbbc72b1f552c0411f96735f0171009df0be2ee232ae2e75d9d99524ef11`  
		Last Modified: Mon, 19 Nov 2018 22:20:04 GMT  
		Size: 3.0 MB (3020935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d82603f49a53744738db4cc80d2e46e0966761d654dd94abc13c879de24d73`  
		Last Modified: Mon, 19 Nov 2018 22:20:16 GMT  
		Size: 127.4 MB (127440613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8` - linux; 386

```console
$ docker pull ibmjava@sha256:9c43c6432e0c2fbcb0ae33fe7cf1ce6cf3a2dd2ba08cc9ad5d45bc6405e83feb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.3 MB (162277009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d7c413e1b4d849c03f2573ecf439b7a51c72ec0251a39cd1b652edcdfd3960e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 12:20:00 GMT
ADD file:6fdc065a2fbe1084b10b598d239ab639f144d17d4496012dbdec7d8456e3a307 in / 
# Tue, 20 Nov 2018 12:20:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 12:20:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:20:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 12:20:03 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:13:24 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 20 Nov 2018 13:13:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:13:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Tue, 20 Nov 2018 13:14:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9fcca491b709b40400cd43fe35894b890cffef45f07c6f971d8c307e0e10828d';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='72481fb9cb1747c0ef698ad8e795e6bb2e5db23102db110865a53b3c63d5763d';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6e4ec2291f4ae28b69f268617c9969defc1bbe01c728c89cf6ae9f7218774beb';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='e235a7bfa2e48234466e54dddfe4f6e2085aab29795e21a3b327fce4945fe01a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='813dca327966269d4bda4a7fae12f52d9e85b5f906934352f831ecda47499a87';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 20 Nov 2018 13:14:14 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:a3aca6307c1aa2b2cc8d15fa3e646157166eed6703321b3a79783f481ae6273a`  
		Last Modified: Mon, 19 Nov 2018 15:09:59 GMT  
		Size: 43.6 MB (43635706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643e7d4d3a0a2cb275ee831c6bd19df14945331b343788664b0f8f864fb5fcf0`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e299cd08753476963cf11490637d277a0d98a1c5b8b7d47db843da5b32ecaa8`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc02c766472ded7c53da06de596743880346590bbf6f778c04fa03ead701f3b`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff38b55c864afb6636418c53d251bb8283b7f948851f351440609a6029e1bb84`  
		Last Modified: Tue, 20 Nov 2018 13:16:51 GMT  
		Size: 2.9 MB (2876368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0a0a646e22edba6fe2eb75e509b41c9c46253504f00077db1e41627ea7c432`  
		Last Modified: Tue, 20 Nov 2018 13:17:03 GMT  
		Size: 115.8 MB (115763335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:b432027d6d18c4364ea54ed5038b453f77df37c90f0d3003ab122510cf8c7aa9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.9 MB (189921948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26796dd982f5f54c117a349183cd4ac112d8febc2d4b4a1aaee3206c1fb0f66c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:31:16 GMT
ADD file:cb540f7e8c3e08020b164ac22b03b29afba2ceee95f8dd5abd8013e4e02372d8 in / 
# Tue, 20 Nov 2018 09:31:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:31:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:31:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:31:28 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:19:22 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 20 Nov 2018 10:20:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:20:03 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Tue, 20 Nov 2018 10:22:25 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9fcca491b709b40400cd43fe35894b890cffef45f07c6f971d8c307e0e10828d';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='72481fb9cb1747c0ef698ad8e795e6bb2e5db23102db110865a53b3c63d5763d';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6e4ec2291f4ae28b69f268617c9969defc1bbe01c728c89cf6ae9f7218774beb';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='e235a7bfa2e48234466e54dddfe4f6e2085aab29795e21a3b327fce4945fe01a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='813dca327966269d4bda4a7fae12f52d9e85b5f906934352f831ecda47499a87';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 20 Nov 2018 10:22:27 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:7ea631de703fad0f373d9aff9771c730726128e296e2e5311131ab3438855046`  
		Last Modified: Tue, 20 Nov 2018 09:53:03 GMT  
		Size: 45.7 MB (45694909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6589fdb4ddc043f28784fba346cab7fe7fd9711385872c3ec8a7f45c9e44a1b9`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d217e98717edd666c49de76323d085a7a3c6cfd8bb43723522136c5fdd0aab`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f66c0cb95d14802e1df0d308ca65d874322a65b6208757826ef942c61164fbe`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ba443302d1e528ff9c5aead9c6fd3fe4c385e60894041ce381245a06209ccf`  
		Last Modified: Tue, 20 Nov 2018 10:33:14 GMT  
		Size: 2.9 MB (2880631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fd106bd343a0407224bf2c9daf5c28676b3ba6781ead0b57bcc5063aae9cc3`  
		Last Modified: Tue, 20 Nov 2018 10:33:41 GMT  
		Size: 141.3 MB (141344808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8` - linux; s390x

```console
$ docker pull ibmjava@sha256:ed05bfe00480da785b9bc9c09112ab5c32d8ab6b616b84f8e43bb08e87c37304
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.9 MB (171856863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1849792be427ef673a8836f288d6c126bf8fb61c5989adc31ff9e7bed1440904`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:11:21 GMT
ADD file:b77f6d24d8c56183678bdd336bbba6fe26ad37d1a964c91cb91ad225c2e84406 in / 
# Tue, 20 Nov 2018 13:11:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:11:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:11:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:11:27 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:29:27 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 20 Nov 2018 13:29:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:29:38 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Tue, 20 Nov 2018 13:30:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9fcca491b709b40400cd43fe35894b890cffef45f07c6f971d8c307e0e10828d';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='72481fb9cb1747c0ef698ad8e795e6bb2e5db23102db110865a53b3c63d5763d';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6e4ec2291f4ae28b69f268617c9969defc1bbe01c728c89cf6ae9f7218774beb';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='e235a7bfa2e48234466e54dddfe4f6e2085aab29795e21a3b327fce4945fe01a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='813dca327966269d4bda4a7fae12f52d9e85b5f906934352f831ecda47499a87';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 20 Nov 2018 13:30:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:e106090ffbaf8ccb97860ef61a165dfec5a1c3dc44bf455e12d088c42a60010f`  
		Last Modified: Mon, 19 Nov 2018 15:11:28 GMT  
		Size: 42.4 MB (42363363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6dfca1c5fa4e1ed6f0787784f1ddd02ab6b55d0b741fa5f2cfc3ebcd6ae045`  
		Last Modified: Tue, 20 Nov 2018 13:13:27 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc58638e6a1418dbc11e178f7020b4493a592fb0ddc19ab287c91b769c4526d`  
		Last Modified: Tue, 20 Nov 2018 13:13:27 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475a0504a32677e770f759dcb0a5bba535e0927168bef4ef761b9c458d29e29f`  
		Last Modified: Tue, 20 Nov 2018 13:13:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1c13bc010bbc9909b1dab6dfb49b0ea3693a60d30728eaf7deec53f3afe0daf`  
		Last Modified: Tue, 20 Nov 2018 13:32:30 GMT  
		Size: 2.8 MB (2765136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ae477a0e89f84e899d0fa1187264e718e7e0ff56b1688e143c1d7bd849aa6e`  
		Last Modified: Tue, 20 Nov 2018 13:32:47 GMT  
		Size: 126.7 MB (126726813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ibmjava:8-jre`

```console
$ docker pull ibmjava@sha256:e805cf8c3d1d7f1ee2f7f9137eb781e9cf7da7f73b3b40daf426d6682390a6a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ibmjava:8-jre` - linux; amd64

```console
$ docker pull ibmjava@sha256:f2005ce2c964cb6cb31694a6efa52ec95ffe09c076e3f121fb0ff7745f17901d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173875365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef7d78475a0233a9905e1af754bbcf82aa42e4ce324d3fa0b1c5fb05c5888276`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:15:45 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 19 Nov 2018 22:15:54 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:15:55 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Mon, 19 Nov 2018 22:16:37 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9fcca491b709b40400cd43fe35894b890cffef45f07c6f971d8c307e0e10828d';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='72481fb9cb1747c0ef698ad8e795e6bb2e5db23102db110865a53b3c63d5763d';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6e4ec2291f4ae28b69f268617c9969defc1bbe01c728c89cf6ae9f7218774beb';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='e235a7bfa2e48234466e54dddfe4f6e2085aab29795e21a3b327fce4945fe01a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='813dca327966269d4bda4a7fae12f52d9e85b5f906934352f831ecda47499a87';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 19 Nov 2018 22:16:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b2fbbc72b1f552c0411f96735f0171009df0be2ee232ae2e75d9d99524ef11`  
		Last Modified: Mon, 19 Nov 2018 22:20:04 GMT  
		Size: 3.0 MB (3020935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d82603f49a53744738db4cc80d2e46e0966761d654dd94abc13c879de24d73`  
		Last Modified: Mon, 19 Nov 2018 22:20:16 GMT  
		Size: 127.4 MB (127440613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8-jre` - linux; 386

```console
$ docker pull ibmjava@sha256:9c43c6432e0c2fbcb0ae33fe7cf1ce6cf3a2dd2ba08cc9ad5d45bc6405e83feb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.3 MB (162277009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d7c413e1b4d849c03f2573ecf439b7a51c72ec0251a39cd1b652edcdfd3960e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 12:20:00 GMT
ADD file:6fdc065a2fbe1084b10b598d239ab639f144d17d4496012dbdec7d8456e3a307 in / 
# Tue, 20 Nov 2018 12:20:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 12:20:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:20:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 12:20:03 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:13:24 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 20 Nov 2018 13:13:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:13:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Tue, 20 Nov 2018 13:14:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9fcca491b709b40400cd43fe35894b890cffef45f07c6f971d8c307e0e10828d';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='72481fb9cb1747c0ef698ad8e795e6bb2e5db23102db110865a53b3c63d5763d';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6e4ec2291f4ae28b69f268617c9969defc1bbe01c728c89cf6ae9f7218774beb';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='e235a7bfa2e48234466e54dddfe4f6e2085aab29795e21a3b327fce4945fe01a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='813dca327966269d4bda4a7fae12f52d9e85b5f906934352f831ecda47499a87';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 20 Nov 2018 13:14:14 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:a3aca6307c1aa2b2cc8d15fa3e646157166eed6703321b3a79783f481ae6273a`  
		Last Modified: Mon, 19 Nov 2018 15:09:59 GMT  
		Size: 43.6 MB (43635706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643e7d4d3a0a2cb275ee831c6bd19df14945331b343788664b0f8f864fb5fcf0`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e299cd08753476963cf11490637d277a0d98a1c5b8b7d47db843da5b32ecaa8`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc02c766472ded7c53da06de596743880346590bbf6f778c04fa03ead701f3b`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff38b55c864afb6636418c53d251bb8283b7f948851f351440609a6029e1bb84`  
		Last Modified: Tue, 20 Nov 2018 13:16:51 GMT  
		Size: 2.9 MB (2876368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0a0a646e22edba6fe2eb75e509b41c9c46253504f00077db1e41627ea7c432`  
		Last Modified: Tue, 20 Nov 2018 13:17:03 GMT  
		Size: 115.8 MB (115763335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8-jre` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:b432027d6d18c4364ea54ed5038b453f77df37c90f0d3003ab122510cf8c7aa9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.9 MB (189921948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26796dd982f5f54c117a349183cd4ac112d8febc2d4b4a1aaee3206c1fb0f66c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:31:16 GMT
ADD file:cb540f7e8c3e08020b164ac22b03b29afba2ceee95f8dd5abd8013e4e02372d8 in / 
# Tue, 20 Nov 2018 09:31:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:31:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:31:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:31:28 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:19:22 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 20 Nov 2018 10:20:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:20:03 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Tue, 20 Nov 2018 10:22:25 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9fcca491b709b40400cd43fe35894b890cffef45f07c6f971d8c307e0e10828d';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='72481fb9cb1747c0ef698ad8e795e6bb2e5db23102db110865a53b3c63d5763d';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6e4ec2291f4ae28b69f268617c9969defc1bbe01c728c89cf6ae9f7218774beb';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='e235a7bfa2e48234466e54dddfe4f6e2085aab29795e21a3b327fce4945fe01a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='813dca327966269d4bda4a7fae12f52d9e85b5f906934352f831ecda47499a87';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 20 Nov 2018 10:22:27 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:7ea631de703fad0f373d9aff9771c730726128e296e2e5311131ab3438855046`  
		Last Modified: Tue, 20 Nov 2018 09:53:03 GMT  
		Size: 45.7 MB (45694909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6589fdb4ddc043f28784fba346cab7fe7fd9711385872c3ec8a7f45c9e44a1b9`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d217e98717edd666c49de76323d085a7a3c6cfd8bb43723522136c5fdd0aab`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f66c0cb95d14802e1df0d308ca65d874322a65b6208757826ef942c61164fbe`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ba443302d1e528ff9c5aead9c6fd3fe4c385e60894041ce381245a06209ccf`  
		Last Modified: Tue, 20 Nov 2018 10:33:14 GMT  
		Size: 2.9 MB (2880631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fd106bd343a0407224bf2c9daf5c28676b3ba6781ead0b57bcc5063aae9cc3`  
		Last Modified: Tue, 20 Nov 2018 10:33:41 GMT  
		Size: 141.3 MB (141344808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8-jre` - linux; s390x

```console
$ docker pull ibmjava@sha256:ed05bfe00480da785b9bc9c09112ab5c32d8ab6b616b84f8e43bb08e87c37304
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.9 MB (171856863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1849792be427ef673a8836f288d6c126bf8fb61c5989adc31ff9e7bed1440904`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:11:21 GMT
ADD file:b77f6d24d8c56183678bdd336bbba6fe26ad37d1a964c91cb91ad225c2e84406 in / 
# Tue, 20 Nov 2018 13:11:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:11:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:11:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:11:27 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:29:27 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 20 Nov 2018 13:29:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:29:38 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Tue, 20 Nov 2018 13:30:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9fcca491b709b40400cd43fe35894b890cffef45f07c6f971d8c307e0e10828d';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='72481fb9cb1747c0ef698ad8e795e6bb2e5db23102db110865a53b3c63d5763d';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6e4ec2291f4ae28b69f268617c9969defc1bbe01c728c89cf6ae9f7218774beb';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='e235a7bfa2e48234466e54dddfe4f6e2085aab29795e21a3b327fce4945fe01a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='813dca327966269d4bda4a7fae12f52d9e85b5f906934352f831ecda47499a87';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 20 Nov 2018 13:30:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:e106090ffbaf8ccb97860ef61a165dfec5a1c3dc44bf455e12d088c42a60010f`  
		Last Modified: Mon, 19 Nov 2018 15:11:28 GMT  
		Size: 42.4 MB (42363363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6dfca1c5fa4e1ed6f0787784f1ddd02ab6b55d0b741fa5f2cfc3ebcd6ae045`  
		Last Modified: Tue, 20 Nov 2018 13:13:27 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc58638e6a1418dbc11e178f7020b4493a592fb0ddc19ab287c91b769c4526d`  
		Last Modified: Tue, 20 Nov 2018 13:13:27 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475a0504a32677e770f759dcb0a5bba535e0927168bef4ef761b9c458d29e29f`  
		Last Modified: Tue, 20 Nov 2018 13:13:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1c13bc010bbc9909b1dab6dfb49b0ea3693a60d30728eaf7deec53f3afe0daf`  
		Last Modified: Tue, 20 Nov 2018 13:32:30 GMT  
		Size: 2.8 MB (2765136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ae477a0e89f84e899d0fa1187264e718e7e0ff56b1688e143c1d7bd849aa6e`  
		Last Modified: Tue, 20 Nov 2018 13:32:47 GMT  
		Size: 126.7 MB (126726813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ibmjava:8-jre-alpine`

```console
$ docker pull ibmjava@sha256:2f8e196172998b93cf62236350ed581110bdc50cd0f2a6f9fb3899d71b3b105a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ibmjava:8-jre-alpine` - linux; amd64

```console
$ docker pull ibmjava@sha256:59918d4c36cd65e739c3af1e5a35eea36db40d1927f4ff859f7c44e7c3b64858
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.0 MB (134033846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4ea9491f1e7b0762c3e9e71750ca48fa7cee4d576baa268888310bb3e65c7e3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:30:09 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 11 Sep 2018 23:30:17 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Fri, 02 Nov 2018 22:21:29 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Fri, 02 Nov 2018 22:22:09 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9fcca491b709b40400cd43fe35894b890cffef45f07c6f971d8c307e0e10828d';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='72481fb9cb1747c0ef698ad8e795e6bb2e5db23102db110865a53b3c63d5763d';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6e4ec2291f4ae28b69f268617c9969defc1bbe01c728c89cf6ae9f7218774beb';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='e235a7bfa2e48234466e54dddfe4f6e2085aab29795e21a3b327fce4945fe01a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='813dca327966269d4bda4a7fae12f52d9e85b5f906934352f831ecda47499a87';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Fri, 02 Nov 2018 22:22:10 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49037229889fce699938aaa3695d08d2bd2676feffbe8af11a765a855de9155f`  
		Last Modified: Tue, 11 Sep 2018 23:32:54 GMT  
		Size: 4.5 MB (4519019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92213414ea414abf7c6e7185ec6102b3662af405bf1de882b084cdce5b8ea602`  
		Last Modified: Fri, 02 Nov 2018 22:29:50 GMT  
		Size: 127.4 MB (127407652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ibmjava:8-sdk`

```console
$ docker pull ibmjava@sha256:99287712ed3b7f5614bad6559ea3a5c2661cb98e21bc6f59877e586ca856ec45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ibmjava:8-sdk` - linux; amd64

```console
$ docker pull ibmjava@sha256:5c06b3f323c6d05490f8b17cce710cf3b0beef6f12769a92a298f967057f2100
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.7 MB (210693708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f298e3e92374cc9e621000a567508db25292affade08fd1a5d55c7123373ff`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:15:45 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 19 Nov 2018 22:15:54 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:15:55 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Mon, 19 Nov 2018 22:19:25 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='65717f402943895fcb46f235404647a63dc3a5b7defcff6fa327f201f3e11cf2';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='a107524bbbc79446ca7a651157c3fb94395df595fe5ce5b754d2dd7d61e526bf';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4069e4b273da768294ca023dba5f6a2da005d4a712ebc2ee406116ecebdcf958';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='0130d0abf94b43ee8fe5f48e4199db334403a5669f8dc45aab60548da6e25016';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='5395c62e01743eb709f54253de14de5148023bf25ae460a3364a1af62c8ac64c';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 19 Nov 2018 22:19:30 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b2fbbc72b1f552c0411f96735f0171009df0be2ee232ae2e75d9d99524ef11`  
		Last Modified: Mon, 19 Nov 2018 22:20:04 GMT  
		Size: 3.0 MB (3020935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6aee67f5bb33c7dbafcd2df6de6286c01e00e7ea6edbe6719d18f43ca46dc0f`  
		Last Modified: Mon, 19 Nov 2018 22:23:21 GMT  
		Size: 164.3 MB (164258956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8-sdk` - linux; 386

```console
$ docker pull ibmjava@sha256:ec9f7f46b430f4f482c49df83eb0b497153f5222cb375523a96db1b8434233fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.0 MB (199010761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b0d743bcd83b3c43f32a706894bfe56bbfd72d4378f756f65479df57343e33a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 12:20:00 GMT
ADD file:6fdc065a2fbe1084b10b598d239ab639f144d17d4496012dbdec7d8456e3a307 in / 
# Tue, 20 Nov 2018 12:20:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 12:20:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:20:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 12:20:03 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:13:24 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 20 Nov 2018 13:13:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:13:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Tue, 20 Nov 2018 13:16:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='65717f402943895fcb46f235404647a63dc3a5b7defcff6fa327f201f3e11cf2';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='a107524bbbc79446ca7a651157c3fb94395df595fe5ce5b754d2dd7d61e526bf';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4069e4b273da768294ca023dba5f6a2da005d4a712ebc2ee406116ecebdcf958';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='0130d0abf94b43ee8fe5f48e4199db334403a5669f8dc45aab60548da6e25016';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='5395c62e01743eb709f54253de14de5148023bf25ae460a3364a1af62c8ac64c';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 20 Nov 2018 13:16:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:a3aca6307c1aa2b2cc8d15fa3e646157166eed6703321b3a79783f481ae6273a`  
		Last Modified: Mon, 19 Nov 2018 15:09:59 GMT  
		Size: 43.6 MB (43635706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643e7d4d3a0a2cb275ee831c6bd19df14945331b343788664b0f8f864fb5fcf0`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e299cd08753476963cf11490637d277a0d98a1c5b8b7d47db843da5b32ecaa8`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc02c766472ded7c53da06de596743880346590bbf6f778c04fa03ead701f3b`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff38b55c864afb6636418c53d251bb8283b7f948851f351440609a6029e1bb84`  
		Last Modified: Tue, 20 Nov 2018 13:16:51 GMT  
		Size: 2.9 MB (2876368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c595f16c2467ee08cd29f0710899b11af4799729eb321ac8fd8ee800bc339526`  
		Last Modified: Tue, 20 Nov 2018 13:18:53 GMT  
		Size: 152.5 MB (152497087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8-sdk` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:51924ea320d318ae2097fefc739fa58019f6c35cad296b19af5ad11da27af69b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.9 MB (226896328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:884937c604a0e892591903007da092cf2008dcb21530da5b9fb1d6c915f4aedf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:31:16 GMT
ADD file:cb540f7e8c3e08020b164ac22b03b29afba2ceee95f8dd5abd8013e4e02372d8 in / 
# Tue, 20 Nov 2018 09:31:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:31:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:31:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:31:28 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:19:22 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 20 Nov 2018 10:20:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:20:03 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Tue, 20 Nov 2018 10:30:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='65717f402943895fcb46f235404647a63dc3a5b7defcff6fa327f201f3e11cf2';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='a107524bbbc79446ca7a651157c3fb94395df595fe5ce5b754d2dd7d61e526bf';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4069e4b273da768294ca023dba5f6a2da005d4a712ebc2ee406116ecebdcf958';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='0130d0abf94b43ee8fe5f48e4199db334403a5669f8dc45aab60548da6e25016';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='5395c62e01743eb709f54253de14de5148023bf25ae460a3364a1af62c8ac64c';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 20 Nov 2018 10:30:48 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:7ea631de703fad0f373d9aff9771c730726128e296e2e5311131ab3438855046`  
		Last Modified: Tue, 20 Nov 2018 09:53:03 GMT  
		Size: 45.7 MB (45694909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6589fdb4ddc043f28784fba346cab7fe7fd9711385872c3ec8a7f45c9e44a1b9`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d217e98717edd666c49de76323d085a7a3c6cfd8bb43723522136c5fdd0aab`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f66c0cb95d14802e1df0d308ca65d874322a65b6208757826ef942c61164fbe`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ba443302d1e528ff9c5aead9c6fd3fe4c385e60894041ce381245a06209ccf`  
		Last Modified: Tue, 20 Nov 2018 10:33:14 GMT  
		Size: 2.9 MB (2880631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01cb8d31a9cc0fb322a23391202b117aadccc82573b0da2c6e01f074abc85af0`  
		Last Modified: Tue, 20 Nov 2018 10:36:07 GMT  
		Size: 178.3 MB (178319188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8-sdk` - linux; s390x

```console
$ docker pull ibmjava@sha256:b54e14c9ed8835adf80b35eba4077c492a91841db1bba2918eaac462f7bf8054
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.7 MB (201748938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40152031c8e00b30ac52a2dece208ce7c9f1d2b9fe8b40f17e334171fbedd324`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:11:21 GMT
ADD file:b77f6d24d8c56183678bdd336bbba6fe26ad37d1a964c91cb91ad225c2e84406 in / 
# Tue, 20 Nov 2018 13:11:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:11:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:11:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:11:27 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:29:27 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 20 Nov 2018 13:29:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:29:38 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Tue, 20 Nov 2018 13:32:12 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='65717f402943895fcb46f235404647a63dc3a5b7defcff6fa327f201f3e11cf2';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='a107524bbbc79446ca7a651157c3fb94395df595fe5ce5b754d2dd7d61e526bf';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4069e4b273da768294ca023dba5f6a2da005d4a712ebc2ee406116ecebdcf958';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='0130d0abf94b43ee8fe5f48e4199db334403a5669f8dc45aab60548da6e25016';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='5395c62e01743eb709f54253de14de5148023bf25ae460a3364a1af62c8ac64c';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 20 Nov 2018 13:32:14 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:e106090ffbaf8ccb97860ef61a165dfec5a1c3dc44bf455e12d088c42a60010f`  
		Last Modified: Mon, 19 Nov 2018 15:11:28 GMT  
		Size: 42.4 MB (42363363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6dfca1c5fa4e1ed6f0787784f1ddd02ab6b55d0b741fa5f2cfc3ebcd6ae045`  
		Last Modified: Tue, 20 Nov 2018 13:13:27 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc58638e6a1418dbc11e178f7020b4493a592fb0ddc19ab287c91b769c4526d`  
		Last Modified: Tue, 20 Nov 2018 13:13:27 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475a0504a32677e770f759dcb0a5bba535e0927168bef4ef761b9c458d29e29f`  
		Last Modified: Tue, 20 Nov 2018 13:13:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1c13bc010bbc9909b1dab6dfb49b0ea3693a60d30728eaf7deec53f3afe0daf`  
		Last Modified: Tue, 20 Nov 2018 13:32:30 GMT  
		Size: 2.8 MB (2765136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd581f35bda5615feceba11e84ef1e66252690ef55247b353cedfae9b4afd84`  
		Last Modified: Tue, 20 Nov 2018 13:33:50 GMT  
		Size: 156.6 MB (156618888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ibmjava:8-sdk-alpine`

```console
$ docker pull ibmjava@sha256:0e47dfcacdc0e4a5c0f6a53ccb5a308b8a3de3379c1e0cdeea44f269d54b22cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ibmjava:8-sdk-alpine` - linux; amd64

```console
$ docker pull ibmjava@sha256:2691d0466f940ea3dce0ef1364d71e0d382e3ae9a31776729186a2e46e6b1627
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.8 MB (170838320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f22da3a12c639b97a9c96eb81fbed248c893bda7aad7470cb8ea29eae2238691`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:30:09 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 11 Sep 2018 23:30:17 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Fri, 02 Nov 2018 22:21:29 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Fri, 02 Nov 2018 22:27:31 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='65717f402943895fcb46f235404647a63dc3a5b7defcff6fa327f201f3e11cf2';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='a107524bbbc79446ca7a651157c3fb94395df595fe5ce5b754d2dd7d61e526bf';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4069e4b273da768294ca023dba5f6a2da005d4a712ebc2ee406116ecebdcf958';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='0130d0abf94b43ee8fe5f48e4199db334403a5669f8dc45aab60548da6e25016';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='5395c62e01743eb709f54253de14de5148023bf25ae460a3364a1af62c8ac64c';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Fri, 02 Nov 2018 22:27:34 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49037229889fce699938aaa3695d08d2bd2676feffbe8af11a765a855de9155f`  
		Last Modified: Tue, 11 Sep 2018 23:32:54 GMT  
		Size: 4.5 MB (4519019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4006766ddc21aa22149aeb228209578ab63756f1c76bfbe5d6c8ded5c750569`  
		Last Modified: Fri, 02 Nov 2018 22:33:37 GMT  
		Size: 164.2 MB (164212126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ibmjava:8-sfj`

```console
$ docker pull ibmjava@sha256:5f78eff6b15e493749ce1342fb78ceccea6ef42c26ac73aff2b19bda4be8beed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ibmjava:8-sfj` - linux; amd64

```console
$ docker pull ibmjava@sha256:693d43f56dc960b608444d418d612bc755dd8897a8877f79a8005e8fab4bc3cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.7 MB (108677754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9918fbf4325adb11abac10aaf7edfbf318d8ce52a6f7efaf84bfceb65281bca`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:15:45 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 19 Nov 2018 22:15:54 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:15:55 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Mon, 19 Nov 2018 22:17:51 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='7db9cfe1f19a80d7ab07d902fc5d3455784a02fc66e1b15c9e581baeae3fca7c';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='4fc3548f0158977e3301bc9c7c71f82a06a0cb4f804021142700ab90d833b503';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='283d738a3ae62f97b084c38d5f74aded34c40cffdcea1c0d5586dcbe4875f7f1';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='02d83765d474ce7d42fb1ac3dac6b2d410f99c6543df8dcbc799c071c8386138';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='cedaa8b60c24ee887bd50bf1f59627004e2690a0032cc38ba11d6dc9b5e57308';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 19 Nov 2018 22:17:51 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b2fbbc72b1f552c0411f96735f0171009df0be2ee232ae2e75d9d99524ef11`  
		Last Modified: Mon, 19 Nov 2018 22:20:04 GMT  
		Size: 3.0 MB (3020935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1736f69d151da48774e89d1249eb899dfea33443981a27f80f763f1b58dbf9`  
		Last Modified: Mon, 19 Nov 2018 22:22:12 GMT  
		Size: 62.2 MB (62243002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8-sfj` - linux; 386

```console
$ docker pull ibmjava@sha256:9e8628702fe7e16ea34e125506b06691ad248d12ae1bc46bb89c7b900b379421
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.3 MB (107345500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:129ea072e79bc2b639f14abc65002f02affc8f98cfbccbd3e90012a0702b6dab`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 12:20:00 GMT
ADD file:6fdc065a2fbe1084b10b598d239ab639f144d17d4496012dbdec7d8456e3a307 in / 
# Tue, 20 Nov 2018 12:20:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 12:20:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:20:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 12:20:03 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:13:24 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 20 Nov 2018 13:13:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:13:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Tue, 20 Nov 2018 13:15:12 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='7db9cfe1f19a80d7ab07d902fc5d3455784a02fc66e1b15c9e581baeae3fca7c';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='4fc3548f0158977e3301bc9c7c71f82a06a0cb4f804021142700ab90d833b503';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='283d738a3ae62f97b084c38d5f74aded34c40cffdcea1c0d5586dcbe4875f7f1';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='02d83765d474ce7d42fb1ac3dac6b2d410f99c6543df8dcbc799c071c8386138';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='cedaa8b60c24ee887bd50bf1f59627004e2690a0032cc38ba11d6dc9b5e57308';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 20 Nov 2018 13:15:12 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:a3aca6307c1aa2b2cc8d15fa3e646157166eed6703321b3a79783f481ae6273a`  
		Last Modified: Mon, 19 Nov 2018 15:09:59 GMT  
		Size: 43.6 MB (43635706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643e7d4d3a0a2cb275ee831c6bd19df14945331b343788664b0f8f864fb5fcf0`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e299cd08753476963cf11490637d277a0d98a1c5b8b7d47db843da5b32ecaa8`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc02c766472ded7c53da06de596743880346590bbf6f778c04fa03ead701f3b`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff38b55c864afb6636418c53d251bb8283b7f948851f351440609a6029e1bb84`  
		Last Modified: Tue, 20 Nov 2018 13:16:51 GMT  
		Size: 2.9 MB (2876368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2bbcf0e91abc3d439c27cd79dc555daaef1a7b07fa0331a1f3b35f72f5a690`  
		Last Modified: Tue, 20 Nov 2018 13:18:06 GMT  
		Size: 60.8 MB (60831826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8-sfj` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:73bd0c2171078ec3666863fe5345b76d989f4970f6b0312002a5c1e21714170b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (115971972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51f8e1edacde498df9bcd55319e0baf50536d533c151b5717d411364f13c49fa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:31:16 GMT
ADD file:cb540f7e8c3e08020b164ac22b03b29afba2ceee95f8dd5abd8013e4e02372d8 in / 
# Tue, 20 Nov 2018 09:31:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:31:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:31:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:31:28 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:19:22 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 20 Nov 2018 10:20:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:20:03 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Tue, 20 Nov 2018 10:27:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='7db9cfe1f19a80d7ab07d902fc5d3455784a02fc66e1b15c9e581baeae3fca7c';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='4fc3548f0158977e3301bc9c7c71f82a06a0cb4f804021142700ab90d833b503';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='283d738a3ae62f97b084c38d5f74aded34c40cffdcea1c0d5586dcbe4875f7f1';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='02d83765d474ce7d42fb1ac3dac6b2d410f99c6543df8dcbc799c071c8386138';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='cedaa8b60c24ee887bd50bf1f59627004e2690a0032cc38ba11d6dc9b5e57308';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 20 Nov 2018 10:27:44 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:7ea631de703fad0f373d9aff9771c730726128e296e2e5311131ab3438855046`  
		Last Modified: Tue, 20 Nov 2018 09:53:03 GMT  
		Size: 45.7 MB (45694909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6589fdb4ddc043f28784fba346cab7fe7fd9711385872c3ec8a7f45c9e44a1b9`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d217e98717edd666c49de76323d085a7a3c6cfd8bb43723522136c5fdd0aab`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f66c0cb95d14802e1df0d308ca65d874322a65b6208757826ef942c61164fbe`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ba443302d1e528ff9c5aead9c6fd3fe4c385e60894041ce381245a06209ccf`  
		Last Modified: Tue, 20 Nov 2018 10:33:14 GMT  
		Size: 2.9 MB (2880631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0bdc59af7de3171abbe8157339b2ca856f4517d1fd1070a41b49c6b8d391dd`  
		Last Modified: Tue, 20 Nov 2018 10:35:03 GMT  
		Size: 67.4 MB (67394832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8-sfj` - linux; s390x

```console
$ docker pull ibmjava@sha256:fcdf77464dd399677c73eecb5b8450f8971c997abe6f0938bc0bf032b17cf0b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109533419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e28b1c35c6fa8fe6e51e3682ebe52fcbd3a2f4a670bffd0e4d0b09c16c4f8e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:11:21 GMT
ADD file:b77f6d24d8c56183678bdd336bbba6fe26ad37d1a964c91cb91ad225c2e84406 in / 
# Tue, 20 Nov 2018 13:11:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:11:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:11:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:11:27 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:29:27 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 20 Nov 2018 13:29:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:29:38 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Tue, 20 Nov 2018 13:31:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='7db9cfe1f19a80d7ab07d902fc5d3455784a02fc66e1b15c9e581baeae3fca7c';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='4fc3548f0158977e3301bc9c7c71f82a06a0cb4f804021142700ab90d833b503';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='283d738a3ae62f97b084c38d5f74aded34c40cffdcea1c0d5586dcbe4875f7f1';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='02d83765d474ce7d42fb1ac3dac6b2d410f99c6543df8dcbc799c071c8386138';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='cedaa8b60c24ee887bd50bf1f59627004e2690a0032cc38ba11d6dc9b5e57308';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 20 Nov 2018 13:31:14 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:e106090ffbaf8ccb97860ef61a165dfec5a1c3dc44bf455e12d088c42a60010f`  
		Last Modified: Mon, 19 Nov 2018 15:11:28 GMT  
		Size: 42.4 MB (42363363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6dfca1c5fa4e1ed6f0787784f1ddd02ab6b55d0b741fa5f2cfc3ebcd6ae045`  
		Last Modified: Tue, 20 Nov 2018 13:13:27 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc58638e6a1418dbc11e178f7020b4493a592fb0ddc19ab287c91b769c4526d`  
		Last Modified: Tue, 20 Nov 2018 13:13:27 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475a0504a32677e770f759dcb0a5bba535e0927168bef4ef761b9c458d29e29f`  
		Last Modified: Tue, 20 Nov 2018 13:13:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1c13bc010bbc9909b1dab6dfb49b0ea3693a60d30728eaf7deec53f3afe0daf`  
		Last Modified: Tue, 20 Nov 2018 13:32:30 GMT  
		Size: 2.8 MB (2765136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4ca3bcb04ee17d3e8d6cae5dd12c168efba26fd87a7de35ce216ddef0ca9a9`  
		Last Modified: Tue, 20 Nov 2018 13:33:20 GMT  
		Size: 64.4 MB (64403369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ibmjava:8-sfj-alpine`

```console
$ docker pull ibmjava@sha256:1a163386c33ef41bbc7f3bde701bb07776e7a9a0f32eb2b678a034a89bdbae33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ibmjava:8-sfj-alpine` - linux; amd64

```console
$ docker pull ibmjava@sha256:149a9097a4e42ab0275b6ea4b8828acb823d4c5bcab7a8f9cf17fe5aa8bc29db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68885587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a77ef2fbeb9331f278c781be0f52fdd3cbb7d32dd5f90719b93d7561a6b14278`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:30:09 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 11 Sep 2018 23:30:17 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Fri, 02 Nov 2018 22:21:29 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Fri, 02 Nov 2018 22:23:50 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='7db9cfe1f19a80d7ab07d902fc5d3455784a02fc66e1b15c9e581baeae3fca7c';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='4fc3548f0158977e3301bc9c7c71f82a06a0cb4f804021142700ab90d833b503';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='283d738a3ae62f97b084c38d5f74aded34c40cffdcea1c0d5586dcbe4875f7f1';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='02d83765d474ce7d42fb1ac3dac6b2d410f99c6543df8dcbc799c071c8386138';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='cedaa8b60c24ee887bd50bf1f59627004e2690a0032cc38ba11d6dc9b5e57308';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Fri, 02 Nov 2018 22:23:59 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49037229889fce699938aaa3695d08d2bd2676feffbe8af11a765a855de9155f`  
		Last Modified: Tue, 11 Sep 2018 23:32:54 GMT  
		Size: 4.5 MB (4519019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a959cfa1f9dfd4f3596edb10689ecc143155c850bc169ab15303d99a78252498`  
		Last Modified: Fri, 02 Nov 2018 22:31:41 GMT  
		Size: 62.3 MB (62259393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ibmjava:jre`

```console
$ docker pull ibmjava@sha256:e805cf8c3d1d7f1ee2f7f9137eb781e9cf7da7f73b3b40daf426d6682390a6a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ibmjava:jre` - linux; amd64

```console
$ docker pull ibmjava@sha256:f2005ce2c964cb6cb31694a6efa52ec95ffe09c076e3f121fb0ff7745f17901d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173875365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef7d78475a0233a9905e1af754bbcf82aa42e4ce324d3fa0b1c5fb05c5888276`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:15:45 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 19 Nov 2018 22:15:54 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:15:55 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Mon, 19 Nov 2018 22:16:37 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9fcca491b709b40400cd43fe35894b890cffef45f07c6f971d8c307e0e10828d';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='72481fb9cb1747c0ef698ad8e795e6bb2e5db23102db110865a53b3c63d5763d';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6e4ec2291f4ae28b69f268617c9969defc1bbe01c728c89cf6ae9f7218774beb';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='e235a7bfa2e48234466e54dddfe4f6e2085aab29795e21a3b327fce4945fe01a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='813dca327966269d4bda4a7fae12f52d9e85b5f906934352f831ecda47499a87';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 19 Nov 2018 22:16:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b2fbbc72b1f552c0411f96735f0171009df0be2ee232ae2e75d9d99524ef11`  
		Last Modified: Mon, 19 Nov 2018 22:20:04 GMT  
		Size: 3.0 MB (3020935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d82603f49a53744738db4cc80d2e46e0966761d654dd94abc13c879de24d73`  
		Last Modified: Mon, 19 Nov 2018 22:20:16 GMT  
		Size: 127.4 MB (127440613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:jre` - linux; 386

```console
$ docker pull ibmjava@sha256:9c43c6432e0c2fbcb0ae33fe7cf1ce6cf3a2dd2ba08cc9ad5d45bc6405e83feb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.3 MB (162277009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d7c413e1b4d849c03f2573ecf439b7a51c72ec0251a39cd1b652edcdfd3960e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 12:20:00 GMT
ADD file:6fdc065a2fbe1084b10b598d239ab639f144d17d4496012dbdec7d8456e3a307 in / 
# Tue, 20 Nov 2018 12:20:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 12:20:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:20:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 12:20:03 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:13:24 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 20 Nov 2018 13:13:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:13:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Tue, 20 Nov 2018 13:14:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9fcca491b709b40400cd43fe35894b890cffef45f07c6f971d8c307e0e10828d';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='72481fb9cb1747c0ef698ad8e795e6bb2e5db23102db110865a53b3c63d5763d';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6e4ec2291f4ae28b69f268617c9969defc1bbe01c728c89cf6ae9f7218774beb';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='e235a7bfa2e48234466e54dddfe4f6e2085aab29795e21a3b327fce4945fe01a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='813dca327966269d4bda4a7fae12f52d9e85b5f906934352f831ecda47499a87';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 20 Nov 2018 13:14:14 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:a3aca6307c1aa2b2cc8d15fa3e646157166eed6703321b3a79783f481ae6273a`  
		Last Modified: Mon, 19 Nov 2018 15:09:59 GMT  
		Size: 43.6 MB (43635706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643e7d4d3a0a2cb275ee831c6bd19df14945331b343788664b0f8f864fb5fcf0`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e299cd08753476963cf11490637d277a0d98a1c5b8b7d47db843da5b32ecaa8`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc02c766472ded7c53da06de596743880346590bbf6f778c04fa03ead701f3b`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff38b55c864afb6636418c53d251bb8283b7f948851f351440609a6029e1bb84`  
		Last Modified: Tue, 20 Nov 2018 13:16:51 GMT  
		Size: 2.9 MB (2876368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0a0a646e22edba6fe2eb75e509b41c9c46253504f00077db1e41627ea7c432`  
		Last Modified: Tue, 20 Nov 2018 13:17:03 GMT  
		Size: 115.8 MB (115763335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:jre` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:b432027d6d18c4364ea54ed5038b453f77df37c90f0d3003ab122510cf8c7aa9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.9 MB (189921948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26796dd982f5f54c117a349183cd4ac112d8febc2d4b4a1aaee3206c1fb0f66c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:31:16 GMT
ADD file:cb540f7e8c3e08020b164ac22b03b29afba2ceee95f8dd5abd8013e4e02372d8 in / 
# Tue, 20 Nov 2018 09:31:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:31:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:31:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:31:28 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:19:22 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 20 Nov 2018 10:20:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:20:03 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Tue, 20 Nov 2018 10:22:25 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9fcca491b709b40400cd43fe35894b890cffef45f07c6f971d8c307e0e10828d';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='72481fb9cb1747c0ef698ad8e795e6bb2e5db23102db110865a53b3c63d5763d';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6e4ec2291f4ae28b69f268617c9969defc1bbe01c728c89cf6ae9f7218774beb';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='e235a7bfa2e48234466e54dddfe4f6e2085aab29795e21a3b327fce4945fe01a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='813dca327966269d4bda4a7fae12f52d9e85b5f906934352f831ecda47499a87';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 20 Nov 2018 10:22:27 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:7ea631de703fad0f373d9aff9771c730726128e296e2e5311131ab3438855046`  
		Last Modified: Tue, 20 Nov 2018 09:53:03 GMT  
		Size: 45.7 MB (45694909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6589fdb4ddc043f28784fba346cab7fe7fd9711385872c3ec8a7f45c9e44a1b9`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d217e98717edd666c49de76323d085a7a3c6cfd8bb43723522136c5fdd0aab`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f66c0cb95d14802e1df0d308ca65d874322a65b6208757826ef942c61164fbe`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ba443302d1e528ff9c5aead9c6fd3fe4c385e60894041ce381245a06209ccf`  
		Last Modified: Tue, 20 Nov 2018 10:33:14 GMT  
		Size: 2.9 MB (2880631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fd106bd343a0407224bf2c9daf5c28676b3ba6781ead0b57bcc5063aae9cc3`  
		Last Modified: Tue, 20 Nov 2018 10:33:41 GMT  
		Size: 141.3 MB (141344808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:jre` - linux; s390x

```console
$ docker pull ibmjava@sha256:ed05bfe00480da785b9bc9c09112ab5c32d8ab6b616b84f8e43bb08e87c37304
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.9 MB (171856863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1849792be427ef673a8836f288d6c126bf8fb61c5989adc31ff9e7bed1440904`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:11:21 GMT
ADD file:b77f6d24d8c56183678bdd336bbba6fe26ad37d1a964c91cb91ad225c2e84406 in / 
# Tue, 20 Nov 2018 13:11:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:11:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:11:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:11:27 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:29:27 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 20 Nov 2018 13:29:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:29:38 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Tue, 20 Nov 2018 13:30:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9fcca491b709b40400cd43fe35894b890cffef45f07c6f971d8c307e0e10828d';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='72481fb9cb1747c0ef698ad8e795e6bb2e5db23102db110865a53b3c63d5763d';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6e4ec2291f4ae28b69f268617c9969defc1bbe01c728c89cf6ae9f7218774beb';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='e235a7bfa2e48234466e54dddfe4f6e2085aab29795e21a3b327fce4945fe01a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='813dca327966269d4bda4a7fae12f52d9e85b5f906934352f831ecda47499a87';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 20 Nov 2018 13:30:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:e106090ffbaf8ccb97860ef61a165dfec5a1c3dc44bf455e12d088c42a60010f`  
		Last Modified: Mon, 19 Nov 2018 15:11:28 GMT  
		Size: 42.4 MB (42363363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6dfca1c5fa4e1ed6f0787784f1ddd02ab6b55d0b741fa5f2cfc3ebcd6ae045`  
		Last Modified: Tue, 20 Nov 2018 13:13:27 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc58638e6a1418dbc11e178f7020b4493a592fb0ddc19ab287c91b769c4526d`  
		Last Modified: Tue, 20 Nov 2018 13:13:27 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475a0504a32677e770f759dcb0a5bba535e0927168bef4ef761b9c458d29e29f`  
		Last Modified: Tue, 20 Nov 2018 13:13:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1c13bc010bbc9909b1dab6dfb49b0ea3693a60d30728eaf7deec53f3afe0daf`  
		Last Modified: Tue, 20 Nov 2018 13:32:30 GMT  
		Size: 2.8 MB (2765136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ae477a0e89f84e899d0fa1187264e718e7e0ff56b1688e143c1d7bd849aa6e`  
		Last Modified: Tue, 20 Nov 2018 13:32:47 GMT  
		Size: 126.7 MB (126726813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ibmjava:jre-alpine`

```console
$ docker pull ibmjava@sha256:2f8e196172998b93cf62236350ed581110bdc50cd0f2a6f9fb3899d71b3b105a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ibmjava:jre-alpine` - linux; amd64

```console
$ docker pull ibmjava@sha256:59918d4c36cd65e739c3af1e5a35eea36db40d1927f4ff859f7c44e7c3b64858
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.0 MB (134033846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4ea9491f1e7b0762c3e9e71750ca48fa7cee4d576baa268888310bb3e65c7e3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:30:09 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 11 Sep 2018 23:30:17 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Fri, 02 Nov 2018 22:21:29 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Fri, 02 Nov 2018 22:22:09 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9fcca491b709b40400cd43fe35894b890cffef45f07c6f971d8c307e0e10828d';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='72481fb9cb1747c0ef698ad8e795e6bb2e5db23102db110865a53b3c63d5763d';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6e4ec2291f4ae28b69f268617c9969defc1bbe01c728c89cf6ae9f7218774beb';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='e235a7bfa2e48234466e54dddfe4f6e2085aab29795e21a3b327fce4945fe01a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='813dca327966269d4bda4a7fae12f52d9e85b5f906934352f831ecda47499a87';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Fri, 02 Nov 2018 22:22:10 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49037229889fce699938aaa3695d08d2bd2676feffbe8af11a765a855de9155f`  
		Last Modified: Tue, 11 Sep 2018 23:32:54 GMT  
		Size: 4.5 MB (4519019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92213414ea414abf7c6e7185ec6102b3662af405bf1de882b084cdce5b8ea602`  
		Last Modified: Fri, 02 Nov 2018 22:29:50 GMT  
		Size: 127.4 MB (127407652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ibmjava:latest`

```console
$ docker pull ibmjava@sha256:bf837354dc1c1cec0ff23752be19eed837a8ebf1a72344d03dfadc6e8b40c4cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ibmjava:latest` - linux; amd64

```console
$ docker pull ibmjava@sha256:f2005ce2c964cb6cb31694a6efa52ec95ffe09c076e3f121fb0ff7745f17901d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173875365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef7d78475a0233a9905e1af754bbcf82aa42e4ce324d3fa0b1c5fb05c5888276`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:15:45 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 19 Nov 2018 22:15:54 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:15:55 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Mon, 19 Nov 2018 22:16:37 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9fcca491b709b40400cd43fe35894b890cffef45f07c6f971d8c307e0e10828d';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='72481fb9cb1747c0ef698ad8e795e6bb2e5db23102db110865a53b3c63d5763d';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6e4ec2291f4ae28b69f268617c9969defc1bbe01c728c89cf6ae9f7218774beb';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='e235a7bfa2e48234466e54dddfe4f6e2085aab29795e21a3b327fce4945fe01a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='813dca327966269d4bda4a7fae12f52d9e85b5f906934352f831ecda47499a87';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 19 Nov 2018 22:16:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b2fbbc72b1f552c0411f96735f0171009df0be2ee232ae2e75d9d99524ef11`  
		Last Modified: Mon, 19 Nov 2018 22:20:04 GMT  
		Size: 3.0 MB (3020935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d82603f49a53744738db4cc80d2e46e0966761d654dd94abc13c879de24d73`  
		Last Modified: Mon, 19 Nov 2018 22:20:16 GMT  
		Size: 127.4 MB (127440613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:latest` - linux; 386

```console
$ docker pull ibmjava@sha256:87972c6152895f862efe5c4f6467c4b177d499494e716af6f4adc80c20c696ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.2 MB (162224109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc065153ca09d951aea8b1468b22e57cb286f8ddf43ffd4e192a8a5417f6bdd5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 19 Oct 2018 12:42:16 GMT
ADD file:2771ee18ccb3a0a6b045ef2a4d355702c369493d5244dd3bf680221376780e37 in / 
# Fri, 19 Oct 2018 12:42:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 12:42:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:42:18 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 12:42:18 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 13:47:07 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 19 Oct 2018 13:47:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Nov 2018 10:57:22 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Sat, 03 Nov 2018 10:58:08 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9fcca491b709b40400cd43fe35894b890cffef45f07c6f971d8c307e0e10828d';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='72481fb9cb1747c0ef698ad8e795e6bb2e5db23102db110865a53b3c63d5763d';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6e4ec2291f4ae28b69f268617c9969defc1bbe01c728c89cf6ae9f7218774beb';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='e235a7bfa2e48234466e54dddfe4f6e2085aab29795e21a3b327fce4945fe01a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='813dca327966269d4bda4a7fae12f52d9e85b5f906934352f831ecda47499a87';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 03 Nov 2018 10:58:08 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:5be2374a5e1d8357d7b4b6e6c599bfb97e7ac60e347f2a0593c2e13ec9fdef71`  
		Last Modified: Fri, 19 Oct 2018 12:45:04 GMT  
		Size: 43.6 MB (43582407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9364a60af5db1019b325953424c8dd43fcff674830ff20a10cfcd5e1b150e5a9`  
		Last Modified: Fri, 19 Oct 2018 12:44:54 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fccc52ae61cb7946f8eed2a6a0064c124bb6bf33beae72f115c056589a93c9e0`  
		Last Modified: Fri, 19 Oct 2018 12:44:54 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2de2ebafad38a2c63f30d22f5474029b85c279bf03d4fb5a47fdb3183ebf22c`  
		Last Modified: Fri, 19 Oct 2018 12:44:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12e91de9574f1c794efec4853625929b824a80cfefffbc8ac6d9c9adf64ab9c`  
		Last Modified: Fri, 19 Oct 2018 13:50:00 GMT  
		Size: 2.9 MB (2876528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf8bc07597aa4ff869ff79ded3eb61abe81ac2a19570026ad4a0131b8eb26964`  
		Last Modified: Sat, 03 Nov 2018 11:00:43 GMT  
		Size: 115.8 MB (115763568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:latest` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:b432027d6d18c4364ea54ed5038b453f77df37c90f0d3003ab122510cf8c7aa9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.9 MB (189921948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26796dd982f5f54c117a349183cd4ac112d8febc2d4b4a1aaee3206c1fb0f66c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:31:16 GMT
ADD file:cb540f7e8c3e08020b164ac22b03b29afba2ceee95f8dd5abd8013e4e02372d8 in / 
# Tue, 20 Nov 2018 09:31:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:31:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:31:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:31:28 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:19:22 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 20 Nov 2018 10:20:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:20:03 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Tue, 20 Nov 2018 10:22:25 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9fcca491b709b40400cd43fe35894b890cffef45f07c6f971d8c307e0e10828d';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='72481fb9cb1747c0ef698ad8e795e6bb2e5db23102db110865a53b3c63d5763d';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6e4ec2291f4ae28b69f268617c9969defc1bbe01c728c89cf6ae9f7218774beb';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='e235a7bfa2e48234466e54dddfe4f6e2085aab29795e21a3b327fce4945fe01a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='813dca327966269d4bda4a7fae12f52d9e85b5f906934352f831ecda47499a87';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 20 Nov 2018 10:22:27 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:7ea631de703fad0f373d9aff9771c730726128e296e2e5311131ab3438855046`  
		Last Modified: Tue, 20 Nov 2018 09:53:03 GMT  
		Size: 45.7 MB (45694909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6589fdb4ddc043f28784fba346cab7fe7fd9711385872c3ec8a7f45c9e44a1b9`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d217e98717edd666c49de76323d085a7a3c6cfd8bb43723522136c5fdd0aab`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f66c0cb95d14802e1df0d308ca65d874322a65b6208757826ef942c61164fbe`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ba443302d1e528ff9c5aead9c6fd3fe4c385e60894041ce381245a06209ccf`  
		Last Modified: Tue, 20 Nov 2018 10:33:14 GMT  
		Size: 2.9 MB (2880631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fd106bd343a0407224bf2c9daf5c28676b3ba6781ead0b57bcc5063aae9cc3`  
		Last Modified: Tue, 20 Nov 2018 10:33:41 GMT  
		Size: 141.3 MB (141344808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:latest` - linux; s390x

```console
$ docker pull ibmjava@sha256:859720861754b65c706ef3a50f8e20d4d1d3cda456a3695a0dbe73187639eb89
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.8 MB (171796327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3afe1c7a5b47a948a0a84e3edfa7a358c34e344164a6660ab279fd1c26841088`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 19 Oct 2018 12:51:17 GMT
ADD file:69e301ffa78d77e7d058b6d5717cbda806dafa4fd8831ff69a799b5de46a9588 in / 
# Fri, 19 Oct 2018 12:51:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 12:51:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 12:51:19 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 13:11:50 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 19 Oct 2018 13:11:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Nov 2018 11:42:23 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Sat, 03 Nov 2018 11:43:04 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9fcca491b709b40400cd43fe35894b890cffef45f07c6f971d8c307e0e10828d';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='72481fb9cb1747c0ef698ad8e795e6bb2e5db23102db110865a53b3c63d5763d';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6e4ec2291f4ae28b69f268617c9969defc1bbe01c728c89cf6ae9f7218774beb';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='e235a7bfa2e48234466e54dddfe4f6e2085aab29795e21a3b327fce4945fe01a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='813dca327966269d4bda4a7fae12f52d9e85b5f906934352f831ecda47499a87';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 03 Nov 2018 11:43:05 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:09d85ef3b4600313835e8037960f2578b7b03ecba684a0f382c8c1b665c616f8`  
		Last Modified: Fri, 19 Oct 2018 12:52:16 GMT  
		Size: 42.3 MB (42303016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315cc56d0cc97674f3818c077692a179844efd310fd7e0207864b51af16167b3`  
		Last Modified: Fri, 19 Oct 2018 12:52:09 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ccd8b63257afccd13d25c7f6ee2333d1f7348037b6f14eab5bee00eaf9aab99`  
		Last Modified: Fri, 19 Oct 2018 12:52:09 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb7e4feb17a1e3db5ca4e2c6649a869c9aa25339cfc790681a2fb5c6dc1060a`  
		Last Modified: Fri, 19 Oct 2018 12:52:08 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d659ade0f1060deb1ad682f66464451013f886566246b569f363404bb4db24`  
		Last Modified: Fri, 19 Oct 2018 13:14:12 GMT  
		Size: 2.8 MB (2764971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4cca57d1e66eccfc737054dfea703e387fd9341437a7710466fbcfd0fd8a9c5`  
		Last Modified: Sat, 03 Nov 2018 11:45:08 GMT  
		Size: 126.7 MB (126726783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ibmjava:sdk`

```console
$ docker pull ibmjava@sha256:99287712ed3b7f5614bad6559ea3a5c2661cb98e21bc6f59877e586ca856ec45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ibmjava:sdk` - linux; amd64

```console
$ docker pull ibmjava@sha256:5c06b3f323c6d05490f8b17cce710cf3b0beef6f12769a92a298f967057f2100
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.7 MB (210693708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f298e3e92374cc9e621000a567508db25292affade08fd1a5d55c7123373ff`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:15:45 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 19 Nov 2018 22:15:54 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:15:55 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Mon, 19 Nov 2018 22:19:25 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='65717f402943895fcb46f235404647a63dc3a5b7defcff6fa327f201f3e11cf2';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='a107524bbbc79446ca7a651157c3fb94395df595fe5ce5b754d2dd7d61e526bf';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4069e4b273da768294ca023dba5f6a2da005d4a712ebc2ee406116ecebdcf958';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='0130d0abf94b43ee8fe5f48e4199db334403a5669f8dc45aab60548da6e25016';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='5395c62e01743eb709f54253de14de5148023bf25ae460a3364a1af62c8ac64c';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 19 Nov 2018 22:19:30 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b2fbbc72b1f552c0411f96735f0171009df0be2ee232ae2e75d9d99524ef11`  
		Last Modified: Mon, 19 Nov 2018 22:20:04 GMT  
		Size: 3.0 MB (3020935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6aee67f5bb33c7dbafcd2df6de6286c01e00e7ea6edbe6719d18f43ca46dc0f`  
		Last Modified: Mon, 19 Nov 2018 22:23:21 GMT  
		Size: 164.3 MB (164258956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:sdk` - linux; 386

```console
$ docker pull ibmjava@sha256:ec9f7f46b430f4f482c49df83eb0b497153f5222cb375523a96db1b8434233fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.0 MB (199010761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b0d743bcd83b3c43f32a706894bfe56bbfd72d4378f756f65479df57343e33a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 12:20:00 GMT
ADD file:6fdc065a2fbe1084b10b598d239ab639f144d17d4496012dbdec7d8456e3a307 in / 
# Tue, 20 Nov 2018 12:20:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 12:20:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:20:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 12:20:03 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:13:24 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 20 Nov 2018 13:13:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:13:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Tue, 20 Nov 2018 13:16:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='65717f402943895fcb46f235404647a63dc3a5b7defcff6fa327f201f3e11cf2';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='a107524bbbc79446ca7a651157c3fb94395df595fe5ce5b754d2dd7d61e526bf';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4069e4b273da768294ca023dba5f6a2da005d4a712ebc2ee406116ecebdcf958';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='0130d0abf94b43ee8fe5f48e4199db334403a5669f8dc45aab60548da6e25016';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='5395c62e01743eb709f54253de14de5148023bf25ae460a3364a1af62c8ac64c';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 20 Nov 2018 13:16:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:a3aca6307c1aa2b2cc8d15fa3e646157166eed6703321b3a79783f481ae6273a`  
		Last Modified: Mon, 19 Nov 2018 15:09:59 GMT  
		Size: 43.6 MB (43635706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643e7d4d3a0a2cb275ee831c6bd19df14945331b343788664b0f8f864fb5fcf0`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e299cd08753476963cf11490637d277a0d98a1c5b8b7d47db843da5b32ecaa8`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc02c766472ded7c53da06de596743880346590bbf6f778c04fa03ead701f3b`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff38b55c864afb6636418c53d251bb8283b7f948851f351440609a6029e1bb84`  
		Last Modified: Tue, 20 Nov 2018 13:16:51 GMT  
		Size: 2.9 MB (2876368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c595f16c2467ee08cd29f0710899b11af4799729eb321ac8fd8ee800bc339526`  
		Last Modified: Tue, 20 Nov 2018 13:18:53 GMT  
		Size: 152.5 MB (152497087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:sdk` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:51924ea320d318ae2097fefc739fa58019f6c35cad296b19af5ad11da27af69b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.9 MB (226896328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:884937c604a0e892591903007da092cf2008dcb21530da5b9fb1d6c915f4aedf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:31:16 GMT
ADD file:cb540f7e8c3e08020b164ac22b03b29afba2ceee95f8dd5abd8013e4e02372d8 in / 
# Tue, 20 Nov 2018 09:31:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:31:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:31:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:31:28 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:19:22 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 20 Nov 2018 10:20:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:20:03 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Tue, 20 Nov 2018 10:30:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='65717f402943895fcb46f235404647a63dc3a5b7defcff6fa327f201f3e11cf2';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='a107524bbbc79446ca7a651157c3fb94395df595fe5ce5b754d2dd7d61e526bf';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4069e4b273da768294ca023dba5f6a2da005d4a712ebc2ee406116ecebdcf958';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='0130d0abf94b43ee8fe5f48e4199db334403a5669f8dc45aab60548da6e25016';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='5395c62e01743eb709f54253de14de5148023bf25ae460a3364a1af62c8ac64c';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 20 Nov 2018 10:30:48 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:7ea631de703fad0f373d9aff9771c730726128e296e2e5311131ab3438855046`  
		Last Modified: Tue, 20 Nov 2018 09:53:03 GMT  
		Size: 45.7 MB (45694909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6589fdb4ddc043f28784fba346cab7fe7fd9711385872c3ec8a7f45c9e44a1b9`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d217e98717edd666c49de76323d085a7a3c6cfd8bb43723522136c5fdd0aab`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f66c0cb95d14802e1df0d308ca65d874322a65b6208757826ef942c61164fbe`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ba443302d1e528ff9c5aead9c6fd3fe4c385e60894041ce381245a06209ccf`  
		Last Modified: Tue, 20 Nov 2018 10:33:14 GMT  
		Size: 2.9 MB (2880631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01cb8d31a9cc0fb322a23391202b117aadccc82573b0da2c6e01f074abc85af0`  
		Last Modified: Tue, 20 Nov 2018 10:36:07 GMT  
		Size: 178.3 MB (178319188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:sdk` - linux; s390x

```console
$ docker pull ibmjava@sha256:b54e14c9ed8835adf80b35eba4077c492a91841db1bba2918eaac462f7bf8054
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.7 MB (201748938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40152031c8e00b30ac52a2dece208ce7c9f1d2b9fe8b40f17e334171fbedd324`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:11:21 GMT
ADD file:b77f6d24d8c56183678bdd336bbba6fe26ad37d1a964c91cb91ad225c2e84406 in / 
# Tue, 20 Nov 2018 13:11:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:11:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:11:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:11:27 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:29:27 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 20 Nov 2018 13:29:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:29:38 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Tue, 20 Nov 2018 13:32:12 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='65717f402943895fcb46f235404647a63dc3a5b7defcff6fa327f201f3e11cf2';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='a107524bbbc79446ca7a651157c3fb94395df595fe5ce5b754d2dd7d61e526bf';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4069e4b273da768294ca023dba5f6a2da005d4a712ebc2ee406116ecebdcf958';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='0130d0abf94b43ee8fe5f48e4199db334403a5669f8dc45aab60548da6e25016';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='5395c62e01743eb709f54253de14de5148023bf25ae460a3364a1af62c8ac64c';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 20 Nov 2018 13:32:14 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:e106090ffbaf8ccb97860ef61a165dfec5a1c3dc44bf455e12d088c42a60010f`  
		Last Modified: Mon, 19 Nov 2018 15:11:28 GMT  
		Size: 42.4 MB (42363363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6dfca1c5fa4e1ed6f0787784f1ddd02ab6b55d0b741fa5f2cfc3ebcd6ae045`  
		Last Modified: Tue, 20 Nov 2018 13:13:27 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc58638e6a1418dbc11e178f7020b4493a592fb0ddc19ab287c91b769c4526d`  
		Last Modified: Tue, 20 Nov 2018 13:13:27 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475a0504a32677e770f759dcb0a5bba535e0927168bef4ef761b9c458d29e29f`  
		Last Modified: Tue, 20 Nov 2018 13:13:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1c13bc010bbc9909b1dab6dfb49b0ea3693a60d30728eaf7deec53f3afe0daf`  
		Last Modified: Tue, 20 Nov 2018 13:32:30 GMT  
		Size: 2.8 MB (2765136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd581f35bda5615feceba11e84ef1e66252690ef55247b353cedfae9b4afd84`  
		Last Modified: Tue, 20 Nov 2018 13:33:50 GMT  
		Size: 156.6 MB (156618888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ibmjava:sdk-alpine`

```console
$ docker pull ibmjava@sha256:0e47dfcacdc0e4a5c0f6a53ccb5a308b8a3de3379c1e0cdeea44f269d54b22cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ibmjava:sdk-alpine` - linux; amd64

```console
$ docker pull ibmjava@sha256:2691d0466f940ea3dce0ef1364d71e0d382e3ae9a31776729186a2e46e6b1627
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.8 MB (170838320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f22da3a12c639b97a9c96eb81fbed248c893bda7aad7470cb8ea29eae2238691`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:30:09 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 11 Sep 2018 23:30:17 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Fri, 02 Nov 2018 22:21:29 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Fri, 02 Nov 2018 22:27:31 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='65717f402943895fcb46f235404647a63dc3a5b7defcff6fa327f201f3e11cf2';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='a107524bbbc79446ca7a651157c3fb94395df595fe5ce5b754d2dd7d61e526bf';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4069e4b273da768294ca023dba5f6a2da005d4a712ebc2ee406116ecebdcf958';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='0130d0abf94b43ee8fe5f48e4199db334403a5669f8dc45aab60548da6e25016';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='5395c62e01743eb709f54253de14de5148023bf25ae460a3364a1af62c8ac64c';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Fri, 02 Nov 2018 22:27:34 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49037229889fce699938aaa3695d08d2bd2676feffbe8af11a765a855de9155f`  
		Last Modified: Tue, 11 Sep 2018 23:32:54 GMT  
		Size: 4.5 MB (4519019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4006766ddc21aa22149aeb228209578ab63756f1c76bfbe5d6c8ded5c750569`  
		Last Modified: Fri, 02 Nov 2018 22:33:37 GMT  
		Size: 164.2 MB (164212126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ibmjava:sfj`

```console
$ docker pull ibmjava@sha256:5f78eff6b15e493749ce1342fb78ceccea6ef42c26ac73aff2b19bda4be8beed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ibmjava:sfj` - linux; amd64

```console
$ docker pull ibmjava@sha256:693d43f56dc960b608444d418d612bc755dd8897a8877f79a8005e8fab4bc3cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.7 MB (108677754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9918fbf4325adb11abac10aaf7edfbf318d8ce52a6f7efaf84bfceb65281bca`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:15:45 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 19 Nov 2018 22:15:54 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:15:55 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Mon, 19 Nov 2018 22:17:51 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='7db9cfe1f19a80d7ab07d902fc5d3455784a02fc66e1b15c9e581baeae3fca7c';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='4fc3548f0158977e3301bc9c7c71f82a06a0cb4f804021142700ab90d833b503';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='283d738a3ae62f97b084c38d5f74aded34c40cffdcea1c0d5586dcbe4875f7f1';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='02d83765d474ce7d42fb1ac3dac6b2d410f99c6543df8dcbc799c071c8386138';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='cedaa8b60c24ee887bd50bf1f59627004e2690a0032cc38ba11d6dc9b5e57308';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 19 Nov 2018 22:17:51 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b2fbbc72b1f552c0411f96735f0171009df0be2ee232ae2e75d9d99524ef11`  
		Last Modified: Mon, 19 Nov 2018 22:20:04 GMT  
		Size: 3.0 MB (3020935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1736f69d151da48774e89d1249eb899dfea33443981a27f80f763f1b58dbf9`  
		Last Modified: Mon, 19 Nov 2018 22:22:12 GMT  
		Size: 62.2 MB (62243002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:sfj` - linux; 386

```console
$ docker pull ibmjava@sha256:9e8628702fe7e16ea34e125506b06691ad248d12ae1bc46bb89c7b900b379421
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.3 MB (107345500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:129ea072e79bc2b639f14abc65002f02affc8f98cfbccbd3e90012a0702b6dab`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 12:20:00 GMT
ADD file:6fdc065a2fbe1084b10b598d239ab639f144d17d4496012dbdec7d8456e3a307 in / 
# Tue, 20 Nov 2018 12:20:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 12:20:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:20:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 12:20:03 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:13:24 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 20 Nov 2018 13:13:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:13:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Tue, 20 Nov 2018 13:15:12 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='7db9cfe1f19a80d7ab07d902fc5d3455784a02fc66e1b15c9e581baeae3fca7c';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='4fc3548f0158977e3301bc9c7c71f82a06a0cb4f804021142700ab90d833b503';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='283d738a3ae62f97b084c38d5f74aded34c40cffdcea1c0d5586dcbe4875f7f1';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='02d83765d474ce7d42fb1ac3dac6b2d410f99c6543df8dcbc799c071c8386138';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='cedaa8b60c24ee887bd50bf1f59627004e2690a0032cc38ba11d6dc9b5e57308';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 20 Nov 2018 13:15:12 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:a3aca6307c1aa2b2cc8d15fa3e646157166eed6703321b3a79783f481ae6273a`  
		Last Modified: Mon, 19 Nov 2018 15:09:59 GMT  
		Size: 43.6 MB (43635706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643e7d4d3a0a2cb275ee831c6bd19df14945331b343788664b0f8f864fb5fcf0`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e299cd08753476963cf11490637d277a0d98a1c5b8b7d47db843da5b32ecaa8`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc02c766472ded7c53da06de596743880346590bbf6f778c04fa03ead701f3b`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff38b55c864afb6636418c53d251bb8283b7f948851f351440609a6029e1bb84`  
		Last Modified: Tue, 20 Nov 2018 13:16:51 GMT  
		Size: 2.9 MB (2876368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2bbcf0e91abc3d439c27cd79dc555daaef1a7b07fa0331a1f3b35f72f5a690`  
		Last Modified: Tue, 20 Nov 2018 13:18:06 GMT  
		Size: 60.8 MB (60831826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:sfj` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:73bd0c2171078ec3666863fe5345b76d989f4970f6b0312002a5c1e21714170b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (115971972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51f8e1edacde498df9bcd55319e0baf50536d533c151b5717d411364f13c49fa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:31:16 GMT
ADD file:cb540f7e8c3e08020b164ac22b03b29afba2ceee95f8dd5abd8013e4e02372d8 in / 
# Tue, 20 Nov 2018 09:31:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:31:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:31:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:31:28 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:19:22 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 20 Nov 2018 10:20:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:20:03 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Tue, 20 Nov 2018 10:27:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='7db9cfe1f19a80d7ab07d902fc5d3455784a02fc66e1b15c9e581baeae3fca7c';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='4fc3548f0158977e3301bc9c7c71f82a06a0cb4f804021142700ab90d833b503';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='283d738a3ae62f97b084c38d5f74aded34c40cffdcea1c0d5586dcbe4875f7f1';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='02d83765d474ce7d42fb1ac3dac6b2d410f99c6543df8dcbc799c071c8386138';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='cedaa8b60c24ee887bd50bf1f59627004e2690a0032cc38ba11d6dc9b5e57308';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 20 Nov 2018 10:27:44 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:7ea631de703fad0f373d9aff9771c730726128e296e2e5311131ab3438855046`  
		Last Modified: Tue, 20 Nov 2018 09:53:03 GMT  
		Size: 45.7 MB (45694909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6589fdb4ddc043f28784fba346cab7fe7fd9711385872c3ec8a7f45c9e44a1b9`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d217e98717edd666c49de76323d085a7a3c6cfd8bb43723522136c5fdd0aab`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f66c0cb95d14802e1df0d308ca65d874322a65b6208757826ef942c61164fbe`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ba443302d1e528ff9c5aead9c6fd3fe4c385e60894041ce381245a06209ccf`  
		Last Modified: Tue, 20 Nov 2018 10:33:14 GMT  
		Size: 2.9 MB (2880631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0bdc59af7de3171abbe8157339b2ca856f4517d1fd1070a41b49c6b8d391dd`  
		Last Modified: Tue, 20 Nov 2018 10:35:03 GMT  
		Size: 67.4 MB (67394832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:sfj` - linux; s390x

```console
$ docker pull ibmjava@sha256:fcdf77464dd399677c73eecb5b8450f8971c997abe6f0938bc0bf032b17cf0b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109533419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e28b1c35c6fa8fe6e51e3682ebe52fcbd3a2f4a670bffd0e4d0b09c16c4f8e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:11:21 GMT
ADD file:b77f6d24d8c56183678bdd336bbba6fe26ad37d1a964c91cb91ad225c2e84406 in / 
# Tue, 20 Nov 2018 13:11:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:11:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:11:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:11:27 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:29:27 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 20 Nov 2018 13:29:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:29:38 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Tue, 20 Nov 2018 13:31:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='7db9cfe1f19a80d7ab07d902fc5d3455784a02fc66e1b15c9e581baeae3fca7c';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='4fc3548f0158977e3301bc9c7c71f82a06a0cb4f804021142700ab90d833b503';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='283d738a3ae62f97b084c38d5f74aded34c40cffdcea1c0d5586dcbe4875f7f1';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='02d83765d474ce7d42fb1ac3dac6b2d410f99c6543df8dcbc799c071c8386138';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='cedaa8b60c24ee887bd50bf1f59627004e2690a0032cc38ba11d6dc9b5e57308';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 20 Nov 2018 13:31:14 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:e106090ffbaf8ccb97860ef61a165dfec5a1c3dc44bf455e12d088c42a60010f`  
		Last Modified: Mon, 19 Nov 2018 15:11:28 GMT  
		Size: 42.4 MB (42363363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6dfca1c5fa4e1ed6f0787784f1ddd02ab6b55d0b741fa5f2cfc3ebcd6ae045`  
		Last Modified: Tue, 20 Nov 2018 13:13:27 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc58638e6a1418dbc11e178f7020b4493a592fb0ddc19ab287c91b769c4526d`  
		Last Modified: Tue, 20 Nov 2018 13:13:27 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475a0504a32677e770f759dcb0a5bba535e0927168bef4ef761b9c458d29e29f`  
		Last Modified: Tue, 20 Nov 2018 13:13:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1c13bc010bbc9909b1dab6dfb49b0ea3693a60d30728eaf7deec53f3afe0daf`  
		Last Modified: Tue, 20 Nov 2018 13:32:30 GMT  
		Size: 2.8 MB (2765136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4ca3bcb04ee17d3e8d6cae5dd12c168efba26fd87a7de35ce216ddef0ca9a9`  
		Last Modified: Tue, 20 Nov 2018 13:33:20 GMT  
		Size: 64.4 MB (64403369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ibmjava:sfj-alpine`

```console
$ docker pull ibmjava@sha256:1a163386c33ef41bbc7f3bde701bb07776e7a9a0f32eb2b678a034a89bdbae33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ibmjava:sfj-alpine` - linux; amd64

```console
$ docker pull ibmjava@sha256:149a9097a4e42ab0275b6ea4b8828acb823d4c5bcab7a8f9cf17fe5aa8bc29db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68885587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a77ef2fbeb9331f278c781be0f52fdd3cbb7d32dd5f90719b93d7561a6b14278`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:30:09 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 11 Sep 2018 23:30:17 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Fri, 02 Nov 2018 22:21:29 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Fri, 02 Nov 2018 22:23:50 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='7db9cfe1f19a80d7ab07d902fc5d3455784a02fc66e1b15c9e581baeae3fca7c';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='4fc3548f0158977e3301bc9c7c71f82a06a0cb4f804021142700ab90d833b503';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='283d738a3ae62f97b084c38d5f74aded34c40cffdcea1c0d5586dcbe4875f7f1';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='02d83765d474ce7d42fb1ac3dac6b2d410f99c6543df8dcbc799c071c8386138';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='cedaa8b60c24ee887bd50bf1f59627004e2690a0032cc38ba11d6dc9b5e57308';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Fri, 02 Nov 2018 22:23:59 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49037229889fce699938aaa3695d08d2bd2676feffbe8af11a765a855de9155f`  
		Last Modified: Tue, 11 Sep 2018 23:32:54 GMT  
		Size: 4.5 MB (4519019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a959cfa1f9dfd4f3596edb10689ecc143155c850bc169ab15303d99a78252498`  
		Last Modified: Fri, 02 Nov 2018 22:31:41 GMT  
		Size: 62.3 MB (62259393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
