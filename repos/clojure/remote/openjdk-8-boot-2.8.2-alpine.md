## `clojure:openjdk-8-boot-2.8.2-alpine`

```console
$ docker pull clojure@sha256:769ad80e7d05833f792bbe1bfec0b3ac4290dd33c0e6c729e1d2b3bcf1fce3f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:openjdk-8-boot-2.8.2-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:3d4cedb668f3341b36693ab22fcef70d8afe4fad4dfba307f5975847591d3449
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114334062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4d485b8905cda0b04197ab5bbbcc553f2f919d7a1baec3c52253af2e47ebfe2`
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
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Wed, 27 Mar 2019 23:27:22 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Mar 2019 23:27:23 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 00:35:33 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Thu, 28 Mar 2019 00:37:02 GMT
ENV BOOT_VERSION=2.8.2
# Thu, 28 Mar 2019 00:37:03 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Thu, 28 Mar 2019 00:37:03 GMT
WORKDIR /tmp
# Thu, 28 Mar 2019 00:37:05 GMT
RUN apk add --update --no-cache bash openssl
# Thu, 28 Mar 2019 00:37:06 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Thu, 28 Mar 2019 00:37:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Thu, 28 Mar 2019 00:37:06 GMT
ENV BOOT_AS_ROOT=yes
# Thu, 28 Mar 2019 00:37:43 GMT
RUN boot
# Thu, 28 Mar 2019 00:37:43 GMT
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
	-	`sha256:0b0a34324bda0ebdff7d633cba988a61e40f464739f635ebbfaedab22788370d`  
		Last Modified: Wed, 27 Mar 2019 23:46:31 GMT  
		Size: 68.5 MB (68527031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da56be406b88bb54da46ee8f2bc94eff5d3c17cde305aa142f4f305eaa98c91`  
		Last Modified: Wed, 27 Mar 2019 23:46:25 GMT  
		Size: 2.2 MB (2222623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e12b523b71b2ac56bae09d2e65cb58f213acef45fd3543677952de6d2653213`  
		Last Modified: Thu, 28 Mar 2019 00:39:03 GMT  
		Size: 1.5 MB (1478521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d91ca6d17bcecd136c4ba2da02169d156df7a86162d5e81a83be33f36724774`  
		Last Modified: Thu, 28 Mar 2019 00:39:02 GMT  
		Size: 6.7 KB (6657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a78b14bdcba5ae60f5ef881829447e91e7dd04093b30d6484489473b67adc5`  
		Last Modified: Thu, 28 Mar 2019 00:39:06 GMT  
		Size: 39.3 MB (39344262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
