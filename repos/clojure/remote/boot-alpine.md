## `clojure:boot-alpine`

```console
$ docker pull clojure@sha256:d8e31b7715f6835d04dd7f6b0ec83f77c8d9d6456cf36818d5c910b8f6db1efb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:boot-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:760cfe83ed441748fbf3dc51cc3df623fcff68e0b21a40a485613f917664ac64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114296406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c90776fa52f1a3ee2e7d3573a909374ce7729aa440f5ba38090135982a42d22`
-	Default Command: `["boot","repl"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 02:13:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 02:13:34 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 04:30:47 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Fri, 08 Mar 2019 04:31:05 GMT
ENV BOOT_VERSION=2.8.2
# Fri, 08 Mar 2019 04:31:05 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Fri, 08 Mar 2019 04:31:05 GMT
WORKDIR /tmp
# Fri, 08 Mar 2019 04:31:07 GMT
RUN apk add --update --no-cache bash openssl
# Fri, 08 Mar 2019 04:31:08 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Fri, 08 Mar 2019 04:31:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Fri, 08 Mar 2019 04:31:08 GMT
ENV BOOT_AS_ROOT=yes
# Fri, 08 Mar 2019 04:32:34 GMT
RUN boot
# Fri, 08 Mar 2019 04:32:34 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e04b7d13ab51df65ba1284789563d2ca346b259251206cd707e58e1aabb6b7`  
		Last Modified: Fri, 08 Mar 2019 02:16:03 GMT  
		Size: 70.7 MB (70712077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a0240972262719d6f18650acb6e11f6fe9c627040daaebedbef778b2db3cc4d`  
		Last Modified: Fri, 08 Mar 2019 04:33:56 GMT  
		Size: 1.5 MB (1478303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28de5e18fb295d0db9544d6dfba8883b5eef65947819b20695a5f826b8bb8f9d`  
		Last Modified: Fri, 08 Mar 2019 04:33:55 GMT  
		Size: 6.7 KB (6662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4caee264d8bc546b619d287b803769b42d405b59e5747e80713fbe0fd181256b`  
		Last Modified: Fri, 08 Mar 2019 04:33:59 GMT  
		Size: 39.3 MB (39344396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
