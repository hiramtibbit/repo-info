## `clojure:boot-alpine`

```console
$ docker pull clojure@sha256:3d10cb0588d7d7c40d9ea337da2b8592601ee314f4707c20a67d49ca7cf32f7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:boot-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:17ec7b98c0d97fe5b072a01cf0d821629c66cd54fb6fd2faa1cde6e9502f25de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115575642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7562e189647e5aa3fd1044c8a0aa33f157cf0d44a64c3e9ba14fbe816f46027`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:06:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 12 Sep 2018 00:06:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 12 Sep 2018 00:06:55 GMT
ENV JAVA_VERSION=8u171
# Wed, 12 Sep 2018 00:06:56 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 12 Sep 2018 00:06:59 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 12 Sep 2018 03:56:19 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Wed, 12 Sep 2018 03:56:50 GMT
ENV BOOT_VERSION=2.8.1
# Wed, 12 Sep 2018 03:56:50 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Wed, 12 Sep 2018 03:56:50 GMT
WORKDIR /tmp
# Wed, 12 Sep 2018 03:56:52 GMT
RUN apk add --update --no-cache bash openssl
# Wed, 12 Sep 2018 03:56:52 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Wed, 12 Sep 2018 03:56:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Wed, 12 Sep 2018 03:56:53 GMT
ENV BOOT_AS_ROOT=yes
# Wed, 12 Sep 2018 03:58:13 GMT
RUN boot
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe815adf554b18a057fade5a6b9498765d20c055f80d8d2facfb3a9cb00b66d0`  
		Last Modified: Wed, 12 Sep 2018 00:09:10 GMT  
		Size: 70.6 MB (70581326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8066c3d22f1efcaab78e1c9c4ac5209741a41596d7f311ea4f9cd0a24af5cc`  
		Last Modified: Wed, 12 Sep 2018 04:00:05 GMT  
		Size: 3.0 MB (2976882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa68bde5e7d055b86e6b54779d15774d6d0d1c50007f274c479f4b2cbdce481`  
		Last Modified: Wed, 12 Sep 2018 04:00:04 GMT  
		Size: 6.7 KB (6661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83b94ee6507ef2f847303dbe4443ee8f9991c418115c2b6628f28eecc72286d`  
		Last Modified: Wed, 12 Sep 2018 04:00:13 GMT  
		Size: 39.8 MB (39803604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
