## `clojure:tools-deps-alpine`

```console
$ docker pull clojure@sha256:1b6dbb217f7974cbbbb3e387a3a5ff860a737653f89fe7bfafda1f5dadcac8be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:tools-deps-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:bc176f9f64541a1b1e5881682106fa1be5ee34f2606aab81b31c048316339704
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.4 MB (98373545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1343a53e64e8f0f4750b5e81fc18b5b116882bd689b680fd96e117d8ee277ed`
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
# Fri, 21 Dec 2018 05:32:22 GMT
ENV CLOJURE_VERSION=1.10.0.403
# Fri, 21 Dec 2018 05:32:22 GMT
WORKDIR /tmp
# Fri, 21 Dec 2018 05:32:24 GMT
RUN apk add --update --no-cache bash curl
# Fri, 21 Dec 2018 05:32:26 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Fri, 21 Dec 2018 05:32:35 GMT
RUN clojure -e "(clojure-version)"
# Fri, 21 Dec 2018 05:32:35 GMT
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
	-	`sha256:8456d631ac319d83e345cc55fff4331238516c3e3c40ac7b1fc9ddc6cd9a8cc1`  
		Last Modified: Fri, 21 Dec 2018 05:33:27 GMT  
		Size: 1.7 MB (1691585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7f5e1c98807448728b81b89053dcaa976b0e018aca31baa34960d91d432d05`  
		Last Modified: Fri, 21 Dec 2018 05:33:28 GMT  
		Size: 19.8 MB (19761272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed467258e0bc5abaa74cb0cdc13df32fef53b028328ccfae5c4e3aba66af46ab`  
		Last Modified: Fri, 21 Dec 2018 05:33:26 GMT  
		Size: 4.1 MB (4102675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
