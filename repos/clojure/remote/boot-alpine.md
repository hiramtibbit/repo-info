## `clojure:boot-alpine`

```console
$ docker pull clojure@sha256:4ef44b1e9abb8dc5041e9d633b0af9d203d943f1a2cf991b762fa43e914ef275
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:boot-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:cc553244f75d5e6a97989d7e293df15a8d06cd4f2cc7354ca7910b84b06470f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114303187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:678c3cceb12a6258a30d4bae5403397bec58e9914d8ff5ca1212bbd7d5aa88ec`
-	Default Command: `["boot","repl"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 01:52:32 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 01:52:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 01:52:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 Apr 2019 01:52:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 01:52:34 GMT
ENV JAVA_VERSION=8u201
# Wed, 10 Apr 2019 01:52:34 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 10 Apr 2019 01:52:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Apr 2019 03:08:47 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Wed, 10 Apr 2019 03:09:04 GMT
ENV BOOT_VERSION=2.8.2
# Wed, 10 Apr 2019 03:09:04 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Wed, 10 Apr 2019 03:09:05 GMT
WORKDIR /tmp
# Wed, 10 Apr 2019 03:09:06 GMT
RUN apk add --update --no-cache bash openssl
# Wed, 10 Apr 2019 03:09:07 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Wed, 10 Apr 2019 03:09:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Wed, 10 Apr 2019 03:09:08 GMT
ENV BOOT_AS_ROOT=yes
# Wed, 10 Apr 2019 03:10:23 GMT
RUN boot
# Wed, 10 Apr 2019 03:10:23 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e12771959adeb3408e625492accf845401aa66bcca638859a6b34176d753d62`  
		Last Modified: Wed, 10 Apr 2019 01:57:16 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4efe34cda6efe267747e87c1a4ab6e449a94b46df121175cc6e45c6f37c68c9`  
		Last Modified: Wed, 10 Apr 2019 01:57:26 GMT  
		Size: 70.7 MB (70716388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa8b0b71f937b18fbd31d8518d86588bd30a3dd49ebd10857b955d1f73701891`  
		Last Modified: Wed, 10 Apr 2019 03:11:20 GMT  
		Size: 1.5 MB (1478557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b19a88c1eb124b6f71d60e82d0455640f15f96b583ed74e0e19c2e6f69fd0d`  
		Last Modified: Wed, 10 Apr 2019 03:11:20 GMT  
		Size: 6.7 KB (6660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c85ebb144c575daed253ae8d74cf9248eed081ca8aa43440591e15ad90030e5`  
		Last Modified: Wed, 10 Apr 2019 03:11:24 GMT  
		Size: 39.3 MB (39344336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
