## `clojure:tools-deps-1.10.0.411-alpine`

```console
$ docker pull clojure@sha256:f9bd5836128a34ee45c7639dec2093b3eaf77318e910bca21013407d01f8050e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:tools-deps-1.10.0.411-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:6a104c615a81af892c102af601e65ddf15b7fdd7e1131193e51ab8ec68a7ee65
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.4 MB (98374195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:785825b6b70d0bece412eb3379ad03f535d19664a1547c651e42d48926ba10ce`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:40:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 00:40:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 00:40:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 21 Dec 2018 00:40:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 00:40:59 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 00:40:59 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 00:41:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 05:32:22 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Mon, 07 Jan 2019 21:19:56 GMT
ENV CLOJURE_VERSION=1.10.0.411
# Mon, 07 Jan 2019 21:19:56 GMT
WORKDIR /tmp
# Mon, 07 Jan 2019 21:19:57 GMT
RUN apk add --update --no-cache bash curl
# Mon, 07 Jan 2019 21:19:59 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Mon, 07 Jan 2019 21:20:09 GMT
RUN clojure -e "(clojure-version)"
# Mon, 07 Jan 2019 21:20:09 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35920a071f912ae4c16897610e8e2d514efcfd0e14ec76c4c73bf9aa7c2c55ea`  
		Last Modified: Fri, 21 Dec 2018 00:44:42 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a5c2c61767e93d1e332a4319f396f39b0dc6b2ee9e4cd2b9d0d5270c82556c`  
		Last Modified: Fri, 21 Dec 2018 00:44:52 GMT  
		Size: 70.6 MB (70610751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ba372a4b0b89e7b79540994574f4f6638e041f2909843cbebab32c8a7b56cc`  
		Last Modified: Mon, 07 Jan 2019 21:21:18 GMT  
		Size: 1.7 MB (1691571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360303a5467254b992e5b28d2c4ae9251ca3b2aa8940e1f0e011afa686feb82e`  
		Last Modified: Mon, 07 Jan 2019 21:21:19 GMT  
		Size: 19.8 MB (19761932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9bfa09994a8139b2c2c7a1d87ee51f16b63653938de0db436901fe371a177c6`  
		Last Modified: Mon, 07 Jan 2019 21:21:18 GMT  
		Size: 4.1 MB (4102679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
