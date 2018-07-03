## `clojure:tools-deps-1.9.0.381-alpine`

```console
$ docker pull clojure@sha256:3e429329d97fc51358c05b4a3e507818f65df2e98d35d8ad8b0a7862965a3bea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:tools-deps-1.9.0.381-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:e4f0fdcfeee644072670a5a017e23b23e82fa0d40cb0b7a16d07e2f3c11479b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97523511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a33260a1b1c52013a2bfd0c26612624d58085dcd62ef01e8e25c75ecfd14ee`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 Jan 2018 04:50:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 03 Jul 2018 00:01:12 GMT
ENV JAVA_VERSION=8u171
# Tue, 03 Jul 2018 00:01:13 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Tue, 03 Jul 2018 00:01:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 03 Jul 2018 02:11:30 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Tue, 03 Jul 2018 02:11:31 GMT
ENV CLOJURE_VERSION=1.9.0.381
# Tue, 03 Jul 2018 02:11:31 GMT
WORKDIR /tmp
# Tue, 03 Jul 2018 02:11:32 GMT
RUN apk add --update bash curl && rm -rf /var/cache/apk/*
# Tue, 03 Jul 2018 02:11:33 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Tue, 03 Jul 2018 02:11:39 GMT
RUN clojure -e "(clojure-version)"
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651ae5b0ba186f2dc5fdfac52825e806479a2860a8a7c030c1703697d84e8714`  
		Last Modified: Tue, 03 Jul 2018 00:38:40 GMT  
		Size: 70.3 MB (70318325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86a618d070acca73e836a5b61a99ec1a40c67b3cba75d6b499b313e54804448`  
		Last Modified: Tue, 03 Jul 2018 02:14:50 GMT  
		Size: 1.7 MB (1700089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac47c83d3502f8977d19e545f2e6a08cb2f1e13b03d0529fb1d2919159ba1f0`  
		Last Modified: Tue, 03 Jul 2018 02:14:51 GMT  
		Size: 19.5 MB (19547943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f449c3dddfd452e46d65a003d0873eac780e76f03a5912b5694b03113a9f93`  
		Last Modified: Tue, 03 Jul 2018 02:14:50 GMT  
		Size: 3.9 MB (3891379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
