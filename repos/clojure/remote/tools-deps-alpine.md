## `clojure:tools-deps-alpine`

```console
$ docker pull clojure@sha256:2c6b2c7fb5e40dcd6984f3f0f7a0831906b3083a543d1453cd98c3005de78db2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:tools-deps-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:00a316eeff36268c179b1391f20d79cf182a3f14a41830241d13cbdcb13bf142
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97523560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00f3cd1a035a86bd2b094154a0650939e2d0bfdffaf0c0cc81ec36fcc3a5ed54`
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
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 Jan 2018 04:50:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 03 Jul 2018 00:01:12 GMT
ENV JAVA_VERSION=8u171
# Tue, 03 Jul 2018 00:01:13 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Tue, 03 Jul 2018 00:01:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 03 Jul 2018 01:17:40 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Tue, 03 Jul 2018 01:17:40 GMT
ENV CLOJURE_VERSION=1.9.0.381
# Tue, 03 Jul 2018 01:17:41 GMT
WORKDIR /tmp
# Tue, 03 Jul 2018 01:17:43 GMT
RUN apk add --update bash curl && rm -rf /var/cache/apk/*
# Tue, 03 Jul 2018 01:17:45 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Tue, 03 Jul 2018 01:17:54 GMT
RUN clojure -e "(clojure-version)"
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
	-	`sha256:651ae5b0ba186f2dc5fdfac52825e806479a2860a8a7c030c1703697d84e8714`  
		Last Modified: Tue, 03 Jul 2018 00:38:40 GMT  
		Size: 70.3 MB (70318325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ef06388f3a05bdf64e0804dbd064eda5a5a672967bb0199e15150dd8509985`  
		Last Modified: Tue, 03 Jul 2018 01:23:52 GMT  
		Size: 1.7 MB (1700143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080208d3fafb4aafc9018cb0459ec0673fc5cf9c4f70a1cb200d69776b870c8f`  
		Last Modified: Tue, 03 Jul 2018 01:23:54 GMT  
		Size: 19.5 MB (19547938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea8a0a669668876f6377824a8faf3dd356edf885c6e52fa00dfdaca40aedaf1`  
		Last Modified: Tue, 03 Jul 2018 01:23:53 GMT  
		Size: 3.9 MB (3891379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
