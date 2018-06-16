## `neo4j:enterprise`

```console
$ docker pull neo4j@sha256:98f6aefeaf1790e6f508e5b87c79e5a90d51aef61db9d000cb4fd930a8762a02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neo4j:enterprise` - linux; amd64

```console
$ docker pull neo4j@sha256:f12d52ed1528dcc13b3763f9cf09a3618686cb8679e4d1257a086987f4a9a243
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.6 MB (165553469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50ecfe22fa3d345fae1429b4fbab1592ac9c9af68ec9db2ee8e69b6090564cff`
-	Entrypoint: `["\/sbin\/tini","-g","--","\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:55:39 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:55:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Jun 2018 01:55:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 16 Jun 2018 07:23:07 GMT
ENV JAVA_VERSION=8u171
# Sat, 16 Jun 2018 07:23:07 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Sat, 16 Jun 2018 07:23:11 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 16 Jun 2018 08:30:50 GMT
RUN addgroup -S neo4j && adduser -S -H -h /var/lib/neo4j -G neo4j neo4j
# Sat, 16 Jun 2018 08:31:24 GMT
ENV NEO4J_SHA256=ec73bc50bba0afe002f72ef422872625eaee5fd3cce6df8f7eeea5c6bd3395a6 NEO4J_TARBALL=neo4j-enterprise-3.4.1-unix.tar.gz NEO4J_EDITION=enterprise
# Sat, 16 Jun 2018 08:31:25 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.4.1-unix.tar.gz
# Sat, 16 Jun 2018 08:31:25 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Sat, 16 Jun 2018 08:31:42 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.4.1-unix.tar.gz
RUN apk add --no-cache --quiet     bash     curl     tini     su-exec     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /var/lib/neo4j     && chmod -R 777 /var/lib/neo4j     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Sat, 16 Jun 2018 08:31:42 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 16 Jun 2018 08:31:42 GMT
WORKDIR /var/lib/neo4j
# Sat, 16 Jun 2018 08:31:43 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 08:31:43 GMT
COPY file:603d5e7c50609263b4aac8c7285d2a3c8bfe2a39a24083aa5800e14bcc944c16 in /docker-entrypoint.sh 
# Sat, 16 Jun 2018 08:31:44 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Sat, 16 Jun 2018 08:31:44 GMT
ENTRYPOINT ["/sbin/tini" "-g" "--" "/docker-entrypoint.sh"]
# Sat, 16 Jun 2018 08:31:44 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8906544047d741c82ab8e4f6b3a698cdc37170b9afe8006a7c2aee85bc78618`  
		Last Modified: Wed, 06 Jun 2018 02:15:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590b87a38029f9f6e54117d1917b23bbae8dd69885c9edf171799fd02390df9d`  
		Last Modified: Sat, 16 Jun 2018 07:33:41 GMT  
		Size: 54.5 MB (54536909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61bbc73ad36dbe52b36a0cbb0abe335d3667d909f8844f3889a7e0d73a761a3`  
		Last Modified: Sat, 16 Jun 2018 09:02:02 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325a18da876fb6a0b5df303dfe3300ac32d2e4287f272be76141caed7d8e5128`  
		Last Modified: Sat, 16 Jun 2018 09:02:45 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b655fd2f6791721c36f15369a339fbf937bf1abc873b078cc86caf8b82aca7`  
		Last Modified: Sat, 16 Jun 2018 09:02:56 GMT  
		Size: 108.9 MB (108946457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b15471a5cba419bdba5eff284b0a955fc4a867cda7d95d3b6f127ecd6bd848e9`  
		Last Modified: Sat, 16 Jun 2018 09:02:46 GMT  
		Size: 3.0 KB (2989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
