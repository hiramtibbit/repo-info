## `ibmjava:8-sfj`

```console
$ docker pull ibmjava@sha256:0a52e73f64e2d67f48c9885641d830abf6cd90a144ece229ee4f1215acca3519
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ibmjava:8-sfj` - linux; amd64

```console
$ docker pull ibmjava@sha256:eda8bbfc61a84886fd0e14db5ab9cf895810f61ae6e246a5ae3a9f1c5dfe5bbb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.1 MB (110147160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:613e355d91ef6a849964a1d9a8bb5edb28827f139505b8ee2b4226cf63b410c5`
-	Default Command: `["\/bin\/bash"]`

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
# Fri, 24 May 2019 22:23:59 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c8ee90fefae124bd5aadc27c1e9144b7f8d9a381b449f6c87ec6dab6f4b2cfe1';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='025da98d834f6becfa936c48a824a11c712f8434180fae6acfea294330e3db26';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e987bbdb92aad59c044f4a64fc5da6a3a357b26b309a9b7210d582beca8300a2';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='26abacbb90dc2c7456e3e7987c3192e1fc5118fda32b08bfe7c770680dc4ba34';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='fe60dd6234a24711da00e1fec5532b9d3f67e66016bb493bed1847a5e08098f4';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:23:59 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
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
	-	`sha256:04b06cee0ca6cd4755e49b9f2610420459df93cb8f43ad904b5a81dadb91bf49`  
		Last Modified: Fri, 24 May 2019 22:28:09 GMT  
		Size: 63.4 MB (63356294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8-sfj` - linux; 386

```console
$ docker pull ibmjava@sha256:2481e9d31e6c09d91e842108ba52e152540d60b3f418892fd0a6ac184aaa5ef9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109479096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8df0281b3cffebe101af9ee1fa4d01d1f7e963038989f5f5d9c9bc513b24e69f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:16 GMT
ADD file:385cfb43ebfe35c607f88d3e6a5a4fe2259261b83a0aee3674781b056e114ff7 in / 
# Tue, 18 Jun 2019 21:40:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:40:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:19 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:32:55 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 18 Jun 2019 22:33:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:08 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Tue, 18 Jun 2019 22:36:03 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c8ee90fefae124bd5aadc27c1e9144b7f8d9a381b449f6c87ec6dab6f4b2cfe1';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='025da98d834f6becfa936c48a824a11c712f8434180fae6acfea294330e3db26';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e987bbdb92aad59c044f4a64fc5da6a3a357b26b309a9b7210d582beca8300a2';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='26abacbb90dc2c7456e3e7987c3192e1fc5118fda32b08bfe7c770680dc4ba34';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='fe60dd6234a24711da00e1fec5532b9d3f67e66016bb493bed1847a5e08098f4';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 18 Jun 2019 22:36:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:856ae43f63ed6657b450c1d9c8e4cb587d875421e485fe008070949c85478d95`  
		Last Modified: Fri, 14 Jun 2019 14:26:09 GMT  
		Size: 44.0 MB (43979421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb11583701fe0ca24f56e54f018637031575222c3e805aef8d79d17d47d26386`  
		Last Modified: Tue, 18 Jun 2019 21:41:16 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15f4b605d91eafa00b250a75f7557fdec29c3f0435c255edb984caee21cabb6`  
		Last Modified: Tue, 18 Jun 2019 21:41:16 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f07c26ededbd5bb64a792e097f441fb697d2ffe42776a621885522339045517`  
		Last Modified: Tue, 18 Jun 2019 21:41:17 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285346d239b2b5d09160b2cf5047dd67f25b16f3281d4efec1173fcd4a3c4410`  
		Last Modified: Tue, 18 Jun 2019 22:37:33 GMT  
		Size: 2.9 MB (2876987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d5eb66e6435964559d39d4a24337f787ff9472a6c02a224324a72d6444e8787`  
		Last Modified: Tue, 18 Jun 2019 22:38:21 GMT  
		Size: 62.6 MB (62621155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8-sfj` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:4ef6a228280843da6d814b8e04a1182e044cbc030bc2d80da587d02fc7b3b5bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.6 MB (116599670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75f4a6bba10ade7cb7c59aae52512a00244912aa5bfa31d2e74d42641287d56a`
-	Default Command: `["\/bin\/bash"]`

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
# Thu, 30 May 2019 14:48:53 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 30 May 2019 14:49:48 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 30 May 2019 14:49:52 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Thu, 30 May 2019 14:54:25 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c8ee90fefae124bd5aadc27c1e9144b7f8d9a381b449f6c87ec6dab6f4b2cfe1';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='025da98d834f6becfa936c48a824a11c712f8434180fae6acfea294330e3db26';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e987bbdb92aad59c044f4a64fc5da6a3a357b26b309a9b7210d582beca8300a2';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='26abacbb90dc2c7456e3e7987c3192e1fc5118fda32b08bfe7c770680dc4ba34';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='fe60dd6234a24711da00e1fec5532b9d3f67e66016bb493bed1847a5e08098f4';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 30 May 2019 14:54:33 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
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
	-	`sha256:e18af8ddd8feb633a4cf36b19abd1bf75d8c37d53e5e8b40e17750ef23e5c22f`  
		Last Modified: Thu, 30 May 2019 14:57:58 GMT  
		Size: 2.9 MB (2881341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f8434045afb7aa7dae521d3856570e9ccac5b0ede32b3ee4d903af8bc850ed7`  
		Last Modified: Thu, 30 May 2019 14:58:52 GMT  
		Size: 67.8 MB (67780810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8-sfj` - linux; s390x

```console
$ docker pull ibmjava@sha256:282afa87798ed06c2e48d58f3ba3c05ce8719a178afb08358f096901ff48cccc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (109957173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa79448d808a0645a261058419a5b960e9a4fdd3f8e75b75b368527b0dc87a27`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:43:36 GMT
ADD file:82c5b9a2558f1996eed4cedc4672226b9be3f29de5e4929faea93ebb0c4a4425 in / 
# Tue, 18 Jun 2019 21:43:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:43:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:43:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:43:41 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:32:12 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 18 Jun 2019 22:32:20 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:32:21 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Tue, 18 Jun 2019 22:33:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c8ee90fefae124bd5aadc27c1e9144b7f8d9a381b449f6c87ec6dab6f4b2cfe1';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='025da98d834f6becfa936c48a824a11c712f8434180fae6acfea294330e3db26';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e987bbdb92aad59c044f4a64fc5da6a3a357b26b309a9b7210d582beca8300a2';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='26abacbb90dc2c7456e3e7987c3192e1fc5118fda32b08bfe7c770680dc4ba34';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='fe60dd6234a24711da00e1fec5532b9d3f67e66016bb493bed1847a5e08098f4';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 18 Jun 2019 22:33:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:13164bfcbd4c81a114d0c20e22b11bbc14d1e6c6c1406525bd49ea9b80196704`  
		Last Modified: Tue, 18 Jun 2019 21:45:09 GMT  
		Size: 42.7 MB (42663919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca6e9f3028d16f9753abf51f7e631b78cbdffb436a2288a6365615e21fdd19b`  
		Last Modified: Tue, 18 Jun 2019 21:45:00 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b454fecd10a241beb8ca744cdd20dca457837201c9078fec4a4ea4ec85f56b`  
		Last Modified: Tue, 18 Jun 2019 21:45:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6915070f22f8931076f003becb0eeef15eb5c5b52d6539abb9e2d37afd6cd7a7`  
		Last Modified: Tue, 18 Jun 2019 21:45:00 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4626bfd0e7397e72bf7907564ab1a9d6bd49b2c18331136b1621abc5fac34986`  
		Last Modified: Tue, 18 Jun 2019 22:35:10 GMT  
		Size: 2.8 MB (2766881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ff82201f48ee51738ececbab6cff4863698e36bfc59e3ae0e1c439390e1ce9`  
		Last Modified: Tue, 18 Jun 2019 22:36:22 GMT  
		Size: 64.5 MB (64524882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
