## `clojure:tools-deps-1.9.0.391-alpine`

```console
$ docker pull clojure@sha256:5662eec61dac7c562ffceea02ceceefc3e5c93b471e4adc37709ac402aa3169b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:tools-deps-1.9.0.391-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:368fef5f4f5b09d0e92db1a1031b839e69408d7250530c83187298cbc530f1c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.0 MB (98002727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:287eb905bb16ed7a95be12018433c05eec0ab47a0444e1a27a6b56bc02b33c04`
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
# Wed, 12 Sep 2018 03:58:29 GMT
ENV CLOJURE_VERSION=1.9.0.391
# Wed, 12 Sep 2018 03:58:29 GMT
WORKDIR /tmp
# Wed, 12 Sep 2018 03:58:31 GMT
RUN echo '@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories &&   apk add --update --no-cache bash curl rlwrap@testing
# Wed, 12 Sep 2018 03:58:34 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Wed, 12 Sep 2018 03:58:47 GMT
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
	-	`sha256:33f22d3e02e74a6713b2c9054495cec8bc3ad855791a670535b7a3a84081c5b7`  
		Last Modified: Wed, 12 Sep 2018 04:00:34 GMT  
		Size: 1.8 MB (1774765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f42631519dc933fb8896ba19277e44006cd148ee6b4768140e2a532bafc3fb4`  
		Last Modified: Wed, 12 Sep 2018 04:00:35 GMT  
		Size: 19.5 MB (19548077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d9449410be350c2cd41af2db671a80e8b3671c9772400e17beaa2662854b77`  
		Last Modified: Wed, 12 Sep 2018 04:00:33 GMT  
		Size: 3.9 MB (3891390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
