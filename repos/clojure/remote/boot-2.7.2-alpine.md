## `clojure:boot-2.7.2-alpine`

```console
$ docker pull clojure@sha256:e58b654caf9924b078b2a92bb409bb60c7966e3680538d9992a19baf3359523b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:boot-2.7.2-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:44ec7c67916be7c7c4af676617d6e75f4374f76c0b1215238670895696155abc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.9 MB (108850910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:877530ff527fee57a014a979ac904afd84d650e993f80da16e5ba8e28189faa1`
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
# Tue, 03 Jul 2018 01:10:46 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Tue, 03 Jul 2018 01:15:24 GMT
ENV BOOT_VERSION=2.7.2
# Tue, 03 Jul 2018 01:15:24 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 03 Jul 2018 01:15:25 GMT
WORKDIR /tmp
# Tue, 03 Jul 2018 01:15:27 GMT
RUN apk add --update bash openssl && rm -rf /var/cache/apk/*
# Tue, 03 Jul 2018 01:15:37 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 03 Jul 2018 01:15:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Tue, 03 Jul 2018 01:15:38 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 03 Jul 2018 01:17:00 GMT
RUN boot
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
	-	`sha256:e1478d32e98866cca8eb459ef4197b27be36f4981b3cf1e69672d40a778a83e1`  
		Last Modified: Tue, 03 Jul 2018 01:22:25 GMT  
		Size: 3.0 MB (3049990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653e44cae1759412597ed829f63866ee692f0054cbea5c55261cb6d2329e2243`  
		Last Modified: Tue, 03 Jul 2018 01:22:24 GMT  
		Size: 6.7 KB (6661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4203f540c4d411e69d19af794e1bf97bd9c2e7f98aab2c62a710f08be3c9e780`  
		Last Modified: Tue, 03 Jul 2018 01:22:28 GMT  
		Size: 33.4 MB (33410159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
