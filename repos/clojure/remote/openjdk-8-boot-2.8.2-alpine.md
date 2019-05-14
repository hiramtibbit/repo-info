## `clojure:openjdk-8-boot-2.8.2-alpine`

```console
$ docker pull clojure@sha256:bf461ceb0ce50eb175929b9c51a25695ee2cfac75bd228f07509d65cefb36ee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:openjdk-8-boot-2.8.2-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:df937203f7198a0995bb67caa0e6701186f18e8652d24e2510ed11e95a8de762
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114319610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fec49b36ae4b30d84bec259bcb5b8968d7ae4058f42cc14fdbcaa972da4c7ccc`
-	Default Command: `["boot","repl"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:32:11 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 01:32:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 01:32:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Sat, 11 May 2019 01:32:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 01:32:12 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 01:32:13 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 01:32:17 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 04:32:30 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Sat, 11 May 2019 04:32:47 GMT
ENV BOOT_VERSION=2.8.2
# Sat, 11 May 2019 04:32:47 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Sat, 11 May 2019 04:32:47 GMT
WORKDIR /tmp
# Sat, 11 May 2019 04:32:49 GMT
RUN apk add --update --no-cache bash openssl
# Sat, 11 May 2019 04:32:50 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Sat, 11 May 2019 04:32:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Sat, 11 May 2019 04:32:50 GMT
ENV BOOT_AS_ROOT=yes
# Sat, 11 May 2019 04:34:11 GMT
RUN boot
# Sat, 11 May 2019 04:34:11 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f910a506b6cb1dbec766725d70356f695ae2bf2bea6224dbe8c7c6ad4f3664a2`  
		Last Modified: Sat, 11 May 2019 01:36:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2274a1a0e2786ee9101b08f76111f9ab8019e368dce1e325d3c284a0ca33397`  
		Last Modified: Sat, 11 May 2019 01:37:08 GMT  
		Size: 70.7 MB (70732768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1d7ed082d8f665bdfd621623b827bab5aa9e6ee092d3e3edfefbe2a6334935`  
		Last Modified: Sat, 11 May 2019 04:35:01 GMT  
		Size: 1.5 MB (1478600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ec6586585434e82b9e58083dbc3f6a7c181d0ee814dea317a7a4bd7d57c1ee1`  
		Last Modified: Sat, 11 May 2019 04:35:00 GMT  
		Size: 6.7 KB (6660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f830d64ed38fc20eb2f3f5a2e96e32a6968acf9b836e1644d0c6227459e573e`  
		Last Modified: Sat, 11 May 2019 04:35:03 GMT  
		Size: 39.3 MB (39344310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
