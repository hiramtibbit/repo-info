## `clojure:lein-alpine-onbuild`

```console
$ docker pull clojure@sha256:6abc52a4761a5bc4dc912383fcd91ce366470183fa6c3d906d9efc9d4a5ba0dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:lein-alpine-onbuild` - linux; amd64

```console
$ docker pull clojure@sha256:f770d6495e2907c690718dc9c6ae92996c5a60e6820b8dc7314a099518f809f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.1 MB (97052937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3be6badc7d41825d9b8b6c9736fdac00dd8e52216c1919d14a5a19d51467d94`
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
# Mon, 23 Apr 2018 21:40:11 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Mon, 23 Apr 2018 21:40:11 GMT
ENV LEIN_VERSION=2.8.1
# Mon, 23 Apr 2018 21:40:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Mon, 23 Apr 2018 21:40:12 GMT
WORKDIR /tmp
# Mon, 23 Apr 2018 21:40:17 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Mon, 23 Apr 2018 21:40:55 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "019faa5f91a463bf9742c3634ee32fb3db8c47f0 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Mon, 23 Apr 2018 21:40:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Mon, 23 Apr 2018 21:40:56 GMT
ENV LEIN_ROOT=1
# Mon, 23 Apr 2018 21:41:03 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.9.0"]])' > project.clj   && lein deps && rm project.clj
# Mon, 23 Apr 2018 21:41:24 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Mon, 23 Apr 2018 21:41:25 GMT
WORKDIR /usr/src/app
# Mon, 23 Apr 2018 21:41:25 GMT
ONBUILD COPY project.clj /usr/src/app/
# Mon, 23 Apr 2018 21:41:25 GMT
ONBUILD RUN lein deps
# Mon, 23 Apr 2018 21:41:26 GMT
ONBUILD COPY . /usr/src/app
# Mon, 23 Apr 2018 21:41:26 GMT
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
	-	`sha256:95c65b056f7d563ffe71ab5551f611ec3435f9552f33aa375cfcd58c55814789`  
		Last Modified: Mon, 23 Apr 2018 21:50:28 GMT  
		Size: 8.7 MB (8680019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbcf506d41384d154f0c8c2e1fa4ea7f888872a48003f5bf6cca9a6a4ec49421`  
		Last Modified: Mon, 23 Apr 2018 21:50:26 GMT  
		Size: 12.1 MB (12137468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5ce1d2f5ef248d7301a2c81e9b474acc1afec0a62c45844e62ab0ac15e8b9e`  
		Last Modified: Mon, 23 Apr 2018 21:50:25 GMT  
		Size: 3.9 MB (3941785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad74482df5e8132bb5aab0f802ef48dce2849469929436ad89b9601d77f072a`  
		Last Modified: Mon, 23 Apr 2018 21:51:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
