## `clojure:boot-2.7.2-alpine`

```console
$ docker pull clojure@sha256:e7caf10ca580582db0b1152e9a3a9988c9fbe498dba9742b4d3c4915cc0b6a02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:boot-2.7.2-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:b9f139c4cbf760b9475cf18d518f91c88f6d0a3bf72e571ff48e4e47cf823b2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.8 MB (108760516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c31c940970afc2b10190d2c0fd471387b2981a8bdeeb856f855198c8b35ba43`
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
# Wed, 06 Jun 2018 01:57:39 GMT
ENV JAVA_VERSION=8u151
# Wed, 06 Jun 2018 01:57:40 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 06 Jun 2018 01:57:45 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 06 Jun 2018 20:56:12 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Wed, 06 Jun 2018 20:59:30 GMT
ENV BOOT_VERSION=2.7.2
# Wed, 06 Jun 2018 20:59:31 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Wed, 06 Jun 2018 20:59:31 GMT
WORKDIR /tmp
# Wed, 06 Jun 2018 20:59:33 GMT
RUN apk add --update bash openssl && rm -rf /var/cache/apk/*
# Wed, 06 Jun 2018 20:59:35 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Wed, 06 Jun 2018 20:59:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Wed, 06 Jun 2018 20:59:35 GMT
ENV BOOT_AS_ROOT=yes
# Wed, 06 Jun 2018 21:01:33 GMT
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
	-	`sha256:ae9db8d675e1fae91c193ff65ae84529aeb62d738d5bc5b09eb2fdc655edbffa`  
		Last Modified: Wed, 06 Jun 2018 02:19:31 GMT  
		Size: 70.2 MB (70227658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00efd98a0af089dc5398687ad0632596a7fdf847dcec6d67e92848fe2525eb3f`  
		Last Modified: Wed, 06 Jun 2018 21:04:19 GMT  
		Size: 3.0 MB (3049992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a694c18cdf6074285c710ae2b011edd89f1098c09fd701c7d1e2ef3aed66ef3e`  
		Last Modified: Wed, 06 Jun 2018 21:04:15 GMT  
		Size: 6.7 KB (6659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9609bd96190ecbb4b5dbb972b4b72127a3606b03bd4678baa16a51f7b3e17f8b`  
		Last Modified: Wed, 06 Jun 2018 21:04:23 GMT  
		Size: 33.4 MB (33410429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
