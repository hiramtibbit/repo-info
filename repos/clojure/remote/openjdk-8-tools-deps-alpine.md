## `clojure:openjdk-8-tools-deps-alpine`

```console
$ docker pull clojure@sha256:ddddf54a6fc785b19679a9eb8837c9492e3fa8f5db4184429546e1b85307229b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:openjdk-8-tools-deps-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:3dbe504f47bbc94f34a357df761aa15d26b2e543fdc91a1271d1364691dd596c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.0 MB (99039405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4ca7e0873a6193f4f98d50aa4a724b0f76a0f7f4d331dfe53946a3cf9097e7f`
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
# Wed, 27 Feb 2019 23:21:10 GMT
ENV CLOJURE_VERSION=1.10.0.414
# Wed, 27 Feb 2019 23:21:10 GMT
WORKDIR /tmp
# Wed, 27 Feb 2019 23:21:12 GMT
RUN apk add --update --no-cache bash curl
# Wed, 27 Feb 2019 23:21:13 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Wed, 27 Feb 2019 23:21:21 GMT
RUN clojure -e "(clojure-version)"
# Wed, 27 Feb 2019 23:21:22 GMT
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
	-	`sha256:5ddf417f8eea839d86f0dacbaec55ff79b5102823d3e9bdb053852d905759edd`  
		Last Modified: Wed, 27 Feb 2019 23:22:59 GMT  
		Size: 1.7 MB (1707519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded015ef44ac3fcd2c3579467992ed5c6d14f7df70ae72ae6aeef5be0169d9b6`  
		Last Modified: Wed, 27 Feb 2019 23:23:00 GMT  
		Size: 19.8 MB (19762038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:467c6b68b0a0646a9b3df5cc0f0763cf7cdc190a6ddd522e486eca91e4976550`  
		Last Modified: Wed, 27 Feb 2019 23:22:59 GMT  
		Size: 4.1 MB (4102678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
