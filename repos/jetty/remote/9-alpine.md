## `jetty:9-alpine`

```console
$ docker pull jetty@sha256:162a057abf4c1cd4cd5dbc0ea9983db8ffd83ba30ecd062b204200fa1fc71063
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `jetty:9-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:c8caf9c199a520a5fb311def6ee4fbe694b754d70e8525de95001c724c8ee7f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.2 MB (67159028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39e8ba64d374b2299396eadde391e803eee9df74c67baccb27d67b4c7d03d51e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:32:11 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 01:32:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 01:32:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 11 May 2019 01:32:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 01:32:32 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 01:32:32 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 01:32:36 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 04:11:17 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Sat, 11 May 2019 04:11:17 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 11 May 2019 04:11:17 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 04:11:18 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 11 May 2019 04:11:18 GMT
WORKDIR /usr/local/jetty
# Sat, 11 May 2019 04:11:19 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Sat, 11 May 2019 04:11:19 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Sat, 11 May 2019 04:11:19 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 11 May 2019 04:11:23 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 		&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 		&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Sat, 11 May 2019 04:11:23 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 11 May 2019 04:11:24 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 11 May 2019 04:11:24 GMT
WORKDIR /var/lib/jetty
# Sat, 11 May 2019 04:11:26 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 11 May 2019 04:11:26 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 11 May 2019 04:11:27 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 11 May 2019 04:11:27 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Sat, 11 May 2019 04:11:27 GMT
USER jetty
# Sat, 11 May 2019 04:11:27 GMT
EXPOSE 8080
# Sat, 11 May 2019 04:11:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 11 May 2019 04:11:28 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f910a506b6cb1dbec766725d70356f695ae2bf2bea6224dbe8c7c6ad4f3664a2`  
		Last Modified: Sat, 11 May 2019 01:36:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6abafe80f63b02535fc111df2ed6b3c728469679ab654e03e482b6f347c9639`  
		Last Modified: Sat, 11 May 2019 01:37:30 GMT  
		Size: 54.9 MB (54935634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df9cfea88c1061075f5107d1b7b0b822028c1ae74663d83a648231d3566c8b27`  
		Last Modified: Sat, 11 May 2019 04:12:06 GMT  
		Size: 1.1 KB (1098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8144bebd7d1bf6d5bc7b3b39b76bcc2f858725bab042dceab012618dc33d0015`  
		Last Modified: Sat, 11 May 2019 04:12:06 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44499f7897772fc19c5a3bbb14edb8a6f222acc52c62bd7c3ed0ff3238a40389`  
		Last Modified: Sat, 11 May 2019 04:12:06 GMT  
		Size: 9.5 MB (9461244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ea5e9998f9af22a825abab8cb7067b9c6ff0fddf4951fff01738f57da2ddcd5`  
		Last Modified: Sat, 11 May 2019 04:12:05 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1824780cfd0166b3661eba93e6281c0ecd34735372cc574010dfdd424a82036`  
		Last Modified: Sat, 11 May 2019 04:12:05 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbaaf56a0bdf1cdf548a9f5cd85b50786e0760d9418a3d78b583331d3164e4c`  
		Last Modified: Sat, 11 May 2019 04:12:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7741ca9610f12eeed61e6def7fdaa08d66461ac6ebb19cca7befcc9faa719170`  
		Last Modified: Sat, 11 May 2019 04:12:05 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-alpine` - linux; arm variant v6

```console
$ docker pull jetty@sha256:8d3420647dcc0b5831f03ae54bf74cd3e392a68a6de64fc88c5cda2222da6e2a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64409882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a82ffdb465709155503d4384cd6399e2b6e0fddc077e9ddec193dd919ec1c701`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:47:14 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 08:47:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 08:47:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 11 May 2019 08:47:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 08:47:37 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 08:47:37 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 08:47:44 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 10:09:23 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Sat, 11 May 2019 10:09:24 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 11 May 2019 10:09:24 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 10:09:26 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 11 May 2019 10:09:26 GMT
WORKDIR /usr/local/jetty
# Sat, 11 May 2019 10:09:26 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Sat, 11 May 2019 10:09:27 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Sat, 11 May 2019 10:09:27 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 11 May 2019 10:09:33 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 		&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 		&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Sat, 11 May 2019 10:09:33 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 11 May 2019 10:09:35 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 11 May 2019 10:09:35 GMT
WORKDIR /var/lib/jetty
# Sat, 11 May 2019 10:09:39 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 11 May 2019 10:09:39 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 11 May 2019 10:09:41 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 11 May 2019 10:09:41 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Sat, 11 May 2019 10:09:42 GMT
USER jetty
# Sat, 11 May 2019 10:09:42 GMT
EXPOSE 8080
# Sat, 11 May 2019 10:09:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 11 May 2019 10:09:43 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2b204f0fc5c4fd136771b708ddfd60e2bdc3cc56eff6e6e3d4ee5440b4c930`  
		Last Modified: Sat, 11 May 2019 08:48:45 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89395c9328f57513fe72be19d67c664b40bf3fc50c1770846eeac95042f3a5a6`  
		Last Modified: Sat, 11 May 2019 08:49:18 GMT  
		Size: 52.4 MB (52399849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:430007f0a042bebc25e8dc63e7883e6fc5cd5024d0f3adfe3ed75526be46c2df`  
		Last Modified: Sat, 11 May 2019 10:10:15 GMT  
		Size: 1.1 KB (1097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517138c1e89f479838364c136758234f308488cf2f716abfe1746bfcf2f42fde`  
		Last Modified: Sat, 11 May 2019 10:10:15 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0455bb19f5d5e76006648fbac6836451546dfb6afcccfc5a11d6d02da02017f1`  
		Last Modified: Sat, 11 May 2019 10:10:15 GMT  
		Size: 9.5 MB (9461315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c3808400769f2de72aea39dc8bff2be8d4f4c99706110ee117840875c2cde5`  
		Last Modified: Sat, 11 May 2019 10:10:14 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45d62976933cd262903733312c803247a487cfdb1532e459e2c2f091e400450`  
		Last Modified: Sat, 11 May 2019 10:10:14 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d2d84cc99414b2c6236c954dcfe11539c38124179179494da2546bda5d232d`  
		Last Modified: Sat, 11 May 2019 10:10:14 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdfe8af7d360a6c0b1a9a268cf335c0b55cfce1318b3efa9273447778e2b5023`  
		Last Modified: Sat, 11 May 2019 10:10:14 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-alpine` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:84fd94a048be78623150e8b04658eca2caba26da4d8f80b8f7f6986854642b9e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.1 MB (67097554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:936edd231741d299da728fe06745ceca54b39c7c06432fb353ef2ab5cd4c1f0a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:18:27 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 09:18:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 09:18:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 11 May 2019 09:18:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 09:18:56 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 09:18:57 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 09:19:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 16:30:32 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Sat, 11 May 2019 16:30:33 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 11 May 2019 16:30:34 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 16:30:35 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 11 May 2019 16:30:36 GMT
WORKDIR /usr/local/jetty
# Sat, 11 May 2019 16:30:37 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Sat, 11 May 2019 16:30:37 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Sat, 11 May 2019 16:30:38 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 11 May 2019 16:30:45 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 		&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 		&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Sat, 11 May 2019 16:30:46 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 11 May 2019 16:30:48 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 11 May 2019 16:30:49 GMT
WORKDIR /var/lib/jetty
# Sat, 11 May 2019 16:30:53 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 11 May 2019 16:30:54 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 11 May 2019 16:30:57 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 11 May 2019 16:30:57 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Sat, 11 May 2019 16:30:58 GMT
USER jetty
# Sat, 11 May 2019 16:30:59 GMT
EXPOSE 8080
# Sat, 11 May 2019 16:30:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 11 May 2019 16:31:00 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca2cc770c6ebbe90978672d360accf2434f83f9f0339ecd592224d794d5e35e`  
		Last Modified: Sat, 11 May 2019 09:21:04 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9072aa1a230005b2e358809d99ea667b32e1404f13e626b9bf5f3f5eb9f8dd1`  
		Last Modified: Sat, 11 May 2019 09:21:55 GMT  
		Size: 54.9 MB (54942530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ca1f9994e40ad024b42149b279ac959e4728c349909a6695f2d47bca788d46`  
		Last Modified: Sat, 11 May 2019 16:32:18 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d54c5a28dff498f9793bb07274405db0054da6e0b5f9235906002b0be38ca4`  
		Last Modified: Sat, 11 May 2019 16:32:18 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd31abdfd4f2516623bfb41b5b2b9f550effe9e98512d0aecefa0408af3f593d`  
		Last Modified: Sat, 11 May 2019 16:32:18 GMT  
		Size: 9.5 MB (9461126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193976607034201bff0969c38541ef07def9d6b6bb18df905571f024ab0f1b10`  
		Last Modified: Sat, 11 May 2019 16:32:16 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:031cc6b00418d91231bd0b770725b3a4d14cd6d217baee43820e404f86d65543`  
		Last Modified: Sat, 11 May 2019 16:32:16 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416d5c8e2510218852b9535ae17da3fdf66955befab127adcc58c9d2af3b6d5f`  
		Last Modified: Sat, 11 May 2019 16:32:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec971e8ead410db8530b6d3f4b7ea6071906defafe38a0fa7f378a59897e633`  
		Last Modified: Sat, 11 May 2019 16:32:16 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-alpine` - linux; 386

```console
$ docker pull jetty@sha256:b23382afe54a3e82f243a1ac833e9d61baea601971da6c006ad42da40d1f5395
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.8 MB (67773975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6b66139ea7c271d5d5e2f53f5861ec65013390e4e8ad5dd4781d1dbaa5414d1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 15:28:39 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 15:28:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 15:28:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 11 May 2019 15:28:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 15:28:53 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 15:28:54 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 15:28:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 16:47:33 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Sat, 11 May 2019 16:47:34 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 11 May 2019 16:47:34 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 16:47:34 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 11 May 2019 16:47:35 GMT
WORKDIR /usr/local/jetty
# Sat, 11 May 2019 16:47:35 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Sat, 11 May 2019 16:47:35 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Sat, 11 May 2019 16:47:35 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 11 May 2019 16:47:38 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 		&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 		&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Sat, 11 May 2019 16:47:38 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 11 May 2019 16:47:39 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 11 May 2019 16:47:39 GMT
WORKDIR /var/lib/jetty
# Sat, 11 May 2019 16:47:40 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 11 May 2019 16:47:41 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 11 May 2019 16:47:41 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 11 May 2019 16:47:42 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Sat, 11 May 2019 16:47:42 GMT
USER jetty
# Sat, 11 May 2019 16:47:42 GMT
EXPOSE 8080
# Sat, 11 May 2019 16:47:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 11 May 2019 16:47:42 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a94db5087f7f8bcd0cadca9c6d446a22a96182ec9c08d67fda830b278e8dc2`  
		Last Modified: Sat, 11 May 2019 15:30:11 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cca1537ab582bec5eed73622e871888861f80509db0e2ec3b0150007b8ac52c3`  
		Last Modified: Sat, 11 May 2019 15:30:38 GMT  
		Size: 55.6 MB (55555506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:591ecf449261dba7398044b6be7a55f56fc56a3934e37def4d78b5c21a0ba0c3`  
		Last Modified: Sat, 11 May 2019 16:48:22 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf348c9e04557c75641d0dd8dc52f9d12115fd72ab906e9765201492c096a425`  
		Last Modified: Sat, 11 May 2019 16:48:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b041bd5d8f3180a56c53f21d1b1295799866dcb2f2d135c6eb598e49fb2cb52`  
		Last Modified: Sat, 11 May 2019 16:48:22 GMT  
		Size: 9.5 MB (9461261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31282161d3a60297eeb7609f07a5d1e750e09d48d122ab60f1b144966632dcd`  
		Last Modified: Sat, 11 May 2019 16:48:18 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26682b173daaed9caca4041a7b18782023b7d62e49f468f602d3d3d747684944`  
		Last Modified: Sat, 11 May 2019 16:48:22 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59b77d8b38d2612ac2ca4295e66c134b5d9c3866dedab0cba7df3f000f38b4d9`  
		Last Modified: Sat, 11 May 2019 16:48:18 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a50a07b7e84fde014955f0735d09ee1f1d8a47486cda49ef95020a3e22d333`  
		Last Modified: Sat, 11 May 2019 16:48:18 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-alpine` - linux; ppc64le

```console
$ docker pull jetty@sha256:9c8ecb3fee82f8e350c4f2d9ab1868bf05fa5bdb306dc296af514affe094ab0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.8 MB (67839785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15cf344a356eaa4e032e2364333b13b4001a0ee9ce54c5caec7fa94d57f3578c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:44:37 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 09:44:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 09:45:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 11 May 2019 09:45:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 09:45:43 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 09:45:45 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Tue, 14 May 2019 00:19:13 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 14 May 2019 01:16:01 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 14 May 2019 01:16:05 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 14 May 2019 01:16:09 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 14 May 2019 01:16:15 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 14 May 2019 01:16:19 GMT
WORKDIR /usr/local/jetty
# Tue, 14 May 2019 01:16:21 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Tue, 14 May 2019 01:16:24 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Tue, 14 May 2019 01:16:28 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 14 May 2019 01:16:39 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 		&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 		&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 14 May 2019 01:16:42 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 14 May 2019 01:16:47 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 14 May 2019 01:16:49 GMT
WORKDIR /var/lib/jetty
# Tue, 14 May 2019 01:16:53 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 14 May 2019 01:16:55 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 14 May 2019 01:16:58 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 14 May 2019 01:17:00 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Tue, 14 May 2019 01:17:02 GMT
USER jetty
# Tue, 14 May 2019 01:17:04 GMT
EXPOSE 8080
# Tue, 14 May 2019 01:17:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 May 2019 01:17:09 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97b7b4784d132b1e215acf6612c7852271c10c4ff9f096f9847f16559741c5e`  
		Last Modified: Tue, 14 May 2019 00:26:09 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c3e5548354bbdda75469be7096c7b47d15194f61d016e87a8878b9c0a117e46`  
		Last Modified: Tue, 14 May 2019 00:28:10 GMT  
		Size: 55.6 MB (55592060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03d7ea142486cadf6acf82ddbcc08685cd94e227d9a476fef6d926d3d72d4cf`  
		Last Modified: Tue, 14 May 2019 01:18:58 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f717ee5ef9adeadb655162f79396ab1e5a53cc6cf77405edbfbf681d4aaee00`  
		Last Modified: Tue, 14 May 2019 01:18:58 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4f1c729995d4151f415acc93c619b2219d70f553a3655628db4707bec273a8`  
		Last Modified: Tue, 14 May 2019 01:18:51 GMT  
		Size: 9.5 MB (9461413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef0894f42dfc61df747f3d78c2e5e14fbab85c997df4f46f667883d1be7eb61`  
		Last Modified: Tue, 14 May 2019 01:18:51 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b76202afeb586d423244311c79b2b435da884889066192b0a2b6cf78c4d2c1e`  
		Last Modified: Tue, 14 May 2019 01:18:51 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b3bf144f26367b63293079e3011008500b1cb933fb3b051e4694478d85cd00`  
		Last Modified: Tue, 14 May 2019 01:18:51 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5933096cfa071982ee9bcc39fcf9119eb3ba833bd52bb52ffaacc0021b234f`  
		Last Modified: Tue, 14 May 2019 01:18:51 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-alpine` - linux; s390x

```console
$ docker pull jetty@sha256:cfbf1d68f5d03176c7ddf46f27600fc22b2ae06236f63abf72a0100077067bf0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.7 MB (65693792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19161d9c17897b9e4f223031dc0737f3ccb58b4d99d38ca98528083d2c4f4400`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 14:04:28 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 14:04:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 14:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 11 May 2019 14:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 14:04:48 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 14:04:48 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 14:04:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 14:54:09 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Sat, 11 May 2019 14:54:09 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 11 May 2019 14:54:09 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 14:54:10 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 11 May 2019 14:54:10 GMT
WORKDIR /usr/local/jetty
# Sat, 11 May 2019 14:54:11 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Sat, 11 May 2019 14:54:11 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Sat, 11 May 2019 14:54:11 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 11 May 2019 14:54:15 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 		&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 		&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Sat, 11 May 2019 14:54:15 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 11 May 2019 14:54:16 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 11 May 2019 14:54:16 GMT
WORKDIR /var/lib/jetty
# Sat, 11 May 2019 14:54:19 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 11 May 2019 14:54:19 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 11 May 2019 14:54:20 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 11 May 2019 14:54:20 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Sat, 11 May 2019 14:54:20 GMT
USER jetty
# Sat, 11 May 2019 14:54:21 GMT
EXPOSE 8080
# Sat, 11 May 2019 14:54:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 11 May 2019 14:54:21 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beaa0ca3e410795baed0978b91dcb428e9f31c46e39a429f31aa4c833592476a`  
		Last Modified: Sat, 11 May 2019 14:06:07 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af7c2c80927bdfb59bf08ec75eb6365291f3209fb2ea435e845d1aa703723bd`  
		Last Modified: Sat, 11 May 2019 14:06:29 GMT  
		Size: 53.7 MB (53684176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7163d32318f7f80c623ce9abe7bd25a28e4f12ba2a8a1288d1540a1a8475385b`  
		Last Modified: Sat, 11 May 2019 14:55:12 GMT  
		Size: 1.1 KB (1097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d564ef9e57dc93be5e6f8a961ba79566767a3bb3484d77bced90b70e1532a9`  
		Last Modified: Sat, 11 May 2019 14:55:12 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b996a5092725672af2f8546d85786e67c969d24b4d210e5cf4a3c2e81eb68ec`  
		Last Modified: Sat, 11 May 2019 14:55:11 GMT  
		Size: 9.5 MB (9461167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cdb8248c0aad3b510d64d0ba9b4d06d209c86d1503286c73df45047f837c54`  
		Last Modified: Sat, 11 May 2019 14:55:10 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b392882a586c2f57fb4f26f6f6cb606fdbfd3a05f7b14007293d85673f0678da`  
		Last Modified: Sat, 11 May 2019 14:55:10 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa3b4da4f5a8a9e0d69a431566154d4c511c2425a538f38b39d187370e1a5f73`  
		Last Modified: Sat, 11 May 2019 14:55:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89fe890d6a660af9905b1cf3b2a91fae07448356aa13a14dd6314ab6bfdad0e4`  
		Last Modified: Sat, 11 May 2019 14:55:10 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
