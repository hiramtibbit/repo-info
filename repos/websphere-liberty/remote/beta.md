## `websphere-liberty:beta`

```console
$ docker pull websphere-liberty@sha256:a48fbc31cb0e5561939c199b04b816496a4b3521c42111e9ba199bc3cf7671f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:beta` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:815886932677acef1a3f306f0dc8cc4a0a32363f2485c9282e6a7a4d1775570c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **380.1 MB (380100740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f65e15afb1e674b7ac227afb48568f06466e2602dca20f8a89570b33430e6434`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Fri, 28 Dec 2018 23:48:44 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 28 Dec 2018 23:48:51 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:48:51 GMT
ENV JAVA_VERSION=1.8.0_sr5fp26
# Fri, 28 Dec 2018 23:49:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='962cff44b493645d789411cc0a3d23796c41159f5c45c2fc297a161e45e39836';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='ddba881ac7431c352a559c546ee704ad902b83573da417a10bf6e968222e450c';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='b906de7cff34affb1371e2c29b9cc80e1d62ca2c32d1088f0167e422b702ef9a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='c0568460ef383e6e3f56b93cfc296601d3e5aae4aba167b69cb9949ffa932c82';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='81acd84a1365a631ceb3d848838e3978d23b99dec362adc112ad3a159739ecf1';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 28 Dec 2018 23:49:32 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 29 Dec 2018 09:15:21 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Sat, 29 Dec 2018 09:15:26 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /sbin/nologin default
# Sat, 29 Dec 2018 09:15:26 GMT
ENV LIBERTY_VERSION=2018.12.0_0
# Sat, 29 Dec 2018 09:15:43 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Sat, 29 Dec 2018 09:15:43 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 09:15:43 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 29 Dec 2018 09:15:46 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 29 Dec 2018 09:15:46 GMT
COPY file:f1015ab5ca098f3a04cde2e721a2aa35a1ebb2e9f5eb01d378eb2264cff9a268 in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Sat, 29 Dec 2018 09:15:52 GMT
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Sat, 29 Dec 2018 09:15:52 GMT
USER 1001
# Sat, 29 Dec 2018 09:15:52 GMT
EXPOSE 9080 9443
# Sat, 29 Dec 2018 09:15:53 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006cb00c249cffe66caa12834627ca26fbddca77fe274004729173f8cb496b73`  
		Last Modified: Fri, 28 Dec 2018 23:51:21 GMT  
		Size: 3.0 MB (3021477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f250daa1870161b9644927c4e1cf4b52df86f4ee7802de887fd844d58f2177`  
		Last Modified: Fri, 28 Dec 2018 23:51:32 GMT  
		Size: 128.1 MB (128061753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ee34b6d005250a4fdaa3a44f9dfe378eefd56b2c2554ffac6d8f0c38f88c41`  
		Last Modified: Sat, 29 Dec 2018 09:32:16 GMT  
		Size: 424.6 KB (424572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a813d2aadf65004f0d036956d79271ad872352973782701de8b0f3cc96fbf1`  
		Last Modified: Sat, 29 Dec 2018 09:32:25 GMT  
		Size: 102.6 MB (102573088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438b7e74469a6bb4b0ae1a1aa2ceddee0b59ca3d2c2e544c4d1d8c5c6e0f2b7d`  
		Last Modified: Sat, 29 Dec 2018 09:32:16 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ce8e1e7d05cc9f395487eb338e67dc8e600f32a4879ef2af31b50586c50bf6`  
		Last Modified: Sat, 29 Dec 2018 09:32:16 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b109e0e0cdb62a019647c7a0b9be0d74159348481e6507d82ee36da8c1fc7b0`  
		Last Modified: Sat, 29 Dec 2018 09:32:25 GMT  
		Size: 102.6 MB (102573541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:beta` - linux; 386

```console
$ docker pull websphere-liberty@sha256:a4233c4608c869044790b75d3f7f9007bfebf3482b243dd237fc8a2b84162900
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.4 MB (368361035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d035b78fe30391ed0cda88127c7f796c64b88d439e3a29d08f78473c9f359588`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Fri, 30 Nov 2018 11:47:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp26
# Fri, 30 Nov 2018 11:48:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='962cff44b493645d789411cc0a3d23796c41159f5c45c2fc297a161e45e39836';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='ddba881ac7431c352a559c546ee704ad902b83573da417a10bf6e968222e450c';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='b906de7cff34affb1371e2c29b9cc80e1d62ca2c32d1088f0167e422b702ef9a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='c0568460ef383e6e3f56b93cfc296601d3e5aae4aba167b69cb9949ffa932c82';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='81acd84a1365a631ceb3d848838e3978d23b99dec362adc112ad3a159739ecf1';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 30 Nov 2018 11:48:16 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 30 Nov 2018 12:23:41 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Fri, 30 Nov 2018 12:24:18 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /sbin/nologin default
# Fri, 21 Dec 2018 11:45:33 GMT
ENV LIBERTY_VERSION=2018.12.0_0
# Fri, 21 Dec 2018 11:45:49 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Fri, 21 Dec 2018 11:45:49 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 11:45:49 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 21 Dec 2018 11:45:51 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 21 Dec 2018 11:45:52 GMT
COPY file:f1015ab5ca098f3a04cde2e721a2aa35a1ebb2e9f5eb01d378eb2264cff9a268 in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Fri, 21 Dec 2018 11:45:58 GMT
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Fri, 21 Dec 2018 11:45:59 GMT
USER 1001
# Fri, 21 Dec 2018 11:45:59 GMT
EXPOSE 9080 9443
# Fri, 21 Dec 2018 11:45:59 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:c6869e46cf53c64c2bcf70923e8bd44030c48578dd6a1bbc7508185e8d98fdb0`  
		Last Modified: Fri, 30 Nov 2018 11:51:05 GMT  
		Size: 116.3 MB (116274832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27c6d1ec8df32b3e2beb6d3af883f8527afda68b394c72abc433d052901ab10`  
		Last Modified: Fri, 30 Nov 2018 12:39:22 GMT  
		Size: 424.1 KB (424133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08aa899a2a8657b275d21e047e8eb5c1a29389d8d91a68e554233785451c0626`  
		Last Modified: Fri, 21 Dec 2018 11:47:17 GMT  
		Size: 102.6 MB (102573079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4168635df2e897f943e5699ac55d2e51a3ffb03073394d81714c65cd06141563`  
		Last Modified: Fri, 21 Dec 2018 11:47:03 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e741e86563952c40412be5bdc8ab4e139db654a2c7630ea49d811f90a064665d`  
		Last Modified: Fri, 21 Dec 2018 11:47:03 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04872a4bd6575c9749fc086d76451cb31575d30fde8db015f4c41d2d254cad33`  
		Last Modified: Fri, 21 Dec 2018 11:47:17 GMT  
		Size: 102.6 MB (102573544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:beta` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:70d80993d8e9224b41739d194e4b7d98d49db024262db7b75dfdc909f96034b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.1 MB (396087074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5935b1436df60d560ee5a44caf0eb71e0345be4079c6d57f7221fd721f091bac`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:58 GMT
ADD file:6d9d6a74afa951c8d6ed986245da43d3ef1e8ff506eb852115a8f3fb9bb37406 in / 
# Sat, 29 Dec 2018 09:23:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 09:23:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 09:23:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 09:23:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 09:50:28 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 29 Dec 2018 09:50:56 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 09:50:58 GMT
ENV JAVA_VERSION=1.8.0_sr5fp26
# Sat, 29 Dec 2018 09:52:58 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='962cff44b493645d789411cc0a3d23796c41159f5c45c2fc297a161e45e39836';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='ddba881ac7431c352a559c546ee704ad902b83573da417a10bf6e968222e450c';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='b906de7cff34affb1371e2c29b9cc80e1d62ca2c32d1088f0167e422b702ef9a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='c0568460ef383e6e3f56b93cfc296601d3e5aae4aba167b69cb9949ffa932c82';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='81acd84a1365a631ceb3d848838e3978d23b99dec362adc112ad3a159739ecf1';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 29 Dec 2018 09:53:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 29 Dec 2018 15:30:18 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Sat, 29 Dec 2018 15:30:34 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /sbin/nologin default
# Sat, 29 Dec 2018 15:30:36 GMT
ENV LIBERTY_VERSION=2018.12.0_0
# Sat, 29 Dec 2018 15:31:36 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Sat, 29 Dec 2018 15:31:40 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 15:31:42 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 29 Dec 2018 15:31:56 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 29 Dec 2018 15:31:57 GMT
COPY file:f1015ab5ca098f3a04cde2e721a2aa35a1ebb2e9f5eb01d378eb2264cff9a268 in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Sat, 29 Dec 2018 15:34:00 GMT
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Sat, 29 Dec 2018 15:34:03 GMT
USER 1001
# Sat, 29 Dec 2018 15:34:06 GMT
EXPOSE 9080 9443
# Sat, 29 Dec 2018 15:34:11 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:5af74ebbdcc6964a3b49166e459dcaa3488a5ec775fe569a3df00985d701f5fe`  
		Last Modified: Mon, 24 Dec 2018 15:15:33 GMT  
		Size: 45.7 MB (45719536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a0e2effd8407e20744e22f0fe4a03e0662f592ae73e0c64296cb3791cc1420`  
		Last Modified: Sat, 29 Dec 2018 09:26:40 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4010df6e32054b4f1b8e8837d56e47e76318b124ee8bf3b21290453f3e4cd377`  
		Last Modified: Sat, 29 Dec 2018 09:26:40 GMT  
		Size: 473.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcb93b360ae95b9fb99120a752a00a14c18411a8f872c992c6d38906fb4ea5c`  
		Last Modified: Sat, 29 Dec 2018 09:26:40 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0d83c5747ff9067bf31aabc046c163762c60959e3c83c6af3b0771fd471368`  
		Last Modified: Sat, 29 Dec 2018 09:57:38 GMT  
		Size: 2.9 MB (2881550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a44eeb94b37fd31e789e4e1707cf25778d3de9724f7a009ac6ff5480b14028`  
		Last Modified: Sat, 29 Dec 2018 09:57:54 GMT  
		Size: 141.9 MB (141880017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:985170bb53794a5bf242626e8240051a013cf87ff27d9996c67987e36932be94`  
		Last Modified: Sat, 29 Dec 2018 16:01:07 GMT  
		Size: 456.1 KB (456054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3726ea882462f70dd31470ba250a28bdc2295444460eac5c7be89ccd22fa9a5f`  
		Last Modified: Sat, 29 Dec 2018 16:01:24 GMT  
		Size: 102.6 MB (102573034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c53b675146db193e93ff7a08212cb58eae12f417b695424dfbd55b60bd8b6b0`  
		Last Modified: Sat, 29 Dec 2018 16:01:07 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5fb5842cdb138c9b0496cf6219659c8d481dbf2f944bf9019ded99dc80b7de`  
		Last Modified: Sat, 29 Dec 2018 16:01:07 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c788bd97e09ea183f275fbee517b6621ecdf61fd8ec56d85a402dd6e451b943`  
		Last Modified: Sat, 29 Dec 2018 16:01:33 GMT  
		Size: 102.6 MB (102573557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:beta` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:2c71dbbaf49af340d68fb9c9c43fa16093145a9975fba807644b926b28e9b59b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.0 MB (378004291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79cb39334e774fe8c5a67190f207f12a3343b1ac223abfacfe848225b611c561`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 29 Dec 2018 12:49:04 GMT
ADD file:a7f3308c75dc79a48db4ba7335b3d6788078a010d65fbfdec844ae7f052ee02b in / 
# Sat, 29 Dec 2018 12:49:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 12:49:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:49:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 12:49:07 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 16:10:34 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 29 Dec 2018 16:10:42 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 16:10:42 GMT
ENV JAVA_VERSION=1.8.0_sr5fp26
# Sat, 29 Dec 2018 16:11:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='962cff44b493645d789411cc0a3d23796c41159f5c45c2fc297a161e45e39836';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='ddba881ac7431c352a559c546ee704ad902b83573da417a10bf6e968222e450c';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='b906de7cff34affb1371e2c29b9cc80e1d62ca2c32d1088f0167e422b702ef9a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='c0568460ef383e6e3f56b93cfc296601d3e5aae4aba167b69cb9949ffa932c82';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='81acd84a1365a631ceb3d848838e3978d23b99dec362adc112ad3a159739ecf1';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 29 Dec 2018 16:11:22 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 29 Dec 2018 18:56:14 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Sat, 29 Dec 2018 18:56:19 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /sbin/nologin default
# Sat, 29 Dec 2018 18:56:20 GMT
ENV LIBERTY_VERSION=2018.12.0_0
# Sat, 29 Dec 2018 18:56:34 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Sat, 29 Dec 2018 18:56:35 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 18:56:35 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 29 Dec 2018 18:56:36 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 29 Dec 2018 18:56:36 GMT
COPY file:f1015ab5ca098f3a04cde2e721a2aa35a1ebb2e9f5eb01d378eb2264cff9a268 in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Sat, 29 Dec 2018 18:56:41 GMT
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Sat, 29 Dec 2018 18:56:41 GMT
USER 1001
# Sat, 29 Dec 2018 18:56:42 GMT
EXPOSE 9080 9443
# Sat, 29 Dec 2018 18:56:42 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:8ee1f69e72506ba59280fd55bc774416d7f5844ced4a15796318b4d5e0843d34`  
		Last Modified: Mon, 24 Dec 2018 15:15:52 GMT  
		Size: 42.4 MB (42385419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0854b8723f1921f434b97a8da82acfc94ff0aba7829672de7d62bdec4655306e`  
		Last Modified: Sat, 29 Dec 2018 12:49:57 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f64588d33d21ee03f38aae80bee43aa1eda54419611f307e8914456d0b78598`  
		Last Modified: Sat, 29 Dec 2018 12:49:57 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f9c4adda7454681e9c0b1ca6b30cd4db01f8c0c2a6457b71946b5c59b2697e`  
		Last Modified: Sat, 29 Dec 2018 12:49:57 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c0f956446db0429f78c1b7d47dcc3e06702367afaad9fed769a2d484cc42da`  
		Last Modified: Sat, 29 Dec 2018 16:13:04 GMT  
		Size: 2.8 MB (2766907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495cf04e945df3b9b8f8d779591814904fdfac06be62e59db368d71af3a07c74`  
		Last Modified: Sat, 29 Dec 2018 16:13:27 GMT  
		Size: 127.3 MB (127271858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa4e7a4bfdae04c1782bd4655f598fb6849c5b57e697288f022dea525cbf9a6`  
		Last Modified: Sat, 29 Dec 2018 19:12:37 GMT  
		Size: 430.2 KB (430241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27ba39261fb8e998d80107f7137148632d3d777e2cb072fb86282657d5cadd1`  
		Last Modified: Sat, 29 Dec 2018 19:12:47 GMT  
		Size: 102.6 MB (102573109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a41b3617dd46182c2ad823921dc517d6e1fc0847be8518ca96a3df51bddd83e`  
		Last Modified: Sat, 29 Dec 2018 19:12:36 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e75e38be9a91c4079ef5a1923f1169f42bac946887a5b63a37b0b0603fb8ac`  
		Last Modified: Sat, 29 Dec 2018 19:12:36 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:477009681558980ec7b1a975e4ddeeeabccedcb795ca546383b2bef09f91456a`  
		Last Modified: Sat, 29 Dec 2018 19:12:44 GMT  
		Size: 102.6 MB (102573497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
