## `maven:ibmjava`

```console
$ docker pull maven@sha256:b1143026e3fb4edbedd09e6c2be39abb8d5e1d80a3f7940e38ec81ca8bdf96bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `maven:ibmjava` - linux; amd64

```console
$ docker pull maven@sha256:2e217cbda43a6754b8824af3b56a744c96acef784813c3729e9923c85b2b1e46
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.1 MB (254133256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7f76a1549ac544efbeb43b69403b836a8da95620cef43ea8a494e070ec13872`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 06 Mar 2018 22:17:23 GMT
ADD file:c753df38640ab6e246d9e66f0cef7156b7003976080b1e0b83e5717cd6ef1725 in / 
# Tue, 06 Mar 2018 22:17:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:17:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:17:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:17:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:17:26 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 03:33:57 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 07 Mar 2018 03:34:10 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 06 Apr 2018 19:21:33 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Fri, 06 Apr 2018 19:52:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='5bb361cc011e31bb7def6d69ee1b02b1d5b0964926b32c5bb622d0583ddafd78';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='b65cecbfcd1309afc3eb66298a15e96151cc8bc21a3a560c8fa80a77ab0092b2';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2d14f12f21bfdc4b8ffc058dfc9e0eafbf65180b75a95fc3e73732aa434e1dbe';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='471113433138f30e66db9b677335f33061602bc7191c77e19c86825cd5db121b';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='6e7cd7bdcd940b8e6606e0d5ed396d290500354182c55436d7393b76ee8d9010';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 06 Apr 2018 19:52:11 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Apr 2018 21:53:22 GMT
ARG MAVEN_VERSION=3.5.3
# Fri, 06 Apr 2018 21:53:22 GMT
ARG USER_HOME_DIR=/root
# Fri, 06 Apr 2018 21:53:23 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Fri, 06 Apr 2018 21:53:23 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Fri, 06 Apr 2018 21:53:38 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update && apt-get install -y curl   && mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 06 Apr 2018 21:53:38 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 06 Apr 2018 21:53:38 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 06 Apr 2018 21:53:39 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 06 Apr 2018 21:53:39 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 06 Apr 2018 21:53:39 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 06 Apr 2018 21:53:40 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:22dc81ace0ea2f45ad67b790cddad29a45e206d51db0af826dc9495ba21a0b06`  
		Last Modified: Mon, 05 Mar 2018 14:50:20 GMT  
		Size: 43.0 MB (42963776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8b3c87dba3ed16956c881a26eb0c40502c176a35767627d87557d16ea1e0df`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91390a1c435a20661a9e9afdaeb818638299a20d6ee1cc06bbcab8ae4d51994f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07844b14977e91f82408cbb8932c7d6141d6ca8da7d6587b4d3065750d69186f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78396653dae2bc0d9c02c0178bd904bb12195b2b4e541a92cd8793ac7d7d689`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f51c84437412aefdd5b57f02dc9974d4abcf492373dc15b5daeae44f1eca05`  
		Last Modified: Wed, 07 Mar 2018 03:37:19 GMT  
		Size: 3.0 MB (3021321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac9b903802405a1af2d78a3372f4a51a94fa959d434684a449fa0cce2ffe869e`  
		Last Modified: Fri, 06 Apr 2018 20:25:44 GMT  
		Size: 164.9 MB (164930235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df00028d51e2d067cae8b613247d27a37afd48cb86fba665d5d3eec17086234`  
		Last Modified: Fri, 06 Apr 2018 21:56:25 GMT  
		Size: 43.2 MB (43214330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24955ca1b4f5969056a69401f2ecef5f6c7973be192c465dcf7a72d67dd418b`  
		Last Modified: Fri, 06 Apr 2018 21:56:21 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3350425b6a86c1ad15db9dc7a540fd16737c4b9cb086e0c1ff8b1f0f7d11ee`  
		Last Modified: Fri, 06 Apr 2018 21:56:22 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:ibmjava` - linux; 386

```console
$ docker pull maven@sha256:34cf2c21f0f38020b7a12dd3f2d6add4a694a06389c367a4031d64ade755e79e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.2 MB (242169239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0116f2a501cce75423a25e72e07b07c3e444db29f07e27ed7fc475f8a99339d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 08 Mar 2018 04:36:38 GMT
ADD file:c67129d7ff70532c6e7bae71276572b8ad33a722f3a99a90f36e16a8f7e2f358 in / 
# Thu, 08 Mar 2018 04:36:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 08 Mar 2018 04:36:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 08 Mar 2018 04:36:41 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 08 Mar 2018 04:36:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 08 Mar 2018 04:36:43 GMT
CMD ["/bin/bash"]
# Thu, 08 Mar 2018 22:45:34 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 08 Mar 2018 22:45:51 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 08 Mar 2018 22:45:51 GMT
ENV JAVA_VERSION=1.8.0_sr5fp10
# Thu, 08 Mar 2018 23:18:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='59b9eb7ead4d552c07028a2f1aa84947d7cc73c0f21bd2213e8f12683bce32c5';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='41aff429d032e4fa173d73730ac961c232abeaa79286cdb51c0a4a59982bdabc';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='a77acfbd5d4d3997b8ef849d7bf0ce559f1eeb43e130051b6ccdcb488e3d4556';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='55a24c33e0f94ff1e83ed259c6acc43a240659b43050992f44bc33ad4971aaa9';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='3fb233a571f85ec8246769801ddd62d9b8e9dfc1599367bbab580f76c7242d99';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Thu, 08 Mar 2018 23:18:32 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Mar 2018 21:50:59 GMT
ARG MAVEN_VERSION=3.5.3
# Tue, 13 Mar 2018 21:51:00 GMT
ARG USER_HOME_DIR=/root
# Tue, 13 Mar 2018 21:51:00 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Tue, 13 Mar 2018 21:51:00 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Tue, 13 Mar 2018 21:51:16 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update && apt-get install -y curl   && mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 13 Mar 2018 21:51:16 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 13 Mar 2018 21:51:16 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 13 Mar 2018 21:51:16 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 13 Mar 2018 21:51:17 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 13 Mar 2018 21:51:17 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 13 Mar 2018 21:51:17 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:43cff9ac2d349e82eb7142b7898ee0e1c500df1e98c86b4c4003dd77e1f08a19`  
		Last Modified: Mon, 05 Mar 2018 14:51:41 GMT  
		Size: 43.3 MB (43278706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25abb78436881fc7240d2683491eafe0dd654b06ff3b0854708c4e9614ee697`  
		Last Modified: Thu, 08 Mar 2018 05:31:52 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7355f8e4aeb7984f4f15617ec5a4f17836a7e32611436e351f45e9378b0a1f2f`  
		Last Modified: Thu, 08 Mar 2018 05:31:52 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea422b11e5e16a8977fc660f3eb8634c1c6f8a11c2852feac0220ab212ca75f7`  
		Last Modified: Thu, 08 Mar 2018 05:31:53 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f1088e42dc3a044ba5a731e26154828d758ebdb710f4fa79e2a1869f8345b7`  
		Last Modified: Thu, 08 Mar 2018 05:31:52 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e887d7f38028150ae77860c0675a918dfd75bc3e81d8281da81f72ea017cbff`  
		Last Modified: Thu, 08 Mar 2018 23:33:53 GMT  
		Size: 2.9 MB (2877521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70deaaa6a2afcfb41489e6a0e77b180ea6501a9557599a150cd0bc145060f677`  
		Last Modified: Thu, 08 Mar 2018 23:46:02 GMT  
		Size: 151.5 MB (151548933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72b4e807c00bfb19fe92ac3dcd5e49c5246c680a8bde17bb79fea150fd7738b`  
		Last Modified: Wed, 28 Mar 2018 17:55:18 GMT  
		Size: 44.5 MB (44460518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ff55ff93ba243f2cea365272fa448b18d69daeb9656e985b3ff47bb727acbd9`  
		Last Modified: Wed, 28 Mar 2018 17:55:10 GMT  
		Size: 745.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1697cd0c22597a08d30f34eb3dc38d5e0527261176f5f4ee453b9b686fcdbcce`  
		Last Modified: Wed, 28 Mar 2018 17:55:11 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:ibmjava` - linux; ppc64le

```console
$ docker pull maven@sha256:4a7fe6aa2f6e1934955180601c775be9ac50ddab9d5f5d5f99060be66e460486
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.9 MB (268872304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1208cf9da6b25dde1d5424566c4c71fa4b5d92f5f632c5b1b0c8425d22c8c58b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 07 Mar 2018 03:42:20 GMT
ADD file:4ef9de52677adcdeef035215e1a5d7e4be4f21ff43f32e729cbda321b19eb41a in / 
# Wed, 07 Mar 2018 03:42:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 03:42:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 03:42:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 03:42:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 03:42:37 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:00:32 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 07 Mar 2018 04:01:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Apr 2018 02:18:49 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Tue, 10 Apr 2018 02:25:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='5bb361cc011e31bb7def6d69ee1b02b1d5b0964926b32c5bb622d0583ddafd78';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='b65cecbfcd1309afc3eb66298a15e96151cc8bc21a3a560c8fa80a77ab0092b2';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2d14f12f21bfdc4b8ffc058dfc9e0eafbf65180b75a95fc3e73732aa434e1dbe';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='471113433138f30e66db9b677335f33061602bc7191c77e19c86825cd5db121b';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='6e7cd7bdcd940b8e6606e0d5ed396d290500354182c55436d7393b76ee8d9010';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 10 Apr 2018 02:25:44 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Apr 2018 03:23:07 GMT
ARG MAVEN_VERSION=3.5.3
# Tue, 10 Apr 2018 03:23:08 GMT
ARG USER_HOME_DIR=/root
# Tue, 10 Apr 2018 03:23:10 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Tue, 10 Apr 2018 03:23:11 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Tue, 10 Apr 2018 03:25:04 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update && apt-get install -y curl   && mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 10 Apr 2018 03:25:06 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 10 Apr 2018 03:25:07 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 10 Apr 2018 03:25:09 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 10 Apr 2018 03:25:10 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 10 Apr 2018 03:25:12 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 10 Apr 2018 03:25:13 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d2081f6d30078f08bc14fa8f4ecae796f33fc3eef73c3ecb4569c9c72483ceb4`  
		Last Modified: Wed, 07 Mar 2018 03:44:48 GMT  
		Size: 45.4 MB (45370254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e0b7b79b9819de696c49e6a5340a1c6855f63594f0a4ab4f110c1e777b78031`  
		Last Modified: Wed, 07 Mar 2018 03:44:36 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9129e3a4ef8ba31c6c43561a0fc1b0d83da1405bb2ada2970a6dfbb6713f0c24`  
		Last Modified: Wed, 07 Mar 2018 03:44:36 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138a881ad53304753c07c7a5eb3a78432b387c6a79564b58974e62703af2bbf8`  
		Last Modified: Wed, 07 Mar 2018 03:44:40 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2879d728317e4d31ee80537a0a174de5d6ef7c4897a6ae6f4ada0273b1b78d6`  
		Last Modified: Wed, 07 Mar 2018 03:44:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ab4870ad4ee97d4e32d496b63cc7373fd7f11d549efb2263394978effb7eac`  
		Last Modified: Wed, 07 Mar 2018 04:08:42 GMT  
		Size: 2.9 MB (2878547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8ad090d1269943715e81fa23143aa37160987a5ad1d467ff03a7c6254836e4e`  
		Last Modified: Tue, 10 Apr 2018 02:29:18 GMT  
		Size: 178.5 MB (178542468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90458e74168b026fa249d8d5b6adcc3e6750f8ab657e3cc4fbe1aea9451f3ae2`  
		Last Modified: Tue, 10 Apr 2018 03:27:07 GMT  
		Size: 42.1 MB (42077407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523f45a62b8761bb92eb13620683df5245f14b8102878dac8f7276bb5d402592`  
		Last Modified: Tue, 10 Apr 2018 03:27:00 GMT  
		Size: 746.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b5c3cb78d5d85b9dc9d1ce9ef7cc190b77ec1d375fd96c38228b2b7ffd917d7`  
		Last Modified: Tue, 10 Apr 2018 03:27:00 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:ibmjava` - linux; s390x

```console
$ docker pull maven@sha256:b49c6606cf220209906092f8e8078b1a7e1f7dd0a640b2c18ee1690df0c22f55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240807249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c558fd7013df6ef082a447775653862674c14b2d9e2568cb9c3a1772eb9bbfd2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 07 Mar 2018 14:16:03 GMT
ADD file:8a37d561cb3654a7a5f0129393726248dc67d03c914b0b4d13eeb4e2c435d359 in / 
# Wed, 07 Mar 2018 14:16:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 14:16:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:16:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 14:16:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 14:16:05 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:32:41 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 07 Mar 2018 14:33:39 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:33:39 GMT
ENV JAVA_VERSION=1.8.0_sr5fp10
# Wed, 07 Mar 2018 14:35:52 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='59b9eb7ead4d552c07028a2f1aa84947d7cc73c0f21bd2213e8f12683bce32c5';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='41aff429d032e4fa173d73730ac961c232abeaa79286cdb51c0a4a59982bdabc';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='a77acfbd5d4d3997b8ef849d7bf0ce559f1eeb43e130051b6ccdcb488e3d4556';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='55a24c33e0f94ff1e83ed259c6acc43a240659b43050992f44bc33ad4971aaa9';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='3fb233a571f85ec8246769801ddd62d9b8e9dfc1599367bbab580f76c7242d99';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Wed, 07 Mar 2018 14:35:52 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 10 Mar 2018 04:09:38 GMT
ARG MAVEN_VERSION=3.5.3
# Sat, 10 Mar 2018 04:09:38 GMT
ARG USER_HOME_DIR=/root
# Sat, 10 Mar 2018 04:09:38 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Sat, 10 Mar 2018 04:09:38 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Sat, 10 Mar 2018 04:09:49 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update && apt-get install -y curl   && mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 10 Mar 2018 04:09:50 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 10 Mar 2018 04:09:50 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 10 Mar 2018 04:09:50 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 10 Mar 2018 04:09:50 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 10 Mar 2018 04:09:50 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 10 Mar 2018 04:09:50 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:010f2178c9cabb6a33a8186a7f5a984aba7e440e4b2b4d1a874f15d5fcb79a25`  
		Last Modified: Mon, 05 Mar 2018 14:53:44 GMT  
		Size: 42.0 MB (42036505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9703614626aa4412320bce4eba714a7898db5feb0f2cb5100dc7e9e0c37dd724`  
		Last Modified: Wed, 07 Mar 2018 14:16:59 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d6768abda76abb8dcdff35826a831b24aa3c33ab9fa0086c706d9b63dbc143`  
		Last Modified: Wed, 07 Mar 2018 14:16:59 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9277dcfd4cab4f7ae26e28683fb7aba48f291de2629bb7f0785228cb99ac7b0c`  
		Last Modified: Wed, 07 Mar 2018 14:16:59 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf6fee71c476b616ecf46e767f2b49c5a057eb59a22713c92e180c5395b0f91`  
		Last Modified: Wed, 07 Mar 2018 14:16:59 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb8317415d4d7222f9ee8450011359ef47bb8c56171fb993dbc4b0833c0a626`  
		Last Modified: Wed, 07 Mar 2018 14:36:03 GMT  
		Size: 2.8 MB (2765866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7614f37f3c284c4f0594b7a5d0d37d633b49559750eea83eee124b7d88fd860f`  
		Last Modified: Wed, 07 Mar 2018 14:37:00 GMT  
		Size: 155.7 MB (155654666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8952518893a6c3e359d84402938dd62d66472130bc86830eb352944d45499fd6`  
		Last Modified: Sat, 10 Mar 2018 04:13:35 GMT  
		Size: 40.3 MB (40346620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ac20b7506322cd95dee46e46be92d5d0814a02c851935e450b04279f17c133`  
		Last Modified: Sat, 10 Mar 2018 04:13:32 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d2050131a7dc8e9fc0888e2d264ecfc40d3955018c752da9b6655b541c7fa4`  
		Last Modified: Sat, 10 Mar 2018 04:13:31 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
