## `clojure:boot-alpine`

```console
$ docker pull clojure@sha256:ab801c7fc369814d81c0751fb1415222b0ba9059ead291c0ed43b6eaffa23d47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:boot-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:16bd38196dd5f5c7980571950f1c0fcf29fe5246bd1b11ec515b2dc37f73ed62
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.2 MB (109180641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8656c2e585915e7077700d2749b13836fd36fb478d281db96f8cf1ce22aa433e`
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
# Wed, 11 Jul 2018 01:17:49 GMT
ENV BOOT_VERSION=2.7.2
# Wed, 11 Jul 2018 01:17:49 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Wed, 11 Jul 2018 01:17:49 GMT
WORKDIR /tmp
# Wed, 11 Jul 2018 01:17:51 GMT
RUN apk add --update bash openssl && rm -rf /var/cache/apk/*
# Wed, 11 Jul 2018 01:18:04 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Wed, 11 Jul 2018 01:18:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Wed, 11 Jul 2018 01:18:05 GMT
ENV BOOT_AS_ROOT=yes
# Wed, 11 Jul 2018 01:20:17 GMT
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
	-	`sha256:05098b4441439e2860958862e593a612e731599ac304c67410405eb85c99ef78`  
		Last Modified: Wed, 11 Jul 2018 01:23:19 GMT  
		Size: 3.0 MB (2975204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665b93213b6029d67a1f8ceb215e8c4b2f9e5f68b1a0c3788ef75101ac6b227e`  
		Last Modified: Wed, 11 Jul 2018 01:23:16 GMT  
		Size: 6.7 KB (6660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e4fd3b50c258c69bd949463d62f7afc9bd5a626c0d0b580527a08fa01bfac7`  
		Last Modified: Wed, 11 Jul 2018 01:23:22 GMT  
		Size: 33.4 MB (33410613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
