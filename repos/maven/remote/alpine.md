## `maven:alpine`

```console
$ docker pull maven@sha256:b711042996e5c349a02bd39cd4df5d0f8867dc8398321994c329a1b1abe5e4cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `maven:alpine` - linux; amd64

```console
$ docker pull maven@sha256:280336a0f856865d95a141cd8a5cee5309935c311dc5cee08600d2672a7d92c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.1 MB (83101774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91138c237846d3e069d20f3243d76ca69767ab33f6dfe5319376a9cfcf40749d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 Jan 2018 04:50:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:51:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 05:59:22 GMT
RUN apk add --no-cache curl tar bash
# Wed, 10 Jan 2018 05:59:23 GMT
ARG MAVEN_VERSION=3.5.2
# Wed, 10 Jan 2018 05:59:23 GMT
ARG USER_HOME_DIR=/root
# Wed, 10 Jan 2018 05:59:23 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Wed, 10 Jan 2018 05:59:24 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Wed, 10 Jan 2018 05:59:25 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 10 Jan 2018 05:59:26 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 10 Jan 2018 05:59:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 10 Jan 2018 05:59:26 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 10 Jan 2018 05:59:27 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 10 Jan 2018 05:59:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 10 Jan 2018 05:59:28 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd869c8b9b592f2fcb5ed4d6055d651ae18d5c2cce22f56896f0ff96cdcbcbf7`  
		Last Modified: Wed, 10 Jan 2018 04:56:54 GMT  
		Size: 70.2 MB (70227764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0a32f650090bec83fef3cf016a2d433b8db23ab638811c6352107994a56352`  
		Last Modified: Wed, 10 Jan 2018 06:18:19 GMT  
		Size: 1.9 MB (1923277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c46aac874ff2736bc022f162ccaf82275691b073aa963a67589d54b2da7b33`  
		Last Modified: Wed, 10 Jan 2018 06:18:18 GMT  
		Size: 8.9 MB (8883854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be53f4d68296ca8fa9a19e63343b97cb3da53ca94e4dca6e06845e3c5b035ec4`  
		Last Modified: Wed, 10 Jan 2018 06:18:17 GMT  
		Size: 747.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1d173d107c01d83ad8f36b5170c1e869270efe60d6fde85a3c649b2dfb9409`  
		Last Modified: Wed, 10 Jan 2018 06:18:17 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:alpine` - linux; arm variant v6

```console
$ docker pull maven@sha256:c6d6f9066ce8464203cd6dba82df84c9e112ff858fb71d652f554a0474202d01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80645892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dba39b3eb27b49de133cca1b0c22c44cca2bdede9f5bdeb7d399d19f2bb4e1d3`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:41 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Mon, 26 Feb 2018 23:48:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:42 GMT
CMD ["/bin/sh"]
# Thu, 01 Mar 2018 20:22:21 GMT
ENV LANG=C.UTF-8
# Thu, 01 Mar 2018 20:22:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 01 Mar 2018 20:22:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 01 Mar 2018 20:22:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 01 Mar 2018 20:22:44 GMT
ENV JAVA_VERSION=8u151
# Thu, 01 Mar 2018 20:22:44 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Thu, 01 Mar 2018 20:22:54 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 01 Mar 2018 20:41:19 GMT
RUN apk add --no-cache curl tar bash
# Thu, 01 Mar 2018 20:41:20 GMT
ARG MAVEN_VERSION=3.5.2
# Thu, 01 Mar 2018 20:41:20 GMT
ARG USER_HOME_DIR=/root
# Thu, 01 Mar 2018 20:41:20 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Thu, 01 Mar 2018 20:41:20 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Thu, 01 Mar 2018 20:41:23 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 01 Mar 2018 20:41:23 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 01 Mar 2018 20:41:23 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 01 Mar 2018 20:41:23 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 01 Mar 2018 20:41:24 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 01 Mar 2018 20:41:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 01 Mar 2018 20:41:24 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5993b3593c77413be85d318297ad8313b945069768a7e454d487fd47fa4b4343`  
		Last Modified: Mon, 26 Feb 2018 23:49:26 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1475b066c18ae53a7d0e2c5bd25d45ee6a5e302d0a9797dfe4e9aea4eefcc53`  
		Last Modified: Thu, 01 Mar 2018 20:24:13 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad8b2d81df4019e862809fa52b4ee5b2369b5e173fe10d34d38ef235cdae1cc`  
		Last Modified: Thu, 01 Mar 2018 20:24:53 GMT  
		Size: 67.9 MB (67853015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aabefe5ce7577510dd8f0c0ab6be0bbd83c6538ba30e9eb835d85d8652a19598`  
		Last Modified: Thu, 01 Mar 2018 20:41:35 GMT  
		Size: 1.9 MB (1869170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffcb0f9d39243be7cec2fb03afa47f6832b0b5af7b388619e4c4bb4a54ac47b`  
		Last Modified: Thu, 01 Mar 2018 20:41:36 GMT  
		Size: 8.9 MB (8883888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5762b04b1ad1505eb4f069f371c80c65e8e65b8c340375c4cb0e6e6bfd167a`  
		Last Modified: Thu, 01 Mar 2018 20:41:35 GMT  
		Size: 747.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461883243b97334ee7b6c3cdfff5d99fa4e4004446e2ae953fefb2dfcd7693d8`  
		Last Modified: Thu, 01 Mar 2018 20:41:34 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:0a38a5d58a3dd6b27148e64098550228a4a0c6f08bb7b4ea24640666c7bf5f39
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.6 MB (81648832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27898481c4915ce1306989e1fcba4676b8b753b7463962463dfa06fb2e53e206`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 11:05:19 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 11:05:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 11:10:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 05 Dec 2017 11:10:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 11:10:23 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 11:10:25 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 11:10:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Dec 2017 17:30:27 GMT
RUN apk add --no-cache curl tar bash
# Thu, 07 Dec 2017 17:30:28 GMT
ARG MAVEN_VERSION=3.5.2
# Thu, 07 Dec 2017 17:30:28 GMT
ARG USER_HOME_DIR=/root
# Thu, 07 Dec 2017 17:30:29 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Thu, 07 Dec 2017 17:30:30 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Thu, 07 Dec 2017 17:30:35 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 07 Dec 2017 17:30:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 07 Dec 2017 17:30:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Dec 2017 17:30:36 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Dec 2017 17:30:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 07 Dec 2017 17:30:38 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Dec 2017 17:30:38 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4b770fee7695d8ca568c04817dd4e9d077997d617c75c75c6c47038c837df1`  
		Last Modified: Tue, 05 Dec 2017 11:12:04 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12835974f24ae872e974d02eee3cef8fa003fe95b64bec72a60767fbac781e6`  
		Last Modified: Tue, 05 Dec 2017 11:14:47 GMT  
		Size: 68.9 MB (68944224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a1ec90ffc31c5a36ab3a4c5bdb81bfe72376ecab3dd5418bd8aadbe8fde77a`  
		Last Modified: Thu, 07 Dec 2017 17:34:32 GMT  
		Size: 1.8 MB (1830373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a3a868e887ca29a81631f44f7c6b447ee1d59657cc82b5be627bf856ced5ec`  
		Last Modified: Thu, 07 Dec 2017 17:34:35 GMT  
		Size: 8.9 MB (8883865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a4e0d2935cdb3729d4b7e061fb34158a97e44d46fef31dc4837e2ddc1df20de`  
		Last Modified: Thu, 07 Dec 2017 17:34:31 GMT  
		Size: 746.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ca67ec43dba379bb68785e64a1a6ed2f8d3152b6a3797f1362621e31477726`  
		Last Modified: Thu, 07 Dec 2017 17:34:31 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:alpine` - linux; 386

```console
$ docker pull maven@sha256:bf688b430a9c29e7581daa1bc384226409475536afbafb6c10a27fecd010ca6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83949688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7ba456e481b0fd16b2aa7ef8b2c32d85b3b5051646b8cc698b93a72f5216fde`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 11:43:46 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 11:43:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 11:47:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 05 Dec 2017 11:47:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 11:47:10 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 11:47:10 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 11:47:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Dec 2017 02:46:56 GMT
RUN apk add --no-cache curl tar bash
# Thu, 07 Dec 2017 02:46:56 GMT
ARG MAVEN_VERSION=3.5.2
# Thu, 07 Dec 2017 02:46:56 GMT
ARG USER_HOME_DIR=/root
# Thu, 07 Dec 2017 02:46:56 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Thu, 07 Dec 2017 02:46:56 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Thu, 07 Dec 2017 02:46:58 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 07 Dec 2017 02:46:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 07 Dec 2017 02:46:58 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Dec 2017 02:46:59 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Dec 2017 02:46:59 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 07 Dec 2017 02:46:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Dec 2017 02:46:59 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c133e6dffdd21fda44fae785186d6f9e3a441bb7767286c2ed65a31208c03fe7`  
		Last Modified: Tue, 05 Dec 2017 11:49:43 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f8410109a518c87118e38977ca3003522f835d81b4e796b024de543f429511`  
		Last Modified: Tue, 05 Dec 2017 11:52:44 GMT  
		Size: 70.9 MB (70903435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89822e30fedeb66267bb4d9710ee5cfc4c72a6245f4c3cce7e8957f39dd35fb2`  
		Last Modified: Thu, 07 Dec 2017 02:49:37 GMT  
		Size: 2.0 MB (2034676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2f2eda678b623f19fc56898790133bc89192141b3469edffce20d5533711ba`  
		Last Modified: Thu, 07 Dec 2017 02:49:38 GMT  
		Size: 8.9 MB (8883845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eafae3a9e03fb8d27c8acf4fc8e7e813fbc71f2e86178408283d8f4ec9b37b05`  
		Last Modified: Thu, 07 Dec 2017 02:49:36 GMT  
		Size: 749.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a418b6675d4eac5d9c372abc276bc76417a741cc5ea8593827972930d4cc4f63`  
		Last Modified: Thu, 07 Dec 2017 02:49:36 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:alpine` - linux; ppc64le

```console
$ docker pull maven@sha256:5758caabda763b4c68f975a136840e1dada5abf83cd66ff565590d6348f10efb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.5 MB (82474997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9485b003dce948ecd9a78ebee6f3d3c5e48c19e78d185ebfc549bd2f9a56419a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 11:47:54 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 11:47:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 11:49:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 05 Dec 2017 11:49:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 11:49:38 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 11:49:39 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 11:50:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Dec 2017 11:00:51 GMT
RUN apk add --no-cache curl tar bash
# Thu, 07 Dec 2017 11:00:52 GMT
ARG MAVEN_VERSION=3.5.2
# Thu, 07 Dec 2017 11:00:54 GMT
ARG USER_HOME_DIR=/root
# Thu, 07 Dec 2017 11:00:55 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Thu, 07 Dec 2017 11:00:56 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Thu, 07 Dec 2017 11:01:01 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 07 Dec 2017 11:01:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 07 Dec 2017 11:01:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Dec 2017 11:01:05 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Dec 2017 11:01:07 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 07 Dec 2017 11:01:08 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Dec 2017 11:01:10 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d80117bba7af560896439d844c0f3998317292d41faacc0a842ce3dd7e14605`  
		Last Modified: Tue, 05 Dec 2017 11:51:04 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57f7c7660788491f0c3f677c442992e2af593157d69b91d89fecc4f8bb30d02e`  
		Last Modified: Tue, 05 Dec 2017 11:53:16 GMT  
		Size: 69.6 MB (69582966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1350f5b69f7924240d25f3bdbf6dabf88589dc1d83eb78034886fc453a55738a`  
		Last Modified: Thu, 07 Dec 2017 11:03:52 GMT  
		Size: 1.9 MB (1925156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d1e0de4f45a270abb86160a6f55291e193471260cf822cf2ae376b7a5e621e`  
		Last Modified: Thu, 07 Dec 2017 11:03:52 GMT  
		Size: 8.9 MB (8883885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29909e4e866f0125dd83043ff29b98e7859f5bc9f82a81f4d737d95c7f105b2f`  
		Last Modified: Thu, 07 Dec 2017 11:03:51 GMT  
		Size: 747.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d308fd5804248c7fdfdbcfee6af80ed5bd9a37e81bd5e1e88ad79373827bdd`  
		Last Modified: Thu, 07 Dec 2017 11:03:51 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:alpine` - linux; s390x

```console
$ docker pull maven@sha256:3908a2538d028f7c0aa4d145be119f6239d29852247844d799e9a11576e63026
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.2 MB (82180733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e88a4c0859e1489033da6a8b0130b02b759d9c0de334a90b34491a28a3a01c6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 17:54:50 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 17:54:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 17:56:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 05 Dec 2017 17:56:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 17:56:40 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 17:56:40 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 17:57:03 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Dec 2017 04:08:19 GMT
RUN apk add --no-cache curl tar bash
# Thu, 07 Dec 2017 04:08:19 GMT
ARG MAVEN_VERSION=3.5.2
# Thu, 07 Dec 2017 04:08:19 GMT
ARG USER_HOME_DIR=/root
# Thu, 07 Dec 2017 04:08:19 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Thu, 07 Dec 2017 04:08:19 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Thu, 07 Dec 2017 04:08:37 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 07 Dec 2017 04:08:37 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 07 Dec 2017 04:08:37 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Dec 2017 04:08:38 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Dec 2017 04:08:38 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 07 Dec 2017 04:08:38 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Dec 2017 04:08:38 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320238e3e22d841c8337cb6f2d8b95f9c1ab000f2845efcd5bd977690210f427`  
		Last Modified: Tue, 05 Dec 2017 17:58:18 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67881f6488a20182745fe592b8f8316d8530abd571d6d76b95464381b348a586`  
		Last Modified: Tue, 05 Dec 2017 17:59:20 GMT  
		Size: 69.1 MB (69094273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84b8e7487b0b3a5510d871ab8729bb7d3b16c099ccc843234932d8f1ca9aca0`  
		Last Modified: Thu, 07 Dec 2017 04:10:19 GMT  
		Size: 2.0 MB (2015845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4964aca60a699184b608ecb4ede736ddbab60a06a5196804fb4ff06f61d7c8f0`  
		Last Modified: Thu, 07 Dec 2017 04:10:20 GMT  
		Size: 8.9 MB (8883866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875c8657ac0f42b45456183f1179982e80e007990864431936ac3b47ea1a34a6`  
		Last Modified: Thu, 07 Dec 2017 04:10:19 GMT  
		Size: 745.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fbb93433e3e522f98d9bcc55441c5f4b4b6f0e9003726688164485c270bdde0`  
		Last Modified: Thu, 07 Dec 2017 04:10:19 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
