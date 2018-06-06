## `clojure:tools-deps-alpine`

```console
$ docker pull clojure@sha256:d3922c1d491f444e1d9e5da9fb0b5f043368ee56237a2ee6fedb6e0df7cb42f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:tools-deps-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:ac4f48314bf4cd4c1301ac973aa7885a559a708fa5913b5f0d9ff13f07607b93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97432805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af467a670b9f900cd10d1bf8e31159e786338260277e6b5394d4416d2b0d3777`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:55:39 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:57:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 06 Jun 2018 01:57:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Jun 2018 01:57:39 GMT
ENV JAVA_VERSION=8u151
# Wed, 06 Jun 2018 01:57:40 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 06 Jun 2018 01:57:45 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 06 Jun 2018 21:01:51 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Wed, 06 Jun 2018 21:01:51 GMT
ENV CLOJURE_VERSION=1.9.0.381
# Wed, 06 Jun 2018 21:01:51 GMT
WORKDIR /tmp
# Wed, 06 Jun 2018 21:01:53 GMT
RUN apk add --update bash curl && rm -rf /var/cache/apk/*
# Wed, 06 Jun 2018 21:01:56 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Wed, 06 Jun 2018 21:02:03 GMT
RUN clojure -e "(clojure-version)"
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8906544047d741c82ab8e4f6b3a698cdc37170b9afe8006a7c2aee85bc78618`  
		Last Modified: Wed, 06 Jun 2018 02:15:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae9db8d675e1fae91c193ff65ae84529aeb62d738d5bc5b09eb2fdc655edbffa`  
		Last Modified: Wed, 06 Jun 2018 02:19:31 GMT  
		Size: 70.2 MB (70227658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7642be7b939d63cea54857b4235e84cc0f1a60bdeb03851b44de09c4ac793717`  
		Last Modified: Wed, 06 Jun 2018 21:05:06 GMT  
		Size: 1.7 MB (1700084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eda3d85f75f0226c401428905f6322e2c6f44567abfff52ec2fbab6249f917e`  
		Last Modified: Wed, 06 Jun 2018 21:05:11 GMT  
		Size: 19.5 MB (19547929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bb97c1651f50a2f3d431c1d58ccf09384dcc35f6554c720d012d96d9ec9a9f`  
		Last Modified: Wed, 06 Jun 2018 21:05:08 GMT  
		Size: 3.9 MB (3891356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
