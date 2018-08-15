## `clojure:boot-alpine`

```console
$ docker pull clojure@sha256:77fd5ad8e0c5d3476a36084b3ee1ac1e8bde95fe0f09e078b4299732679a4d11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:boot-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:0366f0a1db18eae2645f2f01679554253d20a3eab1dd340b3b53eb9c11bc6fe4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115573772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a424e838a00dfd4c9b04a499deab6516488f7bc5f37aeb2060f7f6cfe02794`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:34:53 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 00:34:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 00:34:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 11 Jul 2018 00:34:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 00:34:54 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 00:34:55 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 11 Jul 2018 00:35:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 11 Jul 2018 01:16:21 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Mon, 30 Jul 2018 16:24:55 GMT
ENV BOOT_VERSION=2.8.1
# Mon, 30 Jul 2018 16:24:56 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Mon, 30 Jul 2018 16:24:56 GMT
WORKDIR /tmp
# Wed, 15 Aug 2018 20:23:22 GMT
RUN apk add --update --no-cache bash openssl
# Wed, 15 Aug 2018 20:23:23 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Wed, 15 Aug 2018 20:23:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Wed, 15 Aug 2018 20:23:24 GMT
ENV BOOT_AS_ROOT=yes
# Wed, 15 Aug 2018 20:25:28 GMT
RUN boot
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311ad0da45338842480bf25c6e6b7bb133b7b8cf709c3470db171ec370da5539`  
		Last Modified: Wed, 11 Jul 2018 00:37:45 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df312c74ce16f20eeb87b5640db9b1579a53534bd3e9f3de1e916fc62744bcf4`  
		Last Modified: Wed, 11 Jul 2018 00:38:02 GMT  
		Size: 70.6 MB (70581383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f2fb7b9856487ee8e26bfba7f168d958d40dab67c112fe8217ef90d5cdf89b`  
		Last Modified: Wed, 15 Aug 2018 20:31:54 GMT  
		Size: 3.0 MB (2975250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22eab24ce65a7a159ccab04accd395ec7d693a657a1583a031e18daffd6ebc4`  
		Last Modified: Wed, 15 Aug 2018 20:31:54 GMT  
		Size: 6.7 KB (6662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71684d4b4d4269b5496fc7843a195f5269a4bcadb3d102a6982ca087f73398b`  
		Last Modified: Wed, 15 Aug 2018 20:31:59 GMT  
		Size: 39.8 MB (39803696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
