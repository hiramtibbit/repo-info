## `clojure:lein-alpine-onbuild`

```console
$ docker pull clojure@sha256:54bd82e45e74503134fcb55f92f99dda6b4c45bad956e84dafc814e068249865
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:lein-alpine-onbuild` - linux; amd64

```console
$ docker pull clojure@sha256:a2a913909117075cc6d12a3c8a49fac572cfbcb388f12b365a507a12f3c0040a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97458179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74f70c1ee3cb8a9e55ec63689616bccc5d3c4eda9304f8b415077e8299a8d1a0`
-	Default Command: `["lein","run"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:34:53 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 00:34:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 00:34:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 11 Jul 2018 00:34:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 00:34:54 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 00:34:55 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 11 Jul 2018 00:35:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 11 Jul 2018 01:16:21 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Wed, 11 Jul 2018 01:16:21 GMT
ENV LEIN_VERSION=2.8.1
# Wed, 11 Jul 2018 01:16:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 11 Jul 2018 01:16:21 GMT
WORKDIR /tmp
# Wed, 15 Aug 2018 20:22:10 GMT
RUN apk add --update --no-cache tar gnupg bash openssl
# Wed, 15 Aug 2018 20:22:18 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "019faa5f91a463bf9742c3634ee32fb3db8c47f0 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 15 Aug 2018 20:22:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Wed, 15 Aug 2018 20:22:18 GMT
ENV LEIN_ROOT=1
# Wed, 15 Aug 2018 20:22:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.9.0"]])' > project.clj   && lein deps && rm project.clj
# Wed, 15 Aug 2018 20:22:41 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Wed, 15 Aug 2018 20:22:42 GMT
WORKDIR /usr/src/app
# Wed, 15 Aug 2018 20:22:42 GMT
ONBUILD COPY project.clj /usr/src/app/
# Wed, 15 Aug 2018 20:22:42 GMT
ONBUILD RUN lein deps
# Wed, 15 Aug 2018 20:22:42 GMT
ONBUILD COPY . /usr/src/app
# Wed, 15 Aug 2018 20:22:43 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311ad0da45338842480bf25c6e6b7bb133b7b8cf709c3470db171ec370da5539`  
		Last Modified: Wed, 11 Jul 2018 00:37:45 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df312c74ce16f20eeb87b5640db9b1579a53534bd3e9f3de1e916fc62744bcf4`  
		Last Modified: Wed, 11 Jul 2018 00:38:02 GMT  
		Size: 70.6 MB (70581383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18ee45df1874518ffe6190fce608abea7207e27543d348e37912634996b2490a`  
		Last Modified: Wed, 15 Aug 2018 20:29:46 GMT  
		Size: 8.6 MB (8590581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1a437d40b17f704ed1f6d0e790d73f70b094215295bbefe4d40dd191ab28b8`  
		Last Modified: Wed, 15 Aug 2018 20:29:45 GMT  
		Size: 12.1 MB (12137483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cd9d395661303229bfd6e4ab2b2323516e635a923ded0916331989b20c2c806`  
		Last Modified: Wed, 15 Aug 2018 20:29:44 GMT  
		Size: 3.9 MB (3941826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c029b910758f01b755bceba73a3f9c49ecc76fac34f08cc5664747a73de5d695`  
		Last Modified: Wed, 15 Aug 2018 20:30:49 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
