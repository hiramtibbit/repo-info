## `clojure:alpine-onbuild`

```console
$ docker pull clojure@sha256:898fef2fd6f8fc13a935d28cf9b1ec57d6f9db9af991eeb32750daaa16999204
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:alpine-onbuild` - linux; amd64

```console
$ docker pull clojure@sha256:1acd0909d06f87e2c253e77423ee0c4e0ca5902cfd362f9133099f00419ac0cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97458177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc670527618af036700ae5629b263b88d55cc02804052c215bcc1a79efbc62cc`
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
# Wed, 11 Jul 2018 01:16:24 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Wed, 11 Jul 2018 01:16:32 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "019faa5f91a463bf9742c3634ee32fb3db8c47f0 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 11 Jul 2018 01:16:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Wed, 11 Jul 2018 01:16:33 GMT
ENV LEIN_ROOT=1
# Wed, 11 Jul 2018 01:16:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.9.0"]])' > project.clj   && lein deps && rm project.clj
# Wed, 11 Jul 2018 01:17:13 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Wed, 11 Jul 2018 01:17:13 GMT
WORKDIR /usr/src/app
# Wed, 11 Jul 2018 01:17:13 GMT
ONBUILD COPY project.clj /usr/src/app/
# Wed, 11 Jul 2018 01:17:14 GMT
ONBUILD RUN lein deps
# Wed, 11 Jul 2018 01:17:14 GMT
ONBUILD COPY . /usr/src/app
# Wed, 11 Jul 2018 01:17:14 GMT
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
	-	`sha256:1be35f854e362c8ecec356bcd7c6928e081f5ad77b038194eef3b4e805d5d235`  
		Last Modified: Wed, 11 Jul 2018 01:21:38 GMT  
		Size: 8.6 MB (8590549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc136293f1a7cb13799d96bb4b3194614ee0735d757085cd60c73dcee07f0f80`  
		Last Modified: Wed, 11 Jul 2018 01:21:36 GMT  
		Size: 12.1 MB (12137474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e02a7cdfeb067903e364345cadb4239e0207de3db53e656743020fba8c2a3a`  
		Last Modified: Wed, 11 Jul 2018 01:21:35 GMT  
		Size: 3.9 MB (3941864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6320de04833b7d02a1b60259420757f28ce60b78478e5bbdb7bdb87bb0647a7c`  
		Last Modified: Wed, 11 Jul 2018 01:22:26 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
