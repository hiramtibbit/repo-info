## `flink:scala_2.11-alpine`

```console
$ docker pull flink@sha256:4c98b049226d305be93c7d173cd28761fbf255dc43f3fc107068e233b566048a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `flink:scala_2.11-alpine` - linux; amd64

```console
$ docker pull flink@sha256:8cc0fbca351ab3381e8253c93275edade0696fb6efd0bd381d3ef4bf35fdb136
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.0 MB (356963527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb8d1aeab01ecf0c0727dcd01fe4cde8060ba764a3efc46cb002f71b423f88d7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 01:52:32 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 01:52:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 01:52:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Apr 2019 01:52:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 01:52:54 GMT
ENV JAVA_VERSION=8u201
# Wed, 10 Apr 2019 01:52:54 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 10 Apr 2019 01:52:59 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Apr 2019 03:11:11 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Fri, 12 Apr 2019 00:22:58 GMT
ENV FLINK_VERSION=1.8.0 HADOOP_SCALA_VARIANT=scala_2.11
# Fri, 12 Apr 2019 00:22:58 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 12 Apr 2019 00:22:59 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 12 Apr 2019 00:22:59 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 12 Apr 2019 00:22:59 GMT
WORKDIR /opt/flink
# Fri, 12 Apr 2019 00:23:00 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.11.tgz
# Fri, 12 Apr 2019 00:23:00 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.8.0/flink-1.8.0-bin-scala_2.11.tgz.asc
# Fri, 12 Apr 2019 00:23:00 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Fri, 12 Apr 2019 00:24:30 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Fri, 12 Apr 2019 00:24:30 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Fri, 12 Apr 2019 00:24:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 12 Apr 2019 00:24:31 GMT
EXPOSE 6123 8081
# Fri, 12 Apr 2019 00:24:31 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e12771959adeb3408e625492accf845401aa66bcca638859a6b34176d753d62`  
		Last Modified: Wed, 10 Apr 2019 01:57:16 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae272eb2814b212db0ef2f5b8db4be474597598efb779c8c1c4073d507939bc6`  
		Last Modified: Wed, 10 Apr 2019 01:57:42 GMT  
		Size: 54.9 MB (54918805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce805bf1f3791f39b2348358dfb2310106de4d1e8ff9126590f43621cae4f873`  
		Last Modified: Wed, 10 Apr 2019 03:23:43 GMT  
		Size: 1.2 MB (1226870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a7349ea1efe717d5bb33134172e274deafd7d4feb3486ab88339062b0bcf02`  
		Last Modified: Fri, 12 Apr 2019 00:27:36 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77738c8963460e296e6c122d7a00863655258567fd1b7f01fb539a98f107668f`  
		Last Modified: Fri, 12 Apr 2019 00:27:36 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc6e073ad391de6d26bade93c34bd8f88d682863e59f556b899ff81d2b3ca7d`  
		Last Modified: Fri, 12 Apr 2019 00:27:36 GMT  
		Size: 64.0 KB (63969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb180b54f97c00202304d1b37f53eebe0d887e7a0ab62c168ce65724b3cf3da6`  
		Last Modified: Fri, 12 Apr 2019 00:28:03 GMT  
		Size: 298.0 MB (297994073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a1d3a06c07cb43bbe700298167049dd01bd83f5fd860b7fa6d77359a5b30c5a`  
		Last Modified: Fri, 12 Apr 2019 00:27:36 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.11-alpine` - linux; arm variant v6

```console
$ docker pull flink@sha256:dbce778fcbd3a395c43f7a0db98fe0d93b41a9068b885b47b56bf5b894a6bab4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.2 MB (354161546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae7b142dffaf577d482c6a081a2b8c925d7775a14ddfb3ffac173c0a48f539d5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:15:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 08:16:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 08:16:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Apr 2019 08:16:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 08:16:13 GMT
ENV JAVA_VERSION=8u201
# Wed, 10 Apr 2019 08:16:14 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 10 Apr 2019 08:16:19 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Apr 2019 09:21:39 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Fri, 12 Apr 2019 07:49:59 GMT
ENV FLINK_VERSION=1.8.0 HADOOP_SCALA_VARIANT=scala_2.11
# Fri, 12 Apr 2019 07:50:00 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 12 Apr 2019 07:50:00 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 12 Apr 2019 07:50:01 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 12 Apr 2019 07:50:02 GMT
WORKDIR /opt/flink
# Fri, 12 Apr 2019 07:50:02 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.11.tgz
# Fri, 12 Apr 2019 07:50:02 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.8.0/flink-1.8.0-bin-scala_2.11.tgz.asc
# Fri, 12 Apr 2019 07:50:03 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Fri, 12 Apr 2019 07:51:08 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Fri, 12 Apr 2019 07:51:09 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Fri, 12 Apr 2019 07:51:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 12 Apr 2019 07:51:10 GMT
EXPOSE 6123 8081
# Fri, 12 Apr 2019 07:51:10 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740f9654bf3d64555b0034839bc01523005f3494bc52b01109cf0ceb7de78ece`  
		Last Modified: Wed, 10 Apr 2019 08:17:28 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e44c03e5dbccf9684eecd73adda46344a7ef33a1ef56568391eb8d1bb5766d4`  
		Last Modified: Wed, 10 Apr 2019 08:18:01 GMT  
		Size: 52.4 MB (52387331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4ff98b2d2b3fcd3190601cc8af5d2dae37d7954ab943a23eb15b5cfff35bb5`  
		Last Modified: Wed, 10 Apr 2019 09:46:44 GMT  
		Size: 1.2 MB (1170552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6c350f0089ff93438b72e5e0d4f550886a5c0e73baf689d96bfbaff7ad92cd`  
		Last Modified: Fri, 12 Apr 2019 07:53:07 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ffdb3cd8e8f3ac72605c72626b90a1e3a2c27c45f04be9f7579da99f387f2aa`  
		Last Modified: Fri, 12 Apr 2019 07:53:06 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ab6724c0de0b4addf080ac58a8751b3c245664c076eff037e34f891dc5c404`  
		Last Modified: Fri, 12 Apr 2019 07:53:06 GMT  
		Size: 64.0 KB (63969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b434e1b3e8cb88c49c7f15b6471192e933689454628603cc19c9e63096d92102`  
		Last Modified: Fri, 12 Apr 2019 07:53:55 GMT  
		Size: 298.0 MB (297993414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7bb3118c40fcabfa4610fe060e1cf216a0e84fcb3b6bd084c2025cc066810b`  
		Last Modified: Fri, 12 Apr 2019 07:53:07 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.11-alpine` - linux; ppc64le

```console
$ docker pull flink@sha256:a1c23557ee9616fb899623f9f10e4d5b6b6833dafae129084a44a521325b3161
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.7 MB (357741594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8da55c8825ef3705268a6e2088b6508ee841f72f5ac57b189be0fc15e13f2c15`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:34:07 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 10:34:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 10:35:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Apr 2019 10:35:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 10:35:10 GMT
ENV JAVA_VERSION=8u201
# Wed, 10 Apr 2019 10:35:13 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 10 Apr 2019 10:35:27 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Apr 2019 11:31:29 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Fri, 12 Apr 2019 08:24:45 GMT
ENV FLINK_VERSION=1.8.0 HADOOP_SCALA_VARIANT=scala_2.11
# Fri, 12 Apr 2019 08:24:48 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 12 Apr 2019 08:24:52 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 12 Apr 2019 08:24:59 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 12 Apr 2019 08:25:02 GMT
WORKDIR /opt/flink
# Fri, 12 Apr 2019 08:25:04 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.11.tgz
# Fri, 12 Apr 2019 08:25:08 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.8.0/flink-1.8.0-bin-scala_2.11.tgz.asc
# Fri, 12 Apr 2019 08:25:09 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Fri, 12 Apr 2019 08:25:41 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Fri, 12 Apr 2019 08:25:43 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Fri, 12 Apr 2019 08:25:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 12 Apr 2019 08:25:48 GMT
EXPOSE 6123 8081
# Fri, 12 Apr 2019 08:25:51 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33502e4594fea19504ab3a271166aae35dc0104c699ca0bdf84559822c1c7be8`  
		Last Modified: Wed, 10 Apr 2019 10:38:58 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35ad59adc8e8f19b104a95ecd5f2b050e924dce137d090bca2b613e15cc6c56`  
		Last Modified: Wed, 10 Apr 2019 10:39:46 GMT  
		Size: 55.6 MB (55588899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b346f50651c62f3ea9c0a6ed4441390033bff55cb2329d480c187c5c858f7f6`  
		Last Modified: Wed, 10 Apr 2019 12:15:12 GMT  
		Size: 1.3 MB (1310697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c817192288c5f65205526a0f628c7a68ea51aa52aa243def3c1d57c1155fbda`  
		Last Modified: Fri, 12 Apr 2019 08:31:45 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018cbf0af27d70d2d46100455224cb2e644d003034e20b0d1259cea7baa076b4`  
		Last Modified: Fri, 12 Apr 2019 08:31:46 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2576bd1f0a4e7f347a9111854d5544a8c6be56c2012832bd7331983f602826dc`  
		Last Modified: Fri, 12 Apr 2019 08:31:46 GMT  
		Size: 64.0 KB (63969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72edf607f45a1a45a0ad20d9c13b2bc573f11722e682c6b9152ef7b54fc8024d`  
		Last Modified: Fri, 12 Apr 2019 08:32:14 GMT  
		Size: 298.0 MB (297994170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98716b4b9de4d8ee676b53f82e25073f433dda2a3642ea9b49c39a2eb6e92a8b`  
		Last Modified: Fri, 12 Apr 2019 08:31:45 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
