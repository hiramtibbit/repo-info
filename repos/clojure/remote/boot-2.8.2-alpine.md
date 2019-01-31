## `clojure:boot-2.8.2-alpine`

```console
$ docker pull clojure@sha256:fa100108f584ccca24e2c7928053eb5031a79123e9152bc336b996a250e74954
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:boot-2.8.2-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:230c3c4d0cbff7833123360b893eac42fd7c573bba56df599361f14b3bc80256
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115187815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954dd409b7edd4b04f542c40108d2975ccbec9e5b4fa88fbe98fec60fe844093`
-	Default Command: `["boot","repl"]`

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
# Thu, 31 Jan 2019 03:25:19 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Thu, 31 Jan 2019 03:25:39 GMT
ENV BOOT_VERSION=2.8.2
# Thu, 31 Jan 2019 03:25:39 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Thu, 31 Jan 2019 03:25:39 GMT
WORKDIR /tmp
# Thu, 31 Jan 2019 03:25:41 GMT
RUN apk add --update --no-cache bash openssl
# Thu, 31 Jan 2019 03:25:42 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Thu, 31 Jan 2019 03:25:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Thu, 31 Jan 2019 03:25:42 GMT
ENV BOOT_AS_ROOT=yes
# Thu, 31 Jan 2019 03:27:07 GMT
RUN boot
# Thu, 31 Jan 2019 03:27:07 GMT
CMD ["boot" "repl"]
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
	-	`sha256:e1649ee518fe15c213deceaed499f4cdb62c6efd16bd82b8e7253b43926a8174`  
		Last Modified: Thu, 31 Jan 2019 03:28:08 GMT  
		Size: 3.0 MB (2978553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56dcf1cdd07a7162912247c53415e74579daab8b7f6339073fd2a19a18178bcb`  
		Last Modified: Thu, 31 Jan 2019 03:28:08 GMT  
		Size: 6.7 KB (6659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2492c30ad30aaef9183349be753c98e1e6b6ea4604cfecbe926eb07c8123dfa0`  
		Last Modified: Thu, 31 Jan 2019 03:28:12 GMT  
		Size: 39.3 MB (39344378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
