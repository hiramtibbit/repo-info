## `ibmjava:8-sdk`

```console
$ docker pull ibmjava@sha256:f54ebce8372ff9156c9267825cf05990ef75bed1acee3f7d80dbe69b0e005b49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ibmjava:8-sdk` - linux; amd64

```console
$ docker pull ibmjava@sha256:eb7b6572b05e2b39904dd8bc42110ffe84135f70108f3f09da8a7141d0acf03c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.2 MB (211182848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a2da162077d5ec24ef209e3394fdfc5889348d4959bb969116824f60b9cb5f7`
-	Default Command: `["\/bin\/bash"]`

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
# Thu, 26 Jul 2018 23:14:13 GMT
ENV JAVA_VERSION=1.8.0_sr5fp17
# Thu, 26 Jul 2018 23:20:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='97c424a868c727758a248cf3caf5533c4b64101bfd076f952b15836729919377';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='ce99713e371d3d5d821dfb7896770bac9549bd6357cf23df9323e590ad607e4e';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='13542e6c514ad7c953f59b35921aa77906c0a5d18c31692b30b57508d6c42826';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f0c6bc18746e8fc089deb08bd9df4e5acc66bf38c23a60e9f8bedd71ff2f0fb9';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='f4bc4dba6ec92e006e6208a87fc5e128bfb3739cc01313ca04f7dabc94f4e6e9';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 26 Jul 2018 23:20:17 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
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
	-	`sha256:25f2acb7d32793b46a14604db1f7a12ba54c46fed1535584231a2210e719391f`  
		Last Modified: Thu, 26 Jul 2018 23:25:55 GMT  
		Size: 164.9 MB (164930706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8-sdk` - linux; 386

```console
$ docker pull ibmjava@sha256:c33ed86765351df85a4737a9b69e8baaf5a57d8ff777039f8fd8a1798e1c004e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.5 MB (199462265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6dd76da831e2b420cbd03f5371b3ef1c73c7c43f6b35db1f2c9b1d6239fd714`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:34:37 GMT
ADD file:b3b33216c0cae381c088a15b0f80f366ed73656c90f6cec193136615bd271884 in / 
# Tue, 17 Jul 2018 12:34:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 12:34:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:34:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 12:34:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 12:34:43 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 20:35:43 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 17 Jul 2018 20:36:09 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:36:10 GMT
ENV JAVA_VERSION=1.8.0_sr5fp17
# Tue, 17 Jul 2018 20:39:37 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='97c424a868c727758a248cf3caf5533c4b64101bfd076f952b15836729919377';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='ce99713e371d3d5d821dfb7896770bac9549bd6357cf23df9323e590ad607e4e';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='13542e6c514ad7c953f59b35921aa77906c0a5d18c31692b30b57508d6c42826';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f0c6bc18746e8fc089deb08bd9df4e5acc66bf38c23a60e9f8bedd71ff2f0fb9';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='f4bc4dba6ec92e006e6208a87fc5e128bfb3739cc01313ca04f7dabc94f4e6e9';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 17 Jul 2018 20:39:37 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:c27aea03ac5b40f96785140828606a6122596c083dafc804d4e5659f01c6c772`  
		Last Modified: Mon, 09 Jul 2018 15:07:21 GMT  
		Size: 43.5 MB (43464720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b6d5fc1c9a4c34f03a94e8699ae482706a709a451c1f69150d6e8034cd68eb`  
		Last Modified: Tue, 17 Jul 2018 12:39:04 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3c01b37f94b18f64e12bf474d8596a6c51bd322d8702250f32d68035e3e69d`  
		Last Modified: Tue, 17 Jul 2018 12:39:04 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34866ee1e358e8692b54d96e02c02ed3a23f62c92f95e3201cf87b90dc4424e1`  
		Last Modified: Tue, 17 Jul 2018 12:39:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99064844abf95ee6b28da3e65e78bb20d24c8deeeb1a3f1267788106424673ef`  
		Last Modified: Tue, 17 Jul 2018 12:39:04 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6609167a414f602b2441f4e72e2ad62828e70babee6ff36fe4d41d582ed766f7`  
		Last Modified: Tue, 17 Jul 2018 20:40:04 GMT  
		Size: 2.9 MB (2875905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b77c8cae7b0e3db9e9de303ce529157b24c4842d37cb3372e247e9d5ba6dd08`  
		Last Modified: Tue, 17 Jul 2018 20:42:26 GMT  
		Size: 153.1 MB (153119180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8-sdk` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:34869eae005d7878c1f29317c9177fa53446f2af3ec6bf05ef7a78ddb44b07e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.0 MB (227036392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d876c9097b21aeba78e4c253cd4f3cbb4782ad528a6c329b037cbef0e9cdcf8e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:07:11 GMT
ADD file:8af2c8e44e6551250e52c9762223a27048941310fa5bae9ddd98b58a4417817a in / 
# Wed, 06 Jun 2018 09:07:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:07:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:07:18 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:07:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:07:21 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 09:26:45 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 06 Jun 2018 09:27:53 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 08:17:53 GMT
ENV JAVA_VERSION=1.8.0_sr5fp17
# Tue, 03 Jul 2018 08:25:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='97c424a868c727758a248cf3caf5533c4b64101bfd076f952b15836729919377';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='ce99713e371d3d5d821dfb7896770bac9549bd6357cf23df9323e590ad607e4e';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='13542e6c514ad7c953f59b35921aa77906c0a5d18c31692b30b57508d6c42826';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f0c6bc18746e8fc089deb08bd9df4e5acc66bf38c23a60e9f8bedd71ff2f0fb9';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='f4bc4dba6ec92e006e6208a87fc5e128bfb3739cc01313ca04f7dabc94f4e6e9';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 03 Jul 2018 08:25:13 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:31f6c753a1dca7ffb3f43455eaafa558b80765437780f4ac50600bba9a8bbaa4`  
		Last Modified: Wed, 06 Jun 2018 09:10:59 GMT  
		Size: 45.5 MB (45495870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6a32b6c3f99165cf3f39cf486ccf3ad3715e9c0a13403ce90e2672fd137ac1`  
		Last Modified: Wed, 06 Jun 2018 09:10:47 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cefff450e56b9c43ff9d2d2e045c5868726edb7580173179bcb28ce7ef6d5546`  
		Last Modified: Wed, 06 Jun 2018 09:10:47 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9069a22e2dae36ceecfc882eafcbabc61b3aa82cb5dac218f7adf79cf8071b92`  
		Last Modified: Wed, 06 Jun 2018 09:10:48 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0815fa4493554cefa3b1b7076a5b19470d1814c9b4869ce5bd4640c5eb47f784`  
		Last Modified: Wed, 06 Jun 2018 09:10:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e6aadf61e5bee5e2d7bc77d512a5f0c9ede55d04371a9287d82bf2d050293a`  
		Last Modified: Wed, 06 Jun 2018 09:37:27 GMT  
		Size: 2.9 MB (2880213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcbcf312f4b4a4ef3f09ea0af3a364748250df0d81fb1c9cec18ce1e93286b43`  
		Last Modified: Tue, 03 Jul 2018 08:27:48 GMT  
		Size: 178.7 MB (178657787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8-sdk` - linux; s390x

```console
$ docker pull ibmjava@sha256:2bfbe22fe31fb99566b4565a9b7b66abdec42bb6fb6adc42fbb8b1160acd771f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.4 MB (202448530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4db71bb6f1a30c05b15161be648a87359f35ee54fcabda2252116824143e26be`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 13:08:11 GMT
ADD file:07dedba4c6a01924ec3db2b2d934408446e447fac32ef47751b6aeccb614c28c in / 
# Tue, 17 Jul 2018 13:08:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 13:08:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:08:17 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 13:08:18 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 13:08:18 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 15:40:23 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 17 Jul 2018 15:40:32 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:40:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp17
# Tue, 17 Jul 2018 15:42:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='97c424a868c727758a248cf3caf5533c4b64101bfd076f952b15836729919377';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='ce99713e371d3d5d821dfb7896770bac9549bd6357cf23df9323e590ad607e4e';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='13542e6c514ad7c953f59b35921aa77906c0a5d18c31692b30b57508d6c42826';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f0c6bc18746e8fc089deb08bd9df4e5acc66bf38c23a60e9f8bedd71ff2f0fb9';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='f4bc4dba6ec92e006e6208a87fc5e128bfb3739cc01313ca04f7dabc94f4e6e9';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 17 Jul 2018 15:42:48 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:3e3f5d0b6b7c743d40e4e5753efb45ff829b5a6ad6d7ce0404f81531669c03f9`  
		Last Modified: Mon, 09 Jul 2018 15:08:18 GMT  
		Size: 42.2 MB (42201732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad9d15e38aaedea71b29ad60c567b9871ff2b1607ffe539457d6c7aeaaa2af0`  
		Last Modified: Tue, 17 Jul 2018 13:09:57 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad15e34347b1ca8f152c86fa24a23431273719fd49d5367e054ca571e4751711`  
		Last Modified: Tue, 17 Jul 2018 13:09:57 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587a1d0f8e483f4d94ca77722a8cd76d7566716ebf4129c3e629ab9b0833b03e`  
		Last Modified: Tue, 17 Jul 2018 13:09:57 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e79a974346c09d126adc02c759449bf3ed2b3c1a4b0503fceaa48a6021c1634d`  
		Last Modified: Tue, 17 Jul 2018 13:09:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0d089c9ff9491e8c72d959b8bf3456e2ae3578369e3c13c297617508b44cd1`  
		Last Modified: Tue, 17 Jul 2018 15:43:05 GMT  
		Size: 2.8 MB (2764958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f1db2ac033234e263b78e116418a0941e59d1e75479a4f1c9fa24e9d8715b0`  
		Last Modified: Tue, 17 Jul 2018 15:44:15 GMT  
		Size: 157.5 MB (157479428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
