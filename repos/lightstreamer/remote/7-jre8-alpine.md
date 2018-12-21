## `lightstreamer:7-jre8-alpine`

```console
$ docker pull lightstreamer@sha256:a7f6ea8c75ad29f81d2625547fcc6f739e22021c36a1feab2cd36cd672a782e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7-jre8-alpine` - linux; amd64

```console
$ docker pull lightstreamer@sha256:22c3cdda75f611d08a62c3e2911b99fe4734f5be6c2dbe8e001137bd40613fa2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.9 MB (96925129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:371f8ebfd2e9ac28890c9c164525cf38fad50e6e22cb1c4ab79dc455f4d6b0d1`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:40:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 00:40:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 00:41:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 00:41:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 00:41:18 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 00:41:19 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 00:41:23 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 05:29:33 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Fri, 21 Dec 2018 05:29:34 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Fri, 21 Dec 2018 05:29:34 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Fri, 21 Dec 2018 05:29:34 GMT
WORKDIR /lightstreamer
# Fri, 21 Dec 2018 05:29:50 GMT
RUN set -ex;         apk add --no-cache --virtual .deps                    gnupg                    tar                    curl         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2         &&  set -ex;                curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}                && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc                && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz                && tar -xvf Lightstreamer.tar.gz --strip-components=1                && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh                && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                          -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                          -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml                && apk del .deps                && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Fri, 21 Dec 2018 05:29:51 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 05:29:51 GMT
WORKDIR /lightstreamer/bin/unix-like
# Fri, 21 Dec 2018 05:29:51 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35920a071f912ae4c16897610e8e2d514efcfd0e14ec76c4c73bf9aa7c2c55ea`  
		Last Modified: Fri, 21 Dec 2018 00:44:42 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e4d568ad31b18826f29fce2a8e1643f8237b9adfbbbe1bd8073c5edfcced3b`  
		Last Modified: Fri, 21 Dec 2018 00:45:09 GMT  
		Size: 54.8 MB (54829758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a30a0403ad40ac50eeaaf05607316248b9de77337e388375f2f68484f2bdf59`  
		Last Modified: Fri, 21 Dec 2018 05:30:15 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ea8e800990b9fbe3ee7ac13af83d98d14196469392118b0682f40a997fbe29`  
		Last Modified: Fri, 21 Dec 2018 05:30:20 GMT  
		Size: 39.9 MB (39888007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7-jre8-alpine` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:a21009d539e98ace1a642e04cca1d7dd40510d538096807f0108b6249d2c1d14
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.3 MB (95334106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43fc0fe9605607eef026f56dd184e97b564453ef9e00838a8063af856e3d3cb1`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:05:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 13:05:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 13:06:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 13:06:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 13:06:37 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 13:06:38 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 13:06:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 16:34:20 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Fri, 21 Dec 2018 16:34:21 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Fri, 21 Dec 2018 16:34:22 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Fri, 21 Dec 2018 16:34:23 GMT
WORKDIR /lightstreamer
# Fri, 21 Dec 2018 16:34:45 GMT
RUN set -ex;         apk add --no-cache --virtual .deps                    gnupg                    tar                    curl         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2         &&  set -ex;                curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}                && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc                && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz                && tar -xvf Lightstreamer.tar.gz --strip-components=1                && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh                && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                          -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                          -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml                && apk del .deps                && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Fri, 21 Dec 2018 16:34:46 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 16:34:47 GMT
WORKDIR /lightstreamer/bin/unix-like
# Fri, 21 Dec 2018 16:34:48 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d8dfc4d0852b7a74d115eecd508b6a48a39664fe4129497ea3871524e33ce9`  
		Last Modified: Fri, 21 Dec 2018 13:09:35 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca65efb0684ca6d94b21ffe318a864419f84e648f059afac5439c1ca971f3ef`  
		Last Modified: Fri, 21 Dec 2018 13:10:23 GMT  
		Size: 53.3 MB (53345808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9198b4c47f145eb5939dc8118ff799df84f59906d25c0523aed3dbfb6e2a4b96`  
		Last Modified: Fri, 21 Dec 2018 16:35:26 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5419a7509499198b2a76664b7141b65467223e06687f7eb28b23fe12d118695f`  
		Last Modified: Fri, 21 Dec 2018 16:35:35 GMT  
		Size: 39.9 MB (39887944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
