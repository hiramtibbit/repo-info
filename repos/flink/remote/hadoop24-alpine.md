## `flink:hadoop24-alpine`

```console
$ docker pull flink@sha256:88c37a18aa46fcf86f816bfe1bef0fb1e0639a679e92a1f418136d9e6af403e7
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

### `flink:hadoop24-alpine` - linux; amd64

```console
$ docker pull flink@sha256:7310b40336428b7c9c45499a324819db6365743564d281a0a42d24d412c8ec45
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.6 MB (338631422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb9ef919be43e533d7888521487b5c0c4a8ebc1efc9f2395a85b52890603b82a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 02:13:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:29:04 GMT
ENV JAVA_VERSION=8u201
# Tue, 02 Apr 2019 23:45:43 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Tue, 02 Apr 2019 23:45:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 00:16:43 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Wed, 03 Apr 2019 00:20:45 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop24-scala_2.12
# Wed, 03 Apr 2019 00:20:45 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 03 Apr 2019 00:20:45 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 03 Apr 2019 00:20:46 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Wed, 03 Apr 2019 00:20:46 GMT
WORKDIR /opt/flink
# Wed, 03 Apr 2019 00:20:46 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.12.tgz
# Wed, 03 Apr 2019 00:20:46 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.12.tgz.asc
# Wed, 03 Apr 2019 00:20:47 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Wed, 03 Apr 2019 00:21:44 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Wed, 03 Apr 2019 00:21:44 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 03 Apr 2019 00:21:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 03 Apr 2019 00:21:45 GMT
EXPOSE 6123 8081
# Wed, 03 Apr 2019 00:21:45 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5bd74861e4346a0beed670ef2a6613f3594b458820c50efc5e1044d865e134`  
		Last Modified: Tue, 02 Apr 2019 23:47:30 GMT  
		Size: 54.9 MB (54918577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5102feae7f441179c67ca43fc7c55ac85f37d2ce5fcd95ed4a44175351e22a35`  
		Last Modified: Wed, 03 Apr 2019 00:29:29 GMT  
		Size: 1.6 MB (1637375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2740fb19da68fa6177d6e480196f250ab6c714fb687f35d2e42b8c2a483543`  
		Last Modified: Wed, 03 Apr 2019 00:31:59 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fc8b25e62d9657d455fd325a13cfdbf75c6bfd8ce95e7ba86ea485ef0f1d43`  
		Last Modified: Wed, 03 Apr 2019 00:31:59 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f4c5c7c34ea095216249b1e290f7d046b993ae1530a0da18150fc652a7e47d`  
		Last Modified: Wed, 03 Apr 2019 00:31:59 GMT  
		Size: 64.0 KB (63969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e22387bbe8d9e7e2c0ac823445dbdb7b556554e97281dda48b32545a11bd8ce9`  
		Last Modified: Wed, 03 Apr 2019 00:32:16 GMT  
		Size: 279.3 MB (279253967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bb3262703810fabc092da730eea4541813b24a4d504ac98ee806cc090e2bf3`  
		Last Modified: Wed, 03 Apr 2019 00:31:59 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop24-alpine` - linux; arm variant v6

```console
$ docker pull flink@sha256:3ab93b19be54888d5510b743428c59cb9f6e9ee5da1dd671a7897182a830ae68
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.8 MB (335819758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cf01ce851dc41b967ab90280456f5d45137a75ef1c27a8105ad390f8c50cc65`
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
# Wed, 03 Apr 2019 08:24:14 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop24-scala_2.12
# Wed, 03 Apr 2019 08:24:14 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 03 Apr 2019 08:24:15 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 03 Apr 2019 08:24:16 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Wed, 03 Apr 2019 08:24:17 GMT
WORKDIR /opt/flink
# Wed, 03 Apr 2019 08:24:17 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.12.tgz
# Wed, 03 Apr 2019 08:24:17 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.12.tgz.asc
# Wed, 03 Apr 2019 08:24:18 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Wed, 03 Apr 2019 08:25:31 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Wed, 03 Apr 2019 08:25:33 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 03 Apr 2019 08:25:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 03 Apr 2019 08:25:34 GMT
EXPOSE 6123 8081
# Wed, 03 Apr 2019 08:25:35 GMT
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
	-	`sha256:63ebdaf78c15dbec4c3e6b03c8f533fdbcb4fc9bb2deb10d50f581948ba240a1`  
		Last Modified: Wed, 03 Apr 2019 08:39:06 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7ec62bd37c714553a1d8b6b95a2bc73836d7d6d4a9c0d16a326495d2a49b21`  
		Last Modified: Wed, 03 Apr 2019 08:39:06 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c49b0ca43add94578a58eea1eea32c3b630367e4ff069a6312b5a2fb57b6e4c`  
		Last Modified: Wed, 03 Apr 2019 08:39:06 GMT  
		Size: 64.0 KB (63969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c986308a8c89cb04e5c8a491c8e9d373346e504c3a320acbe4279dc15ded148b`  
		Last Modified: Wed, 03 Apr 2019 08:39:44 GMT  
		Size: 279.3 MB (279253756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81bad96f414d3e8d92046b04e08aef520af8070282af3f673f77be8f3021b441`  
		Last Modified: Wed, 03 Apr 2019 08:39:06 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop24-alpine` - linux; arm variant v7

```console
$ docker pull flink@sha256:7f7eea6276da44f4c5ef102300420ad5b9ec798d8c1e7ac98cc750cdd4606b18
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.8 MB (334768285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:774f91f524e682e52a23f64f3d7ede913e7f8a13d11d73686ed8c9ff5fad74b9`
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
# Thu, 28 Mar 2019 12:07:56 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 12:08:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 12:08:04 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 12:48:31 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Thu, 28 Mar 2019 13:17:16 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop24-scala_2.12
# Thu, 28 Mar 2019 13:17:17 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 28 Mar 2019 13:17:17 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 13:17:18 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Thu, 28 Mar 2019 13:17:19 GMT
WORKDIR /opt/flink
# Thu, 28 Mar 2019 13:17:19 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.12.tgz
# Thu, 28 Mar 2019 13:17:19 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.12.tgz.asc
# Thu, 28 Mar 2019 13:17:20 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Thu, 28 Mar 2019 13:17:52 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Thu, 28 Mar 2019 13:17:53 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Thu, 28 Mar 2019 13:17:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 28 Mar 2019 13:17:54 GMT
EXPOSE 6123 8081
# Thu, 28 Mar 2019 13:17:54 GMT
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
	-	`sha256:530d86d205d87d4d8aace1170b748bbff26804368b883438dd3227d8dd13b9ba`  
		Last Modified: Thu, 28 Mar 2019 12:19:57 GMT  
		Size: 49.8 MB (49810968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d118d3f00bb5950b4fd7f53e338da5e386b5a5ce70761ec5f5bf6cf9e6c2f72`  
		Last Modified: Thu, 28 Mar 2019 12:19:49 GMT  
		Size: 1.8 MB (1804514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb059e82a4d981645ae8be89b7e68edac8253d90e433ebdab9eab5ece2bb7fc`  
		Last Modified: Thu, 28 Mar 2019 13:34:53 GMT  
		Size: 1.5 MB (1483672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bf104140120d7ddd04ddc27e06ef402b0c65519b87ae45e7a4185d9be0f5d7`  
		Last Modified: Thu, 28 Mar 2019 13:47:46 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbfad4e3d84399c8cb578e6f9ffafc1b9de3b0f75acdc1efdd8cbfdb8392dc3`  
		Last Modified: Thu, 28 Mar 2019 13:47:46 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177f9383334f5bbb567f2f6ca7c517865867cb1421156851bd0aa5b1121e5d8f`  
		Last Modified: Thu, 28 Mar 2019 13:47:46 GMT  
		Size: 64.0 KB (63967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8863acbea2aefeb19390da55e826760c6fc3361c1cf7b5fedfd41eb3d056cc8e`  
		Last Modified: Thu, 28 Mar 2019 13:48:25 GMT  
		Size: 279.3 MB (279253749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f6bd16054407d98a07e3e8ef68d91409d517edf2bb1070cb743404fa85b9c7`  
		Last Modified: Thu, 28 Mar 2019 13:47:46 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop24-alpine` - linux; arm64 variant v8

```console
$ docker pull flink@sha256:3b764c51242f74b3dcecbecdd283a21ecd0bedac1adb5e2ad3610969626fa813
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.6 MB (338635818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:529564d9fc660b31b686d1cb3db02b7ee234a952934cff7ec343b3018295fb48`
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
# Thu, 28 Mar 2019 04:09:07 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 04:09:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 04:09:26 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 06:26:11 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Thu, 28 Mar 2019 06:59:25 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop24-scala_2.12
# Thu, 28 Mar 2019 06:59:26 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 28 Mar 2019 06:59:26 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 06:59:28 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Thu, 28 Mar 2019 06:59:29 GMT
WORKDIR /opt/flink
# Thu, 28 Mar 2019 06:59:29 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.12.tgz
# Thu, 28 Mar 2019 06:59:30 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.12.tgz.asc
# Thu, 28 Mar 2019 06:59:31 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Thu, 28 Mar 2019 07:00:37 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Thu, 28 Mar 2019 07:00:38 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Thu, 28 Mar 2019 07:00:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 28 Mar 2019 07:00:39 GMT
EXPOSE 6123 8081
# Thu, 28 Mar 2019 07:00:40 GMT
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
	-	`sha256:eb6dd51b343aad9613467af3aef4b898ce00930ce5bf6ded2706b29f47f2d613`  
		Last Modified: Thu, 28 Mar 2019 04:14:28 GMT  
		Size: 52.7 MB (52724681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c9551e9662193a01af267a8fd7e5813e9dd98f2079c4736a15b5b1a38e41321`  
		Last Modified: Thu, 28 Mar 2019 04:14:18 GMT  
		Size: 2.2 MB (2243495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3059ed3f07febaa2bbb58e4a086527ad2a4e3a3c11655696656db982a11bf3`  
		Last Modified: Thu, 28 Mar 2019 07:39:14 GMT  
		Size: 1.7 MB (1659109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb36e8479b50ef7679d8ea4afd8d3c8a8b39381b67ad3d7697b8f005e0f18ef6`  
		Last Modified: Thu, 28 Mar 2019 07:55:28 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ba5421f2d65a5499a5fc82ca4704e9bc50b3a22898da1c40c65dcfacf4d7e4`  
		Last Modified: Thu, 28 Mar 2019 07:55:27 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77db8dd995fb5fe1a888017ca1830653cadc3c4bd0d0c012bbae3459ea24d634`  
		Last Modified: Thu, 28 Mar 2019 07:55:28 GMT  
		Size: 64.0 KB (63967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc04b51bdfea59c6c3159fe2c3d20147add683bdcd1dc9f70d42920e9ebbf28`  
		Last Modified: Thu, 28 Mar 2019 07:56:05 GMT  
		Size: 279.3 MB (279253824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e64a74543888f0a9449b801526006e760ee359a8e82bc3aa3ba12fef099313`  
		Last Modified: Thu, 28 Mar 2019 07:55:27 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop24-alpine` - linux; 386

```console
$ docker pull flink@sha256:d2a51d7676e47fb15814508d967bda6ac1d1f3f146076e27ea9113d66ff00188
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.3 MB (339315749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64b1a0e1623f898bb6658faf44cb8a3b0a38bbf5c6c9b7e776e5181aded27eb3`
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
# Thu, 28 Mar 2019 01:00:58 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 01:01:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 01:01:03 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 01:37:26 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Thu, 28 Mar 2019 02:47:09 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop24-scala_2.12
# Thu, 28 Mar 2019 02:47:10 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 28 Mar 2019 02:47:10 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 02:47:10 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Thu, 28 Mar 2019 02:47:11 GMT
WORKDIR /opt/flink
# Thu, 28 Mar 2019 02:47:11 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.12.tgz
# Thu, 28 Mar 2019 02:47:11 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.12.tgz.asc
# Thu, 28 Mar 2019 02:47:11 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Thu, 28 Mar 2019 02:47:30 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Thu, 28 Mar 2019 02:47:31 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Thu, 28 Mar 2019 02:47:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 28 Mar 2019 02:47:31 GMT
EXPOSE 6123 8081
# Thu, 28 Mar 2019 02:47:31 GMT
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
	-	`sha256:9976f4b52d6d29fb39677efd0fb01778ff46cb26cc4d357a67003fdbde4ee910`  
		Last Modified: Thu, 28 Mar 2019 01:18:53 GMT  
		Size: 53.2 MB (53175691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0533fd93d55b543cbcb5f415482cc1aab7b763461c9a22e9e0c41f5a95ec71c9`  
		Last Modified: Thu, 28 Mar 2019 01:18:46 GMT  
		Size: 2.4 MB (2394852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff97fb51706b9da6b260f49eb8662d63e1fd22d61981ce6d21488d5270b7be5`  
		Last Modified: Thu, 28 Mar 2019 02:55:34 GMT  
		Size: 1.7 MB (1675386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48004178f864c53158e6a11ab5b519e97d704bbacc9bd0d451191dee8a3ca4e7`  
		Last Modified: Thu, 28 Mar 2019 03:03:57 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58961ffd365e32e41de52dca4191000a2f963cf1e8f95452ac335e0cc34a2d25`  
		Last Modified: Thu, 28 Mar 2019 03:03:57 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014947068fe12181978fe5b478e877adc972ca1b7fe53efe9b0e54cc02e60412`  
		Last Modified: Thu, 28 Mar 2019 03:03:57 GMT  
		Size: 64.0 KB (63969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279069748f184136f76fd485722c03ecce2ea5e85cd53fbad3c8a0be9f6409e7`  
		Last Modified: Thu, 28 Mar 2019 03:04:18 GMT  
		Size: 279.3 MB (279253691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb19cd01f4fb8731b6206f67a099ce4f8d93d29dd039cc2602c894ec093eed3d`  
		Last Modified: Thu, 28 Mar 2019 03:03:59 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop24-alpine` - linux; ppc64le

```console
$ docker pull flink@sha256:e579fa45e5eaf34159ccd7c16928396fc349b07aeed74a460f6e182abadd7a78
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.5 MB (339452335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e730b53c92baef4d96293f7e38dbc3c5fa8620c315dd3d5b1d0043416292810a`
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
# Thu, 28 Mar 2019 08:37:51 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 08:38:03 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 08:38:13 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 11:25:59 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Thu, 28 Mar 2019 12:10:52 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop24-scala_2.12
# Thu, 28 Mar 2019 12:10:54 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 28 Mar 2019 12:10:56 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 12:10:59 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Thu, 28 Mar 2019 12:11:02 GMT
WORKDIR /opt/flink
# Thu, 28 Mar 2019 12:11:04 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.12.tgz
# Thu, 28 Mar 2019 12:11:06 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.12.tgz.asc
# Thu, 28 Mar 2019 12:11:07 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Thu, 28 Mar 2019 12:13:25 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Thu, 28 Mar 2019 12:13:27 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Thu, 28 Mar 2019 12:13:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 28 Mar 2019 12:13:30 GMT
EXPOSE 6123 8081
# Thu, 28 Mar 2019 12:13:31 GMT
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
	-	`sha256:ef74255218309615e9f667e5274026d23052ecd738fca3d2e873afcf38fdf50a`  
		Last Modified: Thu, 28 Mar 2019 08:48:54 GMT  
		Size: 53.1 MB (53149344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f81a40256f1669874675017d12810ae274fe4ed6c15dddcff8387b19d150b41`  
		Last Modified: Thu, 28 Mar 2019 08:48:09 GMT  
		Size: 2.5 MB (2472817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ee2fafb6fdf87ba8fb5ff88f90bbd36893aab298ec8f4260acccf14d399314`  
		Last Modified: Thu, 28 Mar 2019 13:03:33 GMT  
		Size: 1.7 MB (1730931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb9eead90a4714021d63e1217fd42fc1157cae3ae1a93ce425634887385c369`  
		Last Modified: Thu, 28 Mar 2019 15:00:27 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447b7672d460e2387e2aefa5c865355002319a176600cf22ca57d2054939e48e`  
		Last Modified: Thu, 28 Mar 2019 15:00:27 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86708defccec5a8a70e24e1ca0530f876a2abeb00207facf64cd19ec7438820e`  
		Last Modified: Thu, 28 Mar 2019 15:00:27 GMT  
		Size: 64.0 KB (63969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aec893bf44f6dd2c4cf986c9b66150ed085767de91ea10d48b2b4c67462268f`  
		Last Modified: Thu, 28 Mar 2019 15:08:01 GMT  
		Size: 279.3 MB (279253798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9045e85c7694b752db1524284064ababb0676ada167c58cbeee6d384c9457d`  
		Last Modified: Thu, 28 Mar 2019 15:00:26 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop24-alpine` - linux; s390x

```console
$ docker pull flink@sha256:e0bdb82f362ae0fdb7ab92efbedc0f37f7401f01f37a06d27b8624415c452e5b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.2 MB (337237902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec06120d11e39fce9d69da86ad7dd0f3f4ae6c8649ab323376d6516496962d0e`
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
# Thu, 28 Mar 2019 11:49:46 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 11:49:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 11:49:52 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 12:25:57 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Thu, 28 Mar 2019 12:34:14 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop24-scala_2.12
# Thu, 28 Mar 2019 12:34:14 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 28 Mar 2019 12:34:15 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 12:34:15 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Thu, 28 Mar 2019 12:34:16 GMT
WORKDIR /opt/flink
# Thu, 28 Mar 2019 12:34:16 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.12.tgz
# Thu, 28 Mar 2019 12:34:16 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.12.tgz.asc
# Thu, 28 Mar 2019 12:34:16 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Thu, 28 Mar 2019 12:34:32 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Thu, 28 Mar 2019 12:34:32 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Thu, 28 Mar 2019 12:34:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 28 Mar 2019 12:34:33 GMT
EXPOSE 6123 8081
# Thu, 28 Mar 2019 12:34:33 GMT
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
	-	`sha256:cd30d3493ef1c50cdf283ce268e2a93881c8e726b7cf8e1c6e2f192b7e9ad19a`  
		Last Modified: Thu, 28 Mar 2019 11:53:46 GMT  
		Size: 51.5 MB (51504445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3217b4d39f31bdf50a940b9f6931cab97ac7ce6b67ac29a458b00c59cd4025e1`  
		Last Modified: Thu, 28 Mar 2019 11:53:41 GMT  
		Size: 2.2 MB (2191965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5887ead463449dc16826b422865d702b0d7bd1f8b024792d089ed56915a4877`  
		Last Modified: Thu, 28 Mar 2019 12:44:38 GMT  
		Size: 1.7 MB (1679727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c518c996bb36797fa11936226fbf08aae383c5834669ea8ed7ecc49bfa26b6e`  
		Last Modified: Thu, 28 Mar 2019 12:48:10 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb03ace4141ddc6bd3a2c77d2d55ee39cb92783d0c74324cdc488225999647c`  
		Last Modified: Thu, 28 Mar 2019 12:48:12 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c7e8e9c9102f6eabb2cb50516be2256a18aa14508ee6dd112253e902069786`  
		Last Modified: Thu, 28 Mar 2019 12:48:11 GMT  
		Size: 64.0 KB (63969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32733b68ba317b4f572e94eb2a6bb199ee1e859177e2897cc0f4f20d6d93fe49`  
		Last Modified: Thu, 28 Mar 2019 12:48:31 GMT  
		Size: 279.3 MB (279253690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b878979b17399b68339b3dd05e68296b72a32d5bd92740e1773304511a37b1`  
		Last Modified: Thu, 28 Mar 2019 12:48:10 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
