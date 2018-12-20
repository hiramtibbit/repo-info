## `clojure:lein-alpine`

```console
$ docker pull clojure@sha256:cf8357b2deac83a0f6f18f80e394e4a046f101b11db5d5af852414934fa4b913
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:lein-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:b66b2a005eeea2870fd31efb414492f665007289f2f2f213694c30cdd4a21fd3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.8 MB (97769487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3151f10a9ac7040ef9df71a7deb11b548f6e2ef7c315e63f26a92b1f514e765e`
-	Default Command: `["lein","repl"]`

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
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_VERSION=8u181
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Wed, 24 Oct 2018 22:31:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 24 Oct 2018 23:02:00 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Thu, 20 Dec 2018 00:19:41 GMT
ENV LEIN_VERSION=2.8.3
# Thu, 20 Dec 2018 00:19:41 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Dec 2018 00:19:41 GMT
WORKDIR /tmp
# Thu, 20 Dec 2018 00:19:44 GMT
RUN apk add --update --no-cache tar gnupg bash openssl
# Thu, 20 Dec 2018 00:20:00 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "67b7fa41e94e621f29625cb621ac8f7ccc77dd49 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 20 Dec 2018 00:20:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Thu, 20 Dec 2018 00:20:00 GMT
ENV LEIN_ROOT=1
# Thu, 20 Dec 2018 00:20:05 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.10.0"]])' > project.clj   && lein deps && rm project.clj
# Thu, 20 Dec 2018 00:20:06 GMT
CMD ["lein" "repl"]
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
	-	`sha256:ef87ded15917facc562d84e802d02ded848ae802cc04194400ba4cb8798dd4f7`  
		Last Modified: Wed, 24 Oct 2018 22:43:46 GMT  
		Size: 70.6 MB (70610525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988bdc7ddaa43a1c864f8e36a5365780552038b718543e7d15ac99a210f46f8b`  
		Last Modified: Thu, 20 Dec 2018 00:26:02 GMT  
		Size: 8.6 MB (8594849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef630739fb8b03d90e67b313536a73de22a367ca308ab40bddd8757a74b23ca`  
		Last Modified: Thu, 20 Dec 2018 00:26:02 GMT  
		Size: 12.2 MB (12196944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:881b57bb3ab973c1a09a0130099cb71f5f04a63a8daca854893640ed8c89b03d`  
		Last Modified: Thu, 20 Dec 2018 00:26:00 GMT  
		Size: 4.2 MB (4160000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
