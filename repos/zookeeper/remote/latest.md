## `zookeeper:latest`

```console
$ docker pull zookeeper@sha256:67b68774892bc781a1d35847dd1ea4a1f7cb8ef96b34284dac4d083dd0cb26af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `zookeeper:latest` - linux; amd64

```console
$ docker pull zookeeper@sha256:731363aa6d40de7c7baa1ac143e235f4a8c51b005963c8df3890e2485f338992
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 MB (94693124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:397be0d8fa458782ea28b39e9a7480272519c522f6416ee3cae2efe204f324d3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

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
# Sat, 16 Jun 2018 09:13:29 GMT
RUN apk add --no-cache     bash     su-exec
# Sat, 16 Jun 2018 09:13:29 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Sat, 16 Jun 2018 09:13:30 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Sat, 16 Jun 2018 09:13:53 GMT
ARG GPG_KEY=586EFEF859AF2DB190D84080BDB2011E173C31A2
# Sat, 16 Jun 2018 09:13:53 GMT
ARG DISTRO_NAME=zookeeper-3.4.12
# Sat, 16 Jun 2018 09:16:31 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.12 GPG_KEY=586EFEF859AF2DB190D84080BDB2011E173C31A2
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Sat, 16 Jun 2018 09:16:31 GMT
WORKDIR /zookeeper-3.4.12
# Sat, 16 Jun 2018 09:16:31 GMT
VOLUME [/data /datalog]
# Sat, 16 Jun 2018 09:16:32 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Sat, 16 Jun 2018 09:16:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.12/bin ZOOCFGDIR=/conf
# Sat, 16 Jun 2018 09:16:32 GMT
COPY file:5cb6c695778a88d60b35a329e20ff9cb9e46290c62beb27a175e94e807db9a1a in / 
# Sat, 16 Jun 2018 09:16:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 16 Jun 2018 09:16:32 GMT
CMD ["zkServer.sh" "start-foreground"]
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
	-	`sha256:f20c37d2438229bca647e1e9c77a8f171be6a968bc94868eb34f2416f77f0a08`  
		Last Modified: Sat, 16 Jun 2018 09:18:11 GMT  
		Size: 1.3 MB (1296266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c51bc8cd2bc232c1de26c9b1aa755dda82f61d4506eb3b16e55ffc2425f6cd5c`  
		Last Modified: Sat, 16 Jun 2018 09:18:10 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e26998596f1d410235500ab9d90a1b8dfc343fec73ec370074b45a3168be23f`  
		Last Modified: Sat, 16 Jun 2018 09:18:24 GMT  
		Size: 36.8 MB (36792327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23ca6dee78550cf9c577619ababb06ccddc9d844adca76a16a2c98608759cfa`  
		Last Modified: Sat, 16 Jun 2018 09:18:10 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:latest` - linux; arm64 variant v8

```console
$ docker pull zookeeper@sha256:816a76705a51e3a9f975eb4352b720f58171eb679024dd9a8fd0443cb46465fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.2 MB (93185979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02db3c87c092137b4e83cc361c3850e5578b007c45fcf4ea428ecf4d9cc73e89`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 11:05:19 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 11:05:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 11:11:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 11:11:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 11:11:06 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 11:11:07 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 11:11:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 11:51:20 GMT
RUN apk add --no-cache     bash     su-exec
# Tue, 05 Dec 2017 11:51:20 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Tue, 05 Dec 2017 11:51:23 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Tue, 15 May 2018 13:50:15 GMT
ARG GPG_KEY=586EFEF859AF2DB190D84080BDB2011E173C31A2
# Tue, 15 May 2018 13:50:16 GMT
ARG DISTRO_NAME=zookeeper-3.4.12
# Tue, 15 May 2018 13:50:31 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.12 GPG_KEY=586EFEF859AF2DB190D84080BDB2011E173C31A2
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Tue, 15 May 2018 13:50:34 GMT
WORKDIR /zookeeper-3.4.12
# Tue, 15 May 2018 13:50:35 GMT
VOLUME [/data /datalog]
# Tue, 15 May 2018 13:50:36 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Tue, 15 May 2018 13:50:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.12/bin ZOOCFGDIR=/conf
# Tue, 15 May 2018 13:50:43 GMT
COPY file:5cb6c695778a88d60b35a329e20ff9cb9e46290c62beb27a175e94e807db9a1a in / 
# Tue, 15 May 2018 13:50:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 May 2018 13:50:45 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4b770fee7695d8ca568c04817dd4e9d077997d617c75c75c6c47038c837df1`  
		Last Modified: Tue, 05 Dec 2017 11:12:04 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562a715d8887d3b429fa072a31bbf912f1897d49cf115a980301e3a880716eb6`  
		Last Modified: Tue, 05 Dec 2017 11:16:43 GMT  
		Size: 53.2 MB (53167047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa73a0c9a532342d43fd7c01dd053b86ebdcb163736668069eb677c20d44f5d`  
		Last Modified: Tue, 05 Dec 2017 11:54:27 GMT  
		Size: 1.2 MB (1236918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355759e4868daea2c18759148aca9000b05975c3003987ab6b9f3bb6d4f91c28`  
		Last Modified: Tue, 05 Dec 2017 11:54:26 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79bfbe7c08aa99b1e78c0efdc6f264a17e0baccaa423e693dd956d784071fffe`  
		Last Modified: Tue, 15 May 2018 13:51:14 GMT  
		Size: 36.8 MB (36790898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b689b50987e3473e828ca6224559f3a136fcce53884398bafecd3ff40927cdf5`  
		Last Modified: Tue, 15 May 2018 13:51:06 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:latest` - linux; 386

```console
$ docker pull zookeeper@sha256:f4b4e72dca0219030538a29fa7b14ea06522401c6f734d3a3f3235f70c1cdcf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.4 MB (95391930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4ff50222200ee53557be67fb8d525a3cbb18ebdff89c4d9500b5f0033f1ceac`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 10:39:41 GMT
ENV LANG=C.UTF-8
# Fri, 01 Jun 2018 10:39:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 01 Jun 2018 10:39:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 01 Jun 2018 10:39:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 01 Jun 2018 10:39:42 GMT
ENV JAVA_VERSION=8u151
# Fri, 01 Jun 2018 10:39:42 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Fri, 01 Jun 2018 10:39:53 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 01 Jun 2018 16:13:26 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 01 Jun 2018 16:13:26 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Fri, 01 Jun 2018 16:13:27 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 01 Jun 2018 16:13:44 GMT
ARG GPG_KEY=586EFEF859AF2DB190D84080BDB2011E173C31A2
# Fri, 01 Jun 2018 16:13:44 GMT
ARG DISTRO_NAME=zookeeper-3.4.12
# Fri, 01 Jun 2018 16:17:00 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.12 GPG_KEY=586EFEF859AF2DB190D84080BDB2011E173C31A2
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 01 Jun 2018 16:17:00 GMT
WORKDIR /zookeeper-3.4.12
# Fri, 01 Jun 2018 16:17:00 GMT
VOLUME [/data /datalog]
# Fri, 01 Jun 2018 16:17:00 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 01 Jun 2018 16:17:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.12/bin ZOOCFGDIR=/conf
# Fri, 01 Jun 2018 16:17:01 GMT
COPY file:5cb6c695778a88d60b35a329e20ff9cb9e46290c62beb27a175e94e807db9a1a in / 
# Fri, 01 Jun 2018 16:17:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Jun 2018 16:17:01 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730d81ac3b103a2b66d5e57cd18c6079b49738517c93f83aa9bcc442da1f2b21`  
		Last Modified: Fri, 01 Jun 2018 10:42:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38aa4e05a05361475b30d39285d6c6909b468faa585fea375dd69bd2b0f01af7`  
		Last Modified: Fri, 01 Jun 2018 10:42:20 GMT  
		Size: 55.1 MB (55128231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b3808fc215bfd1c3f5b4f766d2c0b6e88172d0431624501e56a474e11db4f8`  
		Last Modified: Fri, 01 Jun 2018 16:24:18 GMT  
		Size: 1.3 MB (1343606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663535a1ef72dd585c97c794fbcd16539441af0c06e221dfde51d12c8015f6b1`  
		Last Modified: Fri, 01 Jun 2018 16:24:11 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9974af1662aafb018feee5b0147954449f3540b7d204e88a8eec2a31222022ed`  
		Last Modified: Fri, 01 Jun 2018 16:25:18 GMT  
		Size: 36.8 MB (36791612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d01eff1cb4a42b907c6c8edf1539a5524352c6b01ef6cdb7b479f999a47204`  
		Last Modified: Fri, 01 Jun 2018 16:23:59 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:latest` - linux; ppc64le

```console
$ docker pull zookeeper@sha256:9965ff61b8e1b8c92cf70d99e4c1f02d4461baa88e76b475eecb58337664526b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.0 MB (93990826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e443071d03912e6038a1ba618eb55c9be20a803294de9dd9fb09409ef747970`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 11:47:54 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 11:47:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 11:50:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 11:50:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 16 Jun 2018 08:17:20 GMT
ENV JAVA_VERSION=8u171
# Sat, 16 Jun 2018 08:17:21 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Sat, 16 Jun 2018 08:17:26 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 16 Jun 2018 08:55:47 GMT
RUN apk add --no-cache     bash     su-exec
# Sat, 16 Jun 2018 08:55:48 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Sat, 16 Jun 2018 08:55:49 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Sat, 16 Jun 2018 08:56:17 GMT
ARG GPG_KEY=586EFEF859AF2DB190D84080BDB2011E173C31A2
# Sat, 16 Jun 2018 08:56:18 GMT
ARG DISTRO_NAME=zookeeper-3.4.12
# Sat, 16 Jun 2018 08:56:45 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.12 GPG_KEY=586EFEF859AF2DB190D84080BDB2011E173C31A2
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Sat, 16 Jun 2018 08:56:46 GMT
WORKDIR /zookeeper-3.4.12
# Sat, 16 Jun 2018 08:56:47 GMT
VOLUME [/data /datalog]
# Sat, 16 Jun 2018 08:56:48 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Sat, 16 Jun 2018 08:56:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.12/bin ZOOCFGDIR=/conf
# Sat, 16 Jun 2018 08:56:51 GMT
COPY file:5cb6c695778a88d60b35a329e20ff9cb9e46290c62beb27a175e94e807db9a1a in / 
# Sat, 16 Jun 2018 08:56:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 16 Jun 2018 08:56:59 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d80117bba7af560896439d844c0f3998317292d41faacc0a842ce3dd7e14605`  
		Last Modified: Tue, 05 Dec 2017 11:51:04 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9545976955521b08bf9926e25243afcf0faae0ff2b41c86af80cae28bd4bc9df`  
		Last Modified: Sat, 16 Jun 2018 08:20:54 GMT  
		Size: 53.8 MB (53794400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c170a1c329d846bd43102f126571fa0f205594c6a5bd1516ea9bb8b3a10bd495`  
		Last Modified: Sat, 16 Jun 2018 08:58:22 GMT  
		Size: 1.3 MB (1320215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f3b6e5b874c72744cd58d31271b0d5a26255d59e5a36c649d30a3cd407765f`  
		Last Modified: Sat, 16 Jun 2018 08:58:22 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d56ed62462687baec0a5b2a42d100533dbf07083af228e9c3c7f1422e8fb1b`  
		Last Modified: Sat, 16 Jun 2018 08:58:28 GMT  
		Size: 36.8 MB (36792411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c685ca63627443d690bd2e560a1ee7533aabd7509735561c3fd1b6c1c4dd5058`  
		Last Modified: Sat, 16 Jun 2018 08:58:22 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:latest` - linux; s390x

```console
$ docker pull zookeeper@sha256:897833d36ea7ca46265bb43a89830310ab7f413d9ad638fa8d1f72c35e320d2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93632668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ff5b42f7d4228347d410c17c49adf74b2a1f19664047d3cafa55ca9c965c339`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 17:54:50 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 17:54:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 17:57:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 17:57:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 17:57:32 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 17:57:37 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 17:57:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 18:27:23 GMT
RUN apk add --no-cache     bash     su-exec
# Tue, 05 Dec 2017 18:27:25 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Tue, 05 Dec 2017 18:27:27 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Tue, 15 May 2018 13:20:56 GMT
ARG GPG_KEY=586EFEF859AF2DB190D84080BDB2011E173C31A2
# Tue, 15 May 2018 13:20:56 GMT
ARG DISTRO_NAME=zookeeper-3.4.12
# Tue, 15 May 2018 13:21:07 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.12 GPG_KEY=586EFEF859AF2DB190D84080BDB2011E173C31A2
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Tue, 15 May 2018 13:21:07 GMT
WORKDIR /zookeeper-3.4.12
# Tue, 15 May 2018 13:21:08 GMT
VOLUME [/data /datalog]
# Tue, 15 May 2018 13:21:08 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Tue, 15 May 2018 13:21:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.12/bin ZOOCFGDIR=/conf
# Tue, 15 May 2018 13:21:09 GMT
COPY file:5cb6c695778a88d60b35a329e20ff9cb9e46290c62beb27a175e94e807db9a1a in / 
# Tue, 15 May 2018 13:21:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 May 2018 13:21:09 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320238e3e22d841c8337cb6f2d8b95f9c1ab000f2845efcd5bd977690210f427`  
		Last Modified: Tue, 05 Dec 2017 17:58:18 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab7f5e8ff77bb713c36a7527b26ce321688ffc83c72a16c9488eef4c2a39327`  
		Last Modified: Tue, 05 Dec 2017 18:00:02 GMT  
		Size: 53.3 MB (53303048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5be4b148c7663c0d1784625a9a3a97504cdec6bf21a9c23542c9002b33360c4`  
		Last Modified: Tue, 05 Dec 2017 18:30:50 GMT  
		Size: 1.3 MB (1349691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af59587eb8df997d5623d5db49d20fd1f0bcb50c6725272143a7eafa099b821`  
		Last Modified: Tue, 05 Dec 2017 18:30:50 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa2b57a7ba87716f218c52837649447bf0a64284b6f7ad31313e3a22433b2cf`  
		Last Modified: Tue, 15 May 2018 13:21:34 GMT  
		Size: 36.8 MB (36792440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7fc40ccb2175810c13fa5e552ff3aed3be3dd9ba55812f7620c226f7a92caa`  
		Last Modified: Tue, 15 May 2018 13:21:29 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
