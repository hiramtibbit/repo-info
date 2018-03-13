## `flink:scala_2.11-alpine`

```console
$ docker pull flink@sha256:c89c9bdb99f74e83af45f9f827874c15c27fd58e855f4105deac86257ca361e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:scala_2.11-alpine` - linux; amd64

```console
$ docker pull flink@sha256:571696d3b49c334915c9a8caa13abc32f361b4ec4457314bf3fe1658ffcb7eac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284601651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d09ab320f42b7db62c7378374ea87f9d2807c3fd98a845302e22e1bb80ed4aa4`
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
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 06:52:13 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Mon, 12 Mar 2018 22:32:50 GMT
ENV FLINK_VERSION=1.4.2 HADOOP_VERSION=28 SCALA_VERSION=2.11
# Mon, 12 Mar 2018 22:32:50 GMT
ENV FLINK_HOME=/opt/flink
# Mon, 12 Mar 2018 22:32:50 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 12 Mar 2018 22:32:51 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Mon, 12 Mar 2018 22:32:51 GMT
WORKDIR /opt/flink
# Mon, 12 Mar 2018 22:32:52 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.4.2/flink-1.4.2-bin-hadoop28-scala_2.11.tgz
# Mon, 12 Mar 2018 22:32:52 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.4.2/flink-1.4.2-bin-hadoop28-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.4.2/flink-1.4.2-bin-hadoop28-scala_2.11.tgz.asc
# Mon, 12 Mar 2018 22:32:52 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Mon, 12 Mar 2018 22:33:12 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Mon, 12 Mar 2018 22:33:13 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Mon, 12 Mar 2018 22:33:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 12 Mar 2018 22:33:13 GMT
EXPOSE 6123/tcp 8081/tcp
# Mon, 12 Mar 2018 22:33:13 GMT
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
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:272184824bdf0cc3198fb396c04cf4d452228ee444f9e994d6942cc5485ba209`  
		Last Modified: Wed, 10 Jan 2018 07:43:12 GMT  
		Size: 1.3 MB (1308287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be050857929a9c3e11bddce0eb1a2e451e843609087233392b700e14c65d331`  
		Last Modified: Mon, 12 Mar 2018 22:46:52 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468ae5183521071c7e422232c7e459801da3cea71b9ebc174c8d5eba7f79d094`  
		Last Modified: Mon, 12 Mar 2018 22:46:53 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2478fecc27c34d6ba16e30c54786291a1e1af370821582ad3a96e5f5325dce`  
		Last Modified: Mon, 12 Mar 2018 22:46:53 GMT  
		Size: 59.3 KB (59337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8930028d6a328f8ffd7638e636fc2087035495367b45567d2fefad2683aed3ae`  
		Last Modified: Mon, 12 Mar 2018 22:47:15 GMT  
		Size: 226.7 MB (226711866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a00bd7e2d7ac834db9b6f3b45c0e86b1dc582eea60d342fabc36f93818611ec0`  
		Last Modified: Mon, 12 Mar 2018 22:46:52 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
