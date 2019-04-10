## `flink:hadoop28-alpine`

```console
$ docker pull flink@sha256:1dd281564288a68134b1e2ac06c3a2b6c9da9899d47ea26dfe99bdd564c1f48b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `flink:hadoop28-alpine` - linux; amd64

```console
$ docker pull flink@sha256:fe97293ed12f481a2ef0f50ce11de00ae4e2d675bb5d3c9c1b7e561e60d0f50d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.2 MB (350153790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a942832265396f650289d9414eb26e485e968431e728dbe08d37d48239a53ea`
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
# Wed, 10 Apr 2019 03:21:29 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop28-scala_2.12
# Wed, 10 Apr 2019 03:21:29 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 10 Apr 2019 03:21:30 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 03:21:30 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Wed, 10 Apr 2019 03:21:31 GMT
WORKDIR /opt/flink
# Wed, 10 Apr 2019 03:21:31 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz
# Wed, 10 Apr 2019 03:21:31 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz.asc
# Wed, 10 Apr 2019 03:21:31 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Wed, 10 Apr 2019 03:22:01 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Wed, 10 Apr 2019 03:22:02 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 10 Apr 2019 03:22:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 Apr 2019 03:22:02 GMT
EXPOSE 6123 8081
# Wed, 10 Apr 2019 03:22:02 GMT
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
	-	`sha256:45b59e7839f5b17c002e8af479519796d8f68a71a20f342060381535a10c8d09`  
		Last Modified: Wed, 10 Apr 2019 03:28:54 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6986838bf224f267842f45d2c6c5a99891af3099a61be2eb882c014f0f984d0d`  
		Last Modified: Wed, 10 Apr 2019 03:28:54 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a5f94fb56a8ee6c1385d38664305dca68e0b1ccd14a61f2893292ec4341c1a`  
		Last Modified: Wed, 10 Apr 2019 03:28:54 GMT  
		Size: 64.0 KB (63969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472b839c682745c6154ace634ace50b8aa6fb37e4aa5514ac42351164cfc1022`  
		Last Modified: Wed, 10 Apr 2019 03:29:10 GMT  
		Size: 291.2 MB (291184336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1cf394faf75207e5540e66e426a3cb6b028c7d0412b015077b072d8cff2e743`  
		Last Modified: Wed, 10 Apr 2019 03:28:54 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28-alpine` - linux; arm variant v6

```console
$ docker pull flink@sha256:a5e8bc0016e3588fa0a1ec5922adce89e1bc38e4ebe46ff68873ff8154df4bda
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.7 MB (347749904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f732512794a1306ba0e3769db3140f1db108d4e1facd4f8d8be3f474d84a8b9d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:53 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:39:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:40:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:40:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 07:49:41 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 07:52:46 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 07:52:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 08:12:09 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Wed, 03 Apr 2019 08:31:04 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop28-scala_2.12
# Wed, 03 Apr 2019 08:31:05 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 03 Apr 2019 08:31:05 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 03 Apr 2019 08:31:07 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Wed, 03 Apr 2019 08:31:07 GMT
WORKDIR /opt/flink
# Wed, 03 Apr 2019 08:31:08 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz
# Wed, 03 Apr 2019 08:31:08 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz.asc
# Wed, 03 Apr 2019 08:31:09 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Wed, 03 Apr 2019 08:31:42 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Wed, 03 Apr 2019 08:31:45 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 03 Apr 2019 08:31:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 03 Apr 2019 08:31:46 GMT
EXPOSE 6123 8081
# Wed, 03 Apr 2019 08:31:46 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8e265594b5112bd474ac92c9c83497fc535a27624c2798c8817a01b28328c`  
		Last Modified: Fri, 08 Mar 2019 04:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972acb4c659fffab6be0f752b78857f78dbda522970cf7946a5a622cf65f4797`  
		Last Modified: Wed, 03 Apr 2019 07:53:52 GMT  
		Size: 52.4 MB (52387444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105a3d3c2b6dc223ad79a2cba888bbfd507119f5057ceb38ead17eb2fd3a6ac8`  
		Last Modified: Wed, 03 Apr 2019 08:33:53 GMT  
		Size: 1.6 MB (1571075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1687242146c7b8766412bb053ffbdf0183b7649117312b63a2b419ad800d014c`  
		Last Modified: Wed, 03 Apr 2019 08:43:43 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f18dc9b57d3b22cd087a117e96c9630e0ff79096099dec76251b4ba56ce93d6`  
		Last Modified: Wed, 03 Apr 2019 08:43:43 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53cf5e57df60617838b701a5f0ea181cf0e2fbd3a5b55bcd3473dc023a79389`  
		Last Modified: Wed, 03 Apr 2019 08:43:43 GMT  
		Size: 64.0 KB (63967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a6f4c7c37089cdeda496ba1b0b38e52955925e86ab66db2fd9f4763753ef83`  
		Last Modified: Wed, 03 Apr 2019 08:44:23 GMT  
		Size: 291.2 MB (291183907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eab4ae2ecccbea0b92eb096e60dfd85ea87437001123de5e193f62f4d660ab1`  
		Last Modified: Wed, 03 Apr 2019 08:43:43 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28-alpine` - linux; arm variant v7

```console
$ docker pull flink@sha256:b426559869f7f1cd7c1a5a0bde96a3261394ef4ce187860ec38ee1d9a327a656
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.7 MB (346660139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e747f30b9a278a2cad1187877cab413fac573f675962862f9c37e1b961b134f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:24:30 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 12:24:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Mar 2019 12:24:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 12 Mar 2019 12:24:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 12:07:56 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 12:08:13 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 12:08:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 12:52:58 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Wed, 03 Apr 2019 13:09:39 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop28-scala_2.12
# Wed, 03 Apr 2019 13:09:40 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 03 Apr 2019 13:09:40 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 03 Apr 2019 13:09:42 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Wed, 03 Apr 2019 13:09:43 GMT
WORKDIR /opt/flink
# Wed, 03 Apr 2019 13:09:43 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz
# Wed, 03 Apr 2019 13:09:43 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz.asc
# Wed, 03 Apr 2019 13:09:44 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Wed, 03 Apr 2019 13:10:21 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Wed, 03 Apr 2019 13:10:22 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 03 Apr 2019 13:10:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 03 Apr 2019 13:10:23 GMT
EXPOSE 6123 8081
# Wed, 03 Apr 2019 13:10:23 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef530e96fd6306ed7c7499028d70bd5f7c35e5a97be4d8ba61cc50bdd03e6478`  
		Last Modified: Tue, 12 Mar 2019 12:26:39 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a0387561adb67432809b362df2d0624d7020f25d73f23e8894bb4c36926551`  
		Last Modified: Wed, 03 Apr 2019 12:10:14 GMT  
		Size: 51.6 MB (51577198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b5a7b286acaee49a0d31ed149079744e4d582b944b54eb9b92c7c7e3dfdaf7`  
		Last Modified: Wed, 03 Apr 2019 13:14:48 GMT  
		Size: 1.5 MB (1483642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260449af73d83b92226564a3fe55c1b3f42d0475e443f7748d8b7f29ff36d97a`  
		Last Modified: Wed, 03 Apr 2019 13:24:26 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6910e232158bf8cf54b0a7b855032a67506d84e3789bdc541ebcd38ff8bb45c`  
		Last Modified: Wed, 03 Apr 2019 13:24:26 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69431e7b4c7980e5aff8bead519705995177619fe97a1935dfa9291f93de094d`  
		Last Modified: Wed, 03 Apr 2019 13:24:26 GMT  
		Size: 64.0 KB (63969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3886085cbf40efbaeac1bf1dfe0686932fac8b3bdbf1abd7427c5b9bdbc67966`  
		Last Modified: Wed, 03 Apr 2019 13:25:06 GMT  
		Size: 291.2 MB (291183911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e69cd90899eec76086e79b0eaec92801d40af8322e5df7c2c088220bedce70`  
		Last Modified: Wed, 03 Apr 2019 13:24:26 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28-alpine` - linux; arm64 variant v8

```console
$ docker pull flink@sha256:5510857ddeaf04698182e21a1f2571ffbf77bccdf0814e108d9e14a6188c67d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.5 MB (350525986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:840af0fdafa387ca6c1d1a204385011ba1d697eb4063c3a87066f745e8c4d9ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 09:49:55 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 09:49:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 09:50:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 09:50:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 04:09:03 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 09:37:52 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 09:38:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 10:48:23 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Wed, 03 Apr 2019 11:14:32 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop28-scala_2.12
# Wed, 03 Apr 2019 11:14:33 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 03 Apr 2019 11:14:35 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 03 Apr 2019 11:14:39 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Wed, 03 Apr 2019 11:14:39 GMT
WORKDIR /opt/flink
# Wed, 03 Apr 2019 11:14:40 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz
# Wed, 03 Apr 2019 11:14:41 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz.asc
# Wed, 03 Apr 2019 11:14:42 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Wed, 03 Apr 2019 11:16:55 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Wed, 03 Apr 2019 11:16:56 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 03 Apr 2019 11:16:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 03 Apr 2019 11:16:57 GMT
EXPOSE 6123 8081
# Wed, 03 Apr 2019 11:16:58 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dc35c571266c194f6068f0540d063943a44ec79726311c42950083e6ab2460`  
		Last Modified: Fri, 08 Mar 2019 09:55:35 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d966274452f0f08a7fa71690eb7a8d0847f389e523c9842ad51121d5439b6a3d`  
		Last Modified: Wed, 03 Apr 2019 09:40:42 GMT  
		Size: 54.9 MB (54929195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:772b73fe2bcdb5a3f5704ba06505e6ca5a6035bb63baba98c645ba03e660a277`  
		Last Modified: Wed, 03 Apr 2019 11:20:26 GMT  
		Size: 1.7 MB (1659186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fd1e90c17cbf5f905a8ea601929a2ce81a942043007e17106742cb9158bea2f`  
		Last Modified: Wed, 03 Apr 2019 11:32:03 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f32d085aa08895a5966342a5be5dbd4086c684df974bd1bb2dca3711827019`  
		Last Modified: Wed, 03 Apr 2019 11:32:03 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef31aef68fe962027965bfc022d1693c018bc7ac836cc495d720de5ab02c45ee`  
		Last Modified: Wed, 03 Apr 2019 11:32:03 GMT  
		Size: 64.0 KB (63969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c21f7f05613f9aef78d05ac8d46de956a4be9084a799946abe5f6e992ea5637`  
		Last Modified: Wed, 03 Apr 2019 11:33:03 GMT  
		Size: 291.2 MB (291182894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36fb577a66fba3386223716f72f233c16f213ba2f37aeee38d5cfa5d6625baa6`  
		Last Modified: Wed, 03 Apr 2019 11:32:03 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28-alpine` - linux; 386

```console
$ docker pull flink@sha256:e64becd1a4630e2691adf9236667bd08c0295f8e0820a87fba1c42261eeef2fb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.2 MB (351213706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:815ce6d8151df691fded44f824cc224f2dbe488ce6ef9e2492847fcb0c746c22`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:52:02 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 06:52:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 06:52:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 06:52:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 01:00:58 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 11:35:25 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 11:35:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 13:06:47 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Wed, 03 Apr 2019 13:15:17 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop28-scala_2.12
# Wed, 03 Apr 2019 13:15:18 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 03 Apr 2019 13:15:18 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 03 Apr 2019 13:15:18 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Wed, 03 Apr 2019 13:15:19 GMT
WORKDIR /opt/flink
# Wed, 03 Apr 2019 13:15:19 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz
# Wed, 03 Apr 2019 13:15:19 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz.asc
# Wed, 03 Apr 2019 13:15:19 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Wed, 03 Apr 2019 13:16:15 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Wed, 03 Apr 2019 13:16:15 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 03 Apr 2019 13:16:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 03 Apr 2019 13:16:15 GMT
EXPOSE 6123 8081
# Wed, 03 Apr 2019 13:16:16 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe95f117badec568caa0381ef010c1d9df00d3c0870ebab8187a0017d68c5f8b`  
		Last Modified: Fri, 08 Mar 2019 06:53:37 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47b2ea4dcb1b036ea9c07141df2ea81e99b070085f09fec057458ca4139b596`  
		Last Modified: Wed, 03 Apr 2019 11:36:48 GMT  
		Size: 55.5 MB (55538598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dcf82b0c24a8501b3283f43290c8cdd7697d822ef6abcf89994401bc9378ce9`  
		Last Modified: Wed, 03 Apr 2019 13:19:22 GMT  
		Size: 1.7 MB (1675378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01fa221111134e02db3b394ffb29cf7330a7c78a1a849e4dfb770b526ff2a2cc`  
		Last Modified: Wed, 03 Apr 2019 13:25:15 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1e21b3641c8a37b6be9256022dddf7da91b0ab9388b2a42eb9d984e43f8cf8`  
		Last Modified: Wed, 03 Apr 2019 13:25:15 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44618978d73bf2ea79be7d187a7c00f91b0be27d55faa04d8ec730cd35387738`  
		Last Modified: Wed, 03 Apr 2019 13:25:15 GMT  
		Size: 64.0 KB (63969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a94186480e0630872c72f14c26b3e010082f7eb67d6ec58f18b76862984c3e6`  
		Last Modified: Wed, 03 Apr 2019 13:25:36 GMT  
		Size: 291.2 MB (291183602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf7d3ef9032577a7d8889c13d0bbb12b7c780ec45ec21241c3830ff8aa19351`  
		Last Modified: Wed, 03 Apr 2019 13:25:15 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28-alpine` - linux; ppc64le

```console
$ docker pull flink@sha256:dd2ec3f94263d2a0a47874d2c2086be3f944fa8cd25b9d2526c6d39fe4a6aebb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.3 MB (351349891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b0a9ae77b9a8348aa161d285552809f27e78ccb13df95781eb36afc577a9074`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:13:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:13:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:14:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:14:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 08:37:47 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 09:10:25 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 09:10:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 09:59:29 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Wed, 03 Apr 2019 10:30:05 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop28-scala_2.12
# Wed, 03 Apr 2019 10:30:09 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 03 Apr 2019 10:30:12 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 03 Apr 2019 10:30:21 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Wed, 03 Apr 2019 10:30:26 GMT
WORKDIR /opt/flink
# Wed, 03 Apr 2019 10:30:31 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz
# Wed, 03 Apr 2019 10:30:38 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz.asc
# Wed, 03 Apr 2019 10:30:43 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Wed, 03 Apr 2019 10:33:28 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Wed, 03 Apr 2019 10:33:30 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 03 Apr 2019 10:33:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 03 Apr 2019 10:33:35 GMT
EXPOSE 6123 8081
# Wed, 03 Apr 2019 10:33:40 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b37b96605d1a56e30ef6132daa2faa08064df25ac1042a5b799c96028716bf7`  
		Last Modified: Fri, 08 Mar 2019 04:17:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf8f629dab1143ca48d3450e3e249d44bce82649250f91638bb3af77b98c63f2`  
		Last Modified: Wed, 03 Apr 2019 09:13:03 GMT  
		Size: 55.6 MB (55588718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06b5b9343eaa38bdbe3b7673222a220b5b3d0eeceed51052b6c8cd2ba10b9757`  
		Last Modified: Wed, 03 Apr 2019 10:44:01 GMT  
		Size: 1.7 MB (1730939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17978f0c72a18965519a3960c485c9f91e9a7e5f8bb7a7af1ab4a514d6398dc7`  
		Last Modified: Wed, 03 Apr 2019 10:55:06 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d65e51317199707f6fa3d8ce58fcf5b056380dd96ae668a48f1e2b049b0769`  
		Last Modified: Wed, 03 Apr 2019 10:55:06 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf559395c0edf1f90ba36a30bbbb18fc0f2d15cf7823f92331df8bdeeeed3e2`  
		Last Modified: Wed, 03 Apr 2019 10:55:05 GMT  
		Size: 64.0 KB (63967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfe371ce18b0fa06ee45f767ef00a6b141f14c839f31199cf71d1da69492314`  
		Last Modified: Wed, 03 Apr 2019 10:55:38 GMT  
		Size: 291.2 MB (291184789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccad8faff92824b478d381b3162ac0e6872c352791739c3bbfb99de6e6db71a7`  
		Last Modified: Wed, 03 Apr 2019 10:55:06 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28-alpine` - linux; s390x

```console
$ docker pull flink@sha256:d11a1c15935b0fb972ef1d08598faca6e46dc7c5ed66a202507e1cc43298c2ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.1 MB (349130628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:603dba463ca70b6e70693c87ecdb1a53fc251e39585da9ed9dc4c63499c10a85`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:02:40 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:02:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:02:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:02:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 11:49:46 GMT
ENV JAVA_VERSION=8u201
# Thu, 04 Apr 2019 11:57:24 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Thu, 04 Apr 2019 11:57:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 04 Apr 2019 12:58:34 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Thu, 04 Apr 2019 13:11:33 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop28-scala_2.12
# Thu, 04 Apr 2019 13:11:34 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 04 Apr 2019 13:11:34 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 04 Apr 2019 13:11:35 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Thu, 04 Apr 2019 13:11:35 GMT
WORKDIR /opt/flink
# Thu, 04 Apr 2019 13:11:36 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz
# Thu, 04 Apr 2019 13:11:36 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz.asc
# Thu, 04 Apr 2019 13:11:36 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Thu, 04 Apr 2019 13:11:49 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Thu, 04 Apr 2019 13:11:50 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Thu, 04 Apr 2019 13:11:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 04 Apr 2019 13:11:50 GMT
EXPOSE 6123 8081
# Thu, 04 Apr 2019 13:11:50 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc974726c47232f0d4a4664c4fe09841c9a948a3e4a56abfe98770208fcc645`  
		Last Modified: Fri, 08 Mar 2019 04:04:06 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7742b04873b403dd6576fe37e0a6e7c391ae124437941c50ffe52260f269aafe`  
		Last Modified: Thu, 04 Apr 2019 11:59:12 GMT  
		Size: 53.7 MB (53660002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e52eaf884147939e393ead4d8c3ea1dca0a2ac0927ffcc7b37e2aa496830134`  
		Last Modified: Thu, 04 Apr 2019 13:14:02 GMT  
		Size: 1.7 MB (1679798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847e6509c74e173b8a9b405a784f072233cb7c593987a76500c8fa2d048f0d45`  
		Last Modified: Thu, 04 Apr 2019 13:20:01 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc58f2ffcceb2bf8f96fd5979a511729d552f02524d5ff756b7125a2a6f1974`  
		Last Modified: Thu, 04 Apr 2019 13:20:01 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60bca849e28be3f74aae52eec10ce805b727b52e785e3947d6e269f4447613ec`  
		Last Modified: Thu, 04 Apr 2019 13:20:01 GMT  
		Size: 64.0 KB (63967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2ed0daafa01c9ed528e7de59e43e18b1392f7be8a38230a5ff67f58468f7e9`  
		Last Modified: Thu, 04 Apr 2019 13:20:20 GMT  
		Size: 291.2 MB (291182753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a7ce0ceec84bb59dcce805857088b64bb26144153249fdff3209150027ee30`  
		Last Modified: Thu, 04 Apr 2019 13:20:01 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
