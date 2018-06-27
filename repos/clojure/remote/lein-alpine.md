## `clojure:lein-alpine`

```console
$ docker pull clojure@sha256:05180b2084e94772fc357558ad0d8daf75d206a6c200a106a02be83ace051a6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:lein-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:db8854452f027c148a41c19d9975170d21ed04f966b2453708d19bb1c063eaab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.2 MB (97173686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa48b0407b5f69d40ddf13599a2036e6d00d619c9cab2292ef19935ce2e64399`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:55:39 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:57:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 06 Jun 2018 01:57:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 16 Jun 2018 07:22:40 GMT
ENV JAVA_VERSION=8u171
# Sat, 16 Jun 2018 07:22:40 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Sat, 16 Jun 2018 07:22:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Jun 2018 05:33:48 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Wed, 27 Jun 2018 05:33:48 GMT
ENV LEIN_VERSION=2.8.1
# Wed, 27 Jun 2018 05:33:48 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 27 Jun 2018 05:33:49 GMT
WORKDIR /tmp
# Wed, 27 Jun 2018 05:33:51 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Wed, 27 Jun 2018 05:33:59 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "019faa5f91a463bf9742c3634ee32fb3db8c47f0 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 27 Jun 2018 05:33:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Wed, 27 Jun 2018 05:33:59 GMT
ENV LEIN_ROOT=1
# Wed, 27 Jun 2018 05:34:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.9.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8906544047d741c82ab8e4f6b3a698cdc37170b9afe8006a7c2aee85bc78618`  
		Last Modified: Wed, 06 Jun 2018 02:15:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7120596ce621571aded381ea153b8cb4916c306331648b2e6f3d09a93c3967e4`  
		Last Modified: Sat, 16 Jun 2018 07:30:42 GMT  
		Size: 70.3 MB (70318307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667a721123cb22d7a38aa4c473282c673880582ccecebf103503676f34b6b0ca`  
		Last Modified: Wed, 27 Jun 2018 05:41:05 GMT  
		Size: 8.7 MB (8710345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86084a0e1b60c98052fa74f2bcc1848ce841341efe1a225c6e134b173325f873`  
		Last Modified: Wed, 27 Jun 2018 05:41:05 GMT  
		Size: 12.1 MB (12137461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43968a156fe0915d859bb67fd816c9e55b182848820c6479bac2af269e2bf9e1`  
		Last Modified: Wed, 27 Jun 2018 05:41:04 GMT  
		Size: 3.9 MB (3941795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
