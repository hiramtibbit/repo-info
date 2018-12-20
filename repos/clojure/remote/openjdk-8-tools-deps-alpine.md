## `clojure:openjdk-8-tools-deps-alpine`

```console
$ docker pull clojure@sha256:09f4e4b9d9761b3f7b458211b61040a8d096c5b6babff1878b799cb4a0de69fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:openjdk-8-tools-deps-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:604777369794dd976a6ce9c1e3ce3ef3c3532917387e8592938348a9fa28fca1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.4 MB (98373210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f685b4958acad73956deba85dfe7730c714dc15c1cf4341c74acc39d1359efc`
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
# Thu, 20 Dec 2018 00:22:56 GMT
ENV CLOJURE_VERSION=1.10.0.403
# Thu, 20 Dec 2018 00:22:56 GMT
WORKDIR /tmp
# Thu, 20 Dec 2018 00:22:58 GMT
RUN apk add --update --no-cache bash curl
# Thu, 20 Dec 2018 00:22:59 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Thu, 20 Dec 2018 00:23:10 GMT
RUN clojure -e "(clojure-version)"
# Thu, 20 Dec 2018 00:23:11 GMT
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
	-	`sha256:096750c17a7b56cfe5c7e37c7ead277454caa81188a55a23b5b7173c2856558c`  
		Last Modified: Thu, 20 Dec 2018 00:26:50 GMT  
		Size: 1.7 MB (1691523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb6ba2dbdf2e6957fb71f4cec07d31b5404247d1824795851eb32cd775daa91`  
		Last Modified: Thu, 20 Dec 2018 00:26:51 GMT  
		Size: 19.8 MB (19761318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:467f65632eaadfe87345efd263a53d1c5bd1f94418c66101a931564599de0589`  
		Last Modified: Thu, 20 Dec 2018 00:26:49 GMT  
		Size: 4.1 MB (4102675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
