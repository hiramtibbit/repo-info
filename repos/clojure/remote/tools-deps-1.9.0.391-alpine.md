## `clojure:tools-deps-1.9.0.391-alpine`

```console
$ docker pull clojure@sha256:96a026e3089ba4c31d3412b8602cb3855eb08333d4c7e75c09e5377fc1aae93c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:tools-deps-1.9.0.391-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:c6d10117c6aa2712a17406556b77a2a847a2803e126625089082dc0595bc3823
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.0 MB (98001308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5143caf6c084be2c547c9d536452a9f08e6935bbde36f5e59b790f2665bbad1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 01:23:02 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:23:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 05 Sep 2018 01:23:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_VERSION=8u171
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 05 Sep 2018 01:23:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 05 Sep 2018 12:11:19 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Wed, 05 Sep 2018 12:11:19 GMT
ENV CLOJURE_VERSION=1.9.0.391
# Wed, 05 Sep 2018 12:11:19 GMT
WORKDIR /tmp
# Wed, 05 Sep 2018 12:11:22 GMT
RUN echo '@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories &&   apk add --update --no-cache bash curl rlwrap@testing
# Wed, 05 Sep 2018 12:11:24 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Wed, 05 Sep 2018 12:11:44 GMT
RUN clojure -e "(clojure-version)"
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2146c373b4668ab06b15e7bed7d009c501c752b3de4c71491e4fc1a4b5d4d71a`  
		Last Modified: Wed, 05 Sep 2018 01:41:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c25b7e741b44f5fbe32ea548b5bc3c49b59cde87cb61dfb823b8606b3b82a0`  
		Last Modified: Wed, 05 Sep 2018 01:41:22 GMT  
		Size: 70.6 MB (70581257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41b74871320556f37e07444f306cf1f74f245fa1d9dc419fc8e137a79b9f621`  
		Last Modified: Wed, 05 Sep 2018 12:13:47 GMT  
		Size: 1.8 MB (1773826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9509af8831be3b9f3158f815f5cf9ae6a22b531b167b5d25b7d8a113ce0babd9`  
		Last Modified: Wed, 05 Sep 2018 12:13:48 GMT  
		Size: 19.5 MB (19548056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0aa3cef444d22415de99250b7aa745d65729afd2d1b183420582b6b8b796cc`  
		Last Modified: Wed, 05 Sep 2018 12:13:46 GMT  
		Size: 3.9 MB (3891387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
