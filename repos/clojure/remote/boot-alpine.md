## `clojure:boot-alpine`

```console
$ docker pull clojure@sha256:24ca9d69ad25769c9e9f85ebe0f0b2535368260b7df6f4f86b7f29048359a326
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:boot-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:4aca99e2e85b681cdb0d31054bc4785f872c239820a15cdaa087c1176294c5ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.9 MB (108851057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1479eec66fb06c9165053d7a6b1c1fcac6fe2976cd32723c9af12371f26bedfb`
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
# Sat, 16 Jun 2018 07:55:51 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Sat, 16 Jun 2018 08:00:23 GMT
ENV BOOT_VERSION=2.7.2
# Sat, 16 Jun 2018 08:00:23 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Sat, 16 Jun 2018 08:00:23 GMT
WORKDIR /tmp
# Sat, 16 Jun 2018 08:00:25 GMT
RUN apk add --update bash openssl && rm -rf /var/cache/apk/*
# Sat, 16 Jun 2018 08:00:27 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Sat, 16 Jun 2018 08:00:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Sat, 16 Jun 2018 08:00:27 GMT
ENV BOOT_AS_ROOT=yes
# Sat, 16 Jun 2018 08:02:11 GMT
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
	-	`sha256:1659331fd09e1a0732eb44a2806d3d95e300d18a44353cbbdfafb8ef177d36de`  
		Last Modified: Sat, 16 Jun 2018 08:04:48 GMT  
		Size: 3.0 MB (3049955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e935b650c3785786684267430cdbed644a20c4c1d19e28b2d34b7a20931e83`  
		Last Modified: Sat, 16 Jun 2018 08:04:49 GMT  
		Size: 6.7 KB (6658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac6a9535512e1e778c401565b73c297b4c5fb1319196a0b9ab94398d455cd7a`  
		Last Modified: Sat, 16 Jun 2018 08:04:52 GMT  
		Size: 33.4 MB (33410359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
