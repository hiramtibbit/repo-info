## `flink:hadoop27-alpine`

```console
$ docker pull flink@sha256:2fc0026672a0c404552ef22e73d2efe38edd80d17be6c45b2b5571d7d5206fb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:hadoop27-alpine` - linux; amd64

```console
$ docker pull flink@sha256:c2552e02a6e6260c0f5429fd83a675484e9ea5db38262c632438f910e21547ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.1 MB (360139492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a0123363d812cb1e7e52f678aca822ad0fa2f98b7fb47bcd231298be7b7beb3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 03 Jul 2018 00:02:48 GMT
ENV JAVA_VERSION=8u171
# Tue, 03 Jul 2018 00:02:48 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Tue, 03 Jul 2018 00:02:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 03 Jul 2018 01:19:25 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Tue, 03 Jul 2018 01:37:03 GMT
ENV FLINK_VERSION=1.5.0 HADOOP_SCALA_VARIANT=hadoop27-scala_2.11
# Tue, 03 Jul 2018 01:37:03 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 03 Jul 2018 01:37:03 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 03 Jul 2018 01:37:04 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Tue, 03 Jul 2018 01:37:04 GMT
WORKDIR /opt/flink
# Tue, 03 Jul 2018 01:37:05 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.5.0/flink-1.5.0-bin-hadoop27-scala_2.11.tgz
# Tue, 03 Jul 2018 01:37:05 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.5.0/flink-1.5.0-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.5.0/flink-1.5.0-bin-hadoop27-scala_2.11.tgz.asc
# Tue, 03 Jul 2018 01:37:05 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Tue, 03 Jul 2018 01:37:21 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Tue, 03 Jul 2018 01:37:21 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Tue, 03 Jul 2018 01:37:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 03 Jul 2018 01:37:21 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 03 Jul 2018 01:37:22 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68ecbd4abe7853e771b8673e2fd08897c98b23b07ac4b640a2ac28954167516`  
		Last Modified: Tue, 03 Jul 2018 00:44:13 GMT  
		Size: 54.5 MB (54536928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4ff908e3fdb516e392390a90c23467672211e28a6e167dfb0f6f23fe923e50`  
		Last Modified: Tue, 03 Jul 2018 01:44:47 GMT  
		Size: 1.7 MB (1703698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a52cb3692034fd6003eedcc4b51bb482576cdb2ceefbdef7563f64727243998`  
		Last Modified: Tue, 03 Jul 2018 02:00:32 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2355149c9c961c726e5be39b6abbb5196efe3dabd11331c2153f6bcf2a10f6`  
		Last Modified: Tue, 03 Jul 2018 02:00:32 GMT  
		Size: 111.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c86743da868cd375deeb74a225d00f5a6af4c511d6a8e980e0f851fc0222b1`  
		Last Modified: Tue, 03 Jul 2018 02:00:31 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a66f1eb6665684e1853dc929ac0216f9293819d6a5ff0f078b64dfb7125f5e0`  
		Last Modified: Tue, 03 Jul 2018 02:00:51 GMT  
		Size: 301.8 MB (301771318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab139e94ab80392fb488a052d91437cbf723663c7e270daf7ea20b4b2868a4dc`  
		Last Modified: Tue, 03 Jul 2018 02:00:31 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
