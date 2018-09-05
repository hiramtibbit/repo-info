## `clojure:boot-alpine`

```console
$ docker pull clojure@sha256:228c05a81d1a4792d2be553e5f3679fbe1273a776e00950d767351aaa996a1d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:boot-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:bc72b8f6f57e8852ffb590431a25f42bc7d01088fe8f38e7edc14fbc52b4a2b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115575075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9acb20c79dd69bcb656b108b3629ae7b0fef20bf1bd412281d585238b425121b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 01:23:02 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:23:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 05 Sep 2018 01:23:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_VERSION=8u171
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 05 Sep 2018 01:23:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 05 Sep 2018 12:06:51 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Wed, 05 Sep 2018 12:09:12 GMT
ENV BOOT_VERSION=2.8.1
# Wed, 05 Sep 2018 12:09:12 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Wed, 05 Sep 2018 12:09:13 GMT
WORKDIR /tmp
# Wed, 05 Sep 2018 12:09:16 GMT
RUN apk add --update --no-cache bash openssl
# Wed, 05 Sep 2018 12:09:17 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Wed, 05 Sep 2018 12:09:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Wed, 05 Sep 2018 12:09:18 GMT
ENV BOOT_AS_ROOT=yes
# Wed, 05 Sep 2018 12:10:27 GMT
RUN boot
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2146c373b4668ab06b15e7bed7d009c501c752b3de4c71491e4fc1a4b5d4d71a`  
		Last Modified: Wed, 05 Sep 2018 01:41:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c25b7e741b44f5fbe32ea548b5bc3c49b59cde87cb61dfb823b8606b3b82a0`  
		Last Modified: Wed, 05 Sep 2018 01:41:22 GMT  
		Size: 70.6 MB (70581257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cec1b566512973fec8b26672c2b2119506297e01ed9efa2f954f853c44dc327`  
		Last Modified: Wed, 05 Sep 2018 12:13:17 GMT  
		Size: 3.0 MB (2976884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8451ccb575975938a8366c81395c6bb93227e5406ed3553b48f8c12a8b90ceb2`  
		Last Modified: Wed, 05 Sep 2018 12:13:16 GMT  
		Size: 6.7 KB (6664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7c03fe1ba9e5532b2c18786da487fd71415209a61bff34b039a54043664709`  
		Last Modified: Wed, 05 Sep 2018 12:13:20 GMT  
		Size: 39.8 MB (39803488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
