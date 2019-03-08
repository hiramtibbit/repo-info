## `clojure:lein-2.9.1-alpine`

```console
$ docker pull clojure@sha256:578ac24fd0b61d3d226a166ef9c76f1d8e8358f6f11087dc582b56f8f8261f7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:lein-2.9.1-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:d5454be246358c9cd683a06108ccdecc8b31a0341e45973af480bef708e8cf1e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.1 MB (98083454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9daa35cb7cbb3e8ec35a10ba7ce75bf5e2446aafdde24c09319c2695aad7633`
-	Default Command: `["lein","repl"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 02:13:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 02:13:34 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 04:30:47 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Fri, 08 Mar 2019 04:30:47 GMT
ENV LEIN_VERSION=2.9.1
# Fri, 08 Mar 2019 04:30:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 08 Mar 2019 04:30:48 GMT
WORKDIR /tmp
# Fri, 08 Mar 2019 04:30:50 GMT
RUN apk add --update --no-cache tar gnupg bash openssl
# Fri, 08 Mar 2019 04:30:52 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && sha1sum lein-pkg   && echo "93be2c23ab4ff2fc4fcf531d7510ca4069b8d24a *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Fri, 08 Mar 2019 04:30:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Fri, 08 Mar 2019 04:30:52 GMT
ENV LEIN_ROOT=1
# Fri, 08 Mar 2019 04:30:59 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.10.0"]])' > project.clj   && lein deps && rm project.clj
# Fri, 08 Mar 2019 04:30:59 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e04b7d13ab51df65ba1284789563d2ca346b259251206cd707e58e1aabb6b7`  
		Last Modified: Fri, 08 Mar 2019 02:16:03 GMT  
		Size: 70.7 MB (70712077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69bcf01376dd191eb6bcaabda60683d377b9a4a22682837342e444c89fc97fa5`  
		Last Modified: Fri, 08 Mar 2019 04:33:48 GMT  
		Size: 7.3 MB (7320805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d14976b57fbf819496c607d619a9386ee002664576b9fd1cc7cb8741c001f4`  
		Last Modified: Fri, 08 Mar 2019 04:33:47 GMT  
		Size: 13.1 MB (13138210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fec18d8eb311f3c4563fed97e8ebf40e2f997daed9b74d3265d38577b3c9646`  
		Last Modified: Fri, 08 Mar 2019 04:33:47 GMT  
		Size: 4.2 MB (4157394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
