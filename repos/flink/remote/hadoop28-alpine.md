## `flink:hadoop28-alpine`

```console
$ docker pull flink@sha256:e432e6e8ed30c2d20e34a784390cffff0783bbb53cdd1f2c6007de0830cc8e26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `flink:hadoop28-alpine` - linux; amd64

```console
$ docker pull flink@sha256:3d77cdaf6e04fbc97db1afd769c4f219b967b12b5e089b478d406106f49b3a1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.4 MB (363367880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f421dc77a2686b4feac5e60ef55c81242738bf2173a7a4c934eacf55d1a2fc3f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

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
# Wed, 11 Jul 2018 01:20:03 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Thu, 02 Aug 2018 18:29:46 GMT
ENV FLINK_VERSION=1.5.2 HADOOP_SCALA_VARIANT=hadoop28-scala_2.11
# Thu, 02 Aug 2018 18:29:47 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 02 Aug 2018 18:29:47 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 02 Aug 2018 18:29:48 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Thu, 02 Aug 2018 18:29:48 GMT
WORKDIR /opt/flink
# Thu, 02 Aug 2018 18:29:49 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.5.2/flink-1.5.2-bin-hadoop28-scala_2.11.tgz
# Thu, 02 Aug 2018 18:29:49 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.5.2/flink-1.5.2-bin-hadoop28-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.5.2/flink-1.5.2-bin-hadoop28-scala_2.11.tgz.asc
# Thu, 02 Aug 2018 18:29:49 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Thu, 02 Aug 2018 18:30:31 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Thu, 02 Aug 2018 18:30:32 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Thu, 02 Aug 2018 18:30:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Aug 2018 18:30:32 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 02 Aug 2018 18:30:33 GMT
CMD ["help"]
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
	-	`sha256:a541eed0dee0a31ae4738cd21ae718470041a948f2d5490dc37ba03c0427316c`  
		Last Modified: Wed, 11 Jul 2018 01:32:06 GMT  
		Size: 1.2 MB (1219128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc5e60652aba016f5d8c7e4e4b22cbc7986a6ee4c81257f8043c8767ff35b21`  
		Last Modified: Thu, 02 Aug 2018 18:51:30 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e790da1fa665cfbc896c5ca4d55f76b6498ddabb15f5d63b3af9e39a315c7bd5`  
		Last Modified: Thu, 02 Aug 2018 18:51:31 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c731110e46bfab4caddac34e88f248c6d392c365880ea3f4c67450b5046a07`  
		Last Modified: Thu, 02 Aug 2018 18:51:30 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262b012fa6aa3f81861214111e77831051a29378b8d1b134e791439312bbe0e5`  
		Last Modified: Thu, 02 Aug 2018 18:52:02 GMT  
		Size: 305.1 MB (305081869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442e8feb3f9062586167a3d7d6c0d8b05fddd0f87e18f9077c0681084e7f2a4d`  
		Last Modified: Thu, 02 Aug 2018 18:51:30 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28-alpine` - linux; arm variant v6

```console
$ docker pull flink@sha256:6e2c10ceb694694676aaf80a390f5669417d5d51dcd6664c11a498ffa1c1c962
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.7 MB (360700968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e31347346e87cde75f029f6bdf1499acc423836be287331331eeef9bd4dac30`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 08:01:49 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 08:01:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 08:02:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 11 Jul 2018 08:02:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 08:02:01 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 08:02:02 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 11 Jul 2018 08:02:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 20 Jul 2018 07:54:06 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Fri, 03 Aug 2018 07:57:03 GMT
ENV FLINK_VERSION=1.5.2 HADOOP_SCALA_VARIANT=hadoop28-scala_2.11
# Fri, 03 Aug 2018 07:57:03 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 03 Aug 2018 07:57:03 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Aug 2018 07:57:04 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 03 Aug 2018 07:57:04 GMT
WORKDIR /opt/flink
# Fri, 03 Aug 2018 07:57:04 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.5.2/flink-1.5.2-bin-hadoop28-scala_2.11.tgz
# Fri, 03 Aug 2018 07:57:05 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.5.2/flink-1.5.2-bin-hadoop28-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.5.2/flink-1.5.2-bin-hadoop28-scala_2.11.tgz.asc
# Fri, 03 Aug 2018 07:57:05 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Fri, 03 Aug 2018 07:57:30 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Fri, 03 Aug 2018 07:57:31 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Fri, 03 Aug 2018 07:57:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Aug 2018 07:57:32 GMT
EXPOSE 6123/tcp 8081/tcp
# Fri, 03 Aug 2018 07:57:32 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:ee7d700abbf209aa401ef5d53f86af298a25e8154b3259036e9307d08f255c5d`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 2.1 MB (2145998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1653f4692c1ccea69cd46121d4f1371957f66e97a20141371dd4da10ebaec19`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0fe15f006fc10d936b4151756febdf17337db073281862f05f86db2f5779de`  
		Last Modified: Wed, 11 Jul 2018 08:02:56 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9578eae4f096e94faf9a5192ab7f2282a1e5f55cbba772a2b3b57d2c35f3d6e5`  
		Last Modified: Wed, 11 Jul 2018 08:04:00 GMT  
		Size: 52.3 MB (52277363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be03636666f5ec7590a7f01350362a99dadcc5eb8de6cbadb8a8ed1b5c0fa176`  
		Last Modified: Fri, 20 Jul 2018 08:00:06 GMT  
		Size: 1.2 MB (1170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385447ad1aeb20c902c840ee189aedc3c4c76b5705996e9e22a1a20cf2686741`  
		Last Modified: Fri, 03 Aug 2018 08:01:09 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1147940794f4e7bbff8128c9639b7b5f6b457a0e83a52f5b2df7fb6dda3dce8c`  
		Last Modified: Fri, 03 Aug 2018 08:01:09 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32250582ba1c6e52d899436c985f8187deae97baba73d8e67a450181065ae50`  
		Last Modified: Fri, 03 Aug 2018 08:01:09 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16824964efa7f456cb5ae28b1af6fc7d19b80f79678df478be1c59bdf52f5f1`  
		Last Modified: Fri, 03 Aug 2018 08:01:44 GMT  
		Size: 305.0 MB (305044679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b59d3ff6ffd25e599339a99126d3511ba18cb5d3f36b927fd54d47e775aabfb`  
		Last Modified: Fri, 03 Aug 2018 08:01:11 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28-alpine` - linux; arm64 variant v8

```console
$ docker pull flink@sha256:2b3fd5b3d7e51b56582517c730b41b0da74383b2e7c8c7515162ebb5d6850487
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.7 MB (361707236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b51d9981ef175d8fd3d293aa9a0beacfabe2d53b337211221d54a40a93a6ada7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 08:42:59 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 08:43:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 08:43:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 11 Jul 2018 08:43:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 08:43:52 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 08:43:53 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 11 Jul 2018 08:44:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 12 Jul 2018 08:53:02 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Fri, 03 Aug 2018 09:07:14 GMT
ENV FLINK_VERSION=1.5.2 HADOOP_SCALA_VARIANT=hadoop28-scala_2.11
# Fri, 03 Aug 2018 09:07:17 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 03 Aug 2018 09:07:18 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Aug 2018 09:07:21 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 03 Aug 2018 09:07:22 GMT
WORKDIR /opt/flink
# Fri, 03 Aug 2018 09:07:23 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.5.2/flink-1.5.2-bin-hadoop28-scala_2.11.tgz
# Fri, 03 Aug 2018 09:07:24 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.5.2/flink-1.5.2-bin-hadoop28-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.5.2/flink-1.5.2-bin-hadoop28-scala_2.11.tgz.asc
# Fri, 03 Aug 2018 09:07:25 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Fri, 03 Aug 2018 09:11:06 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Fri, 03 Aug 2018 09:11:14 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Fri, 03 Aug 2018 09:11:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Aug 2018 09:11:16 GMT
EXPOSE 6123/tcp 8081/tcp
# Fri, 03 Aug 2018 09:11:16 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6021084a8eee491399113c29faf511efbb84b0299920f83c1bfbca669a70ee`  
		Last Modified: Wed, 11 Jul 2018 08:49:30 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:951cbfcd7f820b48a4b2a083946b4b1344b8a0c9322f8eb9471879df81b63d3d`  
		Last Modified: Wed, 11 Jul 2018 08:52:32 GMT  
		Size: 53.3 MB (53332872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e232c0f567ebfb46b78452579793736cefb25d09ee20e187f083e76384c9fa80`  
		Last Modified: Thu, 12 Jul 2018 09:33:35 GMT  
		Size: 1.2 MB (1159779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38bbc6fafa7d0f0fd964f561b22fcb5fc4174e1c57469984c4912723f767233e`  
		Last Modified: Fri, 03 Aug 2018 09:40:19 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee144a1b10800149bad0d440e516d29a1e8d97e46afe87baaa426d55cf6c3b10`  
		Last Modified: Fri, 03 Aug 2018 09:40:18 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a3bb44881911db9f94c89b601b3ca5c2edf01c5d6244bddd4734ed3a29453e9`  
		Last Modified: Fri, 03 Aug 2018 09:40:20 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196c63615824cf459ffd4586792fec770347208dbfb7c01602b133585e9a23ab`  
		Last Modified: Fri, 03 Aug 2018 09:41:00 GMT  
		Size: 305.1 MB (305052882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0159e48237342f210c87b5c8fb5181810e0e992384292887e9cca44a034a0874`  
		Last Modified: Fri, 03 Aug 2018 09:40:19 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28-alpine` - linux; 386

```console
$ docker pull flink@sha256:4eb02a14a22fa3a31034b5e66bc8c21530ca3116198936d77f42c3b16b56be0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.1 MB (364084947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:042b2cfc69e1d0ce63e2198a2371b407940e2db566f17e2c4bff80ef9ab66640`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 10:42:07 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 10:42:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 10:42:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 11 Jul 2018 10:42:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 10:42:37 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 10:42:38 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 11 Jul 2018 10:42:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 20 Jul 2018 10:42:40 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Fri, 03 Aug 2018 10:56:22 GMT
ENV FLINK_VERSION=1.5.2 HADOOP_SCALA_VARIANT=hadoop28-scala_2.11
# Fri, 03 Aug 2018 10:56:23 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 03 Aug 2018 10:56:23 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Aug 2018 10:56:24 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 03 Aug 2018 10:56:24 GMT
WORKDIR /opt/flink
# Fri, 03 Aug 2018 10:56:24 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.5.2/flink-1.5.2-bin-hadoop28-scala_2.11.tgz
# Fri, 03 Aug 2018 10:56:24 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.5.2/flink-1.5.2-bin-hadoop28-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.5.2/flink-1.5.2-bin-hadoop28-scala_2.11.tgz.asc
# Fri, 03 Aug 2018 10:56:25 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Fri, 03 Aug 2018 10:56:56 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Fri, 03 Aug 2018 10:57:08 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Fri, 03 Aug 2018 10:57:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Aug 2018 10:57:09 GMT
EXPOSE 6123/tcp 8081/tcp
# Fri, 03 Aug 2018 10:57:09 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a25bd05f353e6067ad7c0b5b95675b1b6f7740cd5393ff80362fa3acc51cfa0`  
		Last Modified: Wed, 11 Jul 2018 10:45:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8873a4d95ed8d8c6e243a75a453f7f417a257375352b8361b4f4d318aefb865`  
		Last Modified: Wed, 11 Jul 2018 10:48:39 GMT  
		Size: 55.4 MB (55428173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a307fe01d7de24a05d028efc1a8a753e95f789d161989cbdab19a32c50a1fc`  
		Last Modified: Fri, 20 Jul 2018 11:00:57 GMT  
		Size: 1.3 MB (1264027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2dfc621f3a0a9f3ae00b39f27b07b494d83d0d33d97e195d6b979e3a8cd1900`  
		Last Modified: Fri, 03 Aug 2018 11:19:54 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33fea1d728ae5912dfe8e370f5b23e878aa4c2cbefad895f6eadbefbe0f1a6ae`  
		Last Modified: Fri, 03 Aug 2018 11:19:54 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b2ae432d179a98096de5c6a45a387a0d0cc70d5536ad5c7d001c8df4f615a6b`  
		Last Modified: Fri, 03 Aug 2018 11:19:55 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20d2fd63480664ea56a39528056cda9976df2c4239941947472f6c0ae980b3b`  
		Last Modified: Fri, 03 Aug 2018 11:20:29 GMT  
		Size: 305.1 MB (305059639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98aaa87d44da86e32d608d7c530bb74ff7bf9628fde1701861e4d92a3a719ac`  
		Last Modified: Fri, 03 Aug 2018 11:19:54 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28-alpine` - linux; ppc64le

```console
$ docker pull flink@sha256:a245a738d3d7c885909cfdeb384b13edcd511040b70490ac209001ff508bd5d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.5 MB (362467463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec22ff09ba98049e28e1c946a822ea6a1a8a6b3467bd0a4c31a921fbe0001ee6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 09:30:08 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 09:30:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 09:31:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 11 Jul 2018 09:32:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 09:32:04 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 09:32:10 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 11 Jul 2018 09:32:45 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 20 Jul 2018 08:30:20 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Fri, 03 Aug 2018 08:48:19 GMT
ENV FLINK_VERSION=1.5.2 HADOOP_SCALA_VARIANT=hadoop28-scala_2.11
# Fri, 03 Aug 2018 08:48:20 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 03 Aug 2018 08:48:20 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Aug 2018 08:48:23 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 03 Aug 2018 08:48:24 GMT
WORKDIR /opt/flink
# Fri, 03 Aug 2018 08:48:25 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.5.2/flink-1.5.2-bin-hadoop28-scala_2.11.tgz
# Fri, 03 Aug 2018 08:48:28 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.5.2/flink-1.5.2-bin-hadoop28-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.5.2/flink-1.5.2-bin-hadoop28-scala_2.11.tgz.asc
# Fri, 03 Aug 2018 08:48:35 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Fri, 03 Aug 2018 08:50:20 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Fri, 03 Aug 2018 08:50:21 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Fri, 03 Aug 2018 08:50:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Aug 2018 08:50:30 GMT
EXPOSE 6123/tcp 8081/tcp
# Fri, 03 Aug 2018 08:50:34 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20211aade657f59a9c4f2a84c24b7c3c88fa58b2decb513c620ef1e6e74029f5`  
		Last Modified: Wed, 11 Jul 2018 09:54:28 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f943215fedd42494dbbd24b66b531dc1f19573de24e5a9ad381289d70355ba41`  
		Last Modified: Wed, 11 Jul 2018 09:56:59 GMT  
		Size: 53.9 MB (53916968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678b79bb7e1bdb83e7adc46b36d388a35928c0f39c41ba5feadaa2478cdc49a0`  
		Last Modified: Fri, 20 Jul 2018 09:20:40 GMT  
		Size: 1.2 MB (1235326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa1eafc6152db26b4fd9aeef52ea6f6e829c363cdc8ba4113b17a7be03d77d2`  
		Last Modified: Fri, 03 Aug 2018 09:07:33 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4ba467822ac9ba65510ae6bd5c756fc6f500a511a33db8f69aa4eb646ce2ca`  
		Last Modified: Fri, 03 Aug 2018 09:07:34 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d984e5d9578bd608e56b8aaf7d88bbe5385a25a3314a70868f6b3016b17345b`  
		Last Modified: Fri, 03 Aug 2018 09:07:34 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd224aeccb91db076eb81a632a37f4a29811506552e49068417b3adb829c1ff`  
		Last Modified: Fri, 03 Aug 2018 09:08:29 GMT  
		Size: 305.1 MB (305058091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b254e9afcf04d7b317f6d3da97ab7acf0fb6fd0bb1f1140a3d60a5fbdfd149`  
		Last Modified: Fri, 03 Aug 2018 09:07:33 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28-alpine` - linux; s390x

```console
$ docker pull flink@sha256:5d06c189af48e7f3ba1abc4c2b3077ba6af34bd3ee416ecc2c998b07bb836bff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.2 MB (362234517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d479877ef30606ee361c3d0da2d6211f6e426d3e9b2d6fa834c4343eb09a87d4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 11:48:07 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 11:48:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 11:48:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 11 Jul 2018 11:48:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 11:48:25 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 11:48:25 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 11 Jul 2018 11:48:27 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 20 Jul 2018 11:42:40 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Fri, 03 Aug 2018 11:48:54 GMT
ENV FLINK_VERSION=1.5.2 HADOOP_SCALA_VARIANT=hadoop28-scala_2.11
# Fri, 03 Aug 2018 11:48:54 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 03 Aug 2018 11:48:54 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Aug 2018 11:48:55 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 03 Aug 2018 11:48:55 GMT
WORKDIR /opt/flink
# Fri, 03 Aug 2018 11:48:56 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.5.2/flink-1.5.2-bin-hadoop28-scala_2.11.tgz
# Fri, 03 Aug 2018 11:48:56 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.5.2/flink-1.5.2-bin-hadoop28-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.5.2/flink-1.5.2-bin-hadoop28-scala_2.11.tgz.asc
# Fri, 03 Aug 2018 11:48:56 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Fri, 03 Aug 2018 11:49:43 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Fri, 03 Aug 2018 11:49:47 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Fri, 03 Aug 2018 11:49:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Aug 2018 11:49:48 GMT
EXPOSE 6123/tcp 8081/tcp
# Fri, 03 Aug 2018 11:49:49 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b948ae8f2138a45776e1be04e263eed4e16432ba2b82c7c0e4a71afc6f9c878c`  
		Last Modified: Wed, 11 Jul 2018 11:50:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9396fcd85e93dd30a4c0955f72660d20054ddf603de33f3cb4140f52552ce7`  
		Last Modified: Wed, 11 Jul 2018 11:51:10 GMT  
		Size: 53.6 MB (53581351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77bcd1a1ee9eee6fef7b1b2c8a7d52a8daaeb7507302839e36769a790bff5483`  
		Last Modified: Fri, 20 Jul 2018 11:48:19 GMT  
		Size: 1.3 MB (1265579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c5e0f939a753029fba6ec4a474c410289c0ade3cd5d17b9d343e031a5c6fa5`  
		Last Modified: Fri, 03 Aug 2018 11:55:05 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db611039efe03aa0193eaa52fc5cd92bdb432cdd8d6ee90400f7ce4b726364a6`  
		Last Modified: Fri, 03 Aug 2018 11:55:06 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93340e58e2b10f8cdfdbfb012e31c55c3937c8fe6c8bce61b1d26083f09e92c`  
		Last Modified: Fri, 03 Aug 2018 11:55:06 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b706ec018ac24476dd4654df2f7d12f2b8135a8169af2e6a40c06bb8d7ac86e4`  
		Last Modified: Fri, 03 Aug 2018 11:55:41 GMT  
		Size: 305.0 MB (305017925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6592203a1f410e472ccb021141913b9a6afa0b257c5baa9dbfd55ab453f8fdba`  
		Last Modified: Fri, 03 Aug 2018 11:55:05 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
