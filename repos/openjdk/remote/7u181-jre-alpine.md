## `openjdk:7u181-jre-alpine`

```console
$ docker pull openjdk@sha256:54673581c7107b74484f40d9ef43e0e3c9d033bd2f172c43d071efb81a409ebc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:7u181-jre-alpine` - linux; amd64

```console
$ docker pull openjdk@sha256:9972c191f921b07952d57b7d86052c8cbc4c91ea382288f641ea50e219507409
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63381220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63691bd51e65ab9862dd6e557510178963c965e80a73c688a89009b849438d9e`
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
# Wed, 06 Jun 2018 02:01:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Wed, 06 Jun 2018 02:01:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 03 Jul 2018 01:01:32 GMT
ENV JAVA_VERSION=7u181
# Tue, 03 Jul 2018 01:01:32 GMT
ENV JAVA_ALPINE_VERSION=7.181.2.6.14-r0
# Tue, 03 Jul 2018 01:01:40 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:749c7043a93dfff39ef92e57bfe65ec6ba0cb39cee46eb0589efeb89c1515453`  
		Last Modified: Tue, 03 Jul 2018 01:16:06 GMT  
		Size: 61.3 MB (61315442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
