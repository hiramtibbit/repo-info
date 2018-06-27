## `clojure:tools-deps-alpine`

```console
$ docker pull clojure@sha256:1e468ac2d730125009c04829b7a764616a05d8ce12e4c7ac53b4b7c7a75e155a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:tools-deps-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:20525c37c9f09d7a35f05f236e606386c5edb727fb341b883f409575b5a5754f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97523467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7802172ecee05bb9375d34db47a57e62bc0ad093b2f25df6b000ead78a201dbf`
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
# Wed, 27 Jun 2018 05:39:18 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Wed, 27 Jun 2018 05:39:18 GMT
ENV CLOJURE_VERSION=1.9.0.381
# Wed, 27 Jun 2018 05:39:18 GMT
WORKDIR /tmp
# Wed, 27 Jun 2018 05:39:20 GMT
RUN apk add --update bash curl && rm -rf /var/cache/apk/*
# Wed, 27 Jun 2018 05:39:21 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Wed, 27 Jun 2018 05:39:27 GMT
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
	-	`sha256:b75fdb3e3c554cc2c9286fd888bda32fefbe757da00f126c95cd7829245a837c`  
		Last Modified: Wed, 27 Jun 2018 05:43:40 GMT  
		Size: 1.7 MB (1700089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff48f68b4cbe74b78805dc067f545c8b969097ccd3fe9d889818bacd18992985`  
		Last Modified: Wed, 27 Jun 2018 05:43:42 GMT  
		Size: 19.5 MB (19547939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30373bd8b545f91c1840cf9ac9fffea627840731e9c9f9d8fbf393639146a63c`  
		Last Modified: Wed, 27 Jun 2018 05:43:40 GMT  
		Size: 3.9 MB (3891354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
