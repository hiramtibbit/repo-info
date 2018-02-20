## `clojure:lein-2.8.1-alpine-onbuild`

```console
$ docker pull clojure@sha256:42e8379be5dfcea25f9adcae810bf3c0abe5cf287de77f2d05b817a68ce074f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:lein-2.8.1-alpine-onbuild` - linux; amd64

```console
$ docker pull clojure@sha256:02e4be8d87505e9b14aaab892d3b8be6c0f34944c2e3b0b380888c3901f9e1ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (97047204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b969ce6ff8e456653d09a74850c32487077a49f3e74e784f48fb200b6b4ef50`
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
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:51:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 08:01:27 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Wed, 10 Jan 2018 08:01:27 GMT
ENV LEIN_VERSION=2.8.1
# Wed, 10 Jan 2018 08:01:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 10 Jan 2018 08:01:27 GMT
WORKDIR /tmp
# Wed, 10 Jan 2018 08:01:33 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Wed, 10 Jan 2018 08:01:46 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "019faa5f91a463bf9742c3634ee32fb3db8c47f0 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 10 Jan 2018 08:01:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Wed, 10 Jan 2018 08:01:51 GMT
ENV LEIN_ROOT=1
# Tue, 20 Feb 2018 05:27:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.9.0"]])' > project.clj   && lein deps && rm project.clj
# Tue, 20 Feb 2018 05:27:26 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 20 Feb 2018 05:27:26 GMT
WORKDIR /usr/src/app
# Tue, 20 Feb 2018 05:27:27 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 20 Feb 2018 05:27:27 GMT
ONBUILD RUN lein deps
# Tue, 20 Feb 2018 05:27:27 GMT
ONBUILD COPY . /usr/src/app
# Tue, 20 Feb 2018 05:27:27 GMT
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
	-	`sha256:fd869c8b9b592f2fcb5ed4d6055d651ae18d5c2cce22f56896f0ff96cdcbcbf7`  
		Last Modified: Wed, 10 Jan 2018 04:56:54 GMT  
		Size: 70.2 MB (70227764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a60059c87051e1bba427ee793191d40054c03c90b51b708f9fbaf33634d270`  
		Last Modified: Wed, 10 Jan 2018 08:05:32 GMT  
		Size: 8.7 MB (8674274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd36272a644bd072e5448a50570a1b3eb480c0fdb8d9b348be9516b4893c8dee`  
		Last Modified: Wed, 10 Jan 2018 08:05:35 GMT  
		Size: 12.1 MB (12137473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086c72b2f2228a6d4552b805d939425b196c047bdd5bde395ec80f1318244d8b`  
		Last Modified: Tue, 20 Feb 2018 05:29:56 GMT  
		Size: 3.9 MB (3941791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24eaa6edb064b4876049827e525b25e332575049afa6c4fa4171e69344ac7eb4`  
		Last Modified: Tue, 20 Feb 2018 05:30:48 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
