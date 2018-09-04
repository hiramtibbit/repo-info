## `neo4j:enterprise`

```console
$ docker pull neo4j@sha256:e50207ef34b985bba32ef7b9468707a5fdd0addd7028351938083bdcc70211de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neo4j:enterprise` - linux; amd64

```console
$ docker pull neo4j@sha256:0a78cfda03c8b925068a68ee51a552fa7318896c26e4410275bbbb01b11f81ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167291363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae3d50ba4e5331df07d4f5828b631a47bc830cc627a82b76adf1bf6117aad6ef`
-	Entrypoint: `["\/sbin\/tini","-g","--","\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:34:53 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 00:34:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 00:35:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 11 Jul 2018 00:35:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 00:35:25 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 00:35:25 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 11 Jul 2018 00:35:30 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 04 Sep 2018 19:19:48 GMT
RUN addgroup -S neo4j && adduser -S -H -h /var/lib/neo4j -G neo4j neo4j
# Tue, 04 Sep 2018 19:20:02 GMT
ENV NEO4J_SHA256=dd4f8020fbf8cb0c2bd245c18596abfd7c826948fd726bb4971039e949462bfe NEO4J_TARBALL=neo4j-enterprise-3.4.7-unix.tar.gz NEO4J_EDITION=enterprise
# Tue, 04 Sep 2018 19:20:02 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.4.7-unix.tar.gz
# Tue, 04 Sep 2018 19:20:03 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 04 Sep 2018 19:20:25 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.4.7-unix.tar.gz
RUN apk add --no-cache --quiet     bash     curl     tini     su-exec     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /var/lib/neo4j     && chmod -R 777 /var/lib/neo4j     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Tue, 04 Sep 2018 19:20:25 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 04 Sep 2018 19:20:26 GMT
WORKDIR /var/lib/neo4j
# Tue, 04 Sep 2018 19:20:26 GMT
VOLUME [/data]
# Tue, 04 Sep 2018 19:20:26 GMT
COPY file:603d5e7c50609263b4aac8c7285d2a3c8bfe2a39a24083aa5800e14bcc944c16 in /docker-entrypoint.sh 
# Tue, 04 Sep 2018 19:20:26 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 04 Sep 2018 19:20:27 GMT
ENTRYPOINT ["/sbin/tini" "-g" "--" "/docker-entrypoint.sh"]
# Tue, 04 Sep 2018 19:20:27 GMT
CMD ["neo4j"]
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
	-	`sha256:391a6a6b36513d84d55cbbe7e13bca7e92fbf257d910a5255f2b7bc9fcff4edf`  
		Last Modified: Wed, 11 Jul 2018 00:41:21 GMT  
		Size: 54.8 MB (54798327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef5e7e4ccf8935fa597eaa29f2f94a89f0bcfa05be49c50110a6c9deec3d3c1`  
		Last Modified: Tue, 04 Sep 2018 19:55:01 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2f50e2a8dac75a35c2d275e7d84dc93787dd3510edcedb402992aa8d4111df`  
		Last Modified: Tue, 04 Sep 2018 19:55:15 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbd609ac228f6c46993c676777d96c56c96352e34d16c5756544ff215002dc5`  
		Last Modified: Tue, 04 Sep 2018 19:55:24 GMT  
		Size: 110.3 MB (110281934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7941d46deafc52771bf2e2e7d3cdbb0325044f93f4053c39c69c10683d68176`  
		Last Modified: Tue, 04 Sep 2018 19:55:15 GMT  
		Size: 3.0 KB (2988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
