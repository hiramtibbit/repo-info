## `jetty:jre8-alpine`

```console
$ docker pull jetty@sha256:e445990e8ac6d6dd4f8fad35ca67fad7268aa074d22b1e22f016456c767549b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `jetty:jre8-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:00fdfc8290789d909661f453ebda064fa72227b8f7ad9b273cb8174a05314021
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66267601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea4b45466e98807b78d92fcfe31d01796cecf012f4af2921603384d7e1f55ea0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 02:13:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:29:04 GMT
ENV JAVA_VERSION=8u201
# Wed, 27 Mar 2019 23:29:05 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Wed, 27 Mar 2019 23:29:09 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Mar 2019 23:29:10 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 00:08:47 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 28 Mar 2019 00:08:47 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 28 Mar 2019 00:08:48 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 00:08:48 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 28 Mar 2019 00:08:49 GMT
WORKDIR /usr/local/jetty
# Thu, 28 Mar 2019 00:08:49 GMT
ENV JETTY_VERSION=9.4.12.v20180830
# Thu, 28 Mar 2019 00:08:49 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.12.v20180830/jetty-home-9.4.12.v20180830.tar.gz
# Thu, 28 Mar 2019 00:08:49 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 28 Mar 2019 00:08:52 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 		&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 		&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 28 Mar 2019 00:08:52 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 28 Mar 2019 00:08:53 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 28 Mar 2019 00:08:53 GMT
WORKDIR /var/lib/jetty
# Thu, 28 Mar 2019 00:08:55 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 28 Mar 2019 00:08:55 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 28 Mar 2019 00:08:56 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 28 Mar 2019 00:08:56 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Thu, 28 Mar 2019 00:08:56 GMT
USER jetty
# Thu, 28 Mar 2019 00:08:56 GMT
EXPOSE 8080
# Thu, 28 Mar 2019 00:08:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 28 Mar 2019 00:08:57 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf419f3f41ff266b1903731d3ff085a6855171b7fd823a93d15cd052dc73a0ea`  
		Last Modified: Wed, 27 Mar 2019 23:47:37 GMT  
		Size: 52.7 MB (52739115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88430b15d43fccea92a728c80080963cf49cb06c31f196900ecbe56e0a85c007`  
		Last Modified: Wed, 27 Mar 2019 23:47:30 GMT  
		Size: 2.2 MB (2221565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c47db1b69200448815b35e7d9dc122c956b9b35204a9eb6fd38ed48cd5eeb16e`  
		Last Modified: Thu, 28 Mar 2019 00:10:15 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3309c0c5577d0e1f7254186c859c5a4251e4f5509c77351049fa4e5fc1f16f24`  
		Last Modified: Thu, 28 Mar 2019 00:10:15 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:564a08a0116990c3a825c9f6aaaa898b803c36fecb82aed5056760bf682911e5`  
		Last Modified: Thu, 28 Mar 2019 00:10:16 GMT  
		Size: 8.5 MB (8547107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b117a6e2968e20c0528877451d5b4caa8374aace78950ea13938b3219f2139f6`  
		Last Modified: Thu, 28 Mar 2019 00:10:14 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9a03df0efe32d8c69ba6b336286d8ca537aaf30a1115fa428697b81bd1be7d`  
		Last Modified: Thu, 28 Mar 2019 00:10:14 GMT  
		Size: 2.0 KB (1959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e21f82a48356e3059b0c3ab0895f55ac03a4f9bc16c41610bd5a0999ca677ae7`  
		Last Modified: Thu, 28 Mar 2019 00:10:14 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755d92b0fc5552e0b48354f893087e25de29a15eecfe7168d98c365176189c58`  
		Last Modified: Thu, 28 Mar 2019 00:10:13 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre8-alpine` - linux; arm variant v6

```console
$ docker pull jetty@sha256:b3604d31e683dbab9b32f01d4f968cf4dcdfd36927c24f65b5238490bec921e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63409785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a43d89ccb360de11b710e8bb7ed89b258847b5e6bd7fd5cb61d2915f917b38c8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:53 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:39:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:40:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:40:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 04:40:08 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 04:40:08 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 04:40:13 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 06:53:57 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Fri, 08 Mar 2019 06:53:57 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 08 Mar 2019 06:53:57 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 06:53:58 GMT
RUN mkdir -p "$JETTY_HOME"
# Fri, 08 Mar 2019 06:53:59 GMT
WORKDIR /usr/local/jetty
# Fri, 08 Mar 2019 06:53:59 GMT
ENV JETTY_VERSION=9.4.12.v20180830
# Fri, 08 Mar 2019 06:53:59 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.12.v20180830/jetty-home-9.4.12.v20180830.tar.gz
# Fri, 08 Mar 2019 06:54:00 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 08 Mar 2019 06:54:04 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 		&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 		&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 08 Mar 2019 06:54:04 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 08 Mar 2019 06:54:05 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 08 Mar 2019 06:54:06 GMT
WORKDIR /var/lib/jetty
# Fri, 08 Mar 2019 06:54:10 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 08 Mar 2019 06:54:10 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 08 Mar 2019 06:54:11 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 08 Mar 2019 06:54:12 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 08 Mar 2019 06:54:12 GMT
USER jetty
# Fri, 08 Mar 2019 06:54:12 GMT
EXPOSE 8080
# Fri, 08 Mar 2019 06:54:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 06:54:13 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8e265594b5112bd474ac92c9c83497fc535a27624c2798c8817a01b28328c`  
		Last Modified: Fri, 08 Mar 2019 04:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f437760c09bd73230093ad3dd719c2d7b0e4b013869d13c73129fcb1e70e1e8a`  
		Last Modified: Fri, 08 Mar 2019 04:41:46 GMT  
		Size: 52.3 MB (52316587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf93258c63d60f68502a23028990a8640d60efcdb212196363f6ff7b4411a3ed`  
		Last Modified: Fri, 08 Mar 2019 06:54:47 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fdddc274cbd4b85a3656630510cc32e9b5b5d431a7165437b9beb99ef48941`  
		Last Modified: Fri, 08 Mar 2019 06:54:47 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c5f28e47a4441d4c1020f10872fb6a65ec68e6533cd00258aa679cec32ff2f`  
		Last Modified: Fri, 08 Mar 2019 06:54:47 GMT  
		Size: 8.5 MB (8547273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee0c68935b59ac0dfdd847d48fa7cc7014675cb1db93760afb2b1eeb6f75bd8`  
		Last Modified: Fri, 08 Mar 2019 06:54:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf7e48b90af263a27032bcbf96aef88399ae5f31c6c8ecec09d91e4ef2cf915`  
		Last Modified: Fri, 08 Mar 2019 06:54:45 GMT  
		Size: 2.0 KB (2028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adbd856115f6a2cf18ef4e219b02ba5a82c400b8e9a48dbc618dfb05d62ca765`  
		Last Modified: Fri, 08 Mar 2019 06:54:45 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29376c78c17a800e46a2122300b1b0850ec12c42b95a7f263386822cc4d56382`  
		Last Modified: Fri, 08 Mar 2019 06:54:45 GMT  
		Size: 1.4 KB (1385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre8-alpine` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:d5a41fe9fa35591a9be39cf0468c348ed1084b266169799ea1f5e8ab8fb70845
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66103183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16d6cca3395c39f62d50ffb08f6a87b0217f2d395199b1c657cadd830e072a0f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 09:49:55 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 09:49:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 09:50:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 09:50:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 09:50:49 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 09:50:50 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 09:51:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 12:57:45 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Fri, 08 Mar 2019 12:57:46 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 08 Mar 2019 12:57:47 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 12:57:48 GMT
RUN mkdir -p "$JETTY_HOME"
# Fri, 08 Mar 2019 12:57:49 GMT
WORKDIR /usr/local/jetty
# Fri, 08 Mar 2019 12:57:50 GMT
ENV JETTY_VERSION=9.4.12.v20180830
# Fri, 08 Mar 2019 12:57:50 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.12.v20180830/jetty-home-9.4.12.v20180830.tar.gz
# Fri, 08 Mar 2019 12:57:51 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 08 Mar 2019 12:57:57 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 		&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 		&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 08 Mar 2019 12:57:58 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 08 Mar 2019 12:57:59 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 08 Mar 2019 12:58:00 GMT
WORKDIR /var/lib/jetty
# Fri, 08 Mar 2019 12:58:03 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 08 Mar 2019 12:58:04 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 08 Mar 2019 12:58:06 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 08 Mar 2019 12:58:06 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 08 Mar 2019 12:58:07 GMT
USER jetty
# Fri, 08 Mar 2019 12:58:08 GMT
EXPOSE 8080
# Fri, 08 Mar 2019 12:58:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 12:58:09 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dc35c571266c194f6068f0540d063943a44ec79726311c42950083e6ab2460`  
		Last Modified: Fri, 08 Mar 2019 09:55:35 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0e92b48a3a7e439bc2c9a12c51191b28bfcf8bf3cd4bed485084963934e9f2`  
		Last Modified: Fri, 08 Mar 2019 09:57:49 GMT  
		Size: 54.9 MB (54863172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97af7c157aa2228e0e4c8c14bc3774064903c6459cd119f2395d2828de67940c`  
		Last Modified: Fri, 08 Mar 2019 12:59:24 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc36fa9ac22a9378f80d9900daf53a53bd1c2264b98f4f44cdff9c92412a74c2`  
		Last Modified: Fri, 08 Mar 2019 12:59:24 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b815cdbd1b8a8c6807373e876ce328daeca5dda48015c5e585f5ab0b8a2727f3`  
		Last Modified: Fri, 08 Mar 2019 12:59:24 GMT  
		Size: 8.5 MB (8546986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d496f38ed8838630996b8442f823711b2f4945b0d26762e055c1a0f738408845`  
		Last Modified: Fri, 08 Mar 2019 12:59:22 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f899d27f10307b571a85455fe9c08893e0e3ba3b086806b98280b40b349dbb5b`  
		Last Modified: Fri, 08 Mar 2019 12:59:22 GMT  
		Size: 2.0 KB (1956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0194ef99eb6fc1d0585c292e03a2432aaf6c292f83bccdf375bf431087339f18`  
		Last Modified: Fri, 08 Mar 2019 12:59:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3000ab45e7136b738231c4428795391358c8a30166925b0446dadec9fabbaac6`  
		Last Modified: Fri, 08 Mar 2019 12:59:22 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre8-alpine` - linux; 386

```console
$ docker pull jetty@sha256:8b3ee5719606c5e622d4fe5f83f5882956e7f8a3459a4215abdf10908201ff51
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.9 MB (66852763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb22f7c93fd66de86bfb3a392daa2efe8bbfca9b135998744257e523e3ab2d47`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:52:02 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 06:52:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 06:52:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 06:52:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 06:52:17 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 06:52:18 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 06:52:21 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 11:16:42 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Fri, 08 Mar 2019 11:16:42 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 08 Mar 2019 11:16:42 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 11:16:43 GMT
RUN mkdir -p "$JETTY_HOME"
# Fri, 08 Mar 2019 11:16:43 GMT
WORKDIR /usr/local/jetty
# Fri, 08 Mar 2019 11:16:43 GMT
ENV JETTY_VERSION=9.4.12.v20180830
# Fri, 08 Mar 2019 11:16:43 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.12.v20180830/jetty-home-9.4.12.v20180830.tar.gz
# Fri, 08 Mar 2019 11:16:44 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 08 Mar 2019 11:16:47 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 		&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 		&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 08 Mar 2019 11:16:47 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 08 Mar 2019 11:16:48 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 08 Mar 2019 11:16:48 GMT
WORKDIR /var/lib/jetty
# Fri, 08 Mar 2019 11:16:49 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 08 Mar 2019 11:16:49 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 08 Mar 2019 11:16:50 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 08 Mar 2019 11:16:50 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 08 Mar 2019 11:16:51 GMT
USER jetty
# Fri, 08 Mar 2019 11:16:51 GMT
EXPOSE 8080
# Fri, 08 Mar 2019 11:16:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 11:16:51 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe95f117badec568caa0381ef010c1d9df00d3c0870ebab8187a0017d68c5f8b`  
		Last Modified: Fri, 08 Mar 2019 06:53:37 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9811101afd8e21f7ae67c125e408295c1d66bc1da657ad1c371128732d1d8bc`  
		Last Modified: Fri, 08 Mar 2019 06:54:15 GMT  
		Size: 55.6 MB (55551316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ae420b39a26164f541473565ab4e9d41b887af34775bd2098c0fec508104f3`  
		Last Modified: Fri, 08 Mar 2019 11:17:27 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7613255b1afbf8334e9b616a0a83078e70321966410c3d962b721bb9670a8b21`  
		Last Modified: Fri, 08 Mar 2019 11:17:27 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ff6461c60b1b6fbb724d3a6769094462c42e6fa028f48405c2fdb2ac96e58e`  
		Last Modified: Fri, 08 Mar 2019 11:17:27 GMT  
		Size: 8.5 MB (8547005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77d5f5e4dcc7c8ba8ae5bdae34b49a52fcfc4c6e76de2183d6d8803fe7aee4c`  
		Last Modified: Fri, 08 Mar 2019 11:17:26 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ff0dc1ea48358378ec226eaf72d8b113c13d6e6a4abc7a579bd87596e9074cb`  
		Last Modified: Fri, 08 Mar 2019 11:17:26 GMT  
		Size: 2.0 KB (1960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91626d9ea4da333e1c4b72f31f5ca41ff1d7910caf23079d336a15c1ed4368e2`  
		Last Modified: Fri, 08 Mar 2019 11:17:26 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a34de79bcb6e5e885f0f1c50781aab4fa23914318b81801ee3b104971328a2a`  
		Last Modified: Fri, 08 Mar 2019 11:17:26 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre8-alpine` - linux; ppc64le

```console
$ docker pull jetty@sha256:8838e2238ca9f21f9ff05eb81e0aff50717ab0818e1d8a4fc413b0676191baff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v1+json`
-	Total Size: **66.8 MB (66834851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `1ed16aba2e9b93258171cdfc4f352aad8ce50085d78624e5fdb4b437ab358317`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:13:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:13:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:14:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:14:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 04:14:06 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 04:14:07 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 04:14:14 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 07:53:49 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Fri, 08 Mar 2019 07:53:51 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 08 Mar 2019 07:53:53 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 07:53:59 GMT
RUN mkdir -p "$JETTY_HOME"
# Fri, 08 Mar 2019 07:54:01 GMT
WORKDIR /usr/local/jetty
# Fri, 08 Mar 2019 07:54:04 GMT
ENV JETTY_VERSION=9.4.12.v20180830
# Fri, 08 Mar 2019 07:54:07 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.12.v20180830/jetty-home-9.4.12.v20180830.tar.gz
# Fri, 08 Mar 2019 07:54:10 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 08 Mar 2019 07:54:16 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 		&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 		&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 08 Mar 2019 07:54:20 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 08 Mar 2019 07:54:25 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 08 Mar 2019 07:54:27 GMT
WORKDIR /var/lib/jetty
# Fri, 08 Mar 2019 07:54:34 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 08 Mar 2019 07:54:36 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 08 Mar 2019 07:54:39 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 08 Mar 2019 07:54:41 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 08 Mar 2019 07:54:42 GMT
USER jetty
# Fri, 08 Mar 2019 07:54:44 GMT
EXPOSE 8080
# Fri, 08 Mar 2019 07:54:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 07:54:48 GMT
RUN ["\/bin\/sh","-c","#(nop) ","CMD [\"java\" \"-jar\" \"\/usr\/local\/jetty\/start.jar\"]"]
```

-	Layers:
	-	`sha256:a3ed95caeb02ffe68cdd9fd84406680ae93d633cb16422d00e8a7c22955b46d4`  
		Last Modified: Sat, 14 Nov 2015 09:09:44 GMT  
		Size: 32.0 B  
		MIME: application/octet-stream
	-	`sha256:4407e4ebda684d4fd7244f878bf21be586dc0cf259c8cbc9b24388ea133a558a`  
		Last Modified: Fri, 08 Mar 2019 07:56:59 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/octet-stream
	-	`sha256:f73c560b6dc5627f138fffeb17e6699e93282cc45d33a2493b8a36396a825f84`  
		Last Modified: Fri, 08 Mar 2019 07:56:58 GMT  
		Size: 158.0 B  
		MIME: application/octet-stream
	-	`sha256:12c554f8be4d92b753c6b837c8bae6123764cf878a36cbf674de2b3729aa54c3`  
		Last Modified: Fri, 08 Mar 2019 07:56:58 GMT  
		Size: 2.0 KB (2028 bytes)  
		MIME: application/octet-stream
	-	`sha256:d2965e7b5ea7670ec6002c624c2ac6b7e1ad2e0c04cf86d2c2fd20cb2be9d952`  
		Last Modified: Fri, 08 Mar 2019 07:56:58 GMT  
		Size: 170.0 B  
		MIME: application/octet-stream
	-	`sha256:d21518768840bdef1ee79700e2dd8a5700d40ae42936114f205aeaa639ded4e7`  
		Last Modified: Fri, 08 Mar 2019 07:56:59 GMT  
		Size: 8.5 MB (8547264 bytes)  
		MIME: application/octet-stream
	-	`sha256:609a8c152b05b843f2ce1f4acc13fb1d98f9620f67e7adfe37419ca027cbf5d3`  
		Last Modified: Fri, 08 Mar 2019 07:57:02 GMT  
		Size: 171.0 B  
		MIME: application/octet-stream
	-	`sha256:8a5e325729ce0d284ffd754227288f061fb4c2637bf899c51bd8dd5eff35f828`  
		Last Modified: Fri, 08 Mar 2019 07:57:02 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/octet-stream
	-	`sha256:52f9e479942ab40414f57c40400e46690c9e3fa041ee89b911ecc82d3df13ed6`  
		Last Modified: Fri, 08 Mar 2019 04:17:58 GMT  
		Size: 55.5 MB (55503663 bytes)  
		MIME: application/octet-stream
	-	`sha256:6b37b96605d1a56e30ef6132daa2faa08064df25ac1042a5b799c96028716bf7`  
		Last Modified: Fri, 08 Mar 2019 04:17:12 GMT  
		Size: 240.0 B  
		MIME: application/octet-stream
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/octet-stream

### `jetty:jre8-alpine` - linux; s390x

```console
$ docker pull jetty@sha256:ee2e7cbc805b7e13c07e32807afaa8dc7400c9d276f2766a4e457b05408115be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.7 MB (64681259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee985d944cf2af9ade877b3e0f81e255fdcc65e277b1e0999780bc9bdddf93db`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 13:20:18 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:20:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:20:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 13:20:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 13:20:56 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 13:20:57 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 13:20:59 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 06 Feb 2019 18:13:30 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 06 Feb 2019 18:13:30 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 06 Feb 2019 18:13:31 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 18:13:31 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 06 Feb 2019 18:13:31 GMT
WORKDIR /usr/local/jetty
# Wed, 06 Feb 2019 18:13:32 GMT
ENV JETTY_VERSION=9.4.12.v20180830
# Wed, 06 Feb 2019 18:13:32 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.12.v20180830/jetty-home-9.4.12.v20180830.tar.gz
# Wed, 06 Feb 2019 18:13:32 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 06 Feb 2019 23:54:59 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 		&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 		&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Wed, 06 Feb 2019 23:54:59 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 06 Feb 2019 23:55:00 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 06 Feb 2019 23:55:00 GMT
WORKDIR /var/lib/jetty
# Wed, 06 Feb 2019 23:55:02 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 06 Feb 2019 23:55:03 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 06 Feb 2019 23:55:03 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 06 Feb 2019 23:55:04 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Wed, 06 Feb 2019 23:55:04 GMT
USER jetty
# Wed, 06 Feb 2019 23:55:04 GMT
EXPOSE 8080
# Wed, 06 Feb 2019 23:55:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Feb 2019 23:55:04 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d1a7308c276b4bfe36b12f01b7c57f79adfc7eb55e0263fd725e1308d13412`  
		Last Modified: Wed, 06 Feb 2019 13:25:05 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af546122d628f916df18308eef518892c9e8d4560ed0bb582389244f015942d6`  
		Last Modified: Wed, 06 Feb 2019 13:25:42 GMT  
		Size: 53.6 MB (53587740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562572e23874ffa97cf8aef33ae433c32336b2989e3ae42168690300e7bf085d`  
		Last Modified: Wed, 06 Feb 2019 18:14:40 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fd75ff6656a72fec4ba438749a298495d61d2143d091caa357d19749d3b11c6`  
		Last Modified: Wed, 06 Feb 2019 18:14:40 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce8e9ed1c2122c4fbd16d9979ad34def3ec7382a21d4ae0e839ec9b1a512a836`  
		Last Modified: Wed, 06 Feb 2019 23:56:38 GMT  
		Size: 8.5 MB (8546908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a115bd364b5d0248020375b068e5f683fb05ccdc81324e76da5d9a983d7f66`  
		Last Modified: Wed, 06 Feb 2019 23:56:37 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff30fce9c17b955039f6e99864e3c94dc65d24fdcca4025b246e8b43864ef06`  
		Last Modified: Wed, 06 Feb 2019 23:56:37 GMT  
		Size: 2.0 KB (1959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a426d2b871a7065fafa2089faea04c4070a7f1c14ff0d448d060fff58ba4aaa`  
		Last Modified: Wed, 06 Feb 2019 23:56:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ace7637f175b4f7bb2ca9e507b942d94c30e9822621a174554c840d68d5e4b`  
		Last Modified: Wed, 06 Feb 2019 23:56:37 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
