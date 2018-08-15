## `clojure:tools-deps-1.9.0.391-alpine`

```console
$ docker pull clojure@sha256:c50c844724bdddc42167bf4fa255ee4a10c3d0261e1b526857eaabad5d3ac712
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:tools-deps-1.9.0.391-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:6e7833d76e291d1af90775764fcda5fb59b2b3cd09bba21a602a838281f54514
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.0 MB (97999379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22b3f1aa3c6262110af2a29db35f59eccc6b86dc75931a9b09e805bea9fbae43`
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
# Wed, 15 Aug 2018 20:26:47 GMT
ENV CLOJURE_VERSION=1.9.0.391
# Wed, 15 Aug 2018 20:26:47 GMT
WORKDIR /tmp
# Wed, 15 Aug 2018 20:26:50 GMT
RUN echo '@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories &&   apk add --update --no-cache bash curl rlwrap@testing
# Wed, 15 Aug 2018 20:26:52 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Wed, 15 Aug 2018 20:26:59 GMT
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
	-	`sha256:287bcb8f0e2b97322bc0254ae8977155d42173603d81d1c54a427d39af8b0a24`  
		Last Modified: Wed, 15 Aug 2018 20:33:33 GMT  
		Size: 1.8 MB (1771770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293a0e148e57b605d853837ee0bbf0c122ad69da4b98ee163db91061c5dde06f`  
		Last Modified: Wed, 15 Aug 2018 20:33:35 GMT  
		Size: 19.5 MB (19548090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bcfb0e82ba89f88c5050fe7490cb12e24ef2e20d8fa72924e06f568b78de5a`  
		Last Modified: Wed, 15 Aug 2018 20:33:32 GMT  
		Size: 3.9 MB (3891355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
