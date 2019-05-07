## `clojure:boot-alpine`

```console
$ docker pull clojure@sha256:d8fd4a6304f2199a32387134f7f35355e3cc4aca8dbf2d4f7427395b6f215fdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:boot-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:52bf069c0088c5a95a87fcd96ac63fc50513f60cbd8e4324936fd947102f1039
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114319669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d916be7e1484aba9f0f2ba4550067f1e71abb450523ddde1869cec17ca895c6`
-	Default Command: `["boot","repl"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 01:52:32 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 01:52:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 01:52:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 Apr 2019 01:52:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 May 2019 00:21:32 GMT
ENV JAVA_VERSION=8u212
# Tue, 07 May 2019 00:21:32 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Tue, 07 May 2019 00:21:35 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 May 2019 00:39:07 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Tue, 07 May 2019 00:39:24 GMT
ENV BOOT_VERSION=2.8.2
# Tue, 07 May 2019 00:39:24 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 07 May 2019 00:39:24 GMT
WORKDIR /tmp
# Tue, 07 May 2019 00:39:26 GMT
RUN apk add --update --no-cache bash openssl
# Tue, 07 May 2019 00:39:27 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 07 May 2019 00:39:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Tue, 07 May 2019 00:39:27 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 07 May 2019 00:40:42 GMT
RUN boot
# Tue, 07 May 2019 00:40:42 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e12771959adeb3408e625492accf845401aa66bcca638859a6b34176d753d62`  
		Last Modified: Wed, 10 Apr 2019 01:57:16 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018b76c3c533954c0a7fbd9e90e85f48d7240c14898e0a3b822bdc8c38ca7b50`  
		Last Modified: Tue, 07 May 2019 00:23:15 GMT  
		Size: 70.7 MB (70732830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa7d45ce3b320c0dfafe059b862d9909c2ec1e61735cbb10a46ef43820885d5`  
		Last Modified: Tue, 07 May 2019 00:41:41 GMT  
		Size: 1.5 MB (1478600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67318257be92e638d41b9e58198d375a9b91589b7e6ffbbb6d20ed439df5d83`  
		Last Modified: Tue, 07 May 2019 00:41:40 GMT  
		Size: 6.7 KB (6660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb552819b6775c6355b5cec13710cbf39e8047faa86db61a05477cb0289a6e7f`  
		Last Modified: Tue, 07 May 2019 00:41:43 GMT  
		Size: 39.3 MB (39344333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
