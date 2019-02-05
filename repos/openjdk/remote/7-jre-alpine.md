## `openjdk:7-jre-alpine`

```console
$ docker pull openjdk@sha256:80ef9134d91db97425d8ee6e07cdd741d9060b250dec5d6ff27e9523eb3166e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:7-jre-alpine` - linux; amd64

```console
$ docker pull openjdk@sha256:3230d3774c946d34c612a063196a7243d1d883afb818a7d1961327b6ea260a33
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64949972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffc1e48c95f6442dbf519c08fdd67284a477724824ad8f4d0981bbc8035da684`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:39:38 GMT
ENV LANG=C.UTF-8
# Tue, 05 Feb 2019 20:39:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Feb 2019 20:40:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Tue, 05 Feb 2019 20:40:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 05 Feb 2019 20:40:36 GMT
ENV JAVA_VERSION=7u181
# Tue, 05 Feb 2019 20:40:37 GMT
ENV JAVA_ALPINE_VERSION=7.181.2.6.14-r2
# Tue, 05 Feb 2019 20:40:45 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:d8d8b1048456716e4b580503ddb591c3840f7476abd202deaea54c25a06aad7d`  
		Last Modified: Tue, 05 Feb 2019 20:46:37 GMT  
		Size: 62.2 MB (62195005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
