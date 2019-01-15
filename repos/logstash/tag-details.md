<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:5`](#logstash5)
-	[`logstash:5.6`](#logstash56)
-	[`logstash:5.6.14`](#logstash5614)
-	[`logstash:5.6.14-alpine`](#logstash5614-alpine)
-	[`logstash:5.6-alpine`](#logstash56-alpine)
-	[`logstash:5-alpine`](#logstash5-alpine)
-	[`logstash:6.5.4`](#logstash654)

## `logstash:5`

```console
$ docker pull logstash@sha256:94411cc157e7fe252771c1b658964b74edc7e72b19acfd254cbd7a453a603c0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5` - linux; amd64

```console
$ docker pull logstash@sha256:699251cecb402ade6764f34709a46a7a03fa281b19ef34feda71745bfccf9085
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.2 MB (292238881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f216584558803a6923641d471c4d194b2959abd91f372c60a6818d27d47ccba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 02:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:58:33 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:58:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 11:06:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq5 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:06:01 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Sat, 29 Dec 2018 11:06:01 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 11:06:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 29 Dec 2018 11:06:08 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 11:06:09 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Sat, 29 Dec 2018 11:06:09 GMT
ENV LOGSTASH_VERSION=5.6.14
# Sat, 29 Dec 2018 11:06:09 GMT
ENV LOGSTASH_DEB_VERSION=1:5.6.14-1
# Sat, 29 Dec 2018 11:06:36 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:06:37 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:06:37 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Sat, 29 Dec 2018 11:06:38 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Sat, 29 Dec 2018 11:06:38 GMT
COPY file:ff25c1f2500609bbcb68df8cd6b717da6b108b25b64cd5da434191796325c5c8 in / 
# Sat, 29 Dec 2018 11:06:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 11:06:39 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7fcb5828abd01ec003887486f6054e939373f0b850db15529e9d877094896`  
		Last Modified: Sat, 29 Dec 2018 03:23:11 GMT  
		Size: 852.8 KB (852813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c860563d607821af1e6da364188f0fd7991176bb88b60b51f325ed8ed5d33b`  
		Last Modified: Sat, 29 Dec 2018 03:25:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f754145d12e37fa48f92002c88fbc77c762041b65288ad5c8e6214c032ea46`  
		Last Modified: Sat, 29 Dec 2018 03:25:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff15a87739e7b3027d0605252271d7db50944805518c366f933ce0cf070aa6e`  
		Last Modified: Sat, 29 Dec 2018 03:26:03 GMT  
		Size: 122.1 MB (122120750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9624cef4dc894369557bca3da6f0b78a8c80c6b4372dfd550fc2ae4048449bfc`  
		Last Modified: Sat, 29 Dec 2018 11:06:59 GMT  
		Size: 1.6 MB (1572154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb950cfc6baefbe7a58cdbd46deb8d72efe7cf6e4d131ce70cd6c85ef84a30e1`  
		Last Modified: Sat, 29 Dec 2018 11:06:59 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f28623b7d1e5b4df578cc9ea3df26ae32f4d09a9ed5660ebdc323465f1a1b77b`  
		Last Modified: Sat, 29 Dec 2018 11:06:59 GMT  
		Size: 500.9 KB (500913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab4c75990fcb4e9b3833d1bfaa517ff194c8b78e49c0eadcd82d85828aa6a2a`  
		Last Modified: Sat, 29 Dec 2018 11:06:57 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:037b02e037f9ec4a8b28ad6579e14d935c6af8da5994f6ca661e18974e092d7f`  
		Last Modified: Sat, 29 Dec 2018 11:06:57 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aeae1be46f8f4b5954ed3bda9fde844a208551502767fceda83281dbe81206f`  
		Last Modified: Sat, 29 Dec 2018 11:07:21 GMT  
		Size: 106.7 MB (106742314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ce5a175f433bf9c1d0aaf562535cc3aef5d4d8eb6131f705e87fd83925c23a`  
		Last Modified: Sat, 29 Dec 2018 11:06:58 GMT  
		Size: 2.7 KB (2665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3baeb23418ecbc0e13a36003f832ea10b94861e5251a381bb3cb8443d1f1849`  
		Last Modified: Sat, 29 Dec 2018 11:06:57 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6`

```console
$ docker pull logstash@sha256:94411cc157e7fe252771c1b658964b74edc7e72b19acfd254cbd7a453a603c0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6` - linux; amd64

```console
$ docker pull logstash@sha256:699251cecb402ade6764f34709a46a7a03fa281b19ef34feda71745bfccf9085
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.2 MB (292238881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f216584558803a6923641d471c4d194b2959abd91f372c60a6818d27d47ccba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 02:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:58:33 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:58:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 11:06:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq5 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:06:01 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Sat, 29 Dec 2018 11:06:01 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 11:06:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 29 Dec 2018 11:06:08 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 11:06:09 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Sat, 29 Dec 2018 11:06:09 GMT
ENV LOGSTASH_VERSION=5.6.14
# Sat, 29 Dec 2018 11:06:09 GMT
ENV LOGSTASH_DEB_VERSION=1:5.6.14-1
# Sat, 29 Dec 2018 11:06:36 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:06:37 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:06:37 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Sat, 29 Dec 2018 11:06:38 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Sat, 29 Dec 2018 11:06:38 GMT
COPY file:ff25c1f2500609bbcb68df8cd6b717da6b108b25b64cd5da434191796325c5c8 in / 
# Sat, 29 Dec 2018 11:06:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 11:06:39 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7fcb5828abd01ec003887486f6054e939373f0b850db15529e9d877094896`  
		Last Modified: Sat, 29 Dec 2018 03:23:11 GMT  
		Size: 852.8 KB (852813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c860563d607821af1e6da364188f0fd7991176bb88b60b51f325ed8ed5d33b`  
		Last Modified: Sat, 29 Dec 2018 03:25:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f754145d12e37fa48f92002c88fbc77c762041b65288ad5c8e6214c032ea46`  
		Last Modified: Sat, 29 Dec 2018 03:25:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff15a87739e7b3027d0605252271d7db50944805518c366f933ce0cf070aa6e`  
		Last Modified: Sat, 29 Dec 2018 03:26:03 GMT  
		Size: 122.1 MB (122120750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9624cef4dc894369557bca3da6f0b78a8c80c6b4372dfd550fc2ae4048449bfc`  
		Last Modified: Sat, 29 Dec 2018 11:06:59 GMT  
		Size: 1.6 MB (1572154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb950cfc6baefbe7a58cdbd46deb8d72efe7cf6e4d131ce70cd6c85ef84a30e1`  
		Last Modified: Sat, 29 Dec 2018 11:06:59 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f28623b7d1e5b4df578cc9ea3df26ae32f4d09a9ed5660ebdc323465f1a1b77b`  
		Last Modified: Sat, 29 Dec 2018 11:06:59 GMT  
		Size: 500.9 KB (500913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab4c75990fcb4e9b3833d1bfaa517ff194c8b78e49c0eadcd82d85828aa6a2a`  
		Last Modified: Sat, 29 Dec 2018 11:06:57 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:037b02e037f9ec4a8b28ad6579e14d935c6af8da5994f6ca661e18974e092d7f`  
		Last Modified: Sat, 29 Dec 2018 11:06:57 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aeae1be46f8f4b5954ed3bda9fde844a208551502767fceda83281dbe81206f`  
		Last Modified: Sat, 29 Dec 2018 11:07:21 GMT  
		Size: 106.7 MB (106742314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ce5a175f433bf9c1d0aaf562535cc3aef5d4d8eb6131f705e87fd83925c23a`  
		Last Modified: Sat, 29 Dec 2018 11:06:58 GMT  
		Size: 2.7 KB (2665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3baeb23418ecbc0e13a36003f832ea10b94861e5251a381bb3cb8443d1f1849`  
		Last Modified: Sat, 29 Dec 2018 11:06:57 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6.14`

```console
$ docker pull logstash@sha256:94411cc157e7fe252771c1b658964b74edc7e72b19acfd254cbd7a453a603c0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6.14` - linux; amd64

```console
$ docker pull logstash@sha256:699251cecb402ade6764f34709a46a7a03fa281b19ef34feda71745bfccf9085
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.2 MB (292238881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f216584558803a6923641d471c4d194b2959abd91f372c60a6818d27d47ccba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 02:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:58:33 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:58:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 11:06:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq5 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:06:01 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Sat, 29 Dec 2018 11:06:01 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 11:06:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 29 Dec 2018 11:06:08 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 11:06:09 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Sat, 29 Dec 2018 11:06:09 GMT
ENV LOGSTASH_VERSION=5.6.14
# Sat, 29 Dec 2018 11:06:09 GMT
ENV LOGSTASH_DEB_VERSION=1:5.6.14-1
# Sat, 29 Dec 2018 11:06:36 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:06:37 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:06:37 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Sat, 29 Dec 2018 11:06:38 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Sat, 29 Dec 2018 11:06:38 GMT
COPY file:ff25c1f2500609bbcb68df8cd6b717da6b108b25b64cd5da434191796325c5c8 in / 
# Sat, 29 Dec 2018 11:06:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 11:06:39 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7fcb5828abd01ec003887486f6054e939373f0b850db15529e9d877094896`  
		Last Modified: Sat, 29 Dec 2018 03:23:11 GMT  
		Size: 852.8 KB (852813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c860563d607821af1e6da364188f0fd7991176bb88b60b51f325ed8ed5d33b`  
		Last Modified: Sat, 29 Dec 2018 03:25:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f754145d12e37fa48f92002c88fbc77c762041b65288ad5c8e6214c032ea46`  
		Last Modified: Sat, 29 Dec 2018 03:25:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff15a87739e7b3027d0605252271d7db50944805518c366f933ce0cf070aa6e`  
		Last Modified: Sat, 29 Dec 2018 03:26:03 GMT  
		Size: 122.1 MB (122120750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9624cef4dc894369557bca3da6f0b78a8c80c6b4372dfd550fc2ae4048449bfc`  
		Last Modified: Sat, 29 Dec 2018 11:06:59 GMT  
		Size: 1.6 MB (1572154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb950cfc6baefbe7a58cdbd46deb8d72efe7cf6e4d131ce70cd6c85ef84a30e1`  
		Last Modified: Sat, 29 Dec 2018 11:06:59 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f28623b7d1e5b4df578cc9ea3df26ae32f4d09a9ed5660ebdc323465f1a1b77b`  
		Last Modified: Sat, 29 Dec 2018 11:06:59 GMT  
		Size: 500.9 KB (500913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab4c75990fcb4e9b3833d1bfaa517ff194c8b78e49c0eadcd82d85828aa6a2a`  
		Last Modified: Sat, 29 Dec 2018 11:06:57 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:037b02e037f9ec4a8b28ad6579e14d935c6af8da5994f6ca661e18974e092d7f`  
		Last Modified: Sat, 29 Dec 2018 11:06:57 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aeae1be46f8f4b5954ed3bda9fde844a208551502767fceda83281dbe81206f`  
		Last Modified: Sat, 29 Dec 2018 11:07:21 GMT  
		Size: 106.7 MB (106742314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ce5a175f433bf9c1d0aaf562535cc3aef5d4d8eb6131f705e87fd83925c23a`  
		Last Modified: Sat, 29 Dec 2018 11:06:58 GMT  
		Size: 2.7 KB (2665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3baeb23418ecbc0e13a36003f832ea10b94861e5251a381bb3cb8443d1f1849`  
		Last Modified: Sat, 29 Dec 2018 11:06:57 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6.14-alpine`

```console
$ docker pull logstash@sha256:2ddb0c85aaa7e545ab348985237e5b9f7ce7e8c2fe6301d005e6fcc45509c30a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6.14-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:879e4188bf6456b88c5086cf202561612811d16b787ae1125493d41c2cb90069
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (164999180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83fe1ff37c1e1202b0f187b780a872dad4bd31ba989e1e72ae533ab433da1524`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:40:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 00:40:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 00:41:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 00:41:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 00:26:19 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 00:26:19 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 11 Jan 2019 00:26:23 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 11 Jan 2019 01:57:33 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Fri, 11 Jan 2019 01:57:35 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Fri, 11 Jan 2019 01:57:35 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 11 Jan 2019 01:57:36 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 11 Jan 2019 01:57:36 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Fri, 11 Jan 2019 01:57:36 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 01:57:36 GMT
ENV LOGSTASH_VERSION=5.6.14
# Fri, 11 Jan 2019 01:57:36 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.14.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.14.tar.gz.asc LOGSTASH_TARBALL_SHA1=1d3c03897d5ee843f60e450d3ebef0c9353dc90d
# Fri, 11 Jan 2019 01:57:49 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Fri, 11 Jan 2019 01:57:49 GMT
COPY file:ce3bf8cc5446bdbb16718eb5decb902429c53b67cd42ac64921c065e79206386 in / 
# Fri, 11 Jan 2019 01:57:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 11 Jan 2019 01:57:50 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35920a071f912ae4c16897610e8e2d514efcfd0e14ec76c4c73bf9aa7c2c55ea`  
		Last Modified: Fri, 21 Dec 2018 00:44:42 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5149a464dd4b435dd529c6420b1a5c12b1076cdb94d3e0c41cdcc78f9582a5`  
		Last Modified: Fri, 11 Jan 2019 00:30:16 GMT  
		Size: 54.9 MB (54866597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dfd17aeb74ed9323ce9dc44db74bdc5ed2157781bac5299cc578408895353e`  
		Last Modified: Fri, 11 Jan 2019 01:57:57 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17be624d0ce925f0a49ae766253ea9b0f9cd0eea206c45c8f7a1d3784fd85c8`  
		Last Modified: Fri, 11 Jan 2019 01:57:58 GMT  
		Size: 1.5 MB (1548838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01f3e874ab7e936ebe2087ea34a1ee717016a5097b24544f8cab5695bd02fe8`  
		Last Modified: Fri, 11 Jan 2019 01:57:57 GMT  
		Size: 96.6 KB (96611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a9c26e13e352055aba5b1333c4682f9d22255159c95793073f1f34c9530a81`  
		Last Modified: Fri, 11 Jan 2019 01:58:12 GMT  
		Size: 106.3 MB (106278312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45035cfb8d11c052f1c5dce0b1b16a154d90bebda8e92f897d6dea4cd0cf9b46`  
		Last Modified: Fri, 11 Jan 2019 01:57:57 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6-alpine`

```console
$ docker pull logstash@sha256:2ddb0c85aaa7e545ab348985237e5b9f7ce7e8c2fe6301d005e6fcc45509c30a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:879e4188bf6456b88c5086cf202561612811d16b787ae1125493d41c2cb90069
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (164999180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83fe1ff37c1e1202b0f187b780a872dad4bd31ba989e1e72ae533ab433da1524`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:40:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 00:40:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 00:41:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 00:41:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 00:26:19 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 00:26:19 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 11 Jan 2019 00:26:23 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 11 Jan 2019 01:57:33 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Fri, 11 Jan 2019 01:57:35 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Fri, 11 Jan 2019 01:57:35 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 11 Jan 2019 01:57:36 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 11 Jan 2019 01:57:36 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Fri, 11 Jan 2019 01:57:36 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 01:57:36 GMT
ENV LOGSTASH_VERSION=5.6.14
# Fri, 11 Jan 2019 01:57:36 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.14.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.14.tar.gz.asc LOGSTASH_TARBALL_SHA1=1d3c03897d5ee843f60e450d3ebef0c9353dc90d
# Fri, 11 Jan 2019 01:57:49 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Fri, 11 Jan 2019 01:57:49 GMT
COPY file:ce3bf8cc5446bdbb16718eb5decb902429c53b67cd42ac64921c065e79206386 in / 
# Fri, 11 Jan 2019 01:57:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 11 Jan 2019 01:57:50 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35920a071f912ae4c16897610e8e2d514efcfd0e14ec76c4c73bf9aa7c2c55ea`  
		Last Modified: Fri, 21 Dec 2018 00:44:42 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5149a464dd4b435dd529c6420b1a5c12b1076cdb94d3e0c41cdcc78f9582a5`  
		Last Modified: Fri, 11 Jan 2019 00:30:16 GMT  
		Size: 54.9 MB (54866597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dfd17aeb74ed9323ce9dc44db74bdc5ed2157781bac5299cc578408895353e`  
		Last Modified: Fri, 11 Jan 2019 01:57:57 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17be624d0ce925f0a49ae766253ea9b0f9cd0eea206c45c8f7a1d3784fd85c8`  
		Last Modified: Fri, 11 Jan 2019 01:57:58 GMT  
		Size: 1.5 MB (1548838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01f3e874ab7e936ebe2087ea34a1ee717016a5097b24544f8cab5695bd02fe8`  
		Last Modified: Fri, 11 Jan 2019 01:57:57 GMT  
		Size: 96.6 KB (96611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a9c26e13e352055aba5b1333c4682f9d22255159c95793073f1f34c9530a81`  
		Last Modified: Fri, 11 Jan 2019 01:58:12 GMT  
		Size: 106.3 MB (106278312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45035cfb8d11c052f1c5dce0b1b16a154d90bebda8e92f897d6dea4cd0cf9b46`  
		Last Modified: Fri, 11 Jan 2019 01:57:57 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5-alpine`

```console
$ docker pull logstash@sha256:2ddb0c85aaa7e545ab348985237e5b9f7ce7e8c2fe6301d005e6fcc45509c30a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:879e4188bf6456b88c5086cf202561612811d16b787ae1125493d41c2cb90069
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (164999180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83fe1ff37c1e1202b0f187b780a872dad4bd31ba989e1e72ae533ab433da1524`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:40:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 00:40:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 00:41:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 00:41:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 00:26:19 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 00:26:19 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 11 Jan 2019 00:26:23 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 11 Jan 2019 01:57:33 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Fri, 11 Jan 2019 01:57:35 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Fri, 11 Jan 2019 01:57:35 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 11 Jan 2019 01:57:36 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 11 Jan 2019 01:57:36 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Fri, 11 Jan 2019 01:57:36 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 01:57:36 GMT
ENV LOGSTASH_VERSION=5.6.14
# Fri, 11 Jan 2019 01:57:36 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.14.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.14.tar.gz.asc LOGSTASH_TARBALL_SHA1=1d3c03897d5ee843f60e450d3ebef0c9353dc90d
# Fri, 11 Jan 2019 01:57:49 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Fri, 11 Jan 2019 01:57:49 GMT
COPY file:ce3bf8cc5446bdbb16718eb5decb902429c53b67cd42ac64921c065e79206386 in / 
# Fri, 11 Jan 2019 01:57:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 11 Jan 2019 01:57:50 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35920a071f912ae4c16897610e8e2d514efcfd0e14ec76c4c73bf9aa7c2c55ea`  
		Last Modified: Fri, 21 Dec 2018 00:44:42 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5149a464dd4b435dd529c6420b1a5c12b1076cdb94d3e0c41cdcc78f9582a5`  
		Last Modified: Fri, 11 Jan 2019 00:30:16 GMT  
		Size: 54.9 MB (54866597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dfd17aeb74ed9323ce9dc44db74bdc5ed2157781bac5299cc578408895353e`  
		Last Modified: Fri, 11 Jan 2019 01:57:57 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17be624d0ce925f0a49ae766253ea9b0f9cd0eea206c45c8f7a1d3784fd85c8`  
		Last Modified: Fri, 11 Jan 2019 01:57:58 GMT  
		Size: 1.5 MB (1548838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01f3e874ab7e936ebe2087ea34a1ee717016a5097b24544f8cab5695bd02fe8`  
		Last Modified: Fri, 11 Jan 2019 01:57:57 GMT  
		Size: 96.6 KB (96611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a9c26e13e352055aba5b1333c4682f9d22255159c95793073f1f34c9530a81`  
		Last Modified: Fri, 11 Jan 2019 01:58:12 GMT  
		Size: 106.3 MB (106278312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45035cfb8d11c052f1c5dce0b1b16a154d90bebda8e92f897d6dea4cd0cf9b46`  
		Last Modified: Fri, 11 Jan 2019 01:57:57 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:6.5.4`

```console
$ docker pull logstash@sha256:55ee758b90387227dc6c5d86304b006012a7ad2019ff366a63e8c0b35ed8b5f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:6.5.4` - linux; amd64

```console
$ docker pull logstash@sha256:aeb0cc317b51b01ac90216726ba6e636da9fbb5285056b2ffc81e7ee0539faf2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.9 MB (312927542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac1d36dfa4160e44e94b07a34050ce87e21d2114c7551c753953a1272b0fd1b3`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Mon, 17 Dec 2018 22:12:52 GMT
RUN yum update -y && yum install -y java-1.8.0-openjdk-devel which &&     yum clean all
# Mon, 17 Dec 2018 22:12:52 GMT
RUN groupadd --gid 1000 logstash &&     adduser --uid 1000 --gid 1000       --home-dir /usr/share/logstash --no-create-home       logstash
# Mon, 17 Dec 2018 22:13:12 GMT
RUN curl -Lo - http://localhost:8000/logstash/build//logstash-6.5.4.tar.gz |     tar zxf - -C /usr/share &&     mv /usr/share/logstash-6.5.4 /usr/share/logstash &&     chown --recursive logstash:logstash /usr/share/logstash/ &&     chown -R logstash:root /usr/share/logstash &&     chmod -R g=u /usr/share/logstash &&     find /usr/share/logstash -type d -exec chmod g+s {} \; &&     ln -s /usr/share/logstash /opt/logstash
# Mon, 17 Dec 2018 22:13:12 GMT
WORKDIR /usr/share/logstash
# Mon, 17 Dec 2018 22:13:12 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 17 Dec 2018 22:13:12 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Dec 2018 22:13:12 GMT
ADD file:1183410472ec370104718a08e1144081518db1d006a8cc82de824a34455ab3f3 in config/pipelines.yml 
# Mon, 17 Dec 2018 22:13:13 GMT
ADD file:2a0dac103ac5f20f8efa6c77384f10d83a87c3de7c017658f787cce7d6156b76 in config/logstash.yml 
# Mon, 17 Dec 2018 22:13:13 GMT
ADD file:2ef21d4766eab3ac48ed3847c8b8d05554f1fd0b39061cba66c9ac93240087fa in config/ 
# Mon, 17 Dec 2018 22:13:13 GMT
ADD file:0cd9cc51daf5f37b2aa8aae8cf3570a3680e22852afb2803ccb87ddcd3369f52 in pipeline/logstash.conf 
# Mon, 17 Dec 2018 22:13:13 GMT
RUN chown --recursive logstash:root config/ pipeline/
# Mon, 17 Dec 2018 22:13:13 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Mon, 17 Dec 2018 22:13:13 GMT
ADD file:29dd60f159d64086c20a7a02f84a9314f44b2290304547233fb96744325b1245 in /usr/local/bin/ 
# Mon, 17 Dec 2018 22:13:14 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint
# Mon, 17 Dec 2018 22:13:14 GMT
USER 1000
# Mon, 17 Dec 2018 22:13:14 GMT
ADD file:e22d146a880f0f369decacfd49c523706ac533251c16f48f477e83d655dd66bc in /usr/local/bin/ 
# Mon, 17 Dec 2018 22:13:14 GMT
EXPOSE 5044 9600
# Mon, 17 Dec 2018 22:13:15 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=logstash org.label-schema.version=6.5.4 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash-docker license=Elastic License
# Mon, 17 Dec 2018 22:13:15 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a1e4174c6a296153beda684486cb50234aa71c509233cb74566bd18c9bfe03f`  
		Last Modified: Wed, 19 Dec 2018 16:54:42 GMT  
		Size: 74.9 MB (74893587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45580ada7cbab4ca39c65b67b236ec6ea7824a28c0f06c68e63b95c52fc16d8`  
		Last Modified: Wed, 19 Dec 2018 16:54:29 GMT  
		Size: 1.6 KB (1608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85783b3810d1b3a53900738a9791020d31f821235dfdcfdf1c044d53633d227c`  
		Last Modified: Wed, 19 Dec 2018 16:54:48 GMT  
		Size: 161.9 MB (161859764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c254b18180a82563f1de6546e26b6066eb85586d6506e7859f99f4254424e0`  
		Last Modified: Wed, 19 Dec 2018 16:54:29 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:583ceb4bc726c73ccd796c98b0cf7eabb5c9678c79246ef5fbcb1341ea89e91c`  
		Last Modified: Wed, 19 Dec 2018 16:54:29 GMT  
		Size: 269.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d6aa33e4935484873c7e414c77ff0172705b622cc19c0aba4d012b680a2163`  
		Last Modified: Wed, 19 Dec 2018 16:54:26 GMT  
		Size: 442.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d470174a592cd738b662af4764d34d4ceb54fa0ea158c172d9d6224d9cc1d76`  
		Last Modified: Wed, 19 Dec 2018 16:54:26 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0538316f0c3c458e0f3dc8e1de1efb803a565a572e1b17804861e2b6c27e697d`  
		Last Modified: Wed, 19 Dec 2018 16:54:26 GMT  
		Size: 2.6 KB (2640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e7b1a9620ec8cc75b5cac1e78aeedb51791729fc8ab3aadf9dbfb4eb320e28`  
		Last Modified: Wed, 19 Dec 2018 16:54:26 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e7b1a9620ec8cc75b5cac1e78aeedb51791729fc8ab3aadf9dbfb4eb320e28`  
		Last Modified: Wed, 19 Dec 2018 16:54:26 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18467bd04a72ada743516782f03e2556fe5e8d486b73af51fe5a240531bd3444`  
		Last Modified: Wed, 19 Dec 2018 16:54:27 GMT  
		Size: 1.0 MB (1002056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
