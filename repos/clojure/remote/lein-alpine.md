## `clojure:lein-alpine`

```console
$ docker pull clojure@sha256:0ac8ead448da74c7dd8dccbbbc2c484f8963408f5cb76704190d31a4ce7f29e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:lein-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:fd9e58ae7b3556f270a6d4844220d0b22b8dba729d3994a9804c011186ba55bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.2 MB (97173805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7819f4571bf89cd8ce6a8a17c2cf2457609376b60ff8b383b94b55ba70b2c150`
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
# Tue, 03 Jul 2018 02:06:05 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Tue, 03 Jul 2018 02:06:05 GMT
ENV LEIN_VERSION=2.8.1
# Tue, 03 Jul 2018 02:06:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 03 Jul 2018 02:06:06 GMT
WORKDIR /tmp
# Tue, 03 Jul 2018 02:06:08 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Tue, 03 Jul 2018 02:06:16 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "019faa5f91a463bf9742c3634ee32fb3db8c47f0 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 03 Jul 2018 02:06:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Tue, 03 Jul 2018 02:06:16 GMT
ENV LEIN_ROOT=1
# Tue, 03 Jul 2018 02:06:26 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.9.0"]])' > project.clj   && lein deps && rm project.clj
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
	-	`sha256:fa0d76f780ade2d01f7307b156c6945bc69fb911b851bb2418ac84d9ef7b7f12`  
		Last Modified: Tue, 03 Jul 2018 02:11:57 GMT  
		Size: 8.7 MB (8710340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396b0444175f6f81f07138ce98ba34441c4017300be5fb48e2110f598a8c5f65`  
		Last Modified: Tue, 03 Jul 2018 02:11:58 GMT  
		Size: 12.1 MB (12137473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b307eccd0d94563aa32673c9b4fe945b8fbe0eb844f6990b2f1dfd2369f1ead`  
		Last Modified: Tue, 03 Jul 2018 02:11:56 GMT  
		Size: 3.9 MB (3941892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
