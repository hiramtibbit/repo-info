## `clojure:boot-alpine`

```console
$ docker pull clojure@sha256:bb4d18577c1aa268e53e129b2b8e351f56e2d2d205e16b28da22ece1a0ea503a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:boot-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:54362c99b1d926a4b358ededa4fa725e07359a4e442a9bce71493cbee913e3ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114296370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afe403e8d38dc5b2e32115aa6b243b7626330cfa38435729ef0cfcb3ec69bec9`
-	Default Command: `["boot","repl"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:39:38 GMT
ENV LANG=C.UTF-8
# Tue, 05 Feb 2019 20:39:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Feb 2019 20:39:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 05 Feb 2019 20:39:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 20:39:40 GMT
ENV JAVA_VERSION=8u191
# Tue, 05 Feb 2019 20:39:40 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Tue, 05 Feb 2019 20:39:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Feb 2019 21:38:39 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Tue, 05 Feb 2019 21:38:56 GMT
ENV BOOT_VERSION=2.8.2
# Tue, 05 Feb 2019 21:38:56 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 05 Feb 2019 21:38:56 GMT
WORKDIR /tmp
# Tue, 05 Feb 2019 21:38:58 GMT
RUN apk add --update --no-cache bash openssl
# Tue, 05 Feb 2019 21:38:59 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 05 Feb 2019 21:38:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Tue, 05 Feb 2019 21:38:59 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 05 Feb 2019 21:39:47 GMT
RUN boot
# Tue, 05 Feb 2019 21:39:48 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78b803852394d2b9aaa3ce93b0f2502b0bf8e063b1fa79734de0fc8ee55ee6e`  
		Last Modified: Tue, 05 Feb 2019 20:45:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47317d99e629d0943f97c8ec0e76e877a744ccbaf98e46603289bc856765c95a`  
		Last Modified: Tue, 05 Feb 2019 20:45:33 GMT  
		Size: 70.7 MB (70712203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3efcc4f38afc4518e4b65493261faa9306f017355cecfcbe7ca5220116b01b`  
		Last Modified: Tue, 05 Feb 2019 21:41:08 GMT  
		Size: 1.5 MB (1478304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8582dfb048b0e7506adb9f30a9258d1d0074265e413f4dc22d19af25568bf8`  
		Last Modified: Tue, 05 Feb 2019 21:41:07 GMT  
		Size: 6.7 KB (6662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5185d86b83d7b050333a465cc7b42e8f76b14f53aee1e123d6bf656b7b43b7`  
		Last Modified: Tue, 05 Feb 2019 21:41:11 GMT  
		Size: 39.3 MB (39344234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
