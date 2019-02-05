## `openjdk:7u181-jdk-alpine`

```console
$ docker pull openjdk@sha256:0a24e1e36413050801cfd23b4048d0c4434c97d14f63d17281a583b58cdfc941
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:7u181-jdk-alpine` - linux; amd64

```console
$ docker pull openjdk@sha256:e4fcf359724299d4c605ac0d3c0031460f9e834e9d3a971689a331138e1bf32a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.3 MB (81288478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70bbc27a4abbb9a005e66a0e62c3b67deb3bbd468c1f4edf327db2dd0c49b613`
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
# Tue, 05 Feb 2019 20:40:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 05 Feb 2019 20:40:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 05 Feb 2019 20:40:14 GMT
ENV JAVA_VERSION=7u181
# Tue, 05 Feb 2019 20:40:14 GMT
ENV JAVA_ALPINE_VERSION=7.181.2.6.14-r2
# Tue, 05 Feb 2019 20:40:24 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:e0a4cff53f2f93d47d50e016e5aa903f72b2e5bfad65ca7a2f1ce6d4ca163f9a`  
		Last Modified: Tue, 05 Feb 2019 20:46:18 GMT  
		Size: 78.5 MB (78533511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
