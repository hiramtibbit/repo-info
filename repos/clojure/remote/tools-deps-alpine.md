## `clojure:tools-deps-alpine`

```console
$ docker pull clojure@sha256:df6be9572307048ab95a861dae0c20482a2b883b72222890910d2547fb15f6fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:tools-deps-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:778ce675da89c7448a304638cfcaffbcaf918f009b79752dd651ba65bc146fab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.0 MB (98032687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5a1c731ee9cf46a71842a212378cb97038de2ca0960b6f3dd441bb81fb3fc5b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:06:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 12 Sep 2018 00:06:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_VERSION=8u181
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Wed, 24 Oct 2018 22:31:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 24 Oct 2018 23:04:55 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Wed, 24 Oct 2018 23:04:56 GMT
ENV CLOJURE_VERSION=1.9.0.394
# Wed, 24 Oct 2018 23:04:56 GMT
WORKDIR /tmp
# Wed, 24 Oct 2018 23:04:57 GMT
RUN echo '@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories &&   apk add --update --no-cache bash curl rlwrap@testing
# Wed, 24 Oct 2018 23:05:08 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Wed, 24 Oct 2018 23:05:24 GMT
RUN clojure -e "(clojure-version)"
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef87ded15917facc562d84e802d02ded848ae802cc04194400ba4cb8798dd4f7`  
		Last Modified: Wed, 24 Oct 2018 22:43:46 GMT  
		Size: 70.6 MB (70610525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059522ccacd7a3c3040df1b7e2eafb65169f1570a5169425b6e22439876ad988`  
		Last Modified: Wed, 24 Oct 2018 23:08:17 GMT  
		Size: 1.8 MB (1774824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c8a7821b0a7a6cbc970cd9bd05635748ecf9eb06c8a9648a6968fe71df49a19`  
		Last Modified: Wed, 24 Oct 2018 23:08:19 GMT  
		Size: 19.5 MB (19548782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4db0b6f472919bdb02705ae2883daea4077b0abe8255667f3dc0e3d125e76a9`  
		Last Modified: Wed, 24 Oct 2018 23:08:17 GMT  
		Size: 3.9 MB (3891387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
