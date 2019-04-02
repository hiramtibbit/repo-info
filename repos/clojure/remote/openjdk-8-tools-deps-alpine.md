## `clojure:openjdk-8-tools-deps-alpine`

```console
$ docker pull clojure@sha256:da66d938d69bb72bb62acd4dcf8c78ea23c79c3b426910a5228f32fb471c3036
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:openjdk-8-tools-deps-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:7bb9c7691697c0033cf4872898204edb8baa843f5dba19ab7f025cd129d7169f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99084483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75df8f208a014d14c230bb2ad02ab88494fded094704afad38f1384239f9b0bf`
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
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_VERSION=8u201
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Wed, 27 Mar 2019 23:27:22 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Mar 2019 23:27:23 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 00:38:10 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Mon, 01 Apr 2019 23:20:26 GMT
ENV CLOJURE_VERSION=1.10.0.442
# Mon, 01 Apr 2019 23:20:27 GMT
WORKDIR /tmp
# Mon, 01 Apr 2019 23:20:28 GMT
RUN apk add --update --no-cache bash curl
# Mon, 01 Apr 2019 23:20:30 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Mon, 01 Apr 2019 23:20:40 GMT
RUN clojure -e "(clojure-version)"
# Mon, 01 Apr 2019 23:20:41 GMT
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
	-	`sha256:0b0a34324bda0ebdff7d633cba988a61e40f464739f635ebbfaedab22788370d`  
		Last Modified: Wed, 27 Mar 2019 23:46:31 GMT  
		Size: 68.5 MB (68527031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da56be406b88bb54da46ee8f2bc94eff5d3c17cde305aa142f4f305eaa98c91`  
		Last Modified: Wed, 27 Mar 2019 23:46:25 GMT  
		Size: 2.2 MB (2222623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6ccfb14622364ab5021542afeb7a55d1c46c7565b7237010bb813cc8759833`  
		Last Modified: Mon, 01 Apr 2019 23:21:31 GMT  
		Size: 1.7 MB (1708421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8674c71956a5e8a7ad19805a34e573f57afc63b5848194b5745d75c381981366`  
		Last Modified: Mon, 01 Apr 2019 23:21:32 GMT  
		Size: 19.8 MB (19768718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab880b6db2bb3be59b6e16e9bf5ba453f11f4016d6514871a069d3f931620518`  
		Last Modified: Mon, 01 Apr 2019 23:21:31 GMT  
		Size: 4.1 MB (4102722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
