## `clojure:alpine-onbuild`

```console
$ docker pull clojure@sha256:cfc4f2cfed41f4d61ec5345942aa513cf8d54245be4655e3145ef66b83e51bf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:alpine-onbuild` - linux; amd64

```console
$ docker pull clojure@sha256:ea5d273758d0aa37336bb18564908f7e34566b688da4420ed9caa6920db92be8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.2 MB (97173955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b20b9a435f5dc6238277c1d463f7199e02fbe35a32353403ed09ffd8ac6a009`
-	Default Command: `["lein","run"]`

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
# Tue, 03 Jul 2018 01:10:46 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Tue, 03 Jul 2018 01:10:46 GMT
ENV LEIN_VERSION=2.8.1
# Tue, 03 Jul 2018 01:10:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 03 Jul 2018 01:10:46 GMT
WORKDIR /tmp
# Tue, 03 Jul 2018 01:10:49 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Tue, 03 Jul 2018 01:11:04 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "019faa5f91a463bf9742c3634ee32fb3db8c47f0 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 03 Jul 2018 01:11:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Tue, 03 Jul 2018 01:11:09 GMT
ENV LEIN_ROOT=1
# Tue, 03 Jul 2018 01:11:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.9.0"]])' > project.clj   && lein deps && rm project.clj
# Tue, 03 Jul 2018 01:11:48 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 03 Jul 2018 01:11:48 GMT
WORKDIR /usr/src/app
# Tue, 03 Jul 2018 01:11:49 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 03 Jul 2018 01:11:49 GMT
ONBUILD RUN lein deps
# Tue, 03 Jul 2018 01:11:49 GMT
ONBUILD COPY . /usr/src/app
# Tue, 03 Jul 2018 01:11:49 GMT
CMD ["lein" "run"]
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
	-	`sha256:88998ff3a03ef6d3e10eec222834590391d343f29d54a667354efd494baa3711`  
		Last Modified: Tue, 03 Jul 2018 01:20:04 GMT  
		Size: 8.7 MB (8710383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a8945baa48ea7e1f4d8644c0c52ccbcc57c3ff44e0024f7bb4b433cb961afc`  
		Last Modified: Tue, 03 Jul 2018 01:20:03 GMT  
		Size: 12.1 MB (12137466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df904ba7e2e1a5796db6e9465088a4a26a58fe8965013e9095c8b3776fd401d5`  
		Last Modified: Tue, 03 Jul 2018 01:20:00 GMT  
		Size: 3.9 MB (3941880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc2519f445774cb9938553ad041911fbb0f08e70bfeebd7122de773fa3b6770`  
		Last Modified: Tue, 03 Jul 2018 01:20:49 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
