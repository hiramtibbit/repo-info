## `clojure:tools-deps-1.10.0.411-alpine`

```console
$ docker pull clojure@sha256:70345fb18f52bd6afeb23f75e54b6ab745096a941afe003ad40f2f035367be00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:tools-deps-1.10.0.411-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:3dfc7d4b563ebe39e48975e7d25ccec894b5e060508cbcee663eb91a2413c6b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.4 MB (98414372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08d30bb5941e3296345994c0c0e3fd83ba8e7639db3b405cb2cdc592d1278f64`
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
# Fri, 11 Jan 2019 00:26:01 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 00:26:01 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 11 Jan 2019 00:26:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 11 Jan 2019 01:51:10 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Fri, 11 Jan 2019 01:51:10 GMT
ENV CLOJURE_VERSION=1.10.0.411
# Fri, 11 Jan 2019 01:51:10 GMT
WORKDIR /tmp
# Fri, 11 Jan 2019 01:51:12 GMT
RUN apk add --update --no-cache bash curl
# Fri, 11 Jan 2019 01:51:14 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Fri, 11 Jan 2019 01:51:23 GMT
RUN clojure -e "(clojure-version)"
# Fri, 11 Jan 2019 01:51:23 GMT
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
	-	`sha256:88b05767cad1d214d47942193ae9397b177ebf5866fa7997ed3b59e9f4c52a38`  
		Last Modified: Fri, 11 Jan 2019 00:29:57 GMT  
		Size: 70.7 MB (70650933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e6cf52cdf84cc5c2de21345b42657d9448059a4c7e3bda6e1ddea3e60a58729`  
		Last Modified: Fri, 11 Jan 2019 01:52:06 GMT  
		Size: 1.7 MB (1691574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da6f713b441dbb2d77e81678d7e5cdf1d7ed6851411831c390de475d93da564`  
		Last Modified: Fri, 11 Jan 2019 01:52:07 GMT  
		Size: 19.8 MB (19761925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95eacd31b4cc70be20c4542f04ceab2bf3d9dfcb6dbf788490c2c3c71312924d`  
		Last Modified: Fri, 11 Jan 2019 01:52:05 GMT  
		Size: 4.1 MB (4102678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
