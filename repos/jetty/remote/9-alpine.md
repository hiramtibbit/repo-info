## `jetty:9-alpine`

```console
$ docker pull jetty@sha256:d30e886cb1485a0818b5def0802538be325f4915b6c430c5aba186af63058db5
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
$ docker pull jetty@sha256:1d388e729376d86742051dfa9e39b5653dbab882aefbf6889da7d837e820c67a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66229664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5950a25951aad46ea4ba646a8df884b34a71ae44eb9e0a7942d6bc48aaf92867`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:39:38 GMT
ENV LANG=C.UTF-8
# Tue, 05 Feb 2019 20:39:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Feb 2019 20:39:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_VERSION=8u191
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Tue, 05 Feb 2019 20:40:03 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Feb 2019 21:44:08 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 05 Feb 2019 21:44:08 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 05 Feb 2019 21:44:08 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 21:44:09 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 05 Feb 2019 21:44:09 GMT
WORKDIR /usr/local/jetty
# Tue, 05 Feb 2019 21:44:10 GMT
ENV JETTY_VERSION=9.4.12.v20180830
# Tue, 05 Feb 2019 21:44:10 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.12.v20180830/jetty-home-9.4.12.v20180830.tar.gz
# Tue, 05 Feb 2019 21:44:10 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 06 Feb 2019 22:26:07 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 		&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 		&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Wed, 06 Feb 2019 22:26:08 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 06 Feb 2019 22:26:09 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 06 Feb 2019 22:26:09 GMT
WORKDIR /var/lib/jetty
# Wed, 06 Feb 2019 22:26:14 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 06 Feb 2019 22:26:14 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 06 Feb 2019 22:26:16 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 06 Feb 2019 22:26:17 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Wed, 06 Feb 2019 22:26:17 GMT
USER jetty
# Wed, 06 Feb 2019 22:26:17 GMT
EXPOSE 8080
# Wed, 06 Feb 2019 22:26:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Feb 2019 22:26:18 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78b803852394d2b9aaa3ce93b0f2502b0bf8e063b1fa79734de0fc8ee55ee6e`  
		Last Modified: Tue, 05 Feb 2019 20:45:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41fe1b6eee3555498a7e15b3bf048a7ec274302a92d0c8b34fda111c780fdcf`  
		Last Modified: Tue, 05 Feb 2019 20:45:56 GMT  
		Size: 54.9 MB (54922733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68565639b45a49d2d92e1a01c8662fb7d327647f928e00e3cb8cf65e9c211d05`  
		Last Modified: Tue, 05 Feb 2019 21:44:50 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e0296f487a6e20d138c46c6dd849d82345acc714fba5a5a32709f16ca3b9d5`  
		Last Modified: Tue, 05 Feb 2019 21:44:50 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d3624aaf68cd3285dc050edf599a8090d0a53dcbbe60ac8802e4e3c4e494099`  
		Last Modified: Wed, 06 Feb 2019 22:28:04 GMT  
		Size: 8.5 MB (8547110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1236a912adac03d9bdbdd061b27436d63f5a3e0c2c24ec90c08f67c8741a0e26`  
		Last Modified: Wed, 06 Feb 2019 22:28:03 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4849f0b3de4e3c5055673724c9122a57b810197e63be0726048be0c3bb57077`  
		Last Modified: Wed, 06 Feb 2019 22:28:04 GMT  
		Size: 2.0 KB (1960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb912c9e2aab7f6e0689b631f6b9f174269c5de8ce1d25e4e286a2693c7ef159`  
		Last Modified: Wed, 06 Feb 2019 22:28:04 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e39aaf891280dde8bad7cabe1469f41deadea231df2db7b70e79e9870606be3`  
		Last Modified: Wed, 06 Feb 2019 22:28:03 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-alpine` - linux; arm variant v6

```console
$ docker pull jetty@sha256:aa8704fd560b2a91639b810f3409b374a7f2c6faf8e8f9559ba53cc1875c6a0f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (63021467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c343d6dbb727533b848bd43745bb89f6dd750de09a46d5f31a6300106882356a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:54:13 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 09:54:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 09:54:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 09:54:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 08:52:43 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 08:52:44 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 11 Jan 2019 08:52:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 11 Jan 2019 09:09:20 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Fri, 11 Jan 2019 09:09:20 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 11 Jan 2019 09:09:20 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 09:09:22 GMT
RUN mkdir -p "$JETTY_HOME"
# Fri, 11 Jan 2019 09:09:22 GMT
WORKDIR /usr/local/jetty
# Fri, 11 Jan 2019 09:09:23 GMT
ENV JETTY_VERSION=9.4.12.v20180830
# Fri, 11 Jan 2019 09:09:23 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.12.v20180830/jetty-home-9.4.12.v20180830.tar.gz
# Fri, 11 Jan 2019 09:09:23 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 11 Jan 2019 09:09:30 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 11 Jan 2019 09:09:31 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 11 Jan 2019 09:09:32 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 11 Jan 2019 09:09:32 GMT
WORKDIR /var/lib/jetty
# Fri, 11 Jan 2019 09:09:36 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 11 Jan 2019 09:09:37 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 11 Jan 2019 09:09:38 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 11 Jan 2019 09:09:39 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 11 Jan 2019 09:09:39 GMT
USER jetty
# Fri, 11 Jan 2019 09:09:40 GMT
EXPOSE 8080
# Fri, 11 Jan 2019 09:09:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 11 Jan 2019 09:09:41 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db946754b322adc3ac60fe5714a9c65ff7c92700903efa2f530018cbf95e2746`  
		Last Modified: Fri, 21 Dec 2018 09:55:28 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b747ae367a283db1307b30d3b9264cb69c982ab55c9ca7a7671811919ac10ea5`  
		Last Modified: Fri, 11 Jan 2019 08:53:50 GMT  
		Size: 52.3 MB (52326802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8195fa668c84a7a6c0a29e283d424f859ad80d7d6b909990e54b4dae83cd7c`  
		Last Modified: Fri, 11 Jan 2019 09:10:21 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8cf86e122de7c7ff07448640c625f6d05f700a05d1e35519ebbf32fb6731b8`  
		Last Modified: Fri, 11 Jan 2019 09:10:21 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b3e63a85110631ec3db80f3d1f3c6f28758f2dcda299804251a2c7b1a643ee`  
		Last Modified: Fri, 11 Jan 2019 09:10:21 GMT  
		Size: 8.5 MB (8543455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111411ba492f8fa86334aa0d3a831c76f91d1d28b65cb66e9fd947ff86893d41`  
		Last Modified: Fri, 11 Jan 2019 09:10:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f5aa39152e302901248c3bf291547b0ba34f34d2a9db13038f654b33e49121`  
		Last Modified: Fri, 11 Jan 2019 09:10:20 GMT  
		Size: 2.0 KB (2030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d01822f51f324a0029a0124c754943672191436afbdec50a7451b2f69c7c81`  
		Last Modified: Fri, 11 Jan 2019 09:10:20 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2adb9766b9557214a25281fdebf6f8f6b9fafb19681744dad671dfdaf56c87cf`  
		Last Modified: Fri, 11 Jan 2019 09:10:19 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-alpine` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:7e90660a40f6a8cd0efc061bd411fb72e2541bf47d1bf9183ecefda8378e1025
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66103413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89f0cd43eba9bf26d9a94543a7a9cb631663bc8b343cda61f114804b4c0b6f94`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 12:20:55 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:21:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:31:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 12:32:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 12:32:04 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 12:32:07 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 12:32:21 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 06:24:16 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 07 Feb 2019 06:24:17 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 07 Feb 2019 06:24:19 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Feb 2019 06:24:22 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 07 Feb 2019 06:24:23 GMT
WORKDIR /usr/local/jetty
# Thu, 07 Feb 2019 06:24:24 GMT
ENV JETTY_VERSION=9.4.12.v20180830
# Thu, 07 Feb 2019 06:24:26 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.12.v20180830/jetty-home-9.4.12.v20180830.tar.gz
# Thu, 07 Feb 2019 06:24:27 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 07 Feb 2019 06:24:38 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 		&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 		&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 07 Feb 2019 06:24:39 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 07 Feb 2019 06:24:43 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 07 Feb 2019 06:24:44 GMT
WORKDIR /var/lib/jetty
# Thu, 07 Feb 2019 06:24:51 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 07 Feb 2019 06:24:52 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 07 Feb 2019 06:24:56 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 07 Feb 2019 06:24:57 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Thu, 07 Feb 2019 06:24:58 GMT
USER jetty
# Thu, 07 Feb 2019 06:24:59 GMT
EXPOSE 8080
# Thu, 07 Feb 2019 06:25:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 06:25:01 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4dbd37ccf7cb48097dfc245c4c6f892eaf16d2ad47a0478302cf24d0a74911`  
		Last Modified: Wed, 06 Feb 2019 12:42:42 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4c22261364cc479c308d041f6881688678f61995139006fbd24aa898f98a7f`  
		Last Modified: Wed, 06 Feb 2019 12:45:02 GMT  
		Size: 54.9 MB (54863256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77bbe6058afc61f6cca048e04a7b6278b7835a00b0c52e4ed622f85282463709`  
		Last Modified: Thu, 07 Feb 2019 06:30:21 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a3858a8601bfdb7d1b0a5806a3c947a3d07a5f3837b21db6af2c7fcbea00ab`  
		Last Modified: Thu, 07 Feb 2019 06:30:21 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e44386d7a5b9abddd38c824382b7a995867281737f2d3e927b79be3e938f2e2`  
		Last Modified: Thu, 07 Feb 2019 06:30:23 GMT  
		Size: 8.5 MB (8546995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d3af4b779d5c89b44381d5afe233dcf5c822133d3b865d298975e4ece48984`  
		Last Modified: Thu, 07 Feb 2019 06:30:19 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366e545a9aca25342424675c538537eb97ba34df1c79bb966164152d37c6f711`  
		Last Modified: Thu, 07 Feb 2019 06:30:19 GMT  
		Size: 2.0 KB (1960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46508101e8a53a669a06d98e7ecf2e87c4a41146c1583a6a96eee6872512aeef`  
		Last Modified: Thu, 07 Feb 2019 06:30:19 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8e075d4b20261f756f24eb1c003ead645ef50bbb3d1071384ad86634f2b844`  
		Last Modified: Thu, 07 Feb 2019 06:30:19 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-alpine` - linux; 386

```console
$ docker pull jetty@sha256:6cf6a3b8dda5ff1d031e8e2dce69787e55551665e9b575e44a7e11ca0ad77882
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66321893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7529882e40f0632ccb9bc52723b4af1bdf1b88dbc7fd39ab65a0c6c8a180d1dd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 17:15:19 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 17:15:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 17:15:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 17:15:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 12:03:09 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 12:03:09 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 11 Jan 2019 12:03:13 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 11 Jan 2019 16:24:35 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Fri, 11 Jan 2019 16:24:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 11 Jan 2019 16:24:35 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 16:24:36 GMT
RUN mkdir -p "$JETTY_HOME"
# Fri, 11 Jan 2019 16:24:36 GMT
WORKDIR /usr/local/jetty
# Fri, 11 Jan 2019 16:24:36 GMT
ENV JETTY_VERSION=9.4.12.v20180830
# Fri, 11 Jan 2019 16:24:37 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.12.v20180830/jetty-home-9.4.12.v20180830.tar.gz
# Fri, 11 Jan 2019 16:24:37 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 11 Jan 2019 16:24:42 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 11 Jan 2019 16:24:43 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 11 Jan 2019 16:24:43 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 11 Jan 2019 16:24:43 GMT
WORKDIR /var/lib/jetty
# Fri, 11 Jan 2019 16:24:45 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 11 Jan 2019 16:24:45 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 11 Jan 2019 16:24:46 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 11 Jan 2019 16:24:46 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 11 Jan 2019 16:24:47 GMT
USER jetty
# Fri, 11 Jan 2019 16:24:47 GMT
EXPOSE 8080
# Fri, 11 Jan 2019 16:24:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 11 Jan 2019 16:24:47 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa5ad7015b94f77d17fc7434e4c4966902dcf6ddf7393a9e74d72a91e3a2f4b`  
		Last Modified: Fri, 21 Dec 2018 17:17:01 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e979183e786b5b87a7170e32b3d3966eb07ceca73bdd8e27103921955ca87ad`  
		Last Modified: Fri, 11 Jan 2019 12:04:45 GMT  
		Size: 55.5 MB (55501721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc1f8dd116f1cc47e6778da943d11274cb109c1f218933b8ad0f8466947c9d9`  
		Last Modified: Fri, 11 Jan 2019 16:25:24 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeefc6c9180b2666ea016c878001478cd3776b52e74da58726a295d5dca77663`  
		Last Modified: Fri, 11 Jan 2019 16:25:24 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97c3d9ba58aad9f2f7e6f989795df519d40db22038586a32b63cb7fbcaeb7f1`  
		Last Modified: Fri, 11 Jan 2019 16:25:24 GMT  
		Size: 8.5 MB (8543341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4e693724c88dfce939af1551c36400991e005d372dcb2751f1ab26451a8501`  
		Last Modified: Fri, 11 Jan 2019 16:25:23 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de136775325d8965032d6710d8a037b6babfb395f4c9ca9532c8e9ea14672f64`  
		Last Modified: Fri, 11 Jan 2019 16:25:23 GMT  
		Size: 2.0 KB (1959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222a4fec844fe36651ba5797332d43c54724f1ad2ef788f480458ca61374e602`  
		Last Modified: Fri, 11 Jan 2019 16:25:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575114b2c5cc30aeb706da89905bd92c58f8aa405ecd6f3fa35125fccbe6fb9b`  
		Last Modified: Fri, 11 Jan 2019 16:25:23 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-alpine` - linux; ppc64le

```console
$ docker pull jetty@sha256:b64b5bac954a39d3666e3fd005c67655f5cf1d33654257b0b968e696a4423707
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.8 MB (66835045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b3ed703649d36cc1d72fca6d6733be891c71ce8c209164ce25cd925a6ac13b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 11:30:19 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 11:30:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 11:32:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 11:32:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 11:32:43 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 11:32:45 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 11:32:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 02:05:03 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 07 Feb 2019 02:05:05 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 07 Feb 2019 02:05:06 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Feb 2019 02:05:09 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 07 Feb 2019 02:05:11 GMT
WORKDIR /usr/local/jetty
# Thu, 07 Feb 2019 02:05:12 GMT
ENV JETTY_VERSION=9.4.12.v20180830
# Thu, 07 Feb 2019 02:05:13 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.12.v20180830/jetty-home-9.4.12.v20180830.tar.gz
# Thu, 07 Feb 2019 02:05:15 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 07 Feb 2019 02:05:22 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 		&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 		&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 07 Feb 2019 02:05:24 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 07 Feb 2019 02:05:27 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 07 Feb 2019 02:05:28 GMT
WORKDIR /var/lib/jetty
# Thu, 07 Feb 2019 02:05:33 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 07 Feb 2019 02:05:35 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 07 Feb 2019 02:05:38 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 07 Feb 2019 02:05:39 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Thu, 07 Feb 2019 02:05:40 GMT
USER jetty
# Thu, 07 Feb 2019 02:05:42 GMT
EXPOSE 8080
# Thu, 07 Feb 2019 02:05:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 02:05:44 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ffc70c988f1eca134348f8c977a0a8eca65b127503f8a7d6561fd73acaf47f`  
		Last Modified: Wed, 06 Feb 2019 11:40:41 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf79593b1c96e6feabee87ffa86fac13485dfb07d9c3ee56aa9894c479e939c`  
		Last Modified: Wed, 06 Feb 2019 11:41:49 GMT  
		Size: 55.5 MB (55503724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8434fc204159fcf4d4b911a2392ca5bde5a61f6bb4b6596a5569122f5578c8dd`  
		Last Modified: Thu, 07 Feb 2019 02:09:40 GMT  
		Size: 1.1 KB (1104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dabafcf4bfa0a337984a59170334b782d5cb4177b668468b7b2db76d8de4bc9`  
		Last Modified: Thu, 07 Feb 2019 02:09:40 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c45527b9057668d247dcc3ed277ab71e3d01ec69f39df6e3c743efe9216e4e6`  
		Last Modified: Thu, 07 Feb 2019 02:09:39 GMT  
		Size: 8.5 MB (8547220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c0c2d05b2a34810ef9fe1ae8f68ee1bf677145798df8ad2a20ea7996187ae2`  
		Last Modified: Thu, 07 Feb 2019 02:09:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e2114eec2d484b4191bf134c9159f6348af45a0a653505252caab7d7d6337b`  
		Last Modified: Thu, 07 Feb 2019 02:09:37 GMT  
		Size: 2.0 KB (2027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6197bbaed089dbd234a99421004eaf77ded7336a94a16dcaa977bcd9b3340349`  
		Last Modified: Thu, 07 Feb 2019 02:09:37 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d490ea76c179f11fd2b6df690bb1e9d1599acea7c73b216fbe94743ddb16fe`  
		Last Modified: Thu, 07 Feb 2019 02:09:37 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-alpine` - linux; s390x

```console
$ docker pull jetty@sha256:ee2e7cbc805b7e13c07e32807afaa8dc7400c9d276f2766a4e457b05408115be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.7 MB (64681259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee985d944cf2af9ade877b3e0f81e255fdcc65e277b1e0999780bc9bdddf93db`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 13:20:18 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:20:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:20:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 13:20:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 13:20:56 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 13:20:57 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 13:20:59 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 06 Feb 2019 18:13:30 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 06 Feb 2019 18:13:30 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 06 Feb 2019 18:13:31 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 18:13:31 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 06 Feb 2019 18:13:31 GMT
WORKDIR /usr/local/jetty
# Wed, 06 Feb 2019 18:13:32 GMT
ENV JETTY_VERSION=9.4.12.v20180830
# Wed, 06 Feb 2019 18:13:32 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.12.v20180830/jetty-home-9.4.12.v20180830.tar.gz
# Wed, 06 Feb 2019 18:13:32 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 06 Feb 2019 23:54:59 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 		&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 		&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Wed, 06 Feb 2019 23:54:59 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 06 Feb 2019 23:55:00 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 06 Feb 2019 23:55:00 GMT
WORKDIR /var/lib/jetty
# Wed, 06 Feb 2019 23:55:02 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 06 Feb 2019 23:55:03 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 06 Feb 2019 23:55:03 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 06 Feb 2019 23:55:04 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Wed, 06 Feb 2019 23:55:04 GMT
USER jetty
# Wed, 06 Feb 2019 23:55:04 GMT
EXPOSE 8080
# Wed, 06 Feb 2019 23:55:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Feb 2019 23:55:04 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d1a7308c276b4bfe36b12f01b7c57f79adfc7eb55e0263fd725e1308d13412`  
		Last Modified: Wed, 06 Feb 2019 13:25:05 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af546122d628f916df18308eef518892c9e8d4560ed0bb582389244f015942d6`  
		Last Modified: Wed, 06 Feb 2019 13:25:42 GMT  
		Size: 53.6 MB (53587740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562572e23874ffa97cf8aef33ae433c32336b2989e3ae42168690300e7bf085d`  
		Last Modified: Wed, 06 Feb 2019 18:14:40 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fd75ff6656a72fec4ba438749a298495d61d2143d091caa357d19749d3b11c6`  
		Last Modified: Wed, 06 Feb 2019 18:14:40 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce8e9ed1c2122c4fbd16d9979ad34def3ec7382a21d4ae0e839ec9b1a512a836`  
		Last Modified: Wed, 06 Feb 2019 23:56:38 GMT  
		Size: 8.5 MB (8546908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a115bd364b5d0248020375b068e5f683fb05ccdc81324e76da5d9a983d7f66`  
		Last Modified: Wed, 06 Feb 2019 23:56:37 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff30fce9c17b955039f6e99864e3c94dc65d24fdcca4025b246e8b43864ef06`  
		Last Modified: Wed, 06 Feb 2019 23:56:37 GMT  
		Size: 2.0 KB (1959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a426d2b871a7065fafa2089faea04c4070a7f1c14ff0d448d060fff58ba4aaa`  
		Last Modified: Wed, 06 Feb 2019 23:56:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ace7637f175b4f7bb2ca9e507b942d94c30e9822621a174554c840d68d5e4b`  
		Last Modified: Wed, 06 Feb 2019 23:56:37 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
