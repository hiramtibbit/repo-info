## `clojure:tools-deps-1.10.0.408-alpine`

```console
$ docker pull clojure@sha256:3f66aa3230f6ff433883a8d98c76092b7116c5746ceefc9508908f684221046f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:tools-deps-1.10.0.408-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:4a74d1198771e7e857b5d3c9d00e298ae1dfdc934bd602dea9bfe46e64f1a678
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.4 MB (98374027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2935adaa776db67bf73962e0c58410fd39e2184f47b0e8c6e542b9259a2f7f85`
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
# Thu, 03 Jan 2019 23:19:57 GMT
ENV CLOJURE_VERSION=1.10.0.408
# Thu, 03 Jan 2019 23:19:58 GMT
WORKDIR /tmp
# Thu, 03 Jan 2019 23:19:59 GMT
RUN apk add --update --no-cache bash curl
# Thu, 03 Jan 2019 23:20:01 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Thu, 03 Jan 2019 23:20:10 GMT
RUN clojure -e "(clojure-version)"
# Thu, 03 Jan 2019 23:20:11 GMT
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
	-	`sha256:86276cfee1f2795e89e39e05d60a14f54d93d2a8e68df68e5ef86a6b1e227217`  
		Last Modified: Thu, 03 Jan 2019 23:21:03 GMT  
		Size: 1.7 MB (1691556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e458948b651ab19aee176e7a4a7a5cc6ad9b5c98d46bb82d2792b7947a5236be`  
		Last Modified: Thu, 03 Jan 2019 23:21:04 GMT  
		Size: 19.8 MB (19761762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3c482ea47453611a4a4422e978676843abcaca69bb6a058e6b45f674e94170`  
		Last Modified: Thu, 03 Jan 2019 23:21:03 GMT  
		Size: 4.1 MB (4102696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
