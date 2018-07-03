## `openjdk:7-alpine3.7`

```console
$ docker pull openjdk@sha256:262e5e3e15c0a8e4acc24ad0f18b8a91665aab9fc3e93f9b08724087e16169b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:7-alpine3.7` - linux; amd64

```console
$ docker pull openjdk@sha256:3f64d417c4c4eb248626dd4f93438e883dce3158cfa57ae7f810c457e59d955c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.7 MB (79709135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09e904fa11b798683c33325161b3b387a184d417e9333670b2e16dec1491ddca`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:48:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 10 Jan 2018 04:48:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 03 Jul 2018 00:06:20 GMT
ENV JAVA_VERSION=7u181
# Tue, 03 Jul 2018 00:06:20 GMT
ENV JAVA_ALPINE_VERSION=7.181.2.6.14-r0
# Tue, 03 Jul 2018 00:06:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c693356c9d223320b662ca0da7aa465a5d468a2da71f332b4f61583cd2d31c`  
		Last Modified: Tue, 03 Jul 2018 00:49:11 GMT  
		Size: 77.6 MB (77643360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
