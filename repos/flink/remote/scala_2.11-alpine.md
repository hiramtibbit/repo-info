## `flink:scala_2.11-alpine`

```console
$ docker pull flink@sha256:2c65826f5a813f54772f629b4b26169786a5f14ebdb4e36e756f5894bb2b221c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `flink:scala_2.11-alpine` - linux; amd64

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

### `flink:scala_2.11-alpine` - linux; arm variant v6

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
