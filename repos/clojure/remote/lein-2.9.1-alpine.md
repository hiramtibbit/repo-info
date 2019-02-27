## `clojure:lein-2.9.1-alpine`

```console
$ docker pull clojure@sha256:3b2e750b3ba0669a9517dde7c81b52d3d5df0c2d784b6dc0998b1a8aab3c4095
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:lein-2.9.1-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:8e2c8238b0b5cb5ac2cbea08491c3f68867ca29e891c7a9d0c31885454e3d164
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.1 MB (98081579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58ed6f6815850858dfb4a3e36e1154949fec9f9c8cf998d32951ec701e1c9fcb`
-	Default Command: `["lein","repl"]`

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
# Tue, 05 Feb 2019 21:38:39 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Tue, 12 Feb 2019 00:19:45 GMT
ENV LEIN_VERSION=2.9.0
# Tue, 12 Feb 2019 00:19:45 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 12 Feb 2019 00:19:45 GMT
WORKDIR /tmp
# Tue, 12 Feb 2019 00:19:47 GMT
RUN apk add --update --no-cache tar gnupg bash openssl
# Tue, 12 Feb 2019 00:19:49 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && sha1sum lein-pkg   && echo "628e954e562338abc4f5366e9933c8f0a43fa2b2 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 12 Feb 2019 00:19:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Tue, 12 Feb 2019 00:19:50 GMT
ENV LEIN_ROOT=1
# Tue, 12 Feb 2019 00:19:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.10.0"]])' > project.clj   && lein deps && rm project.clj
# Tue, 12 Feb 2019 00:19:55 GMT
CMD ["lein" "repl"]
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
	-	`sha256:72dab4f7744d516efef341cb6b4a2cd5abe9d38ba183e5a692e800f0e6422976`  
		Last Modified: Tue, 12 Feb 2019 00:20:49 GMT  
		Size: 7.3 MB (7320790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9b12c1b5a5ab82df1b5ffb238a8ff0667d55144c63f527651e1725db42b6db`  
		Last Modified: Tue, 12 Feb 2019 00:20:49 GMT  
		Size: 13.1 MB (13136276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d28a22a070425155e0f053507ed894bdbf05f573317eb60f73019422edd6886`  
		Last Modified: Tue, 12 Feb 2019 00:20:48 GMT  
		Size: 4.2 MB (4157343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
