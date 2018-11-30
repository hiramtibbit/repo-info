## `clojure:openjdk-8-tools-deps-alpine`

```console
$ docker pull clojure@sha256:48774e689a88ce027da9b213185954f50dea55cde813c1f133dfd59f83fa5202
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:openjdk-8-tools-deps-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:d7d20eece0e2d01fd6787678e7e3e867fe7025f8e24f1d245d6f122799cae223
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.9 MB (97949938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b6a7eda9a686173c5e30870ca66cf54ef5a09a6ca16d690998cfdc1389bef07`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:06:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 12 Sep 2018 00:06:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_VERSION=8u181
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Wed, 24 Oct 2018 22:31:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 24 Oct 2018 23:04:55 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Mon, 05 Nov 2018 23:22:54 GMT
ENV CLOJURE_VERSION=1.9.0.397
# Mon, 05 Nov 2018 23:22:54 GMT
WORKDIR /tmp
# Fri, 30 Nov 2018 00:23:47 GMT
RUN apk add --update --no-cache bash curl
# Fri, 30 Nov 2018 00:24:02 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Fri, 30 Nov 2018 00:24:10 GMT
RUN clojure -e "(clojure-version)"
# Fri, 30 Nov 2018 00:24:22 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef87ded15917facc562d84e802d02ded848ae802cc04194400ba4cb8798dd4f7`  
		Last Modified: Wed, 24 Oct 2018 22:43:46 GMT  
		Size: 70.6 MB (70610525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3997a126d808b78d06953bd44c56d9408d1d787f1c4b41fd444e17618771f66e`  
		Last Modified: Fri, 30 Nov 2018 00:32:16 GMT  
		Size: 1.7 MB (1691543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ad864985408825e03a9e66be6c0271857ddd12cab95f7eaf3ac9cbb16e1001`  
		Last Modified: Fri, 30 Nov 2018 00:32:17 GMT  
		Size: 19.5 MB (19549306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d69e386160d0a42176d677826b605cb4cfca3c0fcefcaca4eb09a2818d0ac6`  
		Last Modified: Fri, 30 Nov 2018 00:32:16 GMT  
		Size: 3.9 MB (3891395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
