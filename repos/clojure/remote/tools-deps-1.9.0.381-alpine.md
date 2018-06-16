## `clojure:tools-deps-1.9.0.381-alpine`

```console
$ docker pull clojure@sha256:7f42d3d8b575c4fe5b7ecd752e88ac2538693490c12d7ec314910b7c209b1886
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:tools-deps-1.9.0.381-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:be35cc466759ff7be9a0f7f33bba7d86e248aafee99d92cd6277d510017c3558
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97523470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f3e2051c7486bbec51cae7cf6a9a1e8f66ca282713b0874b80e7db66c3c6888`
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
# Sat, 16 Jun 2018 08:02:42 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Sat, 16 Jun 2018 08:02:42 GMT
ENV CLOJURE_VERSION=1.9.0.381
# Sat, 16 Jun 2018 08:02:42 GMT
WORKDIR /tmp
# Sat, 16 Jun 2018 08:02:44 GMT
RUN apk add --update bash curl && rm -rf /var/cache/apk/*
# Sat, 16 Jun 2018 08:02:47 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Sat, 16 Jun 2018 08:02:55 GMT
RUN clojure -e "(clojure-version)"
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
	-	`sha256:3a3c7d1a9928c0fb4b2c6e9995326bd8f6c2da444b45c5055c1c48bf059b1c9c`  
		Last Modified: Sat, 16 Jun 2018 08:05:41 GMT  
		Size: 1.7 MB (1700057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31834d7517160bc03dadb8960fc7b5ca57450ae63696f903a23a32de5022d73`  
		Last Modified: Sat, 16 Jun 2018 08:05:51 GMT  
		Size: 19.5 MB (19547940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ecebd950b07df638bd292ebc360eda3bede530f9c3f08edf7492f97adb6e10`  
		Last Modified: Sat, 16 Jun 2018 08:05:42 GMT  
		Size: 3.9 MB (3891388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
