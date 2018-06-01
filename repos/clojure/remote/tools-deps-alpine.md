## `clojure:tools-deps-alpine`

```console
$ docker pull clojure@sha256:ea49a56daac4743755cb223147bb437fce0d350c8d717d2fbdc74d166c8a0889
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:tools-deps-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:a353d86a10acb5818e0e373605427c2e4f4b237620557ac0d65baf3172b14023
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97432955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96bea29857248f259d83c87402ba53738929b362ab53fbcfc1a95cc21507a349`
-	Default Command: `["\/bin\/sh"]`

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
# Mon, 23 Apr 2018 21:47:29 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Fri, 01 Jun 2018 18:20:32 GMT
ENV CLOJURE_VERSION=1.9.0.381
# Fri, 01 Jun 2018 18:20:32 GMT
WORKDIR /tmp
# Fri, 01 Jun 2018 18:20:33 GMT
RUN apk add --update bash curl && rm -rf /var/cache/apk/*
# Fri, 01 Jun 2018 18:20:35 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Fri, 01 Jun 2018 18:20:44 GMT
RUN clojure -e "(clojure-version)"
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
	-	`sha256:ef9141e586fe7093f5e2278e4242479597e2add3bba9536afe6e2341fe8d0cbd`  
		Last Modified: Fri, 01 Jun 2018 18:21:24 GMT  
		Size: 1.7 MB (1700115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ef83c438f950246ba04d0556cb1977aaf61d267794933286cf48e9ff99e867`  
		Last Modified: Fri, 01 Jun 2018 18:21:26 GMT  
		Size: 19.5 MB (19547941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfed23f8404a8627d3b3571dc031b68ac225b7affd551b94aff731847e7d9cf8`  
		Last Modified: Fri, 01 Jun 2018 18:21:24 GMT  
		Size: 3.9 MB (3891360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
