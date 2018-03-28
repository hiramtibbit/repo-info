## `maven:3-jdk-7-alpine`

```console
$ docker pull maven@sha256:296a7d1063fdffb86d2544033468032905090e24712068ab2cf1fe7c51593aa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `maven:3-jdk-7-alpine` - linux; amd64

```console
$ docker pull maven@sha256:75dc744955e9a59a4edafb7147fbd3596939c4df5fefe42aa89d702677c88391
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.7 MB (90741248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba30414862c4c2c1ea29fee493bbc75b12f33df0295c7039669db7a748c1cf83`
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
# Wed, 10 Jan 2018 04:48:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 10 Jan 2018 04:48:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 10 Jan 2018 04:48:26 GMT
ENV JAVA_VERSION=7u151
# Wed, 10 Jan 2018 04:48:26 GMT
ENV JAVA_ALPINE_VERSION=7.151.2.6.11-r0
# Wed, 10 Jan 2018 04:48:36 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 09 Mar 2018 19:02:28 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 09 Mar 2018 19:02:28 GMT
ARG MAVEN_VERSION=3.5.3
# Fri, 09 Mar 2018 19:02:28 GMT
ARG USER_HOME_DIR=/root
# Fri, 09 Mar 2018 19:02:28 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Fri, 09 Mar 2018 19:02:29 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Fri, 09 Mar 2018 19:02:31 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 09 Mar 2018 19:02:31 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 09 Mar 2018 19:02:31 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 09 Mar 2018 19:02:32 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 09 Mar 2018 19:02:32 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 09 Mar 2018 19:02:32 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 09 Mar 2018 19:02:33 GMT
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
	-	`sha256:33fa218991ddd0ddecb1179f8034b07e1ce64549fd740528ffc2b481561d8e5f`  
		Last Modified: Wed, 10 Jan 2018 04:53:10 GMT  
		Size: 77.4 MB (77404294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a37a6be0f073d0570a2879da5039fe429847dc806e8808860c4fc23004c7ad6`  
		Last Modified: Fri, 09 Mar 2018 19:09:09 GMT  
		Size: 2.3 MB (2324097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb629a5e9954c4ba02b3417ba65668e4cac04770d3c6e7b346e54f678b76e5e`  
		Last Modified: Fri, 09 Mar 2018 19:09:08 GMT  
		Size: 8.9 MB (8945977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4d0957112fc5cbf9cf3d425888ff7dde23aa9d99bf072bd5be00ee6dae9c68`  
		Last Modified: Fri, 09 Mar 2018 19:09:08 GMT  
		Size: 748.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f471820d143a6f7c632528921926c9437b7891482d46ef5c300cbfcda2bcaf6`  
		Last Modified: Fri, 09 Mar 2018 19:09:08 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-alpine` - linux; arm variant v6

```console
$ docker pull maven@sha256:0775dd06909528a5f85ceab7f37fab3989d15441946e511c5704277c23962d87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81421791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:040e02d7339b8a15f48979074bfa0af9bf7dea69d07cb26d2f27d30d562d132f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 20:22:19 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 20:22:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 20:22:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 05 Dec 2017 20:22:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 05 Dec 2017 20:22:21 GMT
ENV JAVA_VERSION=7u151
# Tue, 05 Dec 2017 20:22:21 GMT
ENV JAVA_ALPINE_VERSION=7.151.2.6.11-r0
# Tue, 05 Dec 2017 20:22:48 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Mar 2018 04:20:55 GMT
RUN apk add --no-cache curl tar bash procps
# Wed, 28 Mar 2018 04:20:55 GMT
ARG MAVEN_VERSION=3.5.3
# Wed, 28 Mar 2018 04:20:55 GMT
ARG USER_HOME_DIR=/root
# Wed, 28 Mar 2018 04:20:56 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Wed, 28 Mar 2018 04:20:56 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Wed, 28 Mar 2018 04:20:58 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 28 Mar 2018 04:20:59 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 28 Mar 2018 04:20:59 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 28 Mar 2018 04:20:59 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 28 Mar 2018 04:20:59 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 28 Mar 2018 04:21:00 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 28 Mar 2018 04:21:00 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75189a5714ff86ba3b00e4d0b8ca506eec4fe942b102e32758bc44952780f6a3`  
		Last Modified: Tue, 05 Dec 2017 20:23:43 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0255dde9a78c27c05d1a5207065779e11783a168cd555d6704023d99556eb27`  
		Last Modified: Tue, 05 Dec 2017 20:23:56 GMT  
		Size: 68.2 MB (68163669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86cd14b26c441741004c142e00381066e8357d7065a80939e4375fc30f1bcad9`  
		Last Modified: Wed, 28 Mar 2018 04:21:47 GMT  
		Size: 2.3 MB (2272198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c7fc06866b1f2633a1b499dd77a90bb29517a6b291adeaf88842d183edf073`  
		Last Modified: Wed, 28 Mar 2018 04:21:48 GMT  
		Size: 8.9 MB (8946107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79431bceedf9ae2aa3f03d4ccb4c21f30e9a13250d98626209f514af6f635edb`  
		Last Modified: Wed, 28 Mar 2018 04:21:46 GMT  
		Size: 747.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28483b24064556041c4153a93557c3e96aeb1863bb2c3b0695df60623c745689`  
		Last Modified: Wed, 28 Mar 2018 04:21:46 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:fc5734fba6125df31a781d78dde8480a6e120262e424b97ab086595762ee048a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.6 MB (88625603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c429e012e71199c5516da3009ca2585319dbcb8370656abe65b7fd6663fd0a1f`
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
# Tue, 05 Dec 2017 11:05:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 05 Dec 2017 11:05:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 05 Dec 2017 11:05:23 GMT
ENV JAVA_VERSION=7u151
# Tue, 05 Dec 2017 11:05:23 GMT
ENV JAVA_ALPINE_VERSION=7.151.2.6.11-r0
# Tue, 05 Dec 2017 11:06:14 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 10 Mar 2018 17:30:43 GMT
RUN apk add --no-cache curl tar bash procps
# Sat, 10 Mar 2018 17:30:43 GMT
ARG MAVEN_VERSION=3.5.3
# Sat, 10 Mar 2018 17:30:44 GMT
ARG USER_HOME_DIR=/root
# Sat, 10 Mar 2018 17:30:44 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Sat, 10 Mar 2018 17:30:45 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Sat, 10 Mar 2018 17:30:49 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 10 Mar 2018 17:30:49 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 10 Mar 2018 17:30:50 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 10 Mar 2018 17:30:50 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 10 Mar 2018 17:30:51 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 10 Mar 2018 17:30:52 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 10 Mar 2018 17:30:52 GMT
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
	-	`sha256:416413fec3fbf11f3e37e924a354ac977f1933f06f58afe41111736da2f4828d`  
		Last Modified: Tue, 05 Dec 2017 11:12:21 GMT  
		Size: 75.4 MB (75434547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20360fd338ac4912f5354ba43ade7bd48c95931c0c83606d5a5e14fc3ee3ae91`  
		Last Modified: Sat, 10 Mar 2018 17:38:28 GMT  
		Size: 2.3 MB (2254699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba8205abfa2022b5e8bdc57ff77ce6e4a7d81726b582ccce0bfa5e40529500b`  
		Last Modified: Sat, 10 Mar 2018 17:38:29 GMT  
		Size: 8.9 MB (8945980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e85aa7f1e27ce1302557d28782e453ec14fbac59e1099b172a08943987802f`  
		Last Modified: Sat, 10 Mar 2018 17:38:27 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ab1adf38e4ce6571fb4a66ee3be750732569ded701e0e10ed7388164247fe6`  
		Last Modified: Sat, 10 Mar 2018 17:38:26 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-alpine` - linux; ppc64le

```console
$ docker pull maven@sha256:2f23856b00fb7445b8c6db8a79392167437182530ab125d474b45a98569bbb0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.1 MB (83057974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dc036a9d6506ac962a34bb1a95c06ed5f5f248293e9b9b0b1d67ee4a3ad9c9c`
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
# Tue, 05 Dec 2017 11:47:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 05 Dec 2017 11:48:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 05 Dec 2017 11:48:01 GMT
ENV JAVA_VERSION=7u151
# Tue, 05 Dec 2017 11:48:02 GMT
ENV JAVA_ALPINE_VERSION=7.151.2.6.11-r0
# Tue, 05 Dec 2017 11:48:55 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 10 Mar 2018 11:01:49 GMT
RUN apk add --no-cache curl tar bash procps
# Sat, 10 Mar 2018 11:01:50 GMT
ARG MAVEN_VERSION=3.5.3
# Sat, 10 Mar 2018 11:01:51 GMT
ARG USER_HOME_DIR=/root
# Sat, 10 Mar 2018 11:01:52 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Sat, 10 Mar 2018 11:01:53 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Sat, 10 Mar 2018 11:01:57 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 10 Mar 2018 11:01:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 10 Mar 2018 11:01:59 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 10 Mar 2018 11:02:00 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 10 Mar 2018 11:02:01 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 10 Mar 2018 11:02:02 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 10 Mar 2018 11:02:03 GMT
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
	-	`sha256:1061c72558b55c62bfb93a17e9c05869fb18ca7ae72cb680eda1102a80b13b6e`  
		Last Modified: Tue, 05 Dec 2017 11:51:24 GMT  
		Size: 69.7 MB (69681273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7099ef749af7dacd4b9fcfcbbedaef53988caf7d54fedaf762dfd34b2f293dd9`  
		Last Modified: Sat, 10 Mar 2018 11:10:40 GMT  
		Size: 2.3 MB (2347613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:128dbe84f2b40531b4fe7000dacf487400d48b82214c908cbf08008560e427dc`  
		Last Modified: Sat, 10 Mar 2018 11:10:41 GMT  
		Size: 8.9 MB (8946100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de81be8900859d3244efc5b904c657cf48062f930b983bbb03b6e4b5cff01d74`  
		Last Modified: Sat, 10 Mar 2018 11:10:39 GMT  
		Size: 749.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b71ffa22f3c2ac193d0f8e6ff2d29f9c923ec62d9a064ec3304d021f5e439f`  
		Last Modified: Sat, 10 Mar 2018 11:10:39 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-alpine` - linux; s390x

```console
$ docker pull maven@sha256:e23daba149bafe0b8a0b3d4b066c64756f3036c445a62ef5101e64bfa1bae0dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.3 MB (83302640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48179eaebe8234a4bf78a2b416116205fb17e9895950cbb99ccba0321a6a181a`
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
# Tue, 05 Dec 2017 17:54:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 05 Dec 2017 17:54:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 05 Dec 2017 17:54:53 GMT
ENV JAVA_VERSION=7u151
# Tue, 05 Dec 2017 17:54:53 GMT
ENV JAVA_ALPINE_VERSION=7.151.2.6.11-r0
# Tue, 05 Dec 2017 17:55:40 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 10 Mar 2018 04:07:32 GMT
RUN apk add --no-cache curl tar bash procps
# Sat, 10 Mar 2018 04:07:32 GMT
ARG MAVEN_VERSION=3.5.3
# Sat, 10 Mar 2018 04:07:32 GMT
ARG USER_HOME_DIR=/root
# Sat, 10 Mar 2018 04:07:32 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Sat, 10 Mar 2018 04:07:32 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Sat, 10 Mar 2018 04:07:36 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 10 Mar 2018 04:07:37 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 10 Mar 2018 04:07:37 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 10 Mar 2018 04:07:37 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 10 Mar 2018 04:07:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 10 Mar 2018 04:07:37 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 10 Mar 2018 04:07:37 GMT
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
	-	`sha256:2f71969401ebfd29cbfcf3b4a230ad9279e59d89ae146e4953e07ebf1adf7dc6`  
		Last Modified: Tue, 05 Dec 2017 17:58:26 GMT  
		Size: 69.7 MB (69743443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ffea721b712fd805ce24fc8e96c7a8908a54d24e61deba0e55d158c5c8a0fc`  
		Last Modified: Sat, 10 Mar 2018 04:10:41 GMT  
		Size: 2.4 MB (2426473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:838c2117d9f2ecb74bf5ebd5222c307fd41750b429b438817dd6ea24f9db3af5`  
		Last Modified: Sat, 10 Mar 2018 04:10:42 GMT  
		Size: 8.9 MB (8945971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1105b8f08adb376ea669a50b451dbdd50717fdf41e76f6f1a4ca8e0271c5faff`  
		Last Modified: Sat, 10 Mar 2018 04:10:41 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57139c869d0720b976bbdc3ffc7293b7cacee3c841957e3e1c0de2baa3df0303`  
		Last Modified: Sat, 10 Mar 2018 04:10:44 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
