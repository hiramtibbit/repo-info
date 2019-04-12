## `openjdk:7-jre-alpine`

```console
$ docker pull openjdk@sha256:c39d063ad8df6242113c77bcf1a561beacd7a0b6dac52d7ea24d472d85153f7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:7-jre-alpine` - linux; amd64

```console
$ docker pull openjdk@sha256:128e52e98c41b5bf5928771a3a68e04f4b67173aa35596f8e4ac915215b35d74
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64968291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38f5e6c61e2c6448b7acf098696e2f76cbba880eefb2bed568b866ccf9ad767e`
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
# Wed, 10 Apr 2019 01:53:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Wed, 10 Apr 2019 01:53:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 12 Apr 2019 00:32:18 GMT
ENV JAVA_VERSION=7u211
# Fri, 12 Apr 2019 00:32:19 GMT
ENV JAVA_ALPINE_VERSION=7.211.2.6.17-r0
# Fri, 12 Apr 2019 00:32:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:fd21c20bbe6e0d9b14795f20ee8fc1d0d8d232e359eab837af71be7cec3a26a2`  
		Last Modified: Fri, 12 Apr 2019 00:36:55 GMT  
		Size: 62.2 MB (62211045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
