## `clojure:tools-deps-alpine`

```console
$ docker pull clojure@sha256:cb881b39d11d23b67b69e7b1630acf9339899f5af2c9a7e5e84c022cf2002801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:tools-deps-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:f3df033ba8015cd5294f2ff0deaddc99a358c865ae8dcd1d88c42ad014e00adf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.9 MB (97915721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2490066f4dfc2855da45724375882061cdd24b387e5408351a6eb32ce276e869`
-	Default Command: `["\/bin\/sh"]`

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
# Wed, 11 Jul 2018 01:20:45 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Wed, 11 Jul 2018 01:20:45 GMT
ENV CLOJURE_VERSION=1.9.0.381
# Wed, 11 Jul 2018 01:20:45 GMT
WORKDIR /tmp
# Wed, 11 Jul 2018 01:20:47 GMT
RUN apk add --update bash curl && rm -rf /var/cache/apk/*
# Wed, 11 Jul 2018 01:20:53 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Wed, 11 Jul 2018 01:21:10 GMT
RUN clojure -e "(clojure-version)"
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
	-	`sha256:5c98cf93c733cfb60f7731473109837cdb84a0214588985e018abadd8fa3831f`  
		Last Modified: Wed, 11 Jul 2018 01:24:07 GMT  
		Size: 1.7 MB (1688221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28751b6450790cf418ba25e43ad72668a76ff266f8d4c9ed02ea4087da1b8dcd`  
		Last Modified: Wed, 11 Jul 2018 01:24:11 GMT  
		Size: 19.5 MB (19547945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c0797e5c071ecc57ae0116c4f64306ff06a3963666b01c3be235909856aa31`  
		Last Modified: Wed, 11 Jul 2018 01:24:07 GMT  
		Size: 3.9 MB (3891391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
