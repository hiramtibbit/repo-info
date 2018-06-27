## `clojure:boot-alpine`

```console
$ docker pull clojure@sha256:11bb2c1473f072f135ddcbdb958b46b7e8fb38d817093c3bffd6de6b59762cf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:boot-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:76d9ecf5a6b0b14d3b4c443bce8c09317433c9e405fbd788bd13bf402c894c10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.9 MB (108851051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:719fcec98cf930b7609c5e830bbbd299f40f4c3c53aaccc83ae7f0636625bf75`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:55:39 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:57:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 06 Jun 2018 01:57:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 16 Jun 2018 07:22:40 GMT
ENV JAVA_VERSION=8u171
# Sat, 16 Jun 2018 07:22:40 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Sat, 16 Jun 2018 07:22:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Jun 2018 05:33:48 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Wed, 27 Jun 2018 05:36:57 GMT
ENV BOOT_VERSION=2.7.2
# Wed, 27 Jun 2018 05:36:57 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Wed, 27 Jun 2018 05:36:58 GMT
WORKDIR /tmp
# Wed, 27 Jun 2018 05:36:59 GMT
RUN apk add --update bash openssl && rm -rf /var/cache/apk/*
# Wed, 27 Jun 2018 05:37:01 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Wed, 27 Jun 2018 05:37:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Wed, 27 Jun 2018 05:37:01 GMT
ENV BOOT_AS_ROOT=yes
# Wed, 27 Jun 2018 05:38:48 GMT
RUN boot
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8906544047d741c82ab8e4f6b3a698cdc37170b9afe8006a7c2aee85bc78618`  
		Last Modified: Wed, 06 Jun 2018 02:15:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7120596ce621571aded381ea153b8cb4916c306331648b2e6f3d09a93c3967e4`  
		Last Modified: Sat, 16 Jun 2018 07:30:42 GMT  
		Size: 70.3 MB (70318307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f6bda9e8af79e2f293b7961f44250b49d81dc0a043de67451597e345217573`  
		Last Modified: Wed, 27 Jun 2018 05:42:44 GMT  
		Size: 3.0 MB (3049992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f593350afe950cc4b195562a6df6f4bd44151449c705e494b2be20bc4a153c4`  
		Last Modified: Wed, 27 Jun 2018 05:42:44 GMT  
		Size: 6.7 KB (6658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cdb4ef63f29b1e076899f65823ad56a53cf0a69ddf4999c1b441dbb981bc459`  
		Last Modified: Wed, 27 Jun 2018 05:42:47 GMT  
		Size: 33.4 MB (33410316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
