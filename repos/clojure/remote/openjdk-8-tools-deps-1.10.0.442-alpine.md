## `clojure:openjdk-8-tools-deps-1.10.0.442-alpine`

```console
$ docker pull clojure@sha256:476958e910b6304fb33612f15317a36d8797e2560f88a8ff640154ace446c013
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:openjdk-8-tools-deps-1.10.0.442-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:dfd92c3b3c15e7379fef3a44067daf94ee5a9bbbbe383854236fa336d64ba67e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99050858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1ede5c7141542fb80effeb1be86c5bddb4a96fa2349d9f9c916ffcafcf99704`
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
# Tue, 02 Apr 2019 23:45:30 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Tue, 02 Apr 2019 23:45:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 00:12:27 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Wed, 03 Apr 2019 00:12:27 GMT
ENV CLOJURE_VERSION=1.10.0.442
# Wed, 03 Apr 2019 00:12:27 GMT
WORKDIR /tmp
# Wed, 03 Apr 2019 00:12:29 GMT
RUN apk add --update --no-cache bash curl
# Wed, 03 Apr 2019 00:12:31 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Wed, 03 Apr 2019 00:12:40 GMT
RUN clojure -e "(clojure-version)"
# Wed, 03 Apr 2019 00:12:40 GMT
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
	-	`sha256:ec484ea07ed1e4b3d2c8bb6ffb98d668fc1602607ced25e40a0d3649c875af12`  
		Last Modified: Tue, 02 Apr 2019 23:47:15 GMT  
		Size: 70.7 MB (70716050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c33cbc0d54e6df2498e43eb88e550d33d3b23905b9b97ff311c5908d2e6af8`  
		Last Modified: Wed, 03 Apr 2019 00:13:26 GMT  
		Size: 1.7 MB (1708447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b862a9477e83b252a6df40f86c7132c413b899817678046e3967cf3d8d915970`  
		Last Modified: Wed, 03 Apr 2019 00:13:27 GMT  
		Size: 19.8 MB (19768711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf84f13803476b62df98c260f09d3e4c01c257b864a6beb09a6d680de2a2c70`  
		Last Modified: Wed, 03 Apr 2019 00:13:26 GMT  
		Size: 4.1 MB (4102682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
