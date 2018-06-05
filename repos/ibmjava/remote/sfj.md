## `ibmjava:sfj`

```console
$ docker pull ibmjava@sha256:39a18ad9ce7ed9db28a17d2aa0944ccf091652aa778d3c0fe69b220ff4a46981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ibmjava:sfj` - linux; amd64

```console
$ docker pull ibmjava@sha256:66e824a38864d3b52a3e53f78e4134d70a6170f933d19ef1c177919711315966
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.1 MB (108070161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb2cb9df64025fb4b5fbec553b2878c5f3119c78dd983c530db9d65cb72d876e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 21:49:37 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 05 Jun 2018 21:49:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:49:50 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Tue, 05 Jun 2018 22:00:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='15c2e6303aa5750a9e56e0ac1b3e6f246c3fd1c3c32d7613360ec85537e88ec3';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='debc39440f0a0dd8952f69a7b8e47ec433eeef88c78892cde473cfc36b64ed5e';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='fa040275e7fa1afeb47c4ef60a4cf81a6bdbe590459841f3f89cdfd5cc8c50db';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='31ff95bcfed915e3d5818933e18bb50ef124924dafc767c4e27ee4acdfb1aacd';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='953df3c2ab64588fcf517bcb391549e06fa402bcaa09e3554ae163ca6a080d7c';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 05 Jun 2018 22:00:54 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba431a954255d3b811c3545b7ca473cfe68d79ed4d0205cc31fdb571092e070`  
		Last Modified: Tue, 05 Jun 2018 22:15:34 GMT  
		Size: 3.0 MB (3020314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea26ad5321723da34645de241fa209427d61c1d6c2bc6a36c54481bba1d46be6`  
		Last Modified: Tue, 05 Jun 2018 22:17:20 GMT  
		Size: 61.9 MB (61924879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:sfj` - linux; 386

```console
$ docker pull ibmjava@sha256:7c9c74014eb7496a9afd534990d9b9b462a1af0a19ac44aa0a91867f6da76860
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.8 MB (106847162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb13def38f264abd66dcdd14412e51abb2c29f9b7a80687217947b0b61c4bedf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:18:27 GMT
ADD file:cb3b7975c121b206774b4d6cfbb5652a43b594624dab6ad15b712a2cbbdf612e in / 
# Sat, 28 Apr 2018 11:18:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:18:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:18:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:18:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:18:30 GMT
CMD ["/bin/bash"]
# Sat, 02 Jun 2018 10:38:38 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 02 Jun 2018 10:39:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 10:39:11 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 10:45:56 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='15c2e6303aa5750a9e56e0ac1b3e6f246c3fd1c3c32d7613360ec85537e88ec3';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='debc39440f0a0dd8952f69a7b8e47ec433eeef88c78892cde473cfc36b64ed5e';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='fa040275e7fa1afeb47c4ef60a4cf81a6bdbe590459841f3f89cdfd5cc8c50db';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='31ff95bcfed915e3d5818933e18bb50ef124924dafc767c4e27ee4acdfb1aacd';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='953df3c2ab64588fcf517bcb391549e06fa402bcaa09e3554ae163ca6a080d7c';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 10:45:56 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:3a1e79864dec4c6e37d3df52e348cf3121a5297fd763099a70ecd188d1cf63ee`  
		Last Modified: Mon, 23 Apr 2018 14:55:46 GMT  
		Size: 43.3 MB (43335726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8398adf991e61b1dbb7c296dff6ee41be912937c6be5230cef40b61b3be6f2`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3020085dcaa4b1ace3a5f4045ab2d8ce6d1a99613542a2680281e2aa4868199`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20dd50be32433bdaa587603bd1431be277c4aa000d50693929ea48c1a1ff9a8`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1027efc898bf4c1ef51f97f0c11f11ba4056c4bd387b60fb429ca018c29922`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9faa12872a22a86ea5cba3c3d4d750f7e90fb942565b5b7985aaaa4e3a7ad10`  
		Last Modified: Sat, 02 Jun 2018 10:52:51 GMT  
		Size: 2.9 MB (2875875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8679a800840157aae8ea098e515d93061caebb7ddb2d9d99e0c25ba67ccb28`  
		Last Modified: Sat, 02 Jun 2018 10:54:00 GMT  
		Size: 60.6 MB (60633099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:sfj` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:185f7a4fe9719a7521d560bde9020a9bcd9e10ff1ff5e89243462f387725ed61
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 MB (115395749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30ed9ce1a4c93933a8f1c143d8263a7198feb9e0ca4b848d5633072c673d75b3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:35:46 GMT
ADD file:f04df47ce064505cf6035a445440244ebf513ffda3a1d933137ac1b3f9dcb10a in / 
# Sat, 28 Apr 2018 08:35:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 08:35:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 08:35:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 08:35:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 08:35:53 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 13:24:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 13:24:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 08:16:46 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 08:20:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='15c2e6303aa5750a9e56e0ac1b3e6f246c3fd1c3c32d7613360ec85537e88ec3';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='debc39440f0a0dd8952f69a7b8e47ec433eeef88c78892cde473cfc36b64ed5e';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='fa040275e7fa1afeb47c4ef60a4cf81a6bdbe590459841f3f89cdfd5cc8c50db';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='31ff95bcfed915e3d5818933e18bb50ef124924dafc767c4e27ee4acdfb1aacd';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='953df3c2ab64588fcf517bcb391549e06fa402bcaa09e3554ae163ca6a080d7c';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 08:20:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:6f5c5c810ea52a4d0eeed419954773e58454a391359660fbba515e1c200b2a53`  
		Last Modified: Sat, 28 Apr 2018 08:38:20 GMT  
		Size: 45.4 MB (45430904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0edf6521d4cc2b1d8a566d3712701b63c23cd071e5b0a6482f88aeaf1faab07`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e23b9e48d0ddeb8b1d9b907d4786c018218b02e8ef8127a81d762c903ffc9`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 647.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebe5b7d4eb56fba71a14936f09f1c0e9a292fd12187abd76a8635e91d563510`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75acd081ba1e9819d284f8c0e4616261fcf1dd2c40070256f2b98edefe60bc0f`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142a2f61f934e958e4d3b3a6704704c9bf75df9db3881a88c5933019f4d1cd40`  
		Last Modified: Sat, 28 Apr 2018 13:31:26 GMT  
		Size: 2.9 MB (2880013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81fac8213b32f8f9d2b1e17a746b836baa286587c175c7ddece798b4f702ec9`  
		Last Modified: Sat, 02 Jun 2018 08:24:39 GMT  
		Size: 67.1 MB (67082313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:sfj` - linux; s390x

```console
$ docker pull ibmjava@sha256:18d8647da971c64ad6953898e416f65c73cccde9f22c25f175f857c7d0afeeaf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.1 MB (109116842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dadc4b0c7fd27769d7d7af815bc6ff8285c06f8c6751b59eb23f20c3bec3cd3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:55:01 GMT
ADD file:1774b01ad0a92d5a1d2c3d55727311071fa588988963911322975950764a84a3 in / 
# Sat, 28 Apr 2018 11:55:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:55:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:55:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:55:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:55:04 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 15:27:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 15:27:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 11:41:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 11:42:56 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='15c2e6303aa5750a9e56e0ac1b3e6f246c3fd1c3c32d7613360ec85537e88ec3';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='debc39440f0a0dd8952f69a7b8e47ec433eeef88c78892cde473cfc36b64ed5e';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='fa040275e7fa1afeb47c4ef60a4cf81a6bdbe590459841f3f89cdfd5cc8c50db';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='31ff95bcfed915e3d5818933e18bb50ef124924dafc767c4e27ee4acdfb1aacd';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='953df3c2ab64588fcf517bcb391549e06fa402bcaa09e3554ae163ca6a080d7c';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 11:42:56 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:b1ebf925223c7651aa354d836106d6139b7610117af232eea6d23f9b81d972f8`  
		Last Modified: Mon, 23 Apr 2018 14:58:28 GMT  
		Size: 42.1 MB (42092399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8a07f0c9220007a0689fbea3da6b75314fc322bd887be53e5e734cb4f1800c`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1c359f5ed9198ccfe76eb8f1d8d8c2b32b74a12e582b90ea0433d4d8845261`  
		Last Modified: Sat, 28 Apr 2018 11:56:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35fcc66064c28ab927565627c616fe1986f1004944d173a1a1d0e95cdfde30a`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d624275f8e7d43c3c19936ca324e75493d45620982df73e9ef0578f9f1c75256`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2241255ff61810ada96838743b69433494aa9876c3b5723fb84d36406a76d7ed`  
		Last Modified: Sat, 28 Apr 2018 15:29:54 GMT  
		Size: 2.8 MB (2764794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296dcbcfba63a9115998c7bd8994fed92470724bb50db9872d538c5ecc37ee7d`  
		Last Modified: Sat, 02 Jun 2018 11:45:11 GMT  
		Size: 64.3 MB (64257159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
