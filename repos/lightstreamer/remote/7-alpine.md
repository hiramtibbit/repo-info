## `lightstreamer:7-alpine`

```console
$ docker pull lightstreamer@sha256:9c9e5161372f59e2944843020ad8a1375969b1ca8fae2bda4aad8cce504ae8b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7-alpine` - linux; amd64

```console
$ docker pull lightstreamer@sha256:e4468722517f9c0fbc505f6cfe5e9fc7dd1a3cd679b0cfbfc03bbcc8e0b7a338
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97612045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:874453bb700c8d3bbb74454de820947cbec36d17062866905b3ccc4929997cf1`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 01:52:32 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 01:52:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 01:52:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Apr 2019 01:52:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 May 2019 00:21:43 GMT
ENV JAVA_VERSION=8u212
# Tue, 07 May 2019 00:21:44 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Tue, 07 May 2019 00:21:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 May 2019 00:54:31 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Tue, 07 May 2019 00:54:31 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Tue, 07 May 2019 00:54:31 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Tue, 07 May 2019 00:54:31 GMT
WORKDIR /lightstreamer
# Tue, 07 May 2019 00:54:40 GMT
RUN set -ex;         apk add --no-cache --virtual .deps                    gnupg                    tar                    curl         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2         &&  set -ex;                curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}                && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc                && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz                && tar -xvf Lightstreamer.tar.gz --strip-components=1                && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh                && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                          -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                          -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml                && apk del .deps                && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Tue, 07 May 2019 00:54:40 GMT
EXPOSE 8080
# Tue, 07 May 2019 00:54:41 GMT
WORKDIR /lightstreamer/bin/unix-like
# Tue, 07 May 2019 00:54:41 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e12771959adeb3408e625492accf845401aa66bcca638859a6b34176d753d62`  
		Last Modified: Wed, 10 Apr 2019 01:57:16 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:436783ae28a4d75be71f011f31b1dd0a35ffd65bdca303bfd5ab33e17b5f37f2`  
		Last Modified: Tue, 07 May 2019 00:23:31 GMT  
		Size: 54.9 MB (54935659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee69a918f0116baa7fa885791ee10a8ba54b1845b96fc3e6ac5e433a17b077aa`  
		Last Modified: Tue, 07 May 2019 00:54:59 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75789351d20eea794393d9176c49cc02ba2ffcf79fd4e00d8bd6109b3f49548d`  
		Last Modified: Tue, 07 May 2019 00:55:07 GMT  
		Size: 39.9 MB (39919038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7-alpine` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:6c8b3e79ee75342d187428d24f4c76248df176129fac8060edc6352550b2fafd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97537564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a390198912c9f5bab4df9c9502e680f229cba1b3f5a5188c14e41e4edb9f86`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 13:49:37 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 13:49:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 13:50:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Apr 2019 13:50:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 13:50:33 GMT
ENV JAVA_VERSION=8u201
# Wed, 10 Apr 2019 13:50:35 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 10 Apr 2019 13:50:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Apr 2019 15:56:39 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 10 Apr 2019 15:56:40 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Wed, 10 Apr 2019 15:56:41 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Wed, 10 Apr 2019 15:56:42 GMT
WORKDIR /lightstreamer
# Wed, 10 Apr 2019 15:56:55 GMT
RUN set -ex;         apk add --no-cache --virtual .deps                    gnupg                    tar                    curl         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2         &&  set -ex;                curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}                && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc                && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz                && tar -xvf Lightstreamer.tar.gz --strip-components=1                && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh                && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                          -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                          -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml                && apk del .deps                && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Wed, 10 Apr 2019 15:56:56 GMT
EXPOSE 8080
# Wed, 10 Apr 2019 15:56:57 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 10 Apr 2019 15:56:57 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262af2c613fda9d21034fdf7bbdb56296fdd19b65bdbb02d6795e631a674fa42`  
		Last Modified: Wed, 10 Apr 2019 13:54:59 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78228c716bb6c3a10bb270a49d539dd97f566d1096b0be9c36640eb8c5a1436`  
		Last Modified: Wed, 10 Apr 2019 13:56:24 GMT  
		Size: 54.9 MB (54929226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c032055f34bdb761d305e163000b85930a17a243542201618d469f2938000de`  
		Last Modified: Wed, 10 Apr 2019 15:57:30 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900ca412b1731c045bb6dd6d5df77cc7e189b56ce20e4cb42efd9947249c9f7f`  
		Last Modified: Wed, 10 Apr 2019 15:57:39 GMT  
		Size: 39.9 MB (39919221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
