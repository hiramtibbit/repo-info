## `flink:hadoop24-alpine`

```console
$ docker pull flink@sha256:50b5ec41c8456e72ebe3e832174ff32dcc4afa3d639646e56c47c1b62e34bd2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `flink:hadoop24-alpine` - linux; amd64

```console
$ docker pull flink@sha256:1d136ad360578423dcb729c81352135404a1e673883270d29fb3bf016fe86456
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.5 MB (351495426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee879a3f1d041345ace0ecc66226bb6ad76df28ebb7c83f659600f685853d482`
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
# Thu, 02 Aug 2018 18:26:10 GMT
ENV FLINK_VERSION=1.5.2 HADOOP_SCALA_VARIANT=hadoop24-scala_2.11
# Thu, 02 Aug 2018 18:26:10 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 02 Aug 2018 18:26:10 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 02 Aug 2018 18:26:11 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Thu, 02 Aug 2018 18:26:12 GMT
WORKDIR /opt/flink
# Thu, 02 Aug 2018 18:26:12 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.5.2/flink-1.5.2-bin-hadoop24-scala_2.11.tgz
# Thu, 02 Aug 2018 18:26:12 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.5.2/flink-1.5.2-bin-hadoop24-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.5.2/flink-1.5.2-bin-hadoop24-scala_2.11.tgz.asc
# Thu, 02 Aug 2018 18:26:13 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Thu, 02 Aug 2018 18:27:23 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Thu, 02 Aug 2018 18:27:23 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Thu, 02 Aug 2018 18:27:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Aug 2018 18:27:24 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 02 Aug 2018 18:27:24 GMT
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
	-	`sha256:fe47015bd4999e7dccd38737014edffdabaa10d1e71be162907190cf8b186073`  
		Last Modified: Thu, 02 Aug 2018 18:43:37 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:809b9bc86ed71ba01517010e9c067ed7c4fa21bc8463d824ce4255ab25bae2c1`  
		Last Modified: Thu, 02 Aug 2018 18:43:38 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d58ac512c66dfd14d9c4339ab2c49575bea99d5bad0b1aa195c093df398774e`  
		Last Modified: Thu, 02 Aug 2018 18:43:38 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8490e34f1da8e01f302d67b96269cd7c8088fc835bc2f21fe223c9592ce6e9`  
		Last Modified: Thu, 02 Aug 2018 18:44:27 GMT  
		Size: 293.2 MB (293209417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794faf4aed5ea2333a94b3c8db34981ee6094edc2fa69621f5d87b45395bffe6`  
		Last Modified: Thu, 02 Aug 2018 18:43:38 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop24-alpine` - linux; arm variant v6

```console
$ docker pull flink@sha256:f5a7fa9d32696027c6291541668e1a6fafb934c77e9122c21c86692faf3b9929
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.8 MB (348829196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:091598c15f83da48618a29fbaa394f3ce9041b22604efd892930600b11d2f41a`
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
# Fri, 03 Aug 2018 07:54:38 GMT
ENV FLINK_VERSION=1.5.2 HADOOP_SCALA_VARIANT=hadoop24-scala_2.11
# Fri, 03 Aug 2018 07:54:39 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 03 Aug 2018 07:54:39 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Aug 2018 07:54:41 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 03 Aug 2018 07:54:42 GMT
WORKDIR /opt/flink
# Fri, 03 Aug 2018 07:54:42 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.5.2/flink-1.5.2-bin-hadoop24-scala_2.11.tgz
# Fri, 03 Aug 2018 07:54:42 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.5.2/flink-1.5.2-bin-hadoop24-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.5.2/flink-1.5.2-bin-hadoop24-scala_2.11.tgz.asc
# Fri, 03 Aug 2018 07:54:43 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Fri, 03 Aug 2018 07:55:13 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Fri, 03 Aug 2018 07:55:13 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Fri, 03 Aug 2018 07:55:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Aug 2018 07:55:14 GMT
EXPOSE 6123/tcp 8081/tcp
# Fri, 03 Aug 2018 07:55:14 GMT
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
	-	`sha256:b13e819b750270a86d9269e40bfe43d03895d284685a63de0d07b94b451c440f`  
		Last Modified: Fri, 03 Aug 2018 07:58:44 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0e257c81886cf389f2876fbc3c356b4cc6089c1af6b685f6b1d29866e16293`  
		Last Modified: Fri, 03 Aug 2018 07:58:44 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848a5cd0196302424047bdcd98a15b81fd2f4fdb6b220b636b33999c89d41217`  
		Last Modified: Fri, 03 Aug 2018 07:58:44 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd1fe479f911611b5decc0a15bbcc4ca9ca72f33ff0c0ec8817ab45d9160c7e`  
		Last Modified: Fri, 03 Aug 2018 07:59:16 GMT  
		Size: 293.2 MB (293172905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f30e0825f839885e38d8c04c850f6bba996f6bf94fd36d0d609adefdc2a37e6`  
		Last Modified: Fri, 03 Aug 2018 07:58:44 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
