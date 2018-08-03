## `flink:alpine`

```console
$ docker pull flink@sha256:fc9dd541d2ce997ac109e68bd455368b810be200d90e488246905e1393fe466f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `flink:alpine` - linux; amd64

```console
$ docker pull flink@sha256:f325c4b02abe4b3bf7152ad57bb157c42f92bf7431ae39771f8550942724591d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.7 MB (324727508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a19ddc355d0c64bb3642878c10e1757c8be12fe516d2252c9228d6c8bc6cec5b`
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
# Thu, 02 Aug 2018 18:30:47 GMT
ENV FLINK_VERSION=1.5.2 HADOOP_SCALA_VARIANT=scala_2.11
# Thu, 02 Aug 2018 18:30:48 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 02 Aug 2018 18:30:48 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 02 Aug 2018 18:30:49 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Thu, 02 Aug 2018 18:30:49 GMT
WORKDIR /opt/flink
# Thu, 02 Aug 2018 18:30:50 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.5.2/flink-1.5.2-bin-scala_2.11.tgz
# Thu, 02 Aug 2018 18:30:50 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.5.2/flink-1.5.2-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.5.2/flink-1.5.2-bin-scala_2.11.tgz.asc
# Thu, 02 Aug 2018 18:30:50 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Thu, 02 Aug 2018 18:31:06 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Thu, 02 Aug 2018 18:31:06 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Thu, 02 Aug 2018 18:31:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Aug 2018 18:31:07 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 02 Aug 2018 18:31:07 GMT
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
	-	`sha256:9b5a46b20e9236f8ca3bc413409b7eff226090aedb92beb95ca74d5cb27ad880`  
		Last Modified: Thu, 02 Aug 2018 18:53:39 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79303bf19f3e6becc30c87b8cb67ef6bee18b1c859031d55b38d5533356ba837`  
		Last Modified: Thu, 02 Aug 2018 18:53:39 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992eaa73608ca769f8143a52f4042a0dcdaf6b2e6b4832eebf5d9a752ec95ae4`  
		Last Modified: Thu, 02 Aug 2018 18:53:40 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617866f4abc0ba0b487c866e2ac597dee3b17be3174b2e1bbb2a696f0acb79d8`  
		Last Modified: Thu, 02 Aug 2018 18:54:08 GMT  
		Size: 266.4 MB (266441499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c40b698f67e6382db1764c24eb5fe59496bc7496351a7792960a5d17e6b995a`  
		Last Modified: Thu, 02 Aug 2018 18:53:39 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:alpine` - linux; arm variant v6

```console
$ docker pull flink@sha256:bc1d5ccd1b1106eb3cbdffe97090dea965963a4cc3e769ef3b3b660e2709a1c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.1 MB (322060611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:820d15819c04b8e32d66e5551e4b79bb0a7ec54f65782125128a369307190b1b`
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
# Fri, 03 Aug 2018 07:57:41 GMT
ENV FLINK_VERSION=1.5.2 HADOOP_SCALA_VARIANT=scala_2.11
# Fri, 03 Aug 2018 07:57:41 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 03 Aug 2018 07:57:41 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Aug 2018 07:57:42 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 03 Aug 2018 07:57:42 GMT
WORKDIR /opt/flink
# Fri, 03 Aug 2018 07:57:42 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.5.2/flink-1.5.2-bin-scala_2.11.tgz
# Fri, 03 Aug 2018 07:57:43 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.5.2/flink-1.5.2-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.5.2/flink-1.5.2-bin-scala_2.11.tgz.asc
# Fri, 03 Aug 2018 07:57:43 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Fri, 03 Aug 2018 07:58:24 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Fri, 03 Aug 2018 07:58:24 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Fri, 03 Aug 2018 07:58:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Aug 2018 07:58:25 GMT
EXPOSE 6123/tcp 8081/tcp
# Fri, 03 Aug 2018 07:58:25 GMT
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
	-	`sha256:c19152dda4c98e242e178752f48735577f59d991f09f27d114c0b2c654a047eb`  
		Last Modified: Fri, 03 Aug 2018 08:01:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05cddb6c9d9efd3aad271257682448b9b38261aa957adf43af2708d4266c503d`  
		Last Modified: Fri, 03 Aug 2018 08:01:58 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adacf60f26bfea39ec2bdd3c48bd8301982ddae2e06f426e89ab6053d32b2ca7`  
		Last Modified: Fri, 03 Aug 2018 08:01:57 GMT  
		Size: 59.3 KB (59336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec3ca3354cb3c65d1c45d5d9ad85e6448b18179a3b3828338d52d5322506120`  
		Last Modified: Fri, 03 Aug 2018 08:02:30 GMT  
		Size: 266.4 MB (266404322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66d32ad95916d2d7766370387aae35497a925eaef42996594b6450bf451d39b`  
		Last Modified: Fri, 03 Aug 2018 08:01:58 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:alpine` - linux; arm64 variant v8

```console
$ docker pull flink@sha256:4e6ac002f089597d5d1c01c6781ac624a12be05379c2a330b6380d110167c4d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.1 MB (323066972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:500c41bb804dcda8cd595f57eb5dfe6beee8829a98a3c243b725e0514bb0679c`
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
# Fri, 03 Aug 2018 09:12:22 GMT
ENV FLINK_VERSION=1.5.2 HADOOP_SCALA_VARIANT=scala_2.11
# Fri, 03 Aug 2018 09:12:23 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 03 Aug 2018 09:12:24 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Aug 2018 09:12:26 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 03 Aug 2018 09:12:27 GMT
WORKDIR /opt/flink
# Fri, 03 Aug 2018 09:12:27 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.5.2/flink-1.5.2-bin-scala_2.11.tgz
# Fri, 03 Aug 2018 09:12:28 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.5.2/flink-1.5.2-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.5.2/flink-1.5.2-bin-scala_2.11.tgz.asc
# Fri, 03 Aug 2018 09:12:29 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Fri, 03 Aug 2018 09:15:04 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Fri, 03 Aug 2018 09:15:05 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Fri, 03 Aug 2018 09:15:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Aug 2018 09:15:06 GMT
EXPOSE 6123/tcp 8081/tcp
# Fri, 03 Aug 2018 09:15:07 GMT
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
	-	`sha256:4873815b689467060f0da788214529894855a64cb28125ed1957876271f3e4c0`  
		Last Modified: Fri, 03 Aug 2018 09:43:02 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30fc37635840de685c9bcafadb61c7090e9a0bf7e0129b48a75b9a6f1ffca77f`  
		Last Modified: Fri, 03 Aug 2018 09:43:04 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ca022d0096851f87138d2b54d5f16d2a255ae27efe4f94d17c481664d985ee`  
		Last Modified: Fri, 03 Aug 2018 09:43:04 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:501278a650ba5bfbd3a86d9bb25795bbe522d54bf0e45184a39b3c82a85ef6ee`  
		Last Modified: Fri, 03 Aug 2018 09:43:39 GMT  
		Size: 266.4 MB (266412619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1ca521245dce120f67c2f5c07132cb3f243752c3a3d39391f44a0bf966f5ed`  
		Last Modified: Fri, 03 Aug 2018 09:43:03 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:alpine` - linux; 386

```console
$ docker pull flink@sha256:2328aae7573e1bb967e62f201829aef89408b8c08ffc05bdb7766d88f8ca610e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.4 MB (325445292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94bee1c1e152297d1862086d10f418cd42ca7b2eb328707cc083956a5235ab70`
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
# Fri, 03 Aug 2018 10:57:33 GMT
ENV FLINK_VERSION=1.5.2 HADOOP_SCALA_VARIANT=scala_2.11
# Fri, 03 Aug 2018 10:57:34 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 03 Aug 2018 10:57:34 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Aug 2018 10:57:35 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 03 Aug 2018 10:57:35 GMT
WORKDIR /opt/flink
# Fri, 03 Aug 2018 10:57:35 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.5.2/flink-1.5.2-bin-scala_2.11.tgz
# Fri, 03 Aug 2018 10:57:35 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.5.2/flink-1.5.2-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.5.2/flink-1.5.2-bin-scala_2.11.tgz.asc
# Fri, 03 Aug 2018 10:57:36 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Fri, 03 Aug 2018 10:58:27 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Fri, 03 Aug 2018 10:58:28 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Fri, 03 Aug 2018 10:58:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Aug 2018 10:58:28 GMT
EXPOSE 6123/tcp 8081/tcp
# Fri, 03 Aug 2018 10:58:28 GMT
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
	-	`sha256:81780be46aa9481b138074c415700b87149c30820ce89ee899b8dc8d255b4407`  
		Last Modified: Fri, 03 Aug 2018 11:22:19 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2baaefedd559a123b56a1bb53fb72a112f80c0d905b72d12fdafef5b25af84db`  
		Last Modified: Fri, 03 Aug 2018 11:22:19 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f29076f0644a56e2162d300fd54f619e03160f5a8177dc0561695608e14f3d`  
		Last Modified: Fri, 03 Aug 2018 11:22:19 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78508451c8b41b070f5d2ef8f6b70db7af87a80f8b6497008413d9a80c93ac27`  
		Last Modified: Fri, 03 Aug 2018 11:22:49 GMT  
		Size: 266.4 MB (266419983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121cef73a578e32e02547a9b152202922b25025bfe0e4197e19108fcad860841`  
		Last Modified: Fri, 03 Aug 2018 11:22:20 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:alpine` - linux; ppc64le

```console
$ docker pull flink@sha256:df2328e976b3e4495e2d0e96a555114c21223c5eda73f898a90166df9ffab5e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.8 MB (323826760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:117293728fae12f300da040bbf7f6531189b51a81b34e948491d48cba6144800`
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
# Fri, 03 Aug 2018 08:50:46 GMT
ENV FLINK_VERSION=1.5.2 HADOOP_SCALA_VARIANT=scala_2.11
# Fri, 03 Aug 2018 08:50:47 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 03 Aug 2018 08:50:48 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Aug 2018 08:50:50 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 03 Aug 2018 08:50:51 GMT
WORKDIR /opt/flink
# Fri, 03 Aug 2018 08:50:52 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.5.2/flink-1.5.2-bin-scala_2.11.tgz
# Fri, 03 Aug 2018 08:50:53 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.5.2/flink-1.5.2-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.5.2/flink-1.5.2-bin-scala_2.11.tgz.asc
# Fri, 03 Aug 2018 08:50:54 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Fri, 03 Aug 2018 08:53:09 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Fri, 03 Aug 2018 08:53:11 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Fri, 03 Aug 2018 08:53:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Aug 2018 08:53:14 GMT
EXPOSE 6123/tcp 8081/tcp
# Fri, 03 Aug 2018 08:53:20 GMT
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
	-	`sha256:3e4123a1dc3c1ea7080529de71ff794cd5154c0876259f986421833dbbe5b01a`  
		Last Modified: Fri, 03 Aug 2018 09:09:15 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f9e7de33aff007a601bc60813d88ae98760490d86e6dc76d860e42b4691576`  
		Last Modified: Fri, 03 Aug 2018 09:09:15 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e57b4ab56cea19fc06699b0922853b33175936c49f6a69f8c2e3dc2736db8fd`  
		Last Modified: Fri, 03 Aug 2018 09:09:15 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae4fd7746fb7ba46a0c9f1407ba3bd312b3d332ae31fc8db17af98daa6a990cb`  
		Last Modified: Fri, 03 Aug 2018 09:09:51 GMT  
		Size: 266.4 MB (266417384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30fbb69e1ae86430a502c030ca469d9ea98d7b5fe3c7ca79b10722fb8490473a`  
		Last Modified: Fri, 03 Aug 2018 09:09:15 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:alpine` - linux; s390x

```console
$ docker pull flink@sha256:1cd11810ec139959ef1315785bd59fa5118165953db3c0cabf03b9081d14234a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.6 MB (323594422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3198b537fbd6966cf9c234bb0548a8290c68bfcfc81f6cfc046c48476a243a4b`
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
# Fri, 03 Aug 2018 11:50:07 GMT
ENV FLINK_VERSION=1.5.2 HADOOP_SCALA_VARIANT=scala_2.11
# Fri, 03 Aug 2018 11:50:07 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 03 Aug 2018 11:50:08 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Aug 2018 11:50:08 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 03 Aug 2018 11:50:08 GMT
WORKDIR /opt/flink
# Fri, 03 Aug 2018 11:50:09 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.5.2/flink-1.5.2-bin-scala_2.11.tgz
# Fri, 03 Aug 2018 11:50:09 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.5.2/flink-1.5.2-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.5.2/flink-1.5.2-bin-scala_2.11.tgz.asc
# Fri, 03 Aug 2018 11:50:09 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Fri, 03 Aug 2018 11:50:39 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Fri, 03 Aug 2018 11:50:42 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Fri, 03 Aug 2018 11:50:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Aug 2018 11:50:42 GMT
EXPOSE 6123/tcp 8081/tcp
# Fri, 03 Aug 2018 11:50:42 GMT
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
	-	`sha256:7f35e4e00e00c8ce6711c9b4d13bfaeb3527415533e1ce85f0c565623002e69e`  
		Last Modified: Fri, 03 Aug 2018 11:56:15 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8c97ef57bb75823bb1590e7ad00f42bcad9458d803c90778f7c5a2bab8e629`  
		Last Modified: Fri, 03 Aug 2018 11:56:15 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237d0c1cd4b35bfad220affda19019aebd76edd3cc6ce8e30b8b6d58a085fa27`  
		Last Modified: Fri, 03 Aug 2018 11:56:15 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5654b25d7bbb3a928a0ec7d4c9683f73231ea9b0910a9fdb0be52c804f889897`  
		Last Modified: Fri, 03 Aug 2018 11:56:38 GMT  
		Size: 266.4 MB (266377829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcab106e799c002bac67959b201f87f56d03fb2371de3b254b85ba5c1295ef27`  
		Last Modified: Fri, 03 Aug 2018 11:56:15 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
