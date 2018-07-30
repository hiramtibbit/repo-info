## `clojure:boot-2.8.1-alpine`

```console
$ docker pull clojure@sha256:04a372365f94e7595c4a447fdedfc597a9f4baf2ed795e3feabe5d0b228522ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:boot-2.8.1-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:a627ef47ebb3202b32f3821508c0bf0ffe989ddfcb05dc2b5ac7a7308f43dc79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115573719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42d55ee5621cb169295dd17198bf0af2e1effd21c2a3956d9fe3de1683b8d08c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:34:53 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 00:34:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 00:34:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 11 Jul 2018 00:34:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 00:34:54 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 00:34:55 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 11 Jul 2018 00:35:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 11 Jul 2018 01:16:21 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Mon, 30 Jul 2018 16:24:55 GMT
ENV BOOT_VERSION=2.8.1
# Mon, 30 Jul 2018 16:24:56 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Mon, 30 Jul 2018 16:24:56 GMT
WORKDIR /tmp
# Mon, 30 Jul 2018 16:24:59 GMT
RUN apk add --update bash openssl && rm -rf /var/cache/apk/*
# Mon, 30 Jul 2018 16:25:00 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Mon, 30 Jul 2018 16:25:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Mon, 30 Jul 2018 16:25:01 GMT
ENV BOOT_AS_ROOT=yes
# Mon, 30 Jul 2018 16:26:22 GMT
RUN boot
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311ad0da45338842480bf25c6e6b7bb133b7b8cf709c3470db171ec370da5539`  
		Last Modified: Wed, 11 Jul 2018 00:37:45 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df312c74ce16f20eeb87b5640db9b1579a53534bd3e9f3de1e916fc62744bcf4`  
		Last Modified: Wed, 11 Jul 2018 00:38:02 GMT  
		Size: 70.6 MB (70581383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f2b09bef272dd7f977d6ff863ddb471334edfed7041cdc47eaa531dd11dd47`  
		Last Modified: Mon, 30 Jul 2018 16:28:45 GMT  
		Size: 3.0 MB (2975263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8902ade9d3bb7208ed09c2648c9ddd7a2e419c577186e375cc5dbc7521c30d`  
		Last Modified: Mon, 30 Jul 2018 16:28:44 GMT  
		Size: 6.7 KB (6664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd59994afc4819256488eda45090793cb551c1bd15e0c21d8cb4369402f0a3e`  
		Last Modified: Mon, 30 Jul 2018 16:28:49 GMT  
		Size: 39.8 MB (39803628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
