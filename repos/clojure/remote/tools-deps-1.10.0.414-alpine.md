## `clojure:tools-deps-1.10.0.414-alpine`

```console
$ docker pull clojure@sha256:73550432db815953301734bef6901c710f47c37bd2d084894fec33f4da450c31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:tools-deps-1.10.0.414-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:c21f143db023546cf01ab340aedaf954439ca0cba215287d8439e5819d1946bd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.0 MB (99039324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3588f2a5a41f85d27e734a4b85f61a876c37ecaeb9da2a3f438dac291340c21f`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

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
# Fri, 08 Mar 2019 04:32:51 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Fri, 08 Mar 2019 04:32:51 GMT
ENV CLOJURE_VERSION=1.10.0.414
# Fri, 08 Mar 2019 04:32:51 GMT
WORKDIR /tmp
# Fri, 08 Mar 2019 04:32:54 GMT
RUN apk add --update --no-cache bash curl
# Fri, 08 Mar 2019 04:32:57 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Fri, 08 Mar 2019 04:33:15 GMT
RUN clojure -e "(clojure-version)"
# Fri, 08 Mar 2019 04:33:15 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
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
	-	`sha256:2675d7ed5d12fc25eed6cc06dc24f15882d118142dd447567d4bd3b36db4f74f`  
		Last Modified: Fri, 08 Mar 2019 04:34:06 GMT  
		Size: 1.7 MB (1707501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f785697e40bf4fd10bca40f89054d581f5980164cc3311f97fcd317a43febd`  
		Last Modified: Fri, 08 Mar 2019 04:34:07 GMT  
		Size: 19.8 MB (19762037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db56b8a2691e6d1749951af55c45691aa37fde7f3444d131e5986cabc628579`  
		Last Modified: Fri, 08 Mar 2019 04:34:05 GMT  
		Size: 4.1 MB (4102741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
