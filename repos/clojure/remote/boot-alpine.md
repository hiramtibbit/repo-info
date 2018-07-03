## `clojure:boot-alpine`

```console
$ docker pull clojure@sha256:b59f8aa430acd1599d2ece1dd55b1737f8550bcc3e3b2d45407d409af5cf93e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:boot-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:c13ed52517b08511216aee647bbed19b82c3a1af6e6dcd46840ea2ab0faa1a1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.9 MB (108851034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f82ffb2094d74bf1b562ce39c81ec345ef952515fde3fced2d34d71963c14cf`
-	Default Command: `["\/bin\/sh"]`

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
# Tue, 03 Jul 2018 00:01:12 GMT
ENV JAVA_VERSION=8u171
# Tue, 03 Jul 2018 00:01:13 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Tue, 03 Jul 2018 00:01:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 03 Jul 2018 02:06:05 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Tue, 03 Jul 2018 02:09:21 GMT
ENV BOOT_VERSION=2.7.2
# Tue, 03 Jul 2018 02:09:21 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 03 Jul 2018 02:09:21 GMT
WORKDIR /tmp
# Tue, 03 Jul 2018 02:09:23 GMT
RUN apk add --update bash openssl && rm -rf /var/cache/apk/*
# Tue, 03 Jul 2018 02:09:25 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 03 Jul 2018 02:09:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Tue, 03 Jul 2018 02:09:25 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 03 Jul 2018 02:10:54 GMT
RUN boot
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
	-	`sha256:651ae5b0ba186f2dc5fdfac52825e806479a2860a8a7c030c1703697d84e8714`  
		Last Modified: Tue, 03 Jul 2018 00:38:40 GMT  
		Size: 70.3 MB (70318325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5397d2c4f567751d7fd6c3854284fd2fd4df295229714d0fa2b3b93cb203f906`  
		Last Modified: Tue, 03 Jul 2018 02:13:50 GMT  
		Size: 3.0 MB (3049977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a688f0397e368c3fe0480a07480816b9dcb29aee9af85c87cfac976fb18937`  
		Last Modified: Tue, 03 Jul 2018 02:13:51 GMT  
		Size: 6.7 KB (6659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0bed53ed0acc0a787cc83ac80ccf3954e1aff7363c2657cbaa9478c36e9e95`  
		Last Modified: Tue, 03 Jul 2018 02:13:52 GMT  
		Size: 33.4 MB (33410298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
