## `clojure:boot-alpine`

```console
$ docker pull clojure@sha256:162eb5af81f0f5309dc80e792bfc7d46bfe31ca4aee9187fd2b968bbbffed86f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:boot-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:4e6e1c82ab59a7500bc13d7166fc2f6026a9cebcfde2a7f4a8c98bd554886146
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115147149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a121ee29bbb43fb2e0826fcaaeeaa3b01795a063020c11a697b59caeaf5360f7`
-	Default Command: `["boot","repl"]`

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
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_VERSION=8u181
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Wed, 24 Oct 2018 22:31:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 24 Oct 2018 23:02:00 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Thu, 20 Dec 2018 00:21:37 GMT
ENV BOOT_VERSION=2.8.2
# Thu, 20 Dec 2018 00:21:37 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Thu, 20 Dec 2018 00:21:38 GMT
WORKDIR /tmp
# Thu, 20 Dec 2018 00:21:41 GMT
RUN apk add --update --no-cache bash openssl
# Thu, 20 Dec 2018 00:21:43 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Thu, 20 Dec 2018 00:21:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Thu, 20 Dec 2018 00:21:44 GMT
ENV BOOT_AS_ROOT=yes
# Thu, 20 Dec 2018 00:22:29 GMT
RUN boot
# Thu, 20 Dec 2018 00:22:30 GMT
CMD ["boot" "repl"]
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
	-	`sha256:ef87ded15917facc562d84e802d02ded848ae802cc04194400ba4cb8798dd4f7`  
		Last Modified: Wed, 24 Oct 2018 22:43:46 GMT  
		Size: 70.6 MB (70610525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb600fb15f6f699c519b92e8ac7c25e050784f72fd4910c8250a75cd9c3818c5`  
		Last Modified: Thu, 20 Dec 2018 00:26:24 GMT  
		Size: 3.0 MB (2978541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41931b953695dda48eb44f7fbee36551b5530aadecdc5138305c4000a692487`  
		Last Modified: Thu, 20 Dec 2018 00:26:23 GMT  
		Size: 6.7 KB (6663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832bf34263c55177e4bb724a9fbdbc60fee0368c263f683e6665cedab67b2f91`  
		Last Modified: Thu, 20 Dec 2018 00:26:27 GMT  
		Size: 39.3 MB (39344251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
