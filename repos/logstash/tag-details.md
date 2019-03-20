<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:5`](#logstash5)
-	[`logstash:5.6`](#logstash56)
-	[`logstash:5.6.16`](#logstash5616)
-	[`logstash:5.6.16-alpine`](#logstash5616-alpine)
-	[`logstash:5.6-alpine`](#logstash56-alpine)
-	[`logstash:5-alpine`](#logstash5-alpine)
-	[`logstash:6.6.2`](#logstash662)

## `logstash:5`

```console
$ docker pull logstash@sha256:f6952f86363fd5331b5dd9bc7234772ec6baa15805b2de24c4df14586969c5bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5` - linux; amd64

```console
$ docker pull logstash@sha256:b2ab4fec3cb630de6c4d2c140fd4eece4e0004e6838902fa457989e2453d7c12
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.6 MB (298577298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98864069d83e3584f9ce6e063d92bedaff42ca19aae8633823b47289b04af4ac`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 04:01:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:04:52 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:04:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:04:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:04:53 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 04:04:53 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 04:04:54 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 04:05:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 14:29:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:29:25 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 05 Mar 2019 14:29:26 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 14:29:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 14:29:35 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 14:29:37 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Wed, 20 Mar 2019 00:20:41 GMT
ENV LOGSTASH_VERSION=5.6.16
# Wed, 20 Mar 2019 00:20:41 GMT
ENV LOGSTASH_DEB_VERSION=1:5.6.16-1
# Wed, 20 Mar 2019 00:21:02 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Mar 2019 00:21:03 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 20 Mar 2019 00:21:04 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 20 Mar 2019 00:21:05 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Wed, 20 Mar 2019 00:21:05 GMT
COPY file:ff25c1f2500609bbcb68df8cd6b717da6b108b25b64cd5da434191796325c5c8 in / 
# Wed, 20 Mar 2019 00:21:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Mar 2019 00:21:06 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afad9c4aba6cc6f5b4e85b14e0a16c4807fdcc8a5e4c43a532d6aa06f5d5664`  
		Last Modified: Tue, 05 Mar 2019 04:25:25 GMT  
		Size: 852.9 KB (852890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12fce9923c9d837e515d3de06b77d97a5a0c4796a35a97cf9a6768641ea25a8c`  
		Last Modified: Tue, 05 Mar 2019 04:27:32 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd81083d77ea06270e287c0fb5be2ab4daf9003518745fbdc4f2e55d2635db0`  
		Last Modified: Tue, 05 Mar 2019 04:27:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2afc6ff72dd12b78d094cdbc7e04f6285e599f8a03d6cc1e935aee96b176c1`  
		Last Modified: Tue, 05 Mar 2019 04:27:58 GMT  
		Size: 122.1 MB (122122910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4ec06f94305a3311bcfff4f6b56d7f941634343c07e9dfc31151a5a8ba14d0`  
		Last Modified: Tue, 05 Mar 2019 14:30:18 GMT  
		Size: 1.6 MB (1572585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf03508a7e0bbe1396b828dc5fab7a46d9abf68ebcfe633792ab63e4e6dae822`  
		Last Modified: Tue, 05 Mar 2019 14:30:17 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa89ca3e1e2def2276b9a174e001341b88b08c8c209bc0cf3fe2af7124b88712`  
		Last Modified: Tue, 05 Mar 2019 14:30:17 GMT  
		Size: 500.9 KB (500915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1009560d1e9f60f815f8ecd1a94983383dd98daeac7c9873444bdebc15345be1`  
		Last Modified: Tue, 05 Mar 2019 14:30:16 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afb19d9afdee7d408ace09efb0f0fbfb44db3ebd6fa2c386511efcefc1c7bc8`  
		Last Modified: Tue, 05 Mar 2019 14:30:16 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cdb8b405195346491e25892895ceae2547b430048c4d06cee9f57db2ec57d8`  
		Last Modified: Wed, 20 Mar 2019 00:21:49 GMT  
		Size: 113.1 MB (113058158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b3909e4645d4a06478e07f472759517fa412c090a875090dbd9a4d54e574ce3`  
		Last Modified: Wed, 20 Mar 2019 00:21:34 GMT  
		Size: 2.7 KB (2662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148a7b26d2f8b6029d0617627fb49daa537c6291eed24fa6c82629c53c75ed3e`  
		Last Modified: Wed, 20 Mar 2019 00:21:33 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6`

```console
$ docker pull logstash@sha256:f6952f86363fd5331b5dd9bc7234772ec6baa15805b2de24c4df14586969c5bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6` - linux; amd64

```console
$ docker pull logstash@sha256:b2ab4fec3cb630de6c4d2c140fd4eece4e0004e6838902fa457989e2453d7c12
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.6 MB (298577298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98864069d83e3584f9ce6e063d92bedaff42ca19aae8633823b47289b04af4ac`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 04:01:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:04:52 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:04:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:04:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:04:53 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 04:04:53 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 04:04:54 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 04:05:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 14:29:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:29:25 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 05 Mar 2019 14:29:26 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 14:29:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 14:29:35 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 14:29:37 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Wed, 20 Mar 2019 00:20:41 GMT
ENV LOGSTASH_VERSION=5.6.16
# Wed, 20 Mar 2019 00:20:41 GMT
ENV LOGSTASH_DEB_VERSION=1:5.6.16-1
# Wed, 20 Mar 2019 00:21:02 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Mar 2019 00:21:03 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 20 Mar 2019 00:21:04 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 20 Mar 2019 00:21:05 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Wed, 20 Mar 2019 00:21:05 GMT
COPY file:ff25c1f2500609bbcb68df8cd6b717da6b108b25b64cd5da434191796325c5c8 in / 
# Wed, 20 Mar 2019 00:21:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Mar 2019 00:21:06 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afad9c4aba6cc6f5b4e85b14e0a16c4807fdcc8a5e4c43a532d6aa06f5d5664`  
		Last Modified: Tue, 05 Mar 2019 04:25:25 GMT  
		Size: 852.9 KB (852890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12fce9923c9d837e515d3de06b77d97a5a0c4796a35a97cf9a6768641ea25a8c`  
		Last Modified: Tue, 05 Mar 2019 04:27:32 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd81083d77ea06270e287c0fb5be2ab4daf9003518745fbdc4f2e55d2635db0`  
		Last Modified: Tue, 05 Mar 2019 04:27:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2afc6ff72dd12b78d094cdbc7e04f6285e599f8a03d6cc1e935aee96b176c1`  
		Last Modified: Tue, 05 Mar 2019 04:27:58 GMT  
		Size: 122.1 MB (122122910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4ec06f94305a3311bcfff4f6b56d7f941634343c07e9dfc31151a5a8ba14d0`  
		Last Modified: Tue, 05 Mar 2019 14:30:18 GMT  
		Size: 1.6 MB (1572585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf03508a7e0bbe1396b828dc5fab7a46d9abf68ebcfe633792ab63e4e6dae822`  
		Last Modified: Tue, 05 Mar 2019 14:30:17 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa89ca3e1e2def2276b9a174e001341b88b08c8c209bc0cf3fe2af7124b88712`  
		Last Modified: Tue, 05 Mar 2019 14:30:17 GMT  
		Size: 500.9 KB (500915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1009560d1e9f60f815f8ecd1a94983383dd98daeac7c9873444bdebc15345be1`  
		Last Modified: Tue, 05 Mar 2019 14:30:16 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afb19d9afdee7d408ace09efb0f0fbfb44db3ebd6fa2c386511efcefc1c7bc8`  
		Last Modified: Tue, 05 Mar 2019 14:30:16 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cdb8b405195346491e25892895ceae2547b430048c4d06cee9f57db2ec57d8`  
		Last Modified: Wed, 20 Mar 2019 00:21:49 GMT  
		Size: 113.1 MB (113058158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b3909e4645d4a06478e07f472759517fa412c090a875090dbd9a4d54e574ce3`  
		Last Modified: Wed, 20 Mar 2019 00:21:34 GMT  
		Size: 2.7 KB (2662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148a7b26d2f8b6029d0617627fb49daa537c6291eed24fa6c82629c53c75ed3e`  
		Last Modified: Wed, 20 Mar 2019 00:21:33 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6.16`

```console
$ docker pull logstash@sha256:f6952f86363fd5331b5dd9bc7234772ec6baa15805b2de24c4df14586969c5bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6.16` - linux; amd64

```console
$ docker pull logstash@sha256:b2ab4fec3cb630de6c4d2c140fd4eece4e0004e6838902fa457989e2453d7c12
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.6 MB (298577298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98864069d83e3584f9ce6e063d92bedaff42ca19aae8633823b47289b04af4ac`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 04:01:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:04:52 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:04:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:04:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:04:53 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 04:04:53 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 04:04:54 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 04:05:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 14:29:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:29:25 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 05 Mar 2019 14:29:26 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 14:29:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 14:29:35 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 14:29:37 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Wed, 20 Mar 2019 00:20:41 GMT
ENV LOGSTASH_VERSION=5.6.16
# Wed, 20 Mar 2019 00:20:41 GMT
ENV LOGSTASH_DEB_VERSION=1:5.6.16-1
# Wed, 20 Mar 2019 00:21:02 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Mar 2019 00:21:03 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 20 Mar 2019 00:21:04 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 20 Mar 2019 00:21:05 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Wed, 20 Mar 2019 00:21:05 GMT
COPY file:ff25c1f2500609bbcb68df8cd6b717da6b108b25b64cd5da434191796325c5c8 in / 
# Wed, 20 Mar 2019 00:21:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Mar 2019 00:21:06 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afad9c4aba6cc6f5b4e85b14e0a16c4807fdcc8a5e4c43a532d6aa06f5d5664`  
		Last Modified: Tue, 05 Mar 2019 04:25:25 GMT  
		Size: 852.9 KB (852890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12fce9923c9d837e515d3de06b77d97a5a0c4796a35a97cf9a6768641ea25a8c`  
		Last Modified: Tue, 05 Mar 2019 04:27:32 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd81083d77ea06270e287c0fb5be2ab4daf9003518745fbdc4f2e55d2635db0`  
		Last Modified: Tue, 05 Mar 2019 04:27:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2afc6ff72dd12b78d094cdbc7e04f6285e599f8a03d6cc1e935aee96b176c1`  
		Last Modified: Tue, 05 Mar 2019 04:27:58 GMT  
		Size: 122.1 MB (122122910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4ec06f94305a3311bcfff4f6b56d7f941634343c07e9dfc31151a5a8ba14d0`  
		Last Modified: Tue, 05 Mar 2019 14:30:18 GMT  
		Size: 1.6 MB (1572585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf03508a7e0bbe1396b828dc5fab7a46d9abf68ebcfe633792ab63e4e6dae822`  
		Last Modified: Tue, 05 Mar 2019 14:30:17 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa89ca3e1e2def2276b9a174e001341b88b08c8c209bc0cf3fe2af7124b88712`  
		Last Modified: Tue, 05 Mar 2019 14:30:17 GMT  
		Size: 500.9 KB (500915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1009560d1e9f60f815f8ecd1a94983383dd98daeac7c9873444bdebc15345be1`  
		Last Modified: Tue, 05 Mar 2019 14:30:16 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afb19d9afdee7d408ace09efb0f0fbfb44db3ebd6fa2c386511efcefc1c7bc8`  
		Last Modified: Tue, 05 Mar 2019 14:30:16 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cdb8b405195346491e25892895ceae2547b430048c4d06cee9f57db2ec57d8`  
		Last Modified: Wed, 20 Mar 2019 00:21:49 GMT  
		Size: 113.1 MB (113058158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b3909e4645d4a06478e07f472759517fa412c090a875090dbd9a4d54e574ce3`  
		Last Modified: Wed, 20 Mar 2019 00:21:34 GMT  
		Size: 2.7 KB (2662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148a7b26d2f8b6029d0617627fb49daa537c6291eed24fa6c82629c53c75ed3e`  
		Last Modified: Wed, 20 Mar 2019 00:21:33 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6.16-alpine`

```console
$ docker pull logstash@sha256:4dad72a54405e90af5ae27caf3dc30effeeb25c27d1fdb2ee82ec4265d3409f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6.16-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:568acb89ac8d84b59b005332466a958fccb5a320abe037701405962e8d9428a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.7 MB (171657428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8c4f72d2a7f68c0b3e10ab18015552b3bf51ee4c265ed6c9c85ebbd2066bae4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Fri, 08 Mar 2019 02:13:43 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 02:13:43 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 02:13:45 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 04:55:43 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Fri, 08 Mar 2019 04:55:45 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Fri, 08 Mar 2019 04:55:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 08 Mar 2019 04:55:46 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 08 Mar 2019 04:55:46 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Fri, 08 Mar 2019 04:55:47 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 20 Mar 2019 00:21:09 GMT
ENV LOGSTASH_VERSION=5.6.16
# Wed, 20 Mar 2019 00:21:10 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.16.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.16.tar.gz.asc LOGSTASH_TARBALL_SHA1=73a9a7f655a11223ff5a1a09558663d61ac92c69
# Wed, 20 Mar 2019 00:21:23 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Wed, 20 Mar 2019 00:21:24 GMT
COPY file:ce3bf8cc5446bdbb16718eb5decb902429c53b67cd42ac64921c065e79206386 in / 
# Wed, 20 Mar 2019 00:21:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Mar 2019 00:21:25 GMT
CMD ["-e" ""]
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
	-	`sha256:205f26e90552395346c11a0738dab5f50b49f245b5aac539ad7845f6ea92d2d4`  
		Last Modified: Fri, 08 Mar 2019 02:16:18 GMT  
		Size: 54.9 MB (54922705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd19ac7affd5106b5ed5cb7e7551dde953e6d4691da7da2bf75c2ac85d7ecb7`  
		Last Modified: Fri, 08 Mar 2019 04:56:19 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513f681fd27a50ba0206de372af3875c961ea436d554107264e3626776741092`  
		Last Modified: Fri, 08 Mar 2019 04:56:20 GMT  
		Size: 1.6 MB (1562514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0fa38b21e3cc1c141310f9dcfd4e27a2db1e484a65a562507becbdcb5dbf4b`  
		Last Modified: Fri, 08 Mar 2019 04:56:19 GMT  
		Size: 99.0 KB (98973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23875bd569f352b6e5901d7b54fa5c77598b5e6f0a3c72c5377d44a6a5ee3c8`  
		Last Modified: Wed, 20 Mar 2019 00:22:12 GMT  
		Size: 112.3 MB (112316699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:364492888b3299f10409a6f8d81e7c75b9236a8375f21dcee65bfbc802f3ab57`  
		Last Modified: Wed, 20 Mar 2019 00:21:57 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6-alpine`

```console
$ docker pull logstash@sha256:4dad72a54405e90af5ae27caf3dc30effeeb25c27d1fdb2ee82ec4265d3409f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:568acb89ac8d84b59b005332466a958fccb5a320abe037701405962e8d9428a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.7 MB (171657428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8c4f72d2a7f68c0b3e10ab18015552b3bf51ee4c265ed6c9c85ebbd2066bae4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Fri, 08 Mar 2019 02:13:43 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 02:13:43 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 02:13:45 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 04:55:43 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Fri, 08 Mar 2019 04:55:45 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Fri, 08 Mar 2019 04:55:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 08 Mar 2019 04:55:46 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 08 Mar 2019 04:55:46 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Fri, 08 Mar 2019 04:55:47 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 20 Mar 2019 00:21:09 GMT
ENV LOGSTASH_VERSION=5.6.16
# Wed, 20 Mar 2019 00:21:10 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.16.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.16.tar.gz.asc LOGSTASH_TARBALL_SHA1=73a9a7f655a11223ff5a1a09558663d61ac92c69
# Wed, 20 Mar 2019 00:21:23 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Wed, 20 Mar 2019 00:21:24 GMT
COPY file:ce3bf8cc5446bdbb16718eb5decb902429c53b67cd42ac64921c065e79206386 in / 
# Wed, 20 Mar 2019 00:21:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Mar 2019 00:21:25 GMT
CMD ["-e" ""]
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
	-	`sha256:205f26e90552395346c11a0738dab5f50b49f245b5aac539ad7845f6ea92d2d4`  
		Last Modified: Fri, 08 Mar 2019 02:16:18 GMT  
		Size: 54.9 MB (54922705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd19ac7affd5106b5ed5cb7e7551dde953e6d4691da7da2bf75c2ac85d7ecb7`  
		Last Modified: Fri, 08 Mar 2019 04:56:19 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513f681fd27a50ba0206de372af3875c961ea436d554107264e3626776741092`  
		Last Modified: Fri, 08 Mar 2019 04:56:20 GMT  
		Size: 1.6 MB (1562514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0fa38b21e3cc1c141310f9dcfd4e27a2db1e484a65a562507becbdcb5dbf4b`  
		Last Modified: Fri, 08 Mar 2019 04:56:19 GMT  
		Size: 99.0 KB (98973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23875bd569f352b6e5901d7b54fa5c77598b5e6f0a3c72c5377d44a6a5ee3c8`  
		Last Modified: Wed, 20 Mar 2019 00:22:12 GMT  
		Size: 112.3 MB (112316699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:364492888b3299f10409a6f8d81e7c75b9236a8375f21dcee65bfbc802f3ab57`  
		Last Modified: Wed, 20 Mar 2019 00:21:57 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5-alpine`

```console
$ docker pull logstash@sha256:4dad72a54405e90af5ae27caf3dc30effeeb25c27d1fdb2ee82ec4265d3409f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:568acb89ac8d84b59b005332466a958fccb5a320abe037701405962e8d9428a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.7 MB (171657428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8c4f72d2a7f68c0b3e10ab18015552b3bf51ee4c265ed6c9c85ebbd2066bae4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Fri, 08 Mar 2019 02:13:43 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 02:13:43 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 02:13:45 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 04:55:43 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Fri, 08 Mar 2019 04:55:45 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Fri, 08 Mar 2019 04:55:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 08 Mar 2019 04:55:46 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 08 Mar 2019 04:55:46 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Fri, 08 Mar 2019 04:55:47 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 20 Mar 2019 00:21:09 GMT
ENV LOGSTASH_VERSION=5.6.16
# Wed, 20 Mar 2019 00:21:10 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.16.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.16.tar.gz.asc LOGSTASH_TARBALL_SHA1=73a9a7f655a11223ff5a1a09558663d61ac92c69
# Wed, 20 Mar 2019 00:21:23 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Wed, 20 Mar 2019 00:21:24 GMT
COPY file:ce3bf8cc5446bdbb16718eb5decb902429c53b67cd42ac64921c065e79206386 in / 
# Wed, 20 Mar 2019 00:21:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Mar 2019 00:21:25 GMT
CMD ["-e" ""]
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
	-	`sha256:205f26e90552395346c11a0738dab5f50b49f245b5aac539ad7845f6ea92d2d4`  
		Last Modified: Fri, 08 Mar 2019 02:16:18 GMT  
		Size: 54.9 MB (54922705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd19ac7affd5106b5ed5cb7e7551dde953e6d4691da7da2bf75c2ac85d7ecb7`  
		Last Modified: Fri, 08 Mar 2019 04:56:19 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513f681fd27a50ba0206de372af3875c961ea436d554107264e3626776741092`  
		Last Modified: Fri, 08 Mar 2019 04:56:20 GMT  
		Size: 1.6 MB (1562514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0fa38b21e3cc1c141310f9dcfd4e27a2db1e484a65a562507becbdcb5dbf4b`  
		Last Modified: Fri, 08 Mar 2019 04:56:19 GMT  
		Size: 99.0 KB (98973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23875bd569f352b6e5901d7b54fa5c77598b5e6f0a3c72c5377d44a6a5ee3c8`  
		Last Modified: Wed, 20 Mar 2019 00:22:12 GMT  
		Size: 112.3 MB (112316699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:364492888b3299f10409a6f8d81e7c75b9236a8375f21dcee65bfbc802f3ab57`  
		Last Modified: Wed, 20 Mar 2019 00:21:57 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:6.6.2`

```console
$ docker pull logstash@sha256:7baab732edcf6f62ae801a6b675bc1d103f06e633065dd325032ada67ea02112
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:6.6.2` - linux; amd64

```console
$ docker pull logstash@sha256:4ab088b1c9b3e98c9e7f1c814de628046047d0b43d03b87adce4f4e91fa6d308
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.9 MB (358857391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb65426c0b24de89690b1026fe3d36a0994c711bb0fa7a76bb69c5ab2e1dfe8`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Wed, 06 Mar 2019 16:12:05 GMT
RUN yum update -y && yum install -y java-1.8.0-openjdk-devel which &&     yum clean all
# Wed, 06 Mar 2019 16:12:06 GMT
RUN groupadd --gid 1000 logstash &&     adduser --uid 1000 --gid 1000       --home-dir /usr/share/logstash --no-create-home       logstash
# Wed, 06 Mar 2019 16:12:25 GMT
RUN curl -Lo - http://localhost:8000/logstash/build//logstash-6.6.2.tar.gz |     tar zxf - -C /usr/share &&     mv /usr/share/logstash-6.6.2 /usr/share/logstash &&     chown --recursive logstash:logstash /usr/share/logstash/ &&     chown -R logstash:root /usr/share/logstash &&     chmod -R g=u /usr/share/logstash &&     find /usr/share/logstash -type d -exec chmod g+s {} \; &&     ln -s /usr/share/logstash /opt/logstash
# Wed, 06 Mar 2019 16:12:25 GMT
WORKDIR /usr/share/logstash
# Wed, 06 Mar 2019 16:12:26 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 06 Mar 2019 16:12:26 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Mar 2019 16:12:26 GMT
ADD file:1183410472ec370104718a08e1144081518db1d006a8cc82de824a34455ab3f3 in config/pipelines.yml 
# Wed, 06 Mar 2019 16:12:26 GMT
ADD file:2a0dac103ac5f20f8efa6c77384f10d83a87c3de7c017658f787cce7d6156b76 in config/logstash.yml 
# Wed, 06 Mar 2019 16:12:26 GMT
ADD file:2ef21d4766eab3ac48ed3847c8b8d05554f1fd0b39061cba66c9ac93240087fa in config/ 
# Wed, 06 Mar 2019 16:12:26 GMT
ADD file:0cd9cc51daf5f37b2aa8aae8cf3570a3680e22852afb2803ccb87ddcd3369f52 in pipeline/logstash.conf 
# Wed, 06 Mar 2019 16:12:26 GMT
RUN chown --recursive logstash:root config/ pipeline/
# Wed, 06 Mar 2019 16:12:27 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Wed, 06 Mar 2019 16:12:27 GMT
ADD file:29dd60f159d64086c20a7a02f84a9314f44b2290304547233fb96744325b1245 in /usr/local/bin/ 
# Wed, 06 Mar 2019 16:12:27 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint
# Wed, 06 Mar 2019 16:12:27 GMT
USER 1000
# Wed, 06 Mar 2019 16:12:27 GMT
ADD file:e22d146a880f0f369decacfd49c523706ac533251c16f48f477e83d655dd66bc in /usr/local/bin/ 
# Wed, 06 Mar 2019 16:12:28 GMT
EXPOSE 5044 9600
# Wed, 06 Mar 2019 16:12:28 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=logstash org.label-schema.version=6.6.2 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash-docker license=Elastic License
# Wed, 06 Mar 2019 16:12:28 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705f029fb67171923428359b44ccb067c3284bdb2609539d4de22310a7b42b24`  
		Last Modified: Tue, 12 Mar 2019 16:39:41 GMT  
		Size: 111.5 MB (111530586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262cb0ffe0e584a95ddfec092778574b578e93c4e7b40848738ce84fbe71b2a2`  
		Last Modified: Tue, 12 Mar 2019 16:39:24 GMT  
		Size: 1.6 KB (1609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e5c346ea98d0337a23ef8174590a753af079797b99cd0fb2ee8b02e5d97914`  
		Last Modified: Tue, 12 Mar 2019 16:39:41 GMT  
		Size: 171.2 MB (171152611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12fe2cd7e3339dd515e63abeee36b48dc12f50cde5d8202a2bfeeb819f7a609a`  
		Last Modified: Tue, 12 Mar 2019 16:39:24 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ddbc68b139e85a693704e73c49c8a378fafb838d803f3a0510846f6e66581c4`  
		Last Modified: Tue, 12 Mar 2019 16:39:24 GMT  
		Size: 270.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860d99017411195c6decb0bba42d3395974525ba9e1a8efda554f3207e429a11`  
		Last Modified: Tue, 12 Mar 2019 16:39:21 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f76a5012a9a27a6a126a226ccb8010eebb4cd179f381e629cf7f5f954be4eee`  
		Last Modified: Tue, 12 Mar 2019 16:39:21 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0691c007ea6194b4b0437eeb849836370a984ec7d38e85c88d1c4740b1bea258`  
		Last Modified: Tue, 12 Mar 2019 16:39:21 GMT  
		Size: 2.6 KB (2641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b41cdca2e6c12e34abd393c3016991e03bb86801044e242bff49bf31d7b11d5`  
		Last Modified: Tue, 12 Mar 2019 16:39:21 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b41cdca2e6c12e34abd393c3016991e03bb86801044e242bff49bf31d7b11d5`  
		Last Modified: Tue, 12 Mar 2019 16:39:21 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ea01d5d41dfc435a39f3c95c17d1cb4e30e8a58d0970f09efed62bb16331fc`  
		Last Modified: Tue, 12 Mar 2019 16:39:21 GMT  
		Size: 1.0 MB (1002052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
