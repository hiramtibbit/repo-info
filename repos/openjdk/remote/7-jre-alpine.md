## `openjdk:7-jre-alpine`

```console
$ docker pull openjdk@sha256:e10202dda12b47054094d1d0b1d7200a74f90a27f0025c18a3ce14b199b8c5b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:7-jre-alpine` - linux; amd64

```console
$ docker pull openjdk@sha256:dcac1def3c7d15819eadb59a162abd321832ec19f48cd837e310f5b77971956a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63381354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f0ed63751b7f644c9614996caaa6befe6891cb241e0ab301192138864a1d92b`
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
# Wed, 10 Jan 2018 04:49:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Wed, 10 Jan 2018 04:49:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 03 Jul 2018 00:08:46 GMT
ENV JAVA_VERSION=7u181
# Tue, 03 Jul 2018 00:08:46 GMT
ENV JAVA_ALPINE_VERSION=7.181.2.6.14-r0
# Tue, 03 Jul 2018 00:08:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:4aa3e0d4b2153a963457b51acc2430d0039f95356caeec3373763b022d42516d`  
		Last Modified: Tue, 03 Jul 2018 00:52:50 GMT  
		Size: 61.3 MB (61315579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
