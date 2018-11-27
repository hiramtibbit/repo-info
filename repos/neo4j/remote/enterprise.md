## `neo4j:enterprise`

```console
$ docker pull neo4j@sha256:f1feb62385ccabb3abbfc989719e3d2e2edb1eda9d5b8652e0b45f730565ed39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neo4j:enterprise` - linux; amd64

```console
$ docker pull neo4j@sha256:9bf6f86a91761041c87896ee5ac4d1883915431353bfec2eb8a687859f00aae5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.4 MB (194357631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e43d36d09e39af5163730e6f8d37fe78b448ba43c8726595bbcf8edcda49a913`
-	Entrypoint: `["\/sbin\/tini","-g","--","\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:07:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 12 Sep 2018 00:07:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 24 Oct 2018 22:32:14 GMT
ENV JAVA_VERSION=8u181
# Wed, 24 Oct 2018 22:32:14 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Wed, 24 Oct 2018 22:32:17 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 25 Oct 2018 00:07:25 GMT
RUN addgroup -S neo4j && adduser -S -H -h /var/lib/neo4j -G neo4j neo4j
# Tue, 27 Nov 2018 22:24:31 GMT
ENV NEO4J_SHA256=568c711a5f7addb54be92bd8504c1ebf5e34d0dd4fb617a8aef2d5b3549f2f4b NEO4J_TARBALL=neo4j-enterprise-3.5.0-unix.tar.gz NEO4J_EDITION=enterprise
# Tue, 27 Nov 2018 22:24:32 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.5.0-unix.tar.gz
# Tue, 27 Nov 2018 22:24:32 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 27 Nov 2018 22:24:49 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.5.0-unix.tar.gz
RUN apk add --no-cache --quiet     bash     curl     tini     su-exec     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /var/lib/neo4j     && chmod -R 777 /var/lib/neo4j     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Tue, 27 Nov 2018 22:24:54 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Nov 2018 22:24:54 GMT
WORKDIR /var/lib/neo4j
# Tue, 27 Nov 2018 22:24:55 GMT
VOLUME [/data]
# Tue, 27 Nov 2018 22:24:55 GMT
COPY file:603d5e7c50609263b4aac8c7285d2a3c8bfe2a39a24083aa5800e14bcc944c16 in /docker-entrypoint.sh 
# Tue, 27 Nov 2018 22:24:56 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 27 Nov 2018 22:24:56 GMT
ENTRYPOINT ["/sbin/tini" "-g" "--" "/docker-entrypoint.sh"]
# Tue, 27 Nov 2018 22:24:57 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819f4a45746c3207fc5fa281ad62cf165d39c18de53a5bfd42eddfec32430d83`  
		Last Modified: Wed, 24 Oct 2018 22:45:47 GMT  
		Size: 54.8 MB (54829651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b424cc955571f1668fdf7833d1dd4ebc1f42b570e00c6040e2f1bcfe9322c8f`  
		Last Modified: Thu, 25 Oct 2018 01:06:40 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2e24be666f41250e628f9f07be346a4f8088c1949c34793e987056adc5f0a8`  
		Last Modified: Tue, 27 Nov 2018 22:29:32 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1d4aaf0c5b01e2add8614d0b5bb6f643cc0ffdf423db4dfff278d20319fdd2`  
		Last Modified: Tue, 27 Nov 2018 22:29:42 GMT  
		Size: 137.3 MB (137316489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad110fc8b01b4086d212748be12cc0c99edc50283a1fbb11e3e507d88f39152a`  
		Last Modified: Tue, 27 Nov 2018 22:29:31 GMT  
		Size: 3.0 KB (2987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
