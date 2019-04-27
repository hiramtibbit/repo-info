## `maven:3-ibmjava-8`

```console
$ docker pull maven@sha256:2b2a6ba7d9929416e70531a08b790ddb75f4693f64f74663b73af340ffce7a83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `maven:3-ibmjava-8` - linux; amd64

```console
$ docker pull maven@sha256:393cfe7f29789ee81f72a72030961e6921a1373304fe3866d0f07d845592d947
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.2 MB (245160569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aca0bae827534645e50a6d04e3dccf4558414dcb5611787ada27546f90c49e7`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:31:44 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 26 Apr 2019 23:31:51 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:31:51 GMT
ENV JAVA_VERSION=1.8.0_sr5fp31
# Fri, 26 Apr 2019 23:34:24 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='81dd952a9e00ebbaf91fe33544b7b023bf9446e352c9e22e63ec41a3c375e0ba';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='ce25f618aa536af52972a40ee91975d11385aa92b8cf8fc26cedd43b48276e6d';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='cb7c40da9c0f78f3a200a426e54c6c2889d9726854cdc6c540562589e815c581';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='21b526cd5bf2b5570e83bdc9f03e93ea1fce5b42358001bea1fd8a05c97b032c';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='22445ef768af621d817dcc3a76e772588b827e28256f7db7d5574f146b13e31a';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 26 Apr 2019 23:34:24 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 27 Apr 2019 01:14:18 GMT
ARG MAVEN_VERSION=3.6.1
# Sat, 27 Apr 2019 01:14:18 GMT
ARG USER_HOME_DIR=/root
# Sat, 27 Apr 2019 01:14:19 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Sat, 27 Apr 2019 01:14:19 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Sat, 27 Apr 2019 01:14:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN apt-get update && apt-get install -y curl   && mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 27 Apr 2019 01:14:33 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 27 Apr 2019 01:14:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 27 Apr 2019 01:14:33 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 27 Apr 2019 01:14:34 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Sat, 27 Apr 2019 01:14:34 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 27 Apr 2019 01:14:34 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da5732a982b2ae8bd17a3fac70acc8f0e115496804646f67d3b29dec4ee78c6`  
		Last Modified: Fri, 26 Apr 2019 23:34:41 GMT  
		Size: 3.0 MB (3021162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee2a21fddc33cb130bc5b2604a195d09717fd55b1dcf4dfe34e11b808b41d9c1`  
		Last Modified: Fri, 26 Apr 2019 23:35:27 GMT  
		Size: 166.2 MB (166162985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9a323df8f23b42972d32d373027b25013d4feb8be71385b5595ef88894d300`  
		Last Modified: Sat, 27 Apr 2019 01:15:20 GMT  
		Size: 32.2 MB (32221155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5199ec7865978a4f66500abcd0082675bbe3fa92bfdec782290187a136bf9c81`  
		Last Modified: Sat, 27 Apr 2019 01:15:16 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225907ddc390470fffcdc6b2f1e193af6b2fe441b41094075523e68df72f343a`  
		Last Modified: Sat, 27 Apr 2019 01:15:16 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-ibmjava-8` - linux; 386

```console
$ docker pull maven@sha256:7536a0cffc18e9e27478f6f733f3db3fc870f5e6b454b8163a939cd7d5828201
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.9 MB (233925165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eaf2b41e8a722dbe491cad1a7eb14df3fe2d978830281eaa490630f8eced0d5`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 12 Mar 2019 11:35:18 GMT
ADD file:1ba3cea4bf38cb3dc387648ad667cda3391bbc7c89c61f301f8bfac535791866 in / 
# Tue, 12 Mar 2019 11:35:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 11:35:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 11:35:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 11:35:21 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 12:15:52 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 12 Mar 2019 12:16:00 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 11:30:13 GMT
ENV JAVA_VERSION=1.8.0_sr5fp31
# Wed, 03 Apr 2019 11:33:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='81dd952a9e00ebbaf91fe33544b7b023bf9446e352c9e22e63ec41a3c375e0ba';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='ce25f618aa536af52972a40ee91975d11385aa92b8cf8fc26cedd43b48276e6d';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='cb7c40da9c0f78f3a200a426e54c6c2889d9726854cdc6c540562589e815c581';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='21b526cd5bf2b5570e83bdc9f03e93ea1fce5b42358001bea1fd8a05c97b032c';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='22445ef768af621d817dcc3a76e772588b827e28256f7db7d5574f146b13e31a';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 03 Apr 2019 11:33:11 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 17 Apr 2019 10:47:54 GMT
ARG MAVEN_VERSION=3.6.1
# Wed, 17 Apr 2019 10:47:54 GMT
ARG USER_HOME_DIR=/root
# Wed, 17 Apr 2019 10:47:55 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Wed, 17 Apr 2019 10:47:55 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Wed, 17 Apr 2019 10:50:03 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN apt-get update && apt-get install -y curl   && mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 17 Apr 2019 10:50:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 17 Apr 2019 10:50:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 17 Apr 2019 10:50:04 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 17 Apr 2019 10:50:04 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 17 Apr 2019 10:50:04 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 17 Apr 2019 10:50:04 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0cffec7e6d2d3b65fa5c53ffb9033949713e7fa5f813e0d8ff84fec99866be56`  
		Last Modified: Mon, 25 Feb 2019 15:26:33 GMT  
		Size: 43.8 MB (43758574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eacc4c503443a80402aec13f1bc53f298e337b8e572e371c933f9b53c6a2c3`  
		Last Modified: Tue, 12 Mar 2019 11:36:27 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f426864bc7c0b1dd6a9e435173f14ac7810e63364adf8b4d4e8283ce536140`  
		Last Modified: Tue, 12 Mar 2019 11:36:27 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d721cf76afc58475ca7f96fb7224a6fe61996dc0c8ad6699cb8da12653a76e`  
		Last Modified: Tue, 12 Mar 2019 11:36:27 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1004f9d9a6a6c7d1ab647314cef927e8df101916e1ca212f8ea1ff42fa4bec`  
		Last Modified: Tue, 12 Mar 2019 12:19:21 GMT  
		Size: 2.9 MB (2876755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca84a85ad0cc9ddc865558cd4ef0a06d36a52d191dc21efe636f2f807dee64d8`  
		Last Modified: Wed, 03 Apr 2019 11:34:19 GMT  
		Size: 154.5 MB (154523506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4fc0d55575856f0714dd9d4e3434d7f761c20b78941501217d1b6397b50c92`  
		Last Modified: Wed, 17 Apr 2019 10:51:22 GMT  
		Size: 32.8 MB (32763579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161d2fd092e8963a0143b1d57c6808d9cf83884d0c03efa700034f9f58e8a2d0`  
		Last Modified: Wed, 17 Apr 2019 10:51:18 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddd5317006faf282e2ad325c2562bac6992f5735ed93e61f0fee606300e86d0`  
		Last Modified: Wed, 17 Apr 2019 10:51:18 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-ibmjava-8` - linux; ppc64le

```console
$ docker pull maven@sha256:677e282d3e037ca52232d4aa62d712544273d651a090258781e6c58a5e117c02
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.6 MB (258607910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36ceb8f07e66f95fb6356a5ab84ce070bbb97ee94efa257faa4d9836e5385e1f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 12 Mar 2019 08:38:49 GMT
ADD file:662e1451430b294da63b388f789556544f888e1c853a682bee04b16c1ce0c5f8 in / 
# Tue, 12 Mar 2019 08:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 08:39:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 08:39:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 08:39:18 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 08:57:19 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 12 Mar 2019 08:57:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 09:03:02 GMT
ENV JAVA_VERSION=1.8.0_sr5fp31
# Wed, 03 Apr 2019 09:09:30 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='81dd952a9e00ebbaf91fe33544b7b023bf9446e352c9e22e63ec41a3c375e0ba';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='ce25f618aa536af52972a40ee91975d11385aa92b8cf8fc26cedd43b48276e6d';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='cb7c40da9c0f78f3a200a426e54c6c2889d9726854cdc6c540562589e815c581';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='21b526cd5bf2b5570e83bdc9f03e93ea1fce5b42358001bea1fd8a05c97b032c';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='22445ef768af621d817dcc3a76e772588b827e28256f7db7d5574f146b13e31a';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 03 Apr 2019 09:09:35 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 17 Apr 2019 08:32:40 GMT
ARG MAVEN_VERSION=3.6.1
# Wed, 17 Apr 2019 08:32:43 GMT
ARG USER_HOME_DIR=/root
# Wed, 17 Apr 2019 08:32:46 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Wed, 17 Apr 2019 08:32:49 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Wed, 17 Apr 2019 08:33:59 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN apt-get update && apt-get install -y curl   && mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 17 Apr 2019 08:34:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 17 Apr 2019 08:34:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 17 Apr 2019 08:34:06 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 17 Apr 2019 08:34:06 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 17 Apr 2019 08:34:10 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 17 Apr 2019 08:34:12 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4d4e695beabdb9803aaf0b66ff290a2b37ee4b2c6ac6c54a79af9402ec1e8c63`  
		Last Modified: Mon, 04 Mar 2019 15:21:34 GMT  
		Size: 45.8 MB (45775047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4bc7904c59ff5c00672c95b43d447ee8bc66491ed4d8ec9b6977517a8c0e5f`  
		Last Modified: Tue, 12 Mar 2019 08:41:22 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44807514cf46fe796993725e6d846bd71cbb1b6d5732ff662eed4fdacd6b0f99`  
		Last Modified: Tue, 12 Mar 2019 08:41:22 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e6a97f35ae67ea6d8b7e0069332d9070fb6a49956271e8ab2671463d94e4c`  
		Last Modified: Tue, 12 Mar 2019 08:41:23 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a054eea562f6cae140405e0353fc5bd3fac1508227e9b0d17fdf7adae55d6453`  
		Last Modified: Tue, 12 Mar 2019 09:06:21 GMT  
		Size: 2.9 MB (2881225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fdad645b8fe95ce313c26abe559c11777e5b1a34a51d22089b04aef77c18c0a`  
		Last Modified: Wed, 03 Apr 2019 09:11:30 GMT  
		Size: 179.2 MB (179165499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab698617f547a47c4a892a40f3cf0fd3b248d99ff7d6167f57f84a2fd8367473`  
		Last Modified: Wed, 17 Apr 2019 08:37:18 GMT  
		Size: 30.8 MB (30783423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173b813668d5bcbdd12291edc31ba91679efb296cf2608f5f7e9f966e56f82ff`  
		Last Modified: Wed, 17 Apr 2019 08:37:13 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beedc8b56b48156d55488eb314ad1771b9bce970820bdbddfae74c2edbbad31b`  
		Last Modified: Wed, 17 Apr 2019 08:37:13 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-ibmjava-8` - linux; s390x

```console
$ docker pull maven@sha256:ee602d8ec5fd60273767735e32209f51428b5dcdacbefeec80a7a5ac9f750ddc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.7 MB (231701578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74b0098b798a1138200dbd81692174b2379b230344f3bde6ad112de4a4959b62`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 12 Mar 2019 12:09:33 GMT
ADD file:fb98977a7ac241ec53e1d889d1511a608713d16ed4ad8a408d5a1450d41eedad in / 
# Tue, 12 Mar 2019 12:09:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:09:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:09:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:09:39 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 12:28:13 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 12 Mar 2019 12:28:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 11:55:11 GMT
ENV JAVA_VERSION=1.8.0_sr5fp31
# Wed, 03 Apr 2019 11:57:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='81dd952a9e00ebbaf91fe33544b7b023bf9446e352c9e22e63ec41a3c375e0ba';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='ce25f618aa536af52972a40ee91975d11385aa92b8cf8fc26cedd43b48276e6d';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='cb7c40da9c0f78f3a200a426e54c6c2889d9726854cdc6c540562589e815c581';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='21b526cd5bf2b5570e83bdc9f03e93ea1fce5b42358001bea1fd8a05c97b032c';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='22445ef768af621d817dcc3a76e772588b827e28256f7db7d5574f146b13e31a';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 03 Apr 2019 11:57:41 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 17 Apr 2019 11:55:36 GMT
ARG MAVEN_VERSION=3.6.1
# Wed, 17 Apr 2019 11:55:37 GMT
ARG USER_HOME_DIR=/root
# Wed, 17 Apr 2019 11:55:38 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Wed, 17 Apr 2019 11:55:38 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Wed, 17 Apr 2019 11:56:04 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN apt-get update && apt-get install -y curl   && mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 17 Apr 2019 11:56:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 17 Apr 2019 11:56:06 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 17 Apr 2019 11:56:06 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 17 Apr 2019 11:56:07 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 17 Apr 2019 11:56:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 17 Apr 2019 11:56:08 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6ef408a9cdfcbd0f83d7f6572df55c6996e16107389017db0407817059f5d367`  
		Last Modified: Mon, 25 Feb 2019 15:27:50 GMT  
		Size: 42.5 MB (42454255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e7fcd85b92bad19a70c77783f5d4726b6bf8e95f18efb312229d50de629ec6`  
		Last Modified: Tue, 12 Mar 2019 12:10:43 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d734cc4d136f5d39f2257009118017ab21f14b4b0b7c24aeb1664b3643d72f35`  
		Last Modified: Tue, 12 Mar 2019 12:10:43 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a0a7e0a5d7c031bf9353d8a2b1d290134dbd5508d6ff14813ef719ad99ffc6`  
		Last Modified: Tue, 12 Mar 2019 12:10:43 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05a577227b649ec9699bd853775bc2e2708d0fe7b92203c8c2aea4e1b8f7950`  
		Last Modified: Tue, 12 Mar 2019 12:31:15 GMT  
		Size: 2.8 MB (2766705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd22640ee7e599b241ed9c1d6300f2f92e0d473dcbfbbff458b5d868adc64bbf`  
		Last Modified: Wed, 03 Apr 2019 11:58:57 GMT  
		Size: 156.9 MB (156861087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d863bc8cdedd02c4fdad220a97fa93483b9331633037bf3dc58ba37eac9c599`  
		Last Modified: Wed, 17 Apr 2019 11:58:15 GMT  
		Size: 29.6 MB (29616821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c5d32b30629be602942736e664fdcc81606c7d4894e675c175d5d471180fca`  
		Last Modified: Wed, 17 Apr 2019 11:58:10 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10476c62a11f002e318491d08ba34a9bc233b8f7076fc546d5f638638e976758`  
		Last Modified: Wed, 17 Apr 2019 11:58:10 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
