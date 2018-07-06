## `clojure:boot-alpine`

```console
$ docker pull clojure@sha256:58558ca438b7516e200ae6536f8e6102f0a375cc69e2b8837749f5cd6558b6cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:boot-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:da097561ef681d20b0de26f54141d117a4fb2a88673a9021d20c9f488d1a1023
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.9 MB (108889544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9eec19e2887e3cf5f4277a88783b7dd0b01b1df1c4b31ec789c71c936fbd643`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:51:15 GMT
ENV LANG=C.UTF-8
# Fri, 06 Jul 2018 15:51:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 06 Jul 2018 15:51:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 06 Jul 2018 15:51:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 06 Jul 2018 15:51:16 GMT
ENV JAVA_VERSION=8u171
# Fri, 06 Jul 2018 15:51:16 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Fri, 06 Jul 2018 15:51:21 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 06 Jul 2018 19:28:45 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Fri, 06 Jul 2018 19:32:44 GMT
ENV BOOT_VERSION=2.7.2
# Fri, 06 Jul 2018 19:32:44 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Fri, 06 Jul 2018 19:32:44 GMT
WORKDIR /tmp
# Fri, 06 Jul 2018 19:32:47 GMT
RUN apk add --update bash openssl && rm -rf /var/cache/apk/*
# Fri, 06 Jul 2018 19:32:48 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Fri, 06 Jul 2018 19:32:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Fri, 06 Jul 2018 19:32:57 GMT
ENV BOOT_AS_ROOT=yes
# Fri, 06 Jul 2018 19:34:23 GMT
RUN boot
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4001add52a901363833fa030b1451162d380a5423906a45f64e090a5ee9efb74`  
		Last Modified: Fri, 06 Jul 2018 15:54:00 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874028933da5d2edc0a5683332de9b0d399ef73993ce0048b1f9433d6d779026`  
		Last Modified: Fri, 06 Jul 2018 15:54:11 GMT  
		Size: 70.3 MB (70318463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eafbab36aeaabaaa05ec25635babe578d65d7f3020fcf1a14a5ccbc355980d2`  
		Last Modified: Fri, 06 Jul 2018 19:40:41 GMT  
		Size: 3.1 MB (3050323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1142b1cdfe9079022a811f82f2dd1e55c1effaebaa2286b1671c34bb571adea2`  
		Last Modified: Fri, 06 Jul 2018 19:40:40 GMT  
		Size: 6.7 KB (6656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703334cf7c83d778baa4c0085ce1999d73618b2af45a558fc8c8b66aaa8aa585`  
		Last Modified: Fri, 06 Jul 2018 19:40:44 GMT  
		Size: 33.4 MB (33410313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
