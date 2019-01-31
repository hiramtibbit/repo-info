## `clojure:openjdk-8-tools-deps-1.10.0.411-alpine`

```console
$ docker pull clojure@sha256:91558f8741deff5dabafed74031ec2ab579dbd3f544084861dfabc6bfea77495
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:openjdk-8-tools-deps-1.10.0.411-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:6bdd5b45c085e6ec64e696a5e5f291efa1f79db76802f29da4e118095d25bc94
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.4 MB (98414460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13045d8717a5f824d854d19c335aea4a02b1e2df11ab2dbce3d66d8dcbc941bd`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:42:14 GMT
ENV LANG=C.UTF-8
# Thu, 31 Jan 2019 02:42:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 31 Jan 2019 02:42:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 31 Jan 2019 02:42:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 31 Jan 2019 02:42:15 GMT
ENV JAVA_VERSION=8u191
# Thu, 31 Jan 2019 02:42:15 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Thu, 31 Jan 2019 02:42:18 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 31 Jan 2019 03:27:24 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Thu, 31 Jan 2019 03:27:25 GMT
ENV CLOJURE_VERSION=1.10.0.411
# Thu, 31 Jan 2019 03:27:25 GMT
WORKDIR /tmp
# Thu, 31 Jan 2019 03:27:26 GMT
RUN apk add --update --no-cache bash curl
# Thu, 31 Jan 2019 03:27:29 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Thu, 31 Jan 2019 03:27:38 GMT
RUN clojure -e "(clojure-version)"
# Thu, 31 Jan 2019 03:27:38 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdc61458cffd62ac4c8b61e8c802e215f17f950e740aa6b7845f71784d7b615`  
		Last Modified: Thu, 31 Jan 2019 02:45:33 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa7fce0c25feb9b2bdcdc9df4516fa9572442ce9f92838af4f35bf82b847e3e`  
		Last Modified: Thu, 31 Jan 2019 02:45:41 GMT  
		Size: 70.7 MB (70650950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebfcd5e04836d9588fb1656f65df5abde7b7dcbc91f5641a7c601edff005511`  
		Last Modified: Thu, 31 Jan 2019 03:28:19 GMT  
		Size: 1.7 MB (1691588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54fff12b1986650f546c8ef18fb378a5fbf5fc3e08e34f553d881b2e9b7532e`  
		Last Modified: Thu, 31 Jan 2019 03:28:20 GMT  
		Size: 19.8 MB (19761915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a96c296be21f39939ba2c8674badfcbd9a2b8d2852e23724e478a5e4c3cced6`  
		Last Modified: Thu, 31 Jan 2019 03:28:19 GMT  
		Size: 4.1 MB (4102732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
