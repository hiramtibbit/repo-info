## `clojure:boot-2.8.2-alpine`

```console
$ docker pull clojure@sha256:195c7d2115270c1b0cb7e70e223878299a4392d3fc3ef1f4903a1e2d07c04e3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:boot-2.8.2-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:f972ebaa349c7006994bae6b138f0b2bdcc86989dcb89372d6f550e6cd9d269c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115187881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac984e025f1b8cbe2ee22be78dff743c3e11875d3047ae647eadec0be6368ae3`
-	Default Command: `["boot","repl"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:40:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 00:40:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 00:40:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 21 Dec 2018 00:40:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 00:26:01 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 00:26:01 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 11 Jan 2019 00:26:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 11 Jan 2019 01:49:05 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Fri, 11 Jan 2019 01:49:24 GMT
ENV BOOT_VERSION=2.8.2
# Fri, 11 Jan 2019 01:49:24 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Fri, 11 Jan 2019 01:49:25 GMT
WORKDIR /tmp
# Fri, 11 Jan 2019 01:49:26 GMT
RUN apk add --update --no-cache bash openssl
# Fri, 11 Jan 2019 01:49:27 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Fri, 11 Jan 2019 01:49:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Fri, 11 Jan 2019 01:49:27 GMT
ENV BOOT_AS_ROOT=yes
# Fri, 11 Jan 2019 01:50:55 GMT
RUN boot
# Fri, 11 Jan 2019 01:50:55 GMT
CMD ["boot" "repl"]
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
	-	`sha256:88b05767cad1d214d47942193ae9397b177ebf5866fa7997ed3b59e9f4c52a38`  
		Last Modified: Fri, 11 Jan 2019 00:29:57 GMT  
		Size: 70.7 MB (70650933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18d1cb6c91dee8571eea5eb3b76d4f612b03e24790fb666663988e497e635b6`  
		Last Modified: Fri, 11 Jan 2019 01:51:55 GMT  
		Size: 3.0 MB (2978544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5183ce9af91d5d29d6e0a0d9816c59f4c2513fca98278d6a77163db1681268fa`  
		Last Modified: Fri, 11 Jan 2019 01:51:55 GMT  
		Size: 6.7 KB (6663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27cb23f84c2c076f13196fe9fb0dac79c69c850c8ddebed08930a5e402f064d1`  
		Last Modified: Fri, 11 Jan 2019 01:51:58 GMT  
		Size: 39.3 MB (39344479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
