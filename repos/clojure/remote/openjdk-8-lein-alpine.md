## `clojure:openjdk-8-lein-alpine`

```console
$ docker pull clojure@sha256:479c4a3dee3571dd351cb00af6c2b382d653eec008e5c8548cbf0c360eb8ce0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:openjdk-8-lein-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:446ee0b3219ee0df46fcd89de421371ade20518518566d882a84010d6e3d12e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.8 MB (97809995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f58f48202c798446c0e850960c05e1f3b2976a5556f573914ffbde01c57f571`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:40:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 00:40:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 00:40:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 21 Dec 2018 00:40:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 00:26:01 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 00:26:01 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 11 Jan 2019 00:26:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 11 Jan 2019 01:49:05 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Fri, 11 Jan 2019 01:49:05 GMT
ENV LEIN_VERSION=2.8.3
# Fri, 11 Jan 2019 01:49:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 11 Jan 2019 01:49:05 GMT
WORKDIR /tmp
# Fri, 11 Jan 2019 01:49:07 GMT
RUN apk add --update --no-cache tar gnupg bash openssl
# Fri, 11 Jan 2019 01:49:11 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "67b7fa41e94e621f29625cb621ac8f7ccc77dd49 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Fri, 11 Jan 2019 01:49:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Fri, 11 Jan 2019 01:49:11 GMT
ENV LEIN_ROOT=1
# Fri, 11 Jan 2019 01:49:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.10.0"]])' > project.clj   && lein deps && rm project.clj
# Fri, 11 Jan 2019 01:49:17 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35920a071f912ae4c16897610e8e2d514efcfd0e14ec76c4c73bf9aa7c2c55ea`  
		Last Modified: Fri, 21 Dec 2018 00:44:42 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b05767cad1d214d47942193ae9397b177ebf5866fa7997ed3b59e9f4c52a38`  
		Last Modified: Fri, 11 Jan 2019 00:29:57 GMT  
		Size: 70.7 MB (70650933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53432c8d6376b7c7dd6fc52311d8a420308ce81bc04e9d540c1e1692c512a74b`  
		Last Modified: Fri, 11 Jan 2019 01:51:48 GMT  
		Size: 8.6 MB (8594830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f663902ab07297e72b2692045efa04a1b7504f3302cbc870af458c53cf6adae`  
		Last Modified: Fri, 11 Jan 2019 01:51:48 GMT  
		Size: 12.2 MB (12196940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b0bda6fb588b0176aef9b8907b93677f3f77e1fca9a6a3d5ba31abd1b339b5`  
		Last Modified: Fri, 11 Jan 2019 01:51:47 GMT  
		Size: 4.2 MB (4160030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
