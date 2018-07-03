## `openjdk:7-alpine3.7`

```console
$ docker pull openjdk@sha256:5c3788849afb12df9a6a046a9e3f3b60de5c726afd738791d362035cc4f79c5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:7-alpine3.7` - linux; amd64

```console
$ docker pull openjdk@sha256:38423bfda4b70dbb0288e450e5e381a76f7688368be072556003fab32ec4f079
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.7 MB (79709205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b234621ca1f41fa649f57bd3076019bacf4f96eb238dcb4b052bc7d23c740ba`
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
# Wed, 06 Jun 2018 02:04:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 06 Jun 2018 02:04:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 03 Jul 2018 01:01:10 GMT
ENV JAVA_VERSION=7u181
# Tue, 03 Jul 2018 01:01:10 GMT
ENV JAVA_ALPINE_VERSION=7.181.2.6.14-r0
# Tue, 03 Jul 2018 01:01:19 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:84a16b29a650b5d8dca8ac281402104c045001e6d8e4818005e026bd770418b3`  
		Last Modified: Tue, 03 Jul 2018 01:14:10 GMT  
		Size: 77.6 MB (77643427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
