## `clojure:alpine-onbuild`

```console
$ docker pull clojure@sha256:74a895c93d8366e38fab45e8bdfd59a5f9401e9dbc82dd52e1c827ffb5fbdea5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:alpine-onbuild` - linux; amd64

```console
$ docker pull clojure@sha256:21ca854aa72ca283d89978016fdf22ab34ab3e392ada562f73b70b83da49f065
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97460180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e653ac6428bc1bafb0b5c53d8e775f55dc339de7b82f4b62f4582c798f346a5e`
-	Default Command: `["lein","run"]`

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
# Wed, 12 Sep 2018 03:56:19 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Wed, 12 Sep 2018 03:56:19 GMT
ENV LEIN_VERSION=2.8.1
# Wed, 12 Sep 2018 03:56:19 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 12 Sep 2018 03:56:19 GMT
WORKDIR /tmp
# Wed, 12 Sep 2018 03:56:21 GMT
RUN apk add --update --no-cache tar gnupg bash openssl
# Wed, 12 Sep 2018 03:56:25 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "019faa5f91a463bf9742c3634ee32fb3db8c47f0 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 12 Sep 2018 03:56:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Wed, 12 Sep 2018 03:56:25 GMT
ENV LEIN_ROOT=1
# Wed, 12 Sep 2018 03:56:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.9.0"]])' > project.clj   && lein deps && rm project.clj
# Wed, 12 Sep 2018 03:56:38 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Wed, 12 Sep 2018 03:56:38 GMT
WORKDIR /usr/src/app
# Wed, 12 Sep 2018 03:56:38 GMT
ONBUILD COPY project.clj /usr/src/app/
# Wed, 12 Sep 2018 03:56:38 GMT
ONBUILD RUN lein deps
# Wed, 12 Sep 2018 03:56:38 GMT
ONBUILD COPY . /usr/src/app
# Wed, 12 Sep 2018 03:56:39 GMT
CMD ["lein" "run"]
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
	-	`sha256:8266502540c0f17dc5498292d76d29f5e484bd08f57d274c19834c9917b65d6a`  
		Last Modified: Wed, 12 Sep 2018 03:59:10 GMT  
		Size: 8.6 MB (8592291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f1dc8676bad3a067705cf475615ca8ce1148906936cc8eade765909cd3698dd`  
		Last Modified: Wed, 12 Sep 2018 03:59:09 GMT  
		Size: 12.1 MB (12137478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72cfdf7afedd6125fa5a44bff2d3730fa5a4a8f2bd3d7cdab7ef967c0c600a8d`  
		Last Modified: Wed, 12 Sep 2018 03:59:08 GMT  
		Size: 3.9 MB (3941790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34787489412140306a3b61ed1a3e50a78aad953602623758f71c4c8bbb8bc108`  
		Last Modified: Wed, 12 Sep 2018 03:59:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
