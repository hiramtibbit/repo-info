## `clojure:tools-deps-alpine`

```console
$ docker pull clojure@sha256:f9dbc102e9b6279d88e66b47a2ffcb885e6a43d97148fd8d14bddd4fdca8f52f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:tools-deps-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:f62f64145a93a3aa2c9b7b87975975ef9c9765f57f445fcc3941ce248a842655
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.0 MB (98003394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75dda87af7db51164ea14df10ac01536fc7f31fb97cd466924b8403072f61efc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:06:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 12 Sep 2018 00:06:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 12 Sep 2018 00:06:55 GMT
ENV JAVA_VERSION=8u171
# Wed, 12 Sep 2018 00:06:56 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 12 Sep 2018 00:06:59 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 12 Sep 2018 03:58:29 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Mon, 17 Sep 2018 20:21:29 GMT
ENV CLOJURE_VERSION=1.9.0.394
# Mon, 17 Sep 2018 20:21:29 GMT
WORKDIR /tmp
# Mon, 17 Sep 2018 20:21:31 GMT
RUN echo '@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories &&   apk add --update --no-cache bash curl rlwrap@testing
# Mon, 17 Sep 2018 20:21:32 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Mon, 17 Sep 2018 20:21:40 GMT
RUN clojure -e "(clojure-version)"
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe815adf554b18a057fade5a6b9498765d20c055f80d8d2facfb3a9cb00b66d0`  
		Last Modified: Wed, 12 Sep 2018 00:09:10 GMT  
		Size: 70.6 MB (70581326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff64e88802ace98fa9cbda1661688642085edeacdf0ac04f4e87daa6d77c3321`  
		Last Modified: Mon, 17 Sep 2018 20:22:17 GMT  
		Size: 1.8 MB (1774769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac102553288a37dcda977a4e4c4f97217555de9f8cb14bcd0c3655861c6f9e3`  
		Last Modified: Mon, 17 Sep 2018 20:22:20 GMT  
		Size: 19.5 MB (19548769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8892a8490fd45607c2d5c3b86f05113c031a2212cc7d8a4d9375ce4424a4677`  
		Last Modified: Mon, 17 Sep 2018 20:22:18 GMT  
		Size: 3.9 MB (3891361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
