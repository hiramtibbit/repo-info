## `neo4j:latest`

```console
$ docker pull neo4j@sha256:b53ef5a2fab125555d7e9a7775744c42e88818d8c835ef8f615cea1b16f11be4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neo4j:latest` - linux; amd64

```console
$ docker pull neo4j@sha256:28db1b05d7ec2466a023c85e174ea6849748c35957ed0ddd7bf6b834d3bab6c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.5 MB (150536747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c3b4051bbc4aece8ca67900fbe300f99f6c0a12783bedd6b7519e6f8f913f2b`
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
# Wed, 11 Jul 2018 02:08:32 GMT
RUN addgroup -S neo4j && adduser -S -H -h /var/lib/neo4j -G neo4j neo4j
# Fri, 27 Jul 2018 21:21:21 GMT
ENV NEO4J_SHA256=af53823776645e11d04436a513368e7e417b515572d6228da6b2977c8490ffbb NEO4J_TARBALL=neo4j-community-3.4.5-unix.tar.gz NEO4J_EDITION=community
# Fri, 27 Jul 2018 21:21:21 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.4.5-unix.tar.gz
# Fri, 27 Jul 2018 21:21:22 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Fri, 27 Jul 2018 21:22:03 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.4.5-unix.tar.gz
RUN apk add --no-cache --quiet     bash     curl     tini     su-exec     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /var/lib/neo4j     && chmod -R 777 /var/lib/neo4j     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Fri, 27 Jul 2018 21:22:03 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 27 Jul 2018 21:22:03 GMT
WORKDIR /var/lib/neo4j
# Fri, 27 Jul 2018 21:22:04 GMT
VOLUME [/data]
# Fri, 27 Jul 2018 21:22:04 GMT
COPY file:603d5e7c50609263b4aac8c7285d2a3c8bfe2a39a24083aa5800e14bcc944c16 in /docker-entrypoint.sh 
# Fri, 27 Jul 2018 21:22:04 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Fri, 27 Jul 2018 21:22:05 GMT
ENTRYPOINT ["/sbin/tini" "-g" "--" "/docker-entrypoint.sh"]
# Fri, 27 Jul 2018 21:22:05 GMT
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
	-	`sha256:20fac75f39cd3eb7e5ef0c61b4419d86b6403900ed89032041155a08ff846f0a`  
		Last Modified: Wed, 11 Jul 2018 02:59:41 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb457d445e48d4af41b849fc7682c5984b4636613c25792c322fbc3034090238`  
		Last Modified: Fri, 27 Jul 2018 21:25:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1670e3a8624d4c3695c7c6e04a1ac2127c779757501f6ee0c5771bb371545ce3`  
		Last Modified: Fri, 27 Jul 2018 21:25:37 GMT  
		Size: 93.5 MB (93527316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03ef55cd7c0ead93d9a2102c94de59b48bab1457189113d93db38a355decf2f`  
		Last Modified: Fri, 27 Jul 2018 21:25:25 GMT  
		Size: 3.0 KB (2988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
