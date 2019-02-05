## `clojure:tools-deps-1.10.0.411-alpine`

```console
$ docker pull clojure@sha256:f2ce60137265993940922161e43aa046fbb6eb677a68c3a69ef6e71107819a11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:tools-deps-1.10.0.411-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:91e56ba734dfc1a203ed4af8bcd2dfa9c2e4e588d2f648f34ccaae5cc4fe5b26
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.0 MB (99037246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a6cc882f8a0aaa689ef6582fa70082dd0502d7c3d4c0f93943b9ea6f5468ed4`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

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
# Tue, 05 Feb 2019 21:40:01 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Tue, 05 Feb 2019 21:40:01 GMT
ENV CLOJURE_VERSION=1.10.0.411
# Tue, 05 Feb 2019 21:40:01 GMT
WORKDIR /tmp
# Tue, 05 Feb 2019 21:40:03 GMT
RUN apk add --update --no-cache bash curl
# Tue, 05 Feb 2019 21:40:05 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Tue, 05 Feb 2019 21:40:14 GMT
RUN clojure -e "(clojure-version)"
# Tue, 05 Feb 2019 21:40:14 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
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
	-	`sha256:7e44f69732d60ce3997abb8d4d42833749ed775832675c4583db74ebd3a0b9f5`  
		Last Modified: Tue, 05 Feb 2019 21:41:20 GMT  
		Size: 1.7 MB (1705442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4a540012e60d645ce3e5f936ff5350fc517a54651b54223fc6a5b052a5943e`  
		Last Modified: Tue, 05 Feb 2019 21:41:21 GMT  
		Size: 19.8 MB (19761923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4b710ab1e907468285a5291851f31835a78ab03cd765b94496e0788d94097f`  
		Last Modified: Tue, 05 Feb 2019 21:41:19 GMT  
		Size: 4.1 MB (4102711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
