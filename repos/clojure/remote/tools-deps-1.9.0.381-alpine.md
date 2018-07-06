## `clojure:tools-deps-1.9.0.381-alpine`

```console
$ docker pull clojure@sha256:3fe583e6ffcf55a9262c9659e2df5c8bf45def736ef83cc6f8ce27e509657121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:tools-deps-1.9.0.381-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:e4b9d1d58a319800a5c12f5c5222b44fc7ba77bfc32c35573098e3ceca356405
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97561668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cde16c083b3245dbade884f6ba27900a92eadc61fb89fdf12781286bb95cb22a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:51:15 GMT
ENV LANG=C.UTF-8
# Fri, 06 Jul 2018 15:51:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 06 Jul 2018 15:51:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 06 Jul 2018 15:51:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 06 Jul 2018 15:51:16 GMT
ENV JAVA_VERSION=8u171
# Fri, 06 Jul 2018 15:51:16 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Fri, 06 Jul 2018 15:51:21 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 06 Jul 2018 19:35:27 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Fri, 06 Jul 2018 19:35:27 GMT
ENV CLOJURE_VERSION=1.9.0.381
# Fri, 06 Jul 2018 19:35:27 GMT
WORKDIR /tmp
# Fri, 06 Jul 2018 19:35:29 GMT
RUN apk add --update bash curl && rm -rf /var/cache/apk/*
# Fri, 06 Jul 2018 19:35:32 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Fri, 06 Jul 2018 19:35:47 GMT
RUN clojure -e "(clojure-version)"
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4001add52a901363833fa030b1451162d380a5423906a45f64e090a5ee9efb74`  
		Last Modified: Fri, 06 Jul 2018 15:54:00 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874028933da5d2edc0a5683332de9b0d399ef73993ce0048b1f9433d6d779026`  
		Last Modified: Fri, 06 Jul 2018 15:54:11 GMT  
		Size: 70.3 MB (70318463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0dd214f1c67aef0ac437f73f53b0a72b1fc41a0559a2bc13bfd9a7a423b05d`  
		Last Modified: Fri, 06 Jul 2018 19:41:55 GMT  
		Size: 1.7 MB (1700121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530163f41d7c7970f6ba8947f1ba6982f4ba55314e3d20184988859951556902`  
		Last Modified: Fri, 06 Jul 2018 19:41:57 GMT  
		Size: 19.5 MB (19547941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fea70688a9f85ff0ecaca05ffa65534a084cebade2b4e54d70a420e8e6f607`  
		Last Modified: Fri, 06 Jul 2018 19:41:55 GMT  
		Size: 3.9 MB (3891354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
