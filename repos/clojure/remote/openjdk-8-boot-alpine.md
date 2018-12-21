## `clojure:openjdk-8-boot-alpine`

```console
$ docker pull clojure@sha256:64fe27a95103f36604d188f21124d90971108cc9957acc4b36cfc143b1fe4d07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:openjdk-8-boot-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:ae4dc87061b032ae286e4e87b17cca8f4736ca8eaabbc71f62b3a6bdc0858558
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115147648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6f69a752656a8107fe704527c2311a3623951d8e1546449cc46b57fa7c4de30`
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
# Fri, 21 Dec 2018 00:40:59 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 00:40:59 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 00:41:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 05:30:45 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Fri, 21 Dec 2018 05:31:04 GMT
ENV BOOT_VERSION=2.8.2
# Fri, 21 Dec 2018 05:31:04 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Fri, 21 Dec 2018 05:31:05 GMT
WORKDIR /tmp
# Fri, 21 Dec 2018 05:31:06 GMT
RUN apk add --update --no-cache bash openssl
# Fri, 21 Dec 2018 05:31:07 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Fri, 21 Dec 2018 05:31:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Fri, 21 Dec 2018 05:31:07 GMT
ENV BOOT_AS_ROOT=yes
# Fri, 21 Dec 2018 05:32:13 GMT
RUN boot
# Fri, 21 Dec 2018 05:32:13 GMT
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
	-	`sha256:f8a5c2c61767e93d1e332a4319f396f39b0dc6b2ee9e4cd2b9d0d5270c82556c`  
		Last Modified: Fri, 21 Dec 2018 00:44:52 GMT  
		Size: 70.6 MB (70610751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1049955ef7b27f66fc18022a6ac1b0c5d333cca36bafc54bcf8490e727faa7f`  
		Last Modified: Fri, 21 Dec 2018 05:33:17 GMT  
		Size: 3.0 MB (2978543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff469ecf1c18a1187bcb65b6ee42e195e7f5e518d958c35aef325e58b383ad9e`  
		Last Modified: Fri, 21 Dec 2018 05:33:16 GMT  
		Size: 6.7 KB (6658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6daccfae2bfd14b9f394112756d85bb637d60614ce282a2630b2ae247e94e6ae`  
		Last Modified: Fri, 21 Dec 2018 05:33:19 GMT  
		Size: 39.3 MB (39344434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
