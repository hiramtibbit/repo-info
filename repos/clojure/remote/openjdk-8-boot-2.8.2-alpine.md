## `clojure:openjdk-8-boot-2.8.2-alpine`

```console
$ docker pull clojure@sha256:355ca5ba1840e125c10b76b30843623bd81fa1fbed419955ca174270232cbf4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:openjdk-8-boot-2.8.2-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:5a4cfe028a270353b4d9361c0c1ad49c66ebacdc219906d6583a249896d50f50
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114300516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38152979d442e15c36903e5c9d06b05dcab1b670bf59a73ecbe8ec59372a6aef`
-	Default Command: `["boot","repl"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 02:13:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_VERSION=8u201
# Tue, 02 Apr 2019 23:45:30 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Tue, 02 Apr 2019 23:45:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 00:10:50 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Wed, 03 Apr 2019 00:11:10 GMT
ENV BOOT_VERSION=2.8.2
# Wed, 03 Apr 2019 00:11:10 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Wed, 03 Apr 2019 00:11:10 GMT
WORKDIR /tmp
# Wed, 03 Apr 2019 00:11:12 GMT
RUN apk add --update --no-cache bash openssl
# Wed, 03 Apr 2019 00:11:12 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Wed, 03 Apr 2019 00:11:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Wed, 03 Apr 2019 00:11:13 GMT
ENV BOOT_AS_ROOT=yes
# Wed, 03 Apr 2019 00:12:13 GMT
RUN boot
# Wed, 03 Apr 2019 00:12:13 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec484ea07ed1e4b3d2c8bb6ffb98d668fc1602607ced25e40a0d3649c875af12`  
		Last Modified: Tue, 02 Apr 2019 23:47:15 GMT  
		Size: 70.7 MB (70716050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65e0028cbe3888016b3f7a3b19df19392f01d7eb9a69a80a02fefcb8846b762`  
		Last Modified: Wed, 03 Apr 2019 00:13:15 GMT  
		Size: 1.5 MB (1478558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c50edbe77383e8321e404cda787d932b993b2e3358be1940315e44441e18d2c6`  
		Last Modified: Wed, 03 Apr 2019 00:13:14 GMT  
		Size: 6.7 KB (6657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe71e6ebf53c36d222a520c5ce50dad4b56cdd6a03dea9e850a137b11a17252`  
		Last Modified: Wed, 03 Apr 2019 00:13:20 GMT  
		Size: 39.3 MB (39344283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
