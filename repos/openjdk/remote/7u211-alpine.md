## `openjdk:7u211-alpine`

```console
$ docker pull openjdk@sha256:3e38092420ad8b5d19f9400f07c2cfa9ca7aeafe4d4382df6be5cb904e7dc65b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:7u211-alpine` - linux; amd64

```console
$ docker pull openjdk@sha256:559c3b6c76adcb95100ec8967b1944ffcbd72f72bdc821066949747b53ed7616
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.3 MB (81324443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f447c97ac35f99e416165931846d595ef2d0e157cda3ca01f2d858dde40b8e0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 01:52:32 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 01:52:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 01:53:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 10 Apr 2019 01:53:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 12 Apr 2019 00:31:54 GMT
ENV JAVA_VERSION=7u211
# Fri, 12 Apr 2019 00:31:54 GMT
ENV JAVA_ALPINE_VERSION=7.211.2.6.17-r0
# Fri, 12 Apr 2019 00:32:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:976694b7935335b29d42cc5098fb239f1a7aa61103b51bc223f9d7331c410987`  
		Last Modified: Fri, 12 Apr 2019 00:36:30 GMT  
		Size: 78.6 MB (78567197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
