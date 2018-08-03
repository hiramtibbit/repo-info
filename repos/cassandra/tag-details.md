<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `cassandra`

-	[`cassandra:2`](#cassandra2)
-	[`cassandra:2.1`](#cassandra21)
-	[`cassandra:2.1.20`](#cassandra2120)
-	[`cassandra:2.2`](#cassandra22)
-	[`cassandra:2.2.13`](#cassandra2213)
-	[`cassandra:3`](#cassandra3)
-	[`cassandra:3.0`](#cassandra30)
-	[`cassandra:3.0.17`](#cassandra3017)
-	[`cassandra:3.11`](#cassandra311)
-	[`cassandra:3.11.3`](#cassandra3113)
-	[`cassandra:latest`](#cassandralatest)

## `cassandra:2`

```console
$ docker pull cassandra@sha256:dc9c6e085dbd363023ca17484754e4e51c975e6b4478a541bdde10c3ce664cdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `cassandra:2` - linux; amd64

```console
$ docker pull cassandra@sha256:f485ed7bb83fd4c70081c3d4fdc7dd9e899dbebb38008ca746d3b582aea01d41
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138523498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c7f8ea1219dccb95da53a7e333285570b5de77b0b7bbc3a5cc75ce2821a5369`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 01:06:24 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 01:06:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 01:06:53 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 16:21:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 31 Jul 2018 16:21:57 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 31 Jul 2018 16:22:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 02 Aug 2018 22:19:54 GMT
ENV CASSANDRA_VERSION=2.2.13
# Thu, 02 Aug 2018 22:21:46 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 02 Aug 2018 22:21:47 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 02 Aug 2018 22:21:48 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 02 Aug 2018 22:21:48 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Thu, 02 Aug 2018 22:21:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 02 Aug 2018 22:22:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Aug 2018 22:22:05 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 02 Aug 2018 22:22:06 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Aug 2018 22:22:06 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 02 Aug 2018 22:22:06 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:540086296e4fda1e4e83d7071d55381266bfe7630a3385ca5449189fa025b774`  
		Last Modified: Tue, 17 Jul 2018 01:15:08 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b92f96c80f98abadf4d016e88624921423b00b176a949423e4f57d5b0b727e`  
		Last Modified: Tue, 17 Jul 2018 01:15:08 GMT  
		Size: 815.3 KB (815275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f79a606077f3a0a4540e8855336ffaf62f38256e129d43cd8335f62fd664f`  
		Last Modified: Tue, 31 Jul 2018 16:29:43 GMT  
		Size: 984.0 KB (984021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1337c5ba137034339571ebd8c7f4140357e1b4f4ab58f10e484d80cdcf216a`  
		Last Modified: Tue, 31 Jul 2018 16:29:43 GMT  
		Size: 18.2 KB (18229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9893d80dc472d818ff34bc3c8107cffa4012d65dd834ef2e362a2d0d3e93da`  
		Last Modified: Thu, 02 Aug 2018 22:26:53 GMT  
		Size: 106.6 MB (106555224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed272a908e6eaec43e802d669afca0b407b090c8c6a3a97ca19260279839dbea`  
		Last Modified: Thu, 02 Aug 2018 22:26:28 GMT  
		Size: 4.9 KB (4884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e79e9d8a4a6946ed5aa635cea3faba105c815b1ac7ba6491533fec06ee3861`  
		Last Modified: Thu, 02 Aug 2018 22:26:29 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5478b51e6175aa29806626fe93b022d3729edf7cdfc9cc40be8c3cbef23b1097`  
		Last Modified: Thu, 02 Aug 2018 22:26:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a19135340582bd8209fa79bbe0f6bb68b7ba625ea2e67bd6091a2e4a1c49f31`  
		Last Modified: Thu, 02 Aug 2018 22:26:28 GMT  
		Size: 22.5 KB (22489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2` - linux; 386

```console
$ docker pull cassandra@sha256:054e53ea679ad408e6fe5d5b852ff177291b0646f0cae8d1a7705a11ed41b5aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.9 MB (149853171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0ff7cf6a3f95c6bb034f77a4bc70f0a8e1c7be28935b6ff8424d9a5af38754b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:46:35 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 14:47:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:47:22 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 10:40:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 01 Aug 2018 10:40:06 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 01 Aug 2018 10:40:22 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Aug 2018 10:39:26 GMT
ENV CASSANDRA_VERSION=2.2.13
# Fri, 03 Aug 2018 10:41:45 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Aug 2018 10:41:55 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Aug 2018 10:41:56 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Aug 2018 10:41:56 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Fri, 03 Aug 2018 10:41:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 03 Aug 2018 10:41:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 10:41:58 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Aug 2018 10:41:58 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Aug 2018 10:41:59 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Aug 2018 10:42:13 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9d445d9372e548a92e36825db3aa4161089ba302d285549d07c6bd2dbe70c0`  
		Last Modified: Tue, 17 Jul 2018 14:57:03 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be2e8bfb52ba7affcdd1c63cf7cf82cf1f3327eb3f2b9073f62db73c1d8d6f4`  
		Last Modified: Tue, 17 Jul 2018 14:57:03 GMT  
		Size: 844.5 KB (844465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eddf69faa756aa54be91e6e94095e08c1254006de41b8dc8a46de4c53e26af7`  
		Last Modified: Wed, 01 Aug 2018 10:49:15 GMT  
		Size: 962.9 KB (962909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a8620278604a915305daec8a8931360f00a462567facb9d2fea6a8e1d54371`  
		Last Modified: Wed, 01 Aug 2018 10:49:14 GMT  
		Size: 18.2 KB (18233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a66247627d41fc3c18d87a7438b21549e2cd74ad2236c5f7ad2d892ecb56a3`  
		Last Modified: Fri, 03 Aug 2018 10:46:51 GMT  
		Size: 117.7 MB (117726981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:294afe92f64dc42ef3d5be8dedf2ab235afff9030b820e8a5664d3297cb243aa`  
		Last Modified: Fri, 03 Aug 2018 10:46:17 GMT  
		Size: 4.9 KB (4884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909f78314c934807279ff82f25723ce6280cf193708a542bbb7e380cdd8b6166`  
		Last Modified: Fri, 03 Aug 2018 10:46:17 GMT  
		Size: 1.0 KB (1001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f0957c3abfd05739d908700a6a06570130409e28334cf3174a8c4fc91badbc`  
		Last Modified: Fri, 03 Aug 2018 10:46:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:641ad811494469e7cf3330525b1d2b2313d33fed0a832a392954805494bc3765`  
		Last Modified: Fri, 03 Aug 2018 10:46:17 GMT  
		Size: 22.5 KB (22487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1`

```console
$ docker pull cassandra@sha256:7088647055fc820479a8b3cbce932f73d8762a3560b64bb549bf86b37510cb7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `cassandra:2.1` - linux; amd64

```console
$ docker pull cassandra@sha256:44b10a18a5b6943ac29ad7d502b5a9eb955d065ebf67b49b27bdafb9d9725854
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134287466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c189fbea35efd32ff5696e5ea021b76777a73a0109be46af3e67c5072beecdc7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 01:06:24 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 01:06:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 01:06:53 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 16:21:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 31 Jul 2018 16:21:57 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 31 Jul 2018 16:22:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 31 Jul 2018 16:22:23 GMT
ENV CASSANDRA_VERSION=2.1.20
# Tue, 31 Jul 2018 16:24:08 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 31 Jul 2018 16:24:08 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 31 Jul 2018 16:24:09 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 31 Jul 2018 16:24:10 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Tue, 31 Jul 2018 16:24:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 31 Jul 2018 16:24:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 16:24:12 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 31 Jul 2018 16:24:12 GMT
VOLUME [/var/lib/cassandra]
# Tue, 31 Jul 2018 16:24:13 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 31 Jul 2018 16:24:13 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:540086296e4fda1e4e83d7071d55381266bfe7630a3385ca5449189fa025b774`  
		Last Modified: Tue, 17 Jul 2018 01:15:08 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b92f96c80f98abadf4d016e88624921423b00b176a949423e4f57d5b0b727e`  
		Last Modified: Tue, 17 Jul 2018 01:15:08 GMT  
		Size: 815.3 KB (815275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f79a606077f3a0a4540e8855336ffaf62f38256e129d43cd8335f62fd664f`  
		Last Modified: Tue, 31 Jul 2018 16:29:43 GMT  
		Size: 984.0 KB (984021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1337c5ba137034339571ebd8c7f4140357e1b4f4ab58f10e484d80cdcf216a`  
		Last Modified: Tue, 31 Jul 2018 16:29:43 GMT  
		Size: 18.2 KB (18229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2a220237092c084523432ac86735bfb666f560229a863fec0d5194655388dd`  
		Last Modified: Tue, 31 Jul 2018 16:30:04 GMT  
		Size: 102.3 MB (102321341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbfc327ed4d952396384ca5777cb3939f6966c6f4f83757a4fcc2dd3e532b543`  
		Last Modified: Tue, 31 Jul 2018 16:29:40 GMT  
		Size: 4.7 KB (4669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88bcb3d712bc723e6102a8689d2cbd23e5bd3f79534ca379c7a11ef9d3e7cf53`  
		Last Modified: Tue, 31 Jul 2018 16:29:40 GMT  
		Size: 1.0 KB (1002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b30ec434d58b3b7a5a26e60dc9de2c72b26a123932029cce6e4014b9ccada858`  
		Last Modified: Tue, 31 Jul 2018 16:29:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e5e5a65a438c1eef6345ce066765ddda4c9957965acbb265b604497b2141d40`  
		Last Modified: Tue, 31 Jul 2018 16:29:40 GMT  
		Size: 20.6 KB (20553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.1` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:b7911d0047ff9c1dbbd8423ece1590e7321f14a304c1e591a9ace6a9e3e56a03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.1 MB (121110032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce94e065efe8de9db896e9246206e4976f75c05d37377df70ed181181f2d7da5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Thu, 24 May 2018 08:39:40 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Thu, 24 May 2018 08:40:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 24 May 2018 08:40:08 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 May 2018 08:41:07 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 24 May 2018 08:41:08 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Thu, 24 May 2018 08:41:13 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 24 May 2018 08:41:17 GMT
ENV CASSANDRA_VERSION=2.1.20
# Thu, 24 May 2018 08:47:24 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 24 May 2018 08:47:25 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 24 May 2018 08:47:28 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 24 May 2018 08:47:29 GMT
COPY file:bb2a95b1b37d2dc1935688f875c1dd3e0d1524f08c9b049361424bcaaf27b1b2 in /usr/local/bin/ 
# Thu, 24 May 2018 08:47:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 24 May 2018 08:47:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 May 2018 08:47:37 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 24 May 2018 08:47:38 GMT
VOLUME [/var/lib/cassandra]
# Thu, 24 May 2018 08:47:39 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 24 May 2018 08:47:42 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0c75e45e29cdf6e2afd28e8a2180586d46f65c4cc3fc2e5c5e2e1c77d2bd02`  
		Last Modified: Thu, 24 May 2018 08:48:32 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11f09ae8e9793553b563e282e375b4412a7682b67b60522a079963729eb0b31`  
		Last Modified: Thu, 24 May 2018 08:48:31 GMT  
		Size: 945.9 KB (945944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac20e679ac7f32c359e43685bd9d3268b53e9f739c3784278577ec32f0ddffc`  
		Last Modified: Thu, 24 May 2018 08:48:30 GMT  
		Size: 951.2 KB (951217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82881451ed29295e061cb2a5a5a91d7d3c0892a191c54e5e848eba83220868fb`  
		Last Modified: Thu, 24 May 2018 08:48:31 GMT  
		Size: 18.2 KB (18233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb673ed31b864733cbef39c7499d35de6b9dbc67ba8a072bba6aa5e4667dd72`  
		Last Modified: Thu, 24 May 2018 08:48:56 GMT  
		Size: 91.7 MB (91671585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8186c6ec1c2375a1e9ba9716045cdeafb15bf1e1ead4d88b82ea846927643a`  
		Last Modified: Thu, 24 May 2018 08:48:28 GMT  
		Size: 4.7 KB (4673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f21980adc832225e9d93a74174d77dfb3f545ed92bc5fa9a1d3371ea16b856a`  
		Last Modified: Thu, 24 May 2018 08:48:28 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe75e767bf4c3c51d2f45dc552d2de0ced632cb4284cbd7db581030786c36548`  
		Last Modified: Thu, 24 May 2018 08:48:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c4cc4e5280550128ca0de7238028b17081d585482c69d6b4ec55b7fdf9ec8d`  
		Last Modified: Thu, 24 May 2018 08:48:28 GMT  
		Size: 20.6 KB (20561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.1` - linux; 386

```console
$ docker pull cassandra@sha256:7970d0fff07225612dcbb7d2a37e73975ce478daae1016c06d137aca36d52937
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145608597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe6d8558e168a5305722e9b065188d4e9ae40bcd064d07ef212b0c352b6cf6a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:46:35 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 14:47:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:47:22 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 10:40:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 01 Aug 2018 10:40:06 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 01 Aug 2018 10:40:22 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 01 Aug 2018 10:40:22 GMT
ENV CASSANDRA_VERSION=2.1.20
# Wed, 01 Aug 2018 10:42:34 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 01 Aug 2018 10:42:34 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 01 Aug 2018 10:42:35 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Wed, 01 Aug 2018 10:42:35 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Wed, 01 Aug 2018 10:42:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Wed, 01 Aug 2018 10:42:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Aug 2018 10:42:37 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 01 Aug 2018 10:42:38 GMT
VOLUME [/var/lib/cassandra]
# Wed, 01 Aug 2018 10:42:38 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Wed, 01 Aug 2018 10:42:38 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9d445d9372e548a92e36825db3aa4161089ba302d285549d07c6bd2dbe70c0`  
		Last Modified: Tue, 17 Jul 2018 14:57:03 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be2e8bfb52ba7affcdd1c63cf7cf82cf1f3327eb3f2b9073f62db73c1d8d6f4`  
		Last Modified: Tue, 17 Jul 2018 14:57:03 GMT  
		Size: 844.5 KB (844465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eddf69faa756aa54be91e6e94095e08c1254006de41b8dc8a46de4c53e26af7`  
		Last Modified: Wed, 01 Aug 2018 10:49:15 GMT  
		Size: 962.9 KB (962909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a8620278604a915305daec8a8931360f00a462567facb9d2fea6a8e1d54371`  
		Last Modified: Wed, 01 Aug 2018 10:49:14 GMT  
		Size: 18.2 KB (18233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a414e7f622314c4236c49cf31ea548d426900c3c05b54d9bbb2b0c0fd1b97f91`  
		Last Modified: Wed, 01 Aug 2018 10:49:45 GMT  
		Size: 113.5 MB (113484554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a534c27c8b8fcbdbd4b5629a8b0a0b9f21c26df70cb1f4f172c64437e7c355aa`  
		Last Modified: Wed, 01 Aug 2018 10:49:12 GMT  
		Size: 4.7 KB (4670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5932d46b6a0394a0ce0d83df9535289136d27e65499e8627f76e62a0e3d85446`  
		Last Modified: Wed, 01 Aug 2018 10:49:12 GMT  
		Size: 1.0 KB (1002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278be590a40e9ce00ee4f782d921e16067d515998517f404b4d1bf0bb2d5cbac`  
		Last Modified: Wed, 01 Aug 2018 10:49:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a938f046476a2649aa912e0a516df643789db61e1c56035ead8a16a40930a4b5`  
		Last Modified: Wed, 01 Aug 2018 10:49:12 GMT  
		Size: 20.6 KB (20553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1.20`

```console
$ docker pull cassandra@sha256:7088647055fc820479a8b3cbce932f73d8762a3560b64bb549bf86b37510cb7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `cassandra:2.1.20` - linux; amd64

```console
$ docker pull cassandra@sha256:44b10a18a5b6943ac29ad7d502b5a9eb955d065ebf67b49b27bdafb9d9725854
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134287466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c189fbea35efd32ff5696e5ea021b76777a73a0109be46af3e67c5072beecdc7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 01:06:24 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 01:06:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 01:06:53 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 16:21:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 31 Jul 2018 16:21:57 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 31 Jul 2018 16:22:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 31 Jul 2018 16:22:23 GMT
ENV CASSANDRA_VERSION=2.1.20
# Tue, 31 Jul 2018 16:24:08 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 31 Jul 2018 16:24:08 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 31 Jul 2018 16:24:09 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 31 Jul 2018 16:24:10 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Tue, 31 Jul 2018 16:24:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 31 Jul 2018 16:24:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 16:24:12 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 31 Jul 2018 16:24:12 GMT
VOLUME [/var/lib/cassandra]
# Tue, 31 Jul 2018 16:24:13 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 31 Jul 2018 16:24:13 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:540086296e4fda1e4e83d7071d55381266bfe7630a3385ca5449189fa025b774`  
		Last Modified: Tue, 17 Jul 2018 01:15:08 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b92f96c80f98abadf4d016e88624921423b00b176a949423e4f57d5b0b727e`  
		Last Modified: Tue, 17 Jul 2018 01:15:08 GMT  
		Size: 815.3 KB (815275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f79a606077f3a0a4540e8855336ffaf62f38256e129d43cd8335f62fd664f`  
		Last Modified: Tue, 31 Jul 2018 16:29:43 GMT  
		Size: 984.0 KB (984021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1337c5ba137034339571ebd8c7f4140357e1b4f4ab58f10e484d80cdcf216a`  
		Last Modified: Tue, 31 Jul 2018 16:29:43 GMT  
		Size: 18.2 KB (18229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2a220237092c084523432ac86735bfb666f560229a863fec0d5194655388dd`  
		Last Modified: Tue, 31 Jul 2018 16:30:04 GMT  
		Size: 102.3 MB (102321341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbfc327ed4d952396384ca5777cb3939f6966c6f4f83757a4fcc2dd3e532b543`  
		Last Modified: Tue, 31 Jul 2018 16:29:40 GMT  
		Size: 4.7 KB (4669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88bcb3d712bc723e6102a8689d2cbd23e5bd3f79534ca379c7a11ef9d3e7cf53`  
		Last Modified: Tue, 31 Jul 2018 16:29:40 GMT  
		Size: 1.0 KB (1002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b30ec434d58b3b7a5a26e60dc9de2c72b26a123932029cce6e4014b9ccada858`  
		Last Modified: Tue, 31 Jul 2018 16:29:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e5e5a65a438c1eef6345ce066765ddda4c9957965acbb265b604497b2141d40`  
		Last Modified: Tue, 31 Jul 2018 16:29:40 GMT  
		Size: 20.6 KB (20553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.1.20` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:b7911d0047ff9c1dbbd8423ece1590e7321f14a304c1e591a9ace6a9e3e56a03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.1 MB (121110032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce94e065efe8de9db896e9246206e4976f75c05d37377df70ed181181f2d7da5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Thu, 24 May 2018 08:39:40 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Thu, 24 May 2018 08:40:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 24 May 2018 08:40:08 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 May 2018 08:41:07 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 24 May 2018 08:41:08 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Thu, 24 May 2018 08:41:13 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 24 May 2018 08:41:17 GMT
ENV CASSANDRA_VERSION=2.1.20
# Thu, 24 May 2018 08:47:24 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 24 May 2018 08:47:25 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 24 May 2018 08:47:28 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 24 May 2018 08:47:29 GMT
COPY file:bb2a95b1b37d2dc1935688f875c1dd3e0d1524f08c9b049361424bcaaf27b1b2 in /usr/local/bin/ 
# Thu, 24 May 2018 08:47:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 24 May 2018 08:47:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 May 2018 08:47:37 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 24 May 2018 08:47:38 GMT
VOLUME [/var/lib/cassandra]
# Thu, 24 May 2018 08:47:39 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 24 May 2018 08:47:42 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0c75e45e29cdf6e2afd28e8a2180586d46f65c4cc3fc2e5c5e2e1c77d2bd02`  
		Last Modified: Thu, 24 May 2018 08:48:32 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11f09ae8e9793553b563e282e375b4412a7682b67b60522a079963729eb0b31`  
		Last Modified: Thu, 24 May 2018 08:48:31 GMT  
		Size: 945.9 KB (945944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac20e679ac7f32c359e43685bd9d3268b53e9f739c3784278577ec32f0ddffc`  
		Last Modified: Thu, 24 May 2018 08:48:30 GMT  
		Size: 951.2 KB (951217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82881451ed29295e061cb2a5a5a91d7d3c0892a191c54e5e848eba83220868fb`  
		Last Modified: Thu, 24 May 2018 08:48:31 GMT  
		Size: 18.2 KB (18233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb673ed31b864733cbef39c7499d35de6b9dbc67ba8a072bba6aa5e4667dd72`  
		Last Modified: Thu, 24 May 2018 08:48:56 GMT  
		Size: 91.7 MB (91671585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8186c6ec1c2375a1e9ba9716045cdeafb15bf1e1ead4d88b82ea846927643a`  
		Last Modified: Thu, 24 May 2018 08:48:28 GMT  
		Size: 4.7 KB (4673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f21980adc832225e9d93a74174d77dfb3f545ed92bc5fa9a1d3371ea16b856a`  
		Last Modified: Thu, 24 May 2018 08:48:28 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe75e767bf4c3c51d2f45dc552d2de0ced632cb4284cbd7db581030786c36548`  
		Last Modified: Thu, 24 May 2018 08:48:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c4cc4e5280550128ca0de7238028b17081d585482c69d6b4ec55b7fdf9ec8d`  
		Last Modified: Thu, 24 May 2018 08:48:28 GMT  
		Size: 20.6 KB (20561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.1.20` - linux; 386

```console
$ docker pull cassandra@sha256:7970d0fff07225612dcbb7d2a37e73975ce478daae1016c06d137aca36d52937
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145608597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe6d8558e168a5305722e9b065188d4e9ae40bcd064d07ef212b0c352b6cf6a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:46:35 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 14:47:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:47:22 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 10:40:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 01 Aug 2018 10:40:06 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 01 Aug 2018 10:40:22 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 01 Aug 2018 10:40:22 GMT
ENV CASSANDRA_VERSION=2.1.20
# Wed, 01 Aug 2018 10:42:34 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 01 Aug 2018 10:42:34 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 01 Aug 2018 10:42:35 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Wed, 01 Aug 2018 10:42:35 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Wed, 01 Aug 2018 10:42:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Wed, 01 Aug 2018 10:42:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Aug 2018 10:42:37 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 01 Aug 2018 10:42:38 GMT
VOLUME [/var/lib/cassandra]
# Wed, 01 Aug 2018 10:42:38 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Wed, 01 Aug 2018 10:42:38 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9d445d9372e548a92e36825db3aa4161089ba302d285549d07c6bd2dbe70c0`  
		Last Modified: Tue, 17 Jul 2018 14:57:03 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be2e8bfb52ba7affcdd1c63cf7cf82cf1f3327eb3f2b9073f62db73c1d8d6f4`  
		Last Modified: Tue, 17 Jul 2018 14:57:03 GMT  
		Size: 844.5 KB (844465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eddf69faa756aa54be91e6e94095e08c1254006de41b8dc8a46de4c53e26af7`  
		Last Modified: Wed, 01 Aug 2018 10:49:15 GMT  
		Size: 962.9 KB (962909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a8620278604a915305daec8a8931360f00a462567facb9d2fea6a8e1d54371`  
		Last Modified: Wed, 01 Aug 2018 10:49:14 GMT  
		Size: 18.2 KB (18233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a414e7f622314c4236c49cf31ea548d426900c3c05b54d9bbb2b0c0fd1b97f91`  
		Last Modified: Wed, 01 Aug 2018 10:49:45 GMT  
		Size: 113.5 MB (113484554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a534c27c8b8fcbdbd4b5629a8b0a0b9f21c26df70cb1f4f172c64437e7c355aa`  
		Last Modified: Wed, 01 Aug 2018 10:49:12 GMT  
		Size: 4.7 KB (4670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5932d46b6a0394a0ce0d83df9535289136d27e65499e8627f76e62a0e3d85446`  
		Last Modified: Wed, 01 Aug 2018 10:49:12 GMT  
		Size: 1.0 KB (1002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278be590a40e9ce00ee4f782d921e16067d515998517f404b4d1bf0bb2d5cbac`  
		Last Modified: Wed, 01 Aug 2018 10:49:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a938f046476a2649aa912e0a516df643789db61e1c56035ead8a16a40930a4b5`  
		Last Modified: Wed, 01 Aug 2018 10:49:12 GMT  
		Size: 20.6 KB (20553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2`

```console
$ docker pull cassandra@sha256:dc9c6e085dbd363023ca17484754e4e51c975e6b4478a541bdde10c3ce664cdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `cassandra:2.2` - linux; amd64

```console
$ docker pull cassandra@sha256:f485ed7bb83fd4c70081c3d4fdc7dd9e899dbebb38008ca746d3b582aea01d41
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138523498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c7f8ea1219dccb95da53a7e333285570b5de77b0b7bbc3a5cc75ce2821a5369`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 01:06:24 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 01:06:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 01:06:53 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 16:21:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 31 Jul 2018 16:21:57 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 31 Jul 2018 16:22:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 02 Aug 2018 22:19:54 GMT
ENV CASSANDRA_VERSION=2.2.13
# Thu, 02 Aug 2018 22:21:46 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 02 Aug 2018 22:21:47 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 02 Aug 2018 22:21:48 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 02 Aug 2018 22:21:48 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Thu, 02 Aug 2018 22:21:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 02 Aug 2018 22:22:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Aug 2018 22:22:05 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 02 Aug 2018 22:22:06 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Aug 2018 22:22:06 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 02 Aug 2018 22:22:06 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:540086296e4fda1e4e83d7071d55381266bfe7630a3385ca5449189fa025b774`  
		Last Modified: Tue, 17 Jul 2018 01:15:08 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b92f96c80f98abadf4d016e88624921423b00b176a949423e4f57d5b0b727e`  
		Last Modified: Tue, 17 Jul 2018 01:15:08 GMT  
		Size: 815.3 KB (815275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f79a606077f3a0a4540e8855336ffaf62f38256e129d43cd8335f62fd664f`  
		Last Modified: Tue, 31 Jul 2018 16:29:43 GMT  
		Size: 984.0 KB (984021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1337c5ba137034339571ebd8c7f4140357e1b4f4ab58f10e484d80cdcf216a`  
		Last Modified: Tue, 31 Jul 2018 16:29:43 GMT  
		Size: 18.2 KB (18229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9893d80dc472d818ff34bc3c8107cffa4012d65dd834ef2e362a2d0d3e93da`  
		Last Modified: Thu, 02 Aug 2018 22:26:53 GMT  
		Size: 106.6 MB (106555224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed272a908e6eaec43e802d669afca0b407b090c8c6a3a97ca19260279839dbea`  
		Last Modified: Thu, 02 Aug 2018 22:26:28 GMT  
		Size: 4.9 KB (4884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e79e9d8a4a6946ed5aa635cea3faba105c815b1ac7ba6491533fec06ee3861`  
		Last Modified: Thu, 02 Aug 2018 22:26:29 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5478b51e6175aa29806626fe93b022d3729edf7cdfc9cc40be8c3cbef23b1097`  
		Last Modified: Thu, 02 Aug 2018 22:26:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a19135340582bd8209fa79bbe0f6bb68b7ba625ea2e67bd6091a2e4a1c49f31`  
		Last Modified: Thu, 02 Aug 2018 22:26:28 GMT  
		Size: 22.5 KB (22489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.2` - linux; 386

```console
$ docker pull cassandra@sha256:054e53ea679ad408e6fe5d5b852ff177291b0646f0cae8d1a7705a11ed41b5aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.9 MB (149853171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0ff7cf6a3f95c6bb034f77a4bc70f0a8e1c7be28935b6ff8424d9a5af38754b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:46:35 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 14:47:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:47:22 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 10:40:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 01 Aug 2018 10:40:06 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 01 Aug 2018 10:40:22 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Aug 2018 10:39:26 GMT
ENV CASSANDRA_VERSION=2.2.13
# Fri, 03 Aug 2018 10:41:45 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Aug 2018 10:41:55 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Aug 2018 10:41:56 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Aug 2018 10:41:56 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Fri, 03 Aug 2018 10:41:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 03 Aug 2018 10:41:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 10:41:58 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Aug 2018 10:41:58 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Aug 2018 10:41:59 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Aug 2018 10:42:13 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9d445d9372e548a92e36825db3aa4161089ba302d285549d07c6bd2dbe70c0`  
		Last Modified: Tue, 17 Jul 2018 14:57:03 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be2e8bfb52ba7affcdd1c63cf7cf82cf1f3327eb3f2b9073f62db73c1d8d6f4`  
		Last Modified: Tue, 17 Jul 2018 14:57:03 GMT  
		Size: 844.5 KB (844465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eddf69faa756aa54be91e6e94095e08c1254006de41b8dc8a46de4c53e26af7`  
		Last Modified: Wed, 01 Aug 2018 10:49:15 GMT  
		Size: 962.9 KB (962909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a8620278604a915305daec8a8931360f00a462567facb9d2fea6a8e1d54371`  
		Last Modified: Wed, 01 Aug 2018 10:49:14 GMT  
		Size: 18.2 KB (18233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a66247627d41fc3c18d87a7438b21549e2cd74ad2236c5f7ad2d892ecb56a3`  
		Last Modified: Fri, 03 Aug 2018 10:46:51 GMT  
		Size: 117.7 MB (117726981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:294afe92f64dc42ef3d5be8dedf2ab235afff9030b820e8a5664d3297cb243aa`  
		Last Modified: Fri, 03 Aug 2018 10:46:17 GMT  
		Size: 4.9 KB (4884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909f78314c934807279ff82f25723ce6280cf193708a542bbb7e380cdd8b6166`  
		Last Modified: Fri, 03 Aug 2018 10:46:17 GMT  
		Size: 1.0 KB (1001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f0957c3abfd05739d908700a6a06570130409e28334cf3174a8c4fc91badbc`  
		Last Modified: Fri, 03 Aug 2018 10:46:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:641ad811494469e7cf3330525b1d2b2313d33fed0a832a392954805494bc3765`  
		Last Modified: Fri, 03 Aug 2018 10:46:17 GMT  
		Size: 22.5 KB (22487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2.13`

```console
$ docker pull cassandra@sha256:dc9c6e085dbd363023ca17484754e4e51c975e6b4478a541bdde10c3ce664cdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `cassandra:2.2.13` - linux; amd64

```console
$ docker pull cassandra@sha256:f485ed7bb83fd4c70081c3d4fdc7dd9e899dbebb38008ca746d3b582aea01d41
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138523498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c7f8ea1219dccb95da53a7e333285570b5de77b0b7bbc3a5cc75ce2821a5369`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 01:06:24 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 01:06:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 01:06:53 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 16:21:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 31 Jul 2018 16:21:57 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 31 Jul 2018 16:22:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 02 Aug 2018 22:19:54 GMT
ENV CASSANDRA_VERSION=2.2.13
# Thu, 02 Aug 2018 22:21:46 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 02 Aug 2018 22:21:47 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 02 Aug 2018 22:21:48 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 02 Aug 2018 22:21:48 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Thu, 02 Aug 2018 22:21:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 02 Aug 2018 22:22:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Aug 2018 22:22:05 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 02 Aug 2018 22:22:06 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Aug 2018 22:22:06 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 02 Aug 2018 22:22:06 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:540086296e4fda1e4e83d7071d55381266bfe7630a3385ca5449189fa025b774`  
		Last Modified: Tue, 17 Jul 2018 01:15:08 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b92f96c80f98abadf4d016e88624921423b00b176a949423e4f57d5b0b727e`  
		Last Modified: Tue, 17 Jul 2018 01:15:08 GMT  
		Size: 815.3 KB (815275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917f79a606077f3a0a4540e8855336ffaf62f38256e129d43cd8335f62fd664f`  
		Last Modified: Tue, 31 Jul 2018 16:29:43 GMT  
		Size: 984.0 KB (984021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1337c5ba137034339571ebd8c7f4140357e1b4f4ab58f10e484d80cdcf216a`  
		Last Modified: Tue, 31 Jul 2018 16:29:43 GMT  
		Size: 18.2 KB (18229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9893d80dc472d818ff34bc3c8107cffa4012d65dd834ef2e362a2d0d3e93da`  
		Last Modified: Thu, 02 Aug 2018 22:26:53 GMT  
		Size: 106.6 MB (106555224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed272a908e6eaec43e802d669afca0b407b090c8c6a3a97ca19260279839dbea`  
		Last Modified: Thu, 02 Aug 2018 22:26:28 GMT  
		Size: 4.9 KB (4884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e79e9d8a4a6946ed5aa635cea3faba105c815b1ac7ba6491533fec06ee3861`  
		Last Modified: Thu, 02 Aug 2018 22:26:29 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5478b51e6175aa29806626fe93b022d3729edf7cdfc9cc40be8c3cbef23b1097`  
		Last Modified: Thu, 02 Aug 2018 22:26:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a19135340582bd8209fa79bbe0f6bb68b7ba625ea2e67bd6091a2e4a1c49f31`  
		Last Modified: Thu, 02 Aug 2018 22:26:28 GMT  
		Size: 22.5 KB (22489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.2.13` - linux; 386

```console
$ docker pull cassandra@sha256:054e53ea679ad408e6fe5d5b852ff177291b0646f0cae8d1a7705a11ed41b5aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.9 MB (149853171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0ff7cf6a3f95c6bb034f77a4bc70f0a8e1c7be28935b6ff8424d9a5af38754b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:46:35 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 14:47:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:47:22 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 10:40:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 01 Aug 2018 10:40:06 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 01 Aug 2018 10:40:22 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Aug 2018 10:39:26 GMT
ENV CASSANDRA_VERSION=2.2.13
# Fri, 03 Aug 2018 10:41:45 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Aug 2018 10:41:55 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Aug 2018 10:41:56 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Aug 2018 10:41:56 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Fri, 03 Aug 2018 10:41:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 03 Aug 2018 10:41:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 10:41:58 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Aug 2018 10:41:58 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Aug 2018 10:41:59 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Aug 2018 10:42:13 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9d445d9372e548a92e36825db3aa4161089ba302d285549d07c6bd2dbe70c0`  
		Last Modified: Tue, 17 Jul 2018 14:57:03 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be2e8bfb52ba7affcdd1c63cf7cf82cf1f3327eb3f2b9073f62db73c1d8d6f4`  
		Last Modified: Tue, 17 Jul 2018 14:57:03 GMT  
		Size: 844.5 KB (844465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eddf69faa756aa54be91e6e94095e08c1254006de41b8dc8a46de4c53e26af7`  
		Last Modified: Wed, 01 Aug 2018 10:49:15 GMT  
		Size: 962.9 KB (962909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a8620278604a915305daec8a8931360f00a462567facb9d2fea6a8e1d54371`  
		Last Modified: Wed, 01 Aug 2018 10:49:14 GMT  
		Size: 18.2 KB (18233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a66247627d41fc3c18d87a7438b21549e2cd74ad2236c5f7ad2d892ecb56a3`  
		Last Modified: Fri, 03 Aug 2018 10:46:51 GMT  
		Size: 117.7 MB (117726981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:294afe92f64dc42ef3d5be8dedf2ab235afff9030b820e8a5664d3297cb243aa`  
		Last Modified: Fri, 03 Aug 2018 10:46:17 GMT  
		Size: 4.9 KB (4884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909f78314c934807279ff82f25723ce6280cf193708a542bbb7e380cdd8b6166`  
		Last Modified: Fri, 03 Aug 2018 10:46:17 GMT  
		Size: 1.0 KB (1001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f0957c3abfd05739d908700a6a06570130409e28334cf3174a8c4fc91badbc`  
		Last Modified: Fri, 03 Aug 2018 10:46:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:641ad811494469e7cf3330525b1d2b2313d33fed0a832a392954805494bc3765`  
		Last Modified: Fri, 03 Aug 2018 10:46:17 GMT  
		Size: 22.5 KB (22487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3`

```console
$ docker pull cassandra@sha256:17205a96d799a09d91a47b49b4bf98f3f28992f44077d5e6edab829e4655ef02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3` - linux; amd64

```console
$ docker pull cassandra@sha256:e958f7b30800fb44fe97573c46b973b2542228cc52edbeaffa944398469a3080
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132501846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d05bb5bbfe7d3c6253ccae766d6fa257b0ee152a901a819832a2712b75a7336d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 01:11:51 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 01:12:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 01:12:04 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 16:27:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 31 Jul 2018 16:27:01 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 31 Jul 2018 16:27:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 02 Aug 2018 22:24:53 GMT
ENV CASSANDRA_VERSION=3.11.3
# Thu, 02 Aug 2018 22:25:31 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 02 Aug 2018 22:25:32 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 02 Aug 2018 22:25:33 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 02 Aug 2018 22:25:33 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Thu, 02 Aug 2018 22:25:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 02 Aug 2018 22:25:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Aug 2018 22:25:35 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 02 Aug 2018 22:25:50 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Aug 2018 22:25:50 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 02 Aug 2018 22:25:50 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2c677ef3543446ad0c056d92b380a39a31906d0d91c3ebbe89d71504bd5c2d`  
		Last Modified: Tue, 17 Jul 2018 01:17:16 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba7d7818fb87749a6093e772cb9ec38f63debd75dc846a358e4bf3f171c552c`  
		Last Modified: Tue, 17 Jul 2018 01:17:17 GMT  
		Size: 5.7 MB (5673694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233a120980775fc1149946d7d5e9605ca3c06a2cbbe8d83568ad6ca73201188a`  
		Last Modified: Tue, 31 Jul 2018 16:32:26 GMT  
		Size: 957.3 KB (957320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3446f702d0d14bb5e59e6929700dd841ae733c1f7ff1ce8644f57949a0b3620d`  
		Last Modified: Tue, 31 Jul 2018 16:32:26 GMT  
		Size: 18.2 KB (18220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3b739ed5d52d5c6df8a0bc69cca51dce8fb8102df306231bfa88c4a3a69312`  
		Last Modified: Thu, 02 Aug 2018 22:29:56 GMT  
		Size: 103.3 MB (103328694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d104fb5620d79416b04beb3a9948c924ca0d48a7e8524180c516e6320530caa`  
		Last Modified: Thu, 02 Aug 2018 22:29:29 GMT  
		Size: 4.7 KB (4650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458446f55982b1398d260c4c77c0fc3db79774edd9ad0df8d13506f0465bf3a3`  
		Last Modified: Thu, 02 Aug 2018 22:29:29 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d44379168d281166402ad52890e2eb8fd683f9e17c70459ee90fc0a80e9738a`  
		Last Modified: Thu, 02 Aug 2018 22:29:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e191856325d36fe70ae55f32010257c5a3b0931dd8fcebf82a8ec0abf8af3237`  
		Last Modified: Thu, 02 Aug 2018 22:29:29 GMT  
		Size: 30.5 KB (30499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:7200700c9836ca4197ad9e9cab955174294802a480ce278cad38cbb7a128ec8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121761029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cff152d1375028af7100fc70dc398ccedfd1442615b117c2d6963aa3b9c1157e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:33:48 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 14:36:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:36:30 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 08:41:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 01 Aug 2018 08:41:49 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 01 Aug 2018 08:41:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Aug 2018 08:45:54 GMT
ENV CASSANDRA_VERSION=3.11.3
# Fri, 03 Aug 2018 08:48:04 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Aug 2018 08:48:16 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Aug 2018 08:48:17 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Aug 2018 08:48:18 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Fri, 03 Aug 2018 08:48:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 03 Aug 2018 08:48:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 08:48:24 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Aug 2018 08:48:25 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Aug 2018 08:48:25 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Aug 2018 08:48:26 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c289a43b1265ebabd8a2f2bc8f343aefb2fd68eb4ed266fcc4513bf247f3cd`  
		Last Modified: Tue, 17 Jul 2018 14:47:08 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d28c2264ef0e035b98489ec001230d856ada5071607c735375de9ab243f2547`  
		Last Modified: Tue, 17 Jul 2018 14:47:10 GMT  
		Size: 5.1 MB (5144282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276335da3caa9fb05f36a0c4b189ae10a85cbdcac3b76da395f7b171b50ad8e5`  
		Last Modified: Wed, 01 Aug 2018 08:49:25 GMT  
		Size: 925.2 KB (925197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15b855a3168a25fa2579daf622f08cf2663a3ba8390ef75d5949a3b661bd30f`  
		Last Modified: Wed, 01 Aug 2018 08:49:26 GMT  
		Size: 18.2 KB (18220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d365db20b56beac0c250d1ef963fb40af43223d675b26a8557b0be1afbc2dc0d`  
		Last Modified: Fri, 03 Aug 2018 08:50:45 GMT  
		Size: 95.3 MB (95303653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f013960d2be757ce5c7eff4af6a924084f7ef9ee3c2333d1ee8014169f6ef28c`  
		Last Modified: Fri, 03 Aug 2018 08:50:18 GMT  
		Size: 4.7 KB (4653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2725702c83bd4e387a318346acf375a1b0170267537dc632ef5ea2b08ecdfb08`  
		Last Modified: Fri, 03 Aug 2018 08:50:18 GMT  
		Size: 999.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4f4ac2ea994a686f50ce14ec523d2fdf513b7a4f64a254568e81fec4d25cac`  
		Last Modified: Fri, 03 Aug 2018 08:50:18 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9db4e1623dfacd827d3420d4c3b1a6e3618bbec7df811898ad50b3c034222a`  
		Last Modified: Fri, 03 Aug 2018 08:50:18 GMT  
		Size: 30.5 KB (30498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3` - linux; 386

```console
$ docker pull cassandra@sha256:424b474594b665d7bf0fc1f388a00451752e1525e31813c4f83d84e3159aeb52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132584857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e24c83e9622c42aa62c95fef1810ee087d764037c21093c583b563c19d49ad2f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:53:43 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 14:53:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:53:57 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 10:46:07 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 01 Aug 2018 10:46:07 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 01 Aug 2018 10:46:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Aug 2018 10:44:33 GMT
ENV CASSANDRA_VERSION=3.11.3
# Fri, 03 Aug 2018 10:45:18 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Aug 2018 10:45:26 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Aug 2018 10:45:27 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Aug 2018 10:45:27 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Fri, 03 Aug 2018 10:45:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 03 Aug 2018 10:45:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 10:45:30 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Aug 2018 10:45:30 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Aug 2018 10:45:30 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Aug 2018 10:45:31 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ce9f23afae557b39a20baabf52956f80dad36459d70e2b7a6f47c7f131889e`  
		Last Modified: Tue, 17 Jul 2018 14:59:14 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e364edaaf7697ac74a990fa1d78a8dc554c4be5ee83bd13e5deb4f3e90704a8b`  
		Last Modified: Tue, 17 Jul 2018 14:59:13 GMT  
		Size: 6.1 MB (6056819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a69aad184c9455779cfced2e35eb86a64b4bf0804b08ab5f0093c0a664f4a8`  
		Last Modified: Wed, 01 Aug 2018 10:51:57 GMT  
		Size: 937.0 KB (936983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c525536fe81ee090e898f0be448dd42c799152916ee41ab93575868e93ddad`  
		Last Modified: Wed, 01 Aug 2018 10:51:56 GMT  
		Size: 18.2 KB (18221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58699f5d05335f646e8f6d7ee6e71312ec0430f1f7164aa70b9d3e8ddc896983`  
		Last Modified: Fri, 03 Aug 2018 10:49:45 GMT  
		Size: 102.4 MB (102408450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cb49221512f773f2808f116a9b6c7d8abd72a24a384282ca66bc2ae4be47a2`  
		Last Modified: Fri, 03 Aug 2018 10:49:11 GMT  
		Size: 4.7 KB (4650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5aaa8933e5ec20e5cb3b6098075dbae9c2de6d1d6ca2a2c0d2ea17f43a988b6`  
		Last Modified: Fri, 03 Aug 2018 10:49:11 GMT  
		Size: 1.0 KB (1001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b371d4774207c4e270c038cc03ae8981e248e55462760bf4f8a595f469d83cf9`  
		Last Modified: Fri, 03 Aug 2018 10:49:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bf20a8d0da8556b2f1633df94499584ab62d284c8606b89340e7f10386dce6`  
		Last Modified: Fri, 03 Aug 2018 10:49:11 GMT  
		Size: 30.5 KB (30497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3` - linux; ppc64le

```console
$ docker pull cassandra@sha256:2d6ab100703706b32780718f244d8375ade64b8728e91433be3c9358eb2c2261
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.5 MB (125509580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:455dee26194db42512d030f4b1f2eabe6ba8d449ba9f34bc668c22b192945bce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:29 GMT
ADD file:d8fd3ee34d99a5bb7abafecc4f8991a3de0ad779e8fd8f3ebb33a4811ecfd5a5 in / 
# Tue, 17 Jul 2018 08:20:30 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:29:37 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 11:31:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:31:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 08:16:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 01 Aug 2018 08:16:59 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 01 Aug 2018 08:17:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Aug 2018 08:21:16 GMT
ENV CASSANDRA_VERSION=3.11.3
# Fri, 03 Aug 2018 08:24:42 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Aug 2018 08:24:44 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Aug 2018 08:24:46 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Aug 2018 08:24:47 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Fri, 03 Aug 2018 08:24:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 03 Aug 2018 08:24:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 08:24:56 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Aug 2018 08:24:58 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Aug 2018 08:25:04 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Aug 2018 08:25:08 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6dc0c10e32a730b4a6b92aaa59148a751864a834dc8ac1b0032717f378efc701`  
		Last Modified: Tue, 17 Jul 2018 08:26:26 GMT  
		Size: 22.7 MB (22740445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24612f8aa78d896057e5ba24a12ea9a99c929336f7e243f93e9cab6c4f296cbf`  
		Last Modified: Tue, 17 Jul 2018 11:58:26 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9bc040a000567d1b1d6a00833e6d3cfb2de690c9ae9c11c0d2c1e4b62ed53f3`  
		Last Modified: Tue, 17 Jul 2018 11:58:29 GMT  
		Size: 5.5 MB (5537864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e1ab097f763466169e8e1d2abf01c95cf9a286941f91b5be620ad89ec284a8`  
		Last Modified: Wed, 01 Aug 2018 08:24:14 GMT  
		Size: 925.9 KB (925932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a507c08b5d58b0cdc867945a26b2b5d5252d3df989529c48777df3e2c42c1fa`  
		Last Modified: Wed, 01 Aug 2018 08:24:13 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5c885ab8c6af64faddfd14d1259a81869527db8b43c0b74b7696f9e809d9a4`  
		Last Modified: Fri, 03 Aug 2018 08:26:34 GMT  
		Size: 96.2 MB (96245338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ffe2cd0420ee719cdc721d8df7ad6e5dab9a4a812f0ed3c1aa40cc98966a11`  
		Last Modified: Fri, 03 Aug 2018 08:26:16 GMT  
		Size: 8.4 KB (8410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fabf2b6689c7fab22ac360f7546f1a0f58f2e2f4c17bf5a675f99f21d30cd81`  
		Last Modified: Fri, 03 Aug 2018 08:26:14 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8aa4c1f7308760effe6159541563e3f54a78be7f97e94e033be5b06e6707ae9`  
		Last Modified: Fri, 03 Aug 2018 08:26:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10334f7f00b0ee502b062412358a6cb4f30b9e054ed6616653009bbe182058f1`  
		Last Modified: Fri, 03 Aug 2018 08:26:14 GMT  
		Size: 30.5 KB (30504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0`

```console
$ docker pull cassandra@sha256:a14660d678d8da08b3a99584189801405af599d09f894f43a785fddabedd8226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3.0` - linux; amd64

```console
$ docker pull cassandra@sha256:f83fc457b0679e559ee72148a6f90cd4e2de117dc639239fe6b651f030a386cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127701536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a58559dc2f188d4f5efebf884c4a005babfda3ed21fe21e425896214e1ee80bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 01:11:51 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 01:12:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 01:12:04 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 16:27:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 31 Jul 2018 16:27:01 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 31 Jul 2018 16:27:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 02 Aug 2018 22:22:55 GMT
ENV CASSANDRA_VERSION=3.0.17
# Thu, 02 Aug 2018 22:23:46 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 02 Aug 2018 22:23:57 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 02 Aug 2018 22:23:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 02 Aug 2018 22:23:58 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Thu, 02 Aug 2018 22:23:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 02 Aug 2018 22:23:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Aug 2018 22:24:00 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 02 Aug 2018 22:24:01 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Aug 2018 22:24:18 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 02 Aug 2018 22:24:18 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2c677ef3543446ad0c056d92b380a39a31906d0d91c3ebbe89d71504bd5c2d`  
		Last Modified: Tue, 17 Jul 2018 01:17:16 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba7d7818fb87749a6093e772cb9ec38f63debd75dc846a358e4bf3f171c552c`  
		Last Modified: Tue, 17 Jul 2018 01:17:17 GMT  
		Size: 5.7 MB (5673694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233a120980775fc1149946d7d5e9605ca3c06a2cbbe8d83568ad6ca73201188a`  
		Last Modified: Tue, 31 Jul 2018 16:32:26 GMT  
		Size: 957.3 KB (957320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3446f702d0d14bb5e59e6929700dd841ae733c1f7ff1ce8644f57949a0b3620d`  
		Last Modified: Tue, 31 Jul 2018 16:32:26 GMT  
		Size: 18.2 KB (18220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74662901e28dae4811835cf75c3283f1c11d3208ae70c964da5ab464db00ad9f`  
		Last Modified: Thu, 02 Aug 2018 22:28:38 GMT  
		Size: 98.5 MB (98532740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66641e30cb82c4905aa37b5a013249b0836a256ae9a372597472ff08ff46f26`  
		Last Modified: Thu, 02 Aug 2018 22:28:10 GMT  
		Size: 4.9 KB (4945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15f67739d403644b5131da2bc7ad346b438316d6683d4487ce4cabdf8a3f1d6`  
		Last Modified: Thu, 02 Aug 2018 22:28:10 GMT  
		Size: 1.0 KB (1001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d89937e504aa928a96341db12de8686665ef6b2dd31a16a80292a43c185be3`  
		Last Modified: Thu, 02 Aug 2018 22:28:10 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f075c414e6791b73657954805a791f38b0ef5abd50a8cae73f459f5b896414f1`  
		Last Modified: Thu, 02 Aug 2018 22:28:11 GMT  
		Size: 25.8 KB (25849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:8fd1f4332be16f0d02b121e474b23c277f5c54a81a21c5985f509d069f76e729
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116950523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:563d0fead3ec2fe43e91078843a103e63cb19d82f339b8cb46cc1e0cbecfd1fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:33:48 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 14:36:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:36:30 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 08:41:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 01 Aug 2018 08:41:49 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 01 Aug 2018 08:41:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Aug 2018 08:41:58 GMT
ENV CASSANDRA_VERSION=3.0.17
# Fri, 03 Aug 2018 08:44:17 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Aug 2018 08:44:24 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Aug 2018 08:44:26 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Aug 2018 08:44:42 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Fri, 03 Aug 2018 08:44:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 03 Aug 2018 08:44:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 08:45:02 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Aug 2018 08:45:03 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Aug 2018 08:45:03 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Aug 2018 08:45:04 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c289a43b1265ebabd8a2f2bc8f343aefb2fd68eb4ed266fcc4513bf247f3cd`  
		Last Modified: Tue, 17 Jul 2018 14:47:08 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d28c2264ef0e035b98489ec001230d856ada5071607c735375de9ab243f2547`  
		Last Modified: Tue, 17 Jul 2018 14:47:10 GMT  
		Size: 5.1 MB (5144282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276335da3caa9fb05f36a0c4b189ae10a85cbdcac3b76da395f7b171b50ad8e5`  
		Last Modified: Wed, 01 Aug 2018 08:49:25 GMT  
		Size: 925.2 KB (925197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15b855a3168a25fa2579daf622f08cf2663a3ba8390ef75d5949a3b661bd30f`  
		Last Modified: Wed, 01 Aug 2018 08:49:26 GMT  
		Size: 18.2 KB (18220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ad638330d3307e7ede4293c74faecc5a11223343fa53541567aaa67a14ace9`  
		Last Modified: Fri, 03 Aug 2018 08:49:25 GMT  
		Size: 90.5 MB (90497494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e93190cd7a8e3799b36c0fe0bfe23a5bbb26a33a5b73384347c76b12c431d9`  
		Last Modified: Fri, 03 Aug 2018 08:49:00 GMT  
		Size: 4.9 KB (4947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43b4a0f321ee7b7737eca41e4a7b3e041c68757665025b7084f71c60e697b416`  
		Last Modified: Fri, 03 Aug 2018 08:49:00 GMT  
		Size: 1.0 KB (1001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c33d0dcccd0ff66ab9fa50064fb5f2e13bc42120a8dc78e4526a99bd9bf1e16`  
		Last Modified: Fri, 03 Aug 2018 08:49:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b95494bc7cb5cfc8437f95f4bf713da5f20cecee1066b2a4cc13949fe038c7`  
		Last Modified: Fri, 03 Aug 2018 08:48:59 GMT  
		Size: 25.9 KB (25853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0` - linux; 386

```console
$ docker pull cassandra@sha256:4605578e6e116b29abf4e68f49274037d140ef541cdfb07285e6324d23f3445a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127772375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3522d1e7df0532c87d094dfd0ba7d923c1eaa4a89bfb855ed61a903df64833ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:53:43 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 14:53:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:53:57 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 10:46:07 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 01 Aug 2018 10:46:07 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 01 Aug 2018 10:46:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Aug 2018 10:42:55 GMT
ENV CASSANDRA_VERSION=3.0.17
# Fri, 03 Aug 2018 10:43:54 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Aug 2018 10:43:55 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Aug 2018 10:43:56 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Aug 2018 10:43:57 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Fri, 03 Aug 2018 10:43:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 03 Aug 2018 10:43:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 10:43:59 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Aug 2018 10:43:59 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Aug 2018 10:44:00 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Aug 2018 10:44:00 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ce9f23afae557b39a20baabf52956f80dad36459d70e2b7a6f47c7f131889e`  
		Last Modified: Tue, 17 Jul 2018 14:59:14 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e364edaaf7697ac74a990fa1d78a8dc554c4be5ee83bd13e5deb4f3e90704a8b`  
		Last Modified: Tue, 17 Jul 2018 14:59:13 GMT  
		Size: 6.1 MB (6056819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a69aad184c9455779cfced2e35eb86a64b4bf0804b08ab5f0093c0a664f4a8`  
		Last Modified: Wed, 01 Aug 2018 10:51:57 GMT  
		Size: 937.0 KB (936983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c525536fe81ee090e898f0be448dd42c799152916ee41ab93575868e93ddad`  
		Last Modified: Wed, 01 Aug 2018 10:51:56 GMT  
		Size: 18.2 KB (18221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fcc2f95072b333f7da360be673f560a9bdb6c083c8e3e97573b5933ddfbf3f`  
		Last Modified: Fri, 03 Aug 2018 10:48:32 GMT  
		Size: 97.6 MB (97600318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15b4dc2df8f92bf42cd6522968b39ddd423dc05c95c827f874f43dd00c63d24`  
		Last Modified: Fri, 03 Aug 2018 10:47:59 GMT  
		Size: 4.9 KB (4947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c57a41180af8d16d177b8c744d9ccc04d921787ec699a5b172fcfafe100e895c`  
		Last Modified: Fri, 03 Aug 2018 10:47:59 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f579c39e1c8b750fee5bdfab503dff5affbafdd8c60d85ecb780f36c7c9fed`  
		Last Modified: Fri, 03 Aug 2018 10:47:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a982d8e8bd9553a0690dbb847021f4f1d1f9a8a6d4fafd0b67bbf27d76c7c317`  
		Last Modified: Fri, 03 Aug 2018 10:47:59 GMT  
		Size: 25.9 KB (25851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0` - linux; ppc64le

```console
$ docker pull cassandra@sha256:715e1bb28b015f9e89d747c3f127df54a921d599d25b2245cc9c1b16f800dd01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120692951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a44f3e805cfb967ba390b553dc645c700fbb299d0afbed1fca2b69e5e2fcbd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:29 GMT
ADD file:d8fd3ee34d99a5bb7abafecc4f8991a3de0ad779e8fd8f3ebb33a4811ecfd5a5 in / 
# Tue, 17 Jul 2018 08:20:30 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:29:37 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 11:31:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:31:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 08:16:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 01 Aug 2018 08:16:59 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 01 Aug 2018 08:17:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Aug 2018 08:16:46 GMT
ENV CASSANDRA_VERSION=3.0.17
# Fri, 03 Aug 2018 08:20:42 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Aug 2018 08:20:44 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Aug 2018 08:20:51 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Aug 2018 08:20:51 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Fri, 03 Aug 2018 08:20:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 03 Aug 2018 08:20:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 08:20:58 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Aug 2018 08:20:59 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Aug 2018 08:21:00 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Aug 2018 08:21:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6dc0c10e32a730b4a6b92aaa59148a751864a834dc8ac1b0032717f378efc701`  
		Last Modified: Tue, 17 Jul 2018 08:26:26 GMT  
		Size: 22.7 MB (22740445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24612f8aa78d896057e5ba24a12ea9a99c929336f7e243f93e9cab6c4f296cbf`  
		Last Modified: Tue, 17 Jul 2018 11:58:26 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9bc040a000567d1b1d6a00833e6d3cfb2de690c9ae9c11c0d2c1e4b62ed53f3`  
		Last Modified: Tue, 17 Jul 2018 11:58:29 GMT  
		Size: 5.5 MB (5537864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e1ab097f763466169e8e1d2abf01c95cf9a286941f91b5be620ad89ec284a8`  
		Last Modified: Wed, 01 Aug 2018 08:24:14 GMT  
		Size: 925.9 KB (925932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a507c08b5d58b0cdc867945a26b2b5d5252d3df989529c48777df3e2c42c1fa`  
		Last Modified: Wed, 01 Aug 2018 08:24:13 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae526edbe9c30e2c135bf85b0a3490d93b4293b2130091fca339e37e839ba1aa`  
		Last Modified: Fri, 03 Aug 2018 08:25:56 GMT  
		Size: 91.4 MB (91436827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a889105e443cf2d76b24e4e2a7572a31d512649f675760fc05f2c0dc324116`  
		Last Modified: Fri, 03 Aug 2018 08:25:37 GMT  
		Size: 4.9 KB (4947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f917392fba602367b3603f24b295f1e4966af6e54fdb465f465c41663a9335e`  
		Last Modified: Fri, 03 Aug 2018 08:25:36 GMT  
		Size: 1.0 KB (1002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5decf4e5b75a55ee90f4e9a90a0c714abaedc45069b285b2a8151626bd68ca60`  
		Last Modified: Fri, 03 Aug 2018 08:25:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f0ca0e59da97904c227c600468e9003f64a04f1bb180004124c1bfa9b753b9`  
		Last Modified: Fri, 03 Aug 2018 08:25:37 GMT  
		Size: 25.8 KB (25847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0.17`

```console
$ docker pull cassandra@sha256:a14660d678d8da08b3a99584189801405af599d09f894f43a785fddabedd8226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3.0.17` - linux; amd64

```console
$ docker pull cassandra@sha256:f83fc457b0679e559ee72148a6f90cd4e2de117dc639239fe6b651f030a386cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127701536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a58559dc2f188d4f5efebf884c4a005babfda3ed21fe21e425896214e1ee80bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 01:11:51 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 01:12:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 01:12:04 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 16:27:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 31 Jul 2018 16:27:01 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 31 Jul 2018 16:27:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 02 Aug 2018 22:22:55 GMT
ENV CASSANDRA_VERSION=3.0.17
# Thu, 02 Aug 2018 22:23:46 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 02 Aug 2018 22:23:57 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 02 Aug 2018 22:23:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 02 Aug 2018 22:23:58 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Thu, 02 Aug 2018 22:23:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 02 Aug 2018 22:23:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Aug 2018 22:24:00 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 02 Aug 2018 22:24:01 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Aug 2018 22:24:18 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 02 Aug 2018 22:24:18 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2c677ef3543446ad0c056d92b380a39a31906d0d91c3ebbe89d71504bd5c2d`  
		Last Modified: Tue, 17 Jul 2018 01:17:16 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba7d7818fb87749a6093e772cb9ec38f63debd75dc846a358e4bf3f171c552c`  
		Last Modified: Tue, 17 Jul 2018 01:17:17 GMT  
		Size: 5.7 MB (5673694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233a120980775fc1149946d7d5e9605ca3c06a2cbbe8d83568ad6ca73201188a`  
		Last Modified: Tue, 31 Jul 2018 16:32:26 GMT  
		Size: 957.3 KB (957320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3446f702d0d14bb5e59e6929700dd841ae733c1f7ff1ce8644f57949a0b3620d`  
		Last Modified: Tue, 31 Jul 2018 16:32:26 GMT  
		Size: 18.2 KB (18220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74662901e28dae4811835cf75c3283f1c11d3208ae70c964da5ab464db00ad9f`  
		Last Modified: Thu, 02 Aug 2018 22:28:38 GMT  
		Size: 98.5 MB (98532740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66641e30cb82c4905aa37b5a013249b0836a256ae9a372597472ff08ff46f26`  
		Last Modified: Thu, 02 Aug 2018 22:28:10 GMT  
		Size: 4.9 KB (4945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15f67739d403644b5131da2bc7ad346b438316d6683d4487ce4cabdf8a3f1d6`  
		Last Modified: Thu, 02 Aug 2018 22:28:10 GMT  
		Size: 1.0 KB (1001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d89937e504aa928a96341db12de8686665ef6b2dd31a16a80292a43c185be3`  
		Last Modified: Thu, 02 Aug 2018 22:28:10 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f075c414e6791b73657954805a791f38b0ef5abd50a8cae73f459f5b896414f1`  
		Last Modified: Thu, 02 Aug 2018 22:28:11 GMT  
		Size: 25.8 KB (25849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0.17` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:8fd1f4332be16f0d02b121e474b23c277f5c54a81a21c5985f509d069f76e729
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116950523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:563d0fead3ec2fe43e91078843a103e63cb19d82f339b8cb46cc1e0cbecfd1fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:33:48 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 14:36:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:36:30 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 08:41:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 01 Aug 2018 08:41:49 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 01 Aug 2018 08:41:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Aug 2018 08:41:58 GMT
ENV CASSANDRA_VERSION=3.0.17
# Fri, 03 Aug 2018 08:44:17 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Aug 2018 08:44:24 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Aug 2018 08:44:26 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Aug 2018 08:44:42 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Fri, 03 Aug 2018 08:44:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 03 Aug 2018 08:44:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 08:45:02 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Aug 2018 08:45:03 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Aug 2018 08:45:03 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Aug 2018 08:45:04 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c289a43b1265ebabd8a2f2bc8f343aefb2fd68eb4ed266fcc4513bf247f3cd`  
		Last Modified: Tue, 17 Jul 2018 14:47:08 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d28c2264ef0e035b98489ec001230d856ada5071607c735375de9ab243f2547`  
		Last Modified: Tue, 17 Jul 2018 14:47:10 GMT  
		Size: 5.1 MB (5144282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276335da3caa9fb05f36a0c4b189ae10a85cbdcac3b76da395f7b171b50ad8e5`  
		Last Modified: Wed, 01 Aug 2018 08:49:25 GMT  
		Size: 925.2 KB (925197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15b855a3168a25fa2579daf622f08cf2663a3ba8390ef75d5949a3b661bd30f`  
		Last Modified: Wed, 01 Aug 2018 08:49:26 GMT  
		Size: 18.2 KB (18220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ad638330d3307e7ede4293c74faecc5a11223343fa53541567aaa67a14ace9`  
		Last Modified: Fri, 03 Aug 2018 08:49:25 GMT  
		Size: 90.5 MB (90497494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e93190cd7a8e3799b36c0fe0bfe23a5bbb26a33a5b73384347c76b12c431d9`  
		Last Modified: Fri, 03 Aug 2018 08:49:00 GMT  
		Size: 4.9 KB (4947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43b4a0f321ee7b7737eca41e4a7b3e041c68757665025b7084f71c60e697b416`  
		Last Modified: Fri, 03 Aug 2018 08:49:00 GMT  
		Size: 1.0 KB (1001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c33d0dcccd0ff66ab9fa50064fb5f2e13bc42120a8dc78e4526a99bd9bf1e16`  
		Last Modified: Fri, 03 Aug 2018 08:49:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b95494bc7cb5cfc8437f95f4bf713da5f20cecee1066b2a4cc13949fe038c7`  
		Last Modified: Fri, 03 Aug 2018 08:48:59 GMT  
		Size: 25.9 KB (25853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0.17` - linux; 386

```console
$ docker pull cassandra@sha256:4605578e6e116b29abf4e68f49274037d140ef541cdfb07285e6324d23f3445a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127772375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3522d1e7df0532c87d094dfd0ba7d923c1eaa4a89bfb855ed61a903df64833ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:53:43 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 14:53:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:53:57 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 10:46:07 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 01 Aug 2018 10:46:07 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 01 Aug 2018 10:46:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Aug 2018 10:42:55 GMT
ENV CASSANDRA_VERSION=3.0.17
# Fri, 03 Aug 2018 10:43:54 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Aug 2018 10:43:55 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Aug 2018 10:43:56 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Aug 2018 10:43:57 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Fri, 03 Aug 2018 10:43:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 03 Aug 2018 10:43:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 10:43:59 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Aug 2018 10:43:59 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Aug 2018 10:44:00 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Aug 2018 10:44:00 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ce9f23afae557b39a20baabf52956f80dad36459d70e2b7a6f47c7f131889e`  
		Last Modified: Tue, 17 Jul 2018 14:59:14 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e364edaaf7697ac74a990fa1d78a8dc554c4be5ee83bd13e5deb4f3e90704a8b`  
		Last Modified: Tue, 17 Jul 2018 14:59:13 GMT  
		Size: 6.1 MB (6056819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a69aad184c9455779cfced2e35eb86a64b4bf0804b08ab5f0093c0a664f4a8`  
		Last Modified: Wed, 01 Aug 2018 10:51:57 GMT  
		Size: 937.0 KB (936983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c525536fe81ee090e898f0be448dd42c799152916ee41ab93575868e93ddad`  
		Last Modified: Wed, 01 Aug 2018 10:51:56 GMT  
		Size: 18.2 KB (18221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fcc2f95072b333f7da360be673f560a9bdb6c083c8e3e97573b5933ddfbf3f`  
		Last Modified: Fri, 03 Aug 2018 10:48:32 GMT  
		Size: 97.6 MB (97600318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15b4dc2df8f92bf42cd6522968b39ddd423dc05c95c827f874f43dd00c63d24`  
		Last Modified: Fri, 03 Aug 2018 10:47:59 GMT  
		Size: 4.9 KB (4947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c57a41180af8d16d177b8c744d9ccc04d921787ec699a5b172fcfafe100e895c`  
		Last Modified: Fri, 03 Aug 2018 10:47:59 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f579c39e1c8b750fee5bdfab503dff5affbafdd8c60d85ecb780f36c7c9fed`  
		Last Modified: Fri, 03 Aug 2018 10:47:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a982d8e8bd9553a0690dbb847021f4f1d1f9a8a6d4fafd0b67bbf27d76c7c317`  
		Last Modified: Fri, 03 Aug 2018 10:47:59 GMT  
		Size: 25.9 KB (25851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0.17` - linux; ppc64le

```console
$ docker pull cassandra@sha256:715e1bb28b015f9e89d747c3f127df54a921d599d25b2245cc9c1b16f800dd01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120692951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a44f3e805cfb967ba390b553dc645c700fbb299d0afbed1fca2b69e5e2fcbd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:29 GMT
ADD file:d8fd3ee34d99a5bb7abafecc4f8991a3de0ad779e8fd8f3ebb33a4811ecfd5a5 in / 
# Tue, 17 Jul 2018 08:20:30 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:29:37 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 11:31:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:31:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 08:16:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 01 Aug 2018 08:16:59 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 01 Aug 2018 08:17:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Aug 2018 08:16:46 GMT
ENV CASSANDRA_VERSION=3.0.17
# Fri, 03 Aug 2018 08:20:42 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Aug 2018 08:20:44 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Aug 2018 08:20:51 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Aug 2018 08:20:51 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Fri, 03 Aug 2018 08:20:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 03 Aug 2018 08:20:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 08:20:58 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Aug 2018 08:20:59 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Aug 2018 08:21:00 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Aug 2018 08:21:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6dc0c10e32a730b4a6b92aaa59148a751864a834dc8ac1b0032717f378efc701`  
		Last Modified: Tue, 17 Jul 2018 08:26:26 GMT  
		Size: 22.7 MB (22740445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24612f8aa78d896057e5ba24a12ea9a99c929336f7e243f93e9cab6c4f296cbf`  
		Last Modified: Tue, 17 Jul 2018 11:58:26 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9bc040a000567d1b1d6a00833e6d3cfb2de690c9ae9c11c0d2c1e4b62ed53f3`  
		Last Modified: Tue, 17 Jul 2018 11:58:29 GMT  
		Size: 5.5 MB (5537864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e1ab097f763466169e8e1d2abf01c95cf9a286941f91b5be620ad89ec284a8`  
		Last Modified: Wed, 01 Aug 2018 08:24:14 GMT  
		Size: 925.9 KB (925932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a507c08b5d58b0cdc867945a26b2b5d5252d3df989529c48777df3e2c42c1fa`  
		Last Modified: Wed, 01 Aug 2018 08:24:13 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae526edbe9c30e2c135bf85b0a3490d93b4293b2130091fca339e37e839ba1aa`  
		Last Modified: Fri, 03 Aug 2018 08:25:56 GMT  
		Size: 91.4 MB (91436827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a889105e443cf2d76b24e4e2a7572a31d512649f675760fc05f2c0dc324116`  
		Last Modified: Fri, 03 Aug 2018 08:25:37 GMT  
		Size: 4.9 KB (4947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f917392fba602367b3603f24b295f1e4966af6e54fdb465f465c41663a9335e`  
		Last Modified: Fri, 03 Aug 2018 08:25:36 GMT  
		Size: 1.0 KB (1002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5decf4e5b75a55ee90f4e9a90a0c714abaedc45069b285b2a8151626bd68ca60`  
		Last Modified: Fri, 03 Aug 2018 08:25:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f0ca0e59da97904c227c600468e9003f64a04f1bb180004124c1bfa9b753b9`  
		Last Modified: Fri, 03 Aug 2018 08:25:37 GMT  
		Size: 25.8 KB (25847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.11`

```console
$ docker pull cassandra@sha256:17205a96d799a09d91a47b49b4bf98f3f28992f44077d5e6edab829e4655ef02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3.11` - linux; amd64

```console
$ docker pull cassandra@sha256:e958f7b30800fb44fe97573c46b973b2542228cc52edbeaffa944398469a3080
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132501846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d05bb5bbfe7d3c6253ccae766d6fa257b0ee152a901a819832a2712b75a7336d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 01:11:51 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 01:12:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 01:12:04 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 16:27:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 31 Jul 2018 16:27:01 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 31 Jul 2018 16:27:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 02 Aug 2018 22:24:53 GMT
ENV CASSANDRA_VERSION=3.11.3
# Thu, 02 Aug 2018 22:25:31 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 02 Aug 2018 22:25:32 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 02 Aug 2018 22:25:33 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 02 Aug 2018 22:25:33 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Thu, 02 Aug 2018 22:25:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 02 Aug 2018 22:25:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Aug 2018 22:25:35 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 02 Aug 2018 22:25:50 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Aug 2018 22:25:50 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 02 Aug 2018 22:25:50 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2c677ef3543446ad0c056d92b380a39a31906d0d91c3ebbe89d71504bd5c2d`  
		Last Modified: Tue, 17 Jul 2018 01:17:16 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba7d7818fb87749a6093e772cb9ec38f63debd75dc846a358e4bf3f171c552c`  
		Last Modified: Tue, 17 Jul 2018 01:17:17 GMT  
		Size: 5.7 MB (5673694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233a120980775fc1149946d7d5e9605ca3c06a2cbbe8d83568ad6ca73201188a`  
		Last Modified: Tue, 31 Jul 2018 16:32:26 GMT  
		Size: 957.3 KB (957320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3446f702d0d14bb5e59e6929700dd841ae733c1f7ff1ce8644f57949a0b3620d`  
		Last Modified: Tue, 31 Jul 2018 16:32:26 GMT  
		Size: 18.2 KB (18220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3b739ed5d52d5c6df8a0bc69cca51dce8fb8102df306231bfa88c4a3a69312`  
		Last Modified: Thu, 02 Aug 2018 22:29:56 GMT  
		Size: 103.3 MB (103328694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d104fb5620d79416b04beb3a9948c924ca0d48a7e8524180c516e6320530caa`  
		Last Modified: Thu, 02 Aug 2018 22:29:29 GMT  
		Size: 4.7 KB (4650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458446f55982b1398d260c4c77c0fc3db79774edd9ad0df8d13506f0465bf3a3`  
		Last Modified: Thu, 02 Aug 2018 22:29:29 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d44379168d281166402ad52890e2eb8fd683f9e17c70459ee90fc0a80e9738a`  
		Last Modified: Thu, 02 Aug 2018 22:29:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e191856325d36fe70ae55f32010257c5a3b0931dd8fcebf82a8ec0abf8af3237`  
		Last Modified: Thu, 02 Aug 2018 22:29:29 GMT  
		Size: 30.5 KB (30499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:7200700c9836ca4197ad9e9cab955174294802a480ce278cad38cbb7a128ec8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121761029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cff152d1375028af7100fc70dc398ccedfd1442615b117c2d6963aa3b9c1157e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:33:48 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 14:36:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:36:30 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 08:41:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 01 Aug 2018 08:41:49 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 01 Aug 2018 08:41:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Aug 2018 08:45:54 GMT
ENV CASSANDRA_VERSION=3.11.3
# Fri, 03 Aug 2018 08:48:04 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Aug 2018 08:48:16 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Aug 2018 08:48:17 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Aug 2018 08:48:18 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Fri, 03 Aug 2018 08:48:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 03 Aug 2018 08:48:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 08:48:24 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Aug 2018 08:48:25 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Aug 2018 08:48:25 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Aug 2018 08:48:26 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c289a43b1265ebabd8a2f2bc8f343aefb2fd68eb4ed266fcc4513bf247f3cd`  
		Last Modified: Tue, 17 Jul 2018 14:47:08 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d28c2264ef0e035b98489ec001230d856ada5071607c735375de9ab243f2547`  
		Last Modified: Tue, 17 Jul 2018 14:47:10 GMT  
		Size: 5.1 MB (5144282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276335da3caa9fb05f36a0c4b189ae10a85cbdcac3b76da395f7b171b50ad8e5`  
		Last Modified: Wed, 01 Aug 2018 08:49:25 GMT  
		Size: 925.2 KB (925197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15b855a3168a25fa2579daf622f08cf2663a3ba8390ef75d5949a3b661bd30f`  
		Last Modified: Wed, 01 Aug 2018 08:49:26 GMT  
		Size: 18.2 KB (18220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d365db20b56beac0c250d1ef963fb40af43223d675b26a8557b0be1afbc2dc0d`  
		Last Modified: Fri, 03 Aug 2018 08:50:45 GMT  
		Size: 95.3 MB (95303653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f013960d2be757ce5c7eff4af6a924084f7ef9ee3c2333d1ee8014169f6ef28c`  
		Last Modified: Fri, 03 Aug 2018 08:50:18 GMT  
		Size: 4.7 KB (4653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2725702c83bd4e387a318346acf375a1b0170267537dc632ef5ea2b08ecdfb08`  
		Last Modified: Fri, 03 Aug 2018 08:50:18 GMT  
		Size: 999.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4f4ac2ea994a686f50ce14ec523d2fdf513b7a4f64a254568e81fec4d25cac`  
		Last Modified: Fri, 03 Aug 2018 08:50:18 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9db4e1623dfacd827d3420d4c3b1a6e3618bbec7df811898ad50b3c034222a`  
		Last Modified: Fri, 03 Aug 2018 08:50:18 GMT  
		Size: 30.5 KB (30498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11` - linux; 386

```console
$ docker pull cassandra@sha256:424b474594b665d7bf0fc1f388a00451752e1525e31813c4f83d84e3159aeb52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132584857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e24c83e9622c42aa62c95fef1810ee087d764037c21093c583b563c19d49ad2f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:53:43 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 14:53:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:53:57 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 10:46:07 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 01 Aug 2018 10:46:07 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 01 Aug 2018 10:46:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Aug 2018 10:44:33 GMT
ENV CASSANDRA_VERSION=3.11.3
# Fri, 03 Aug 2018 10:45:18 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Aug 2018 10:45:26 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Aug 2018 10:45:27 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Aug 2018 10:45:27 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Fri, 03 Aug 2018 10:45:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 03 Aug 2018 10:45:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 10:45:30 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Aug 2018 10:45:30 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Aug 2018 10:45:30 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Aug 2018 10:45:31 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ce9f23afae557b39a20baabf52956f80dad36459d70e2b7a6f47c7f131889e`  
		Last Modified: Tue, 17 Jul 2018 14:59:14 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e364edaaf7697ac74a990fa1d78a8dc554c4be5ee83bd13e5deb4f3e90704a8b`  
		Last Modified: Tue, 17 Jul 2018 14:59:13 GMT  
		Size: 6.1 MB (6056819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a69aad184c9455779cfced2e35eb86a64b4bf0804b08ab5f0093c0a664f4a8`  
		Last Modified: Wed, 01 Aug 2018 10:51:57 GMT  
		Size: 937.0 KB (936983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c525536fe81ee090e898f0be448dd42c799152916ee41ab93575868e93ddad`  
		Last Modified: Wed, 01 Aug 2018 10:51:56 GMT  
		Size: 18.2 KB (18221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58699f5d05335f646e8f6d7ee6e71312ec0430f1f7164aa70b9d3e8ddc896983`  
		Last Modified: Fri, 03 Aug 2018 10:49:45 GMT  
		Size: 102.4 MB (102408450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cb49221512f773f2808f116a9b6c7d8abd72a24a384282ca66bc2ae4be47a2`  
		Last Modified: Fri, 03 Aug 2018 10:49:11 GMT  
		Size: 4.7 KB (4650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5aaa8933e5ec20e5cb3b6098075dbae9c2de6d1d6ca2a2c0d2ea17f43a988b6`  
		Last Modified: Fri, 03 Aug 2018 10:49:11 GMT  
		Size: 1.0 KB (1001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b371d4774207c4e270c038cc03ae8981e248e55462760bf4f8a595f469d83cf9`  
		Last Modified: Fri, 03 Aug 2018 10:49:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bf20a8d0da8556b2f1633df94499584ab62d284c8606b89340e7f10386dce6`  
		Last Modified: Fri, 03 Aug 2018 10:49:11 GMT  
		Size: 30.5 KB (30497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11` - linux; ppc64le

```console
$ docker pull cassandra@sha256:2d6ab100703706b32780718f244d8375ade64b8728e91433be3c9358eb2c2261
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.5 MB (125509580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:455dee26194db42512d030f4b1f2eabe6ba8d449ba9f34bc668c22b192945bce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:29 GMT
ADD file:d8fd3ee34d99a5bb7abafecc4f8991a3de0ad779e8fd8f3ebb33a4811ecfd5a5 in / 
# Tue, 17 Jul 2018 08:20:30 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:29:37 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 11:31:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:31:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 08:16:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 01 Aug 2018 08:16:59 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 01 Aug 2018 08:17:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Aug 2018 08:21:16 GMT
ENV CASSANDRA_VERSION=3.11.3
# Fri, 03 Aug 2018 08:24:42 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Aug 2018 08:24:44 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Aug 2018 08:24:46 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Aug 2018 08:24:47 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Fri, 03 Aug 2018 08:24:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 03 Aug 2018 08:24:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 08:24:56 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Aug 2018 08:24:58 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Aug 2018 08:25:04 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Aug 2018 08:25:08 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6dc0c10e32a730b4a6b92aaa59148a751864a834dc8ac1b0032717f378efc701`  
		Last Modified: Tue, 17 Jul 2018 08:26:26 GMT  
		Size: 22.7 MB (22740445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24612f8aa78d896057e5ba24a12ea9a99c929336f7e243f93e9cab6c4f296cbf`  
		Last Modified: Tue, 17 Jul 2018 11:58:26 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9bc040a000567d1b1d6a00833e6d3cfb2de690c9ae9c11c0d2c1e4b62ed53f3`  
		Last Modified: Tue, 17 Jul 2018 11:58:29 GMT  
		Size: 5.5 MB (5537864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e1ab097f763466169e8e1d2abf01c95cf9a286941f91b5be620ad89ec284a8`  
		Last Modified: Wed, 01 Aug 2018 08:24:14 GMT  
		Size: 925.9 KB (925932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a507c08b5d58b0cdc867945a26b2b5d5252d3df989529c48777df3e2c42c1fa`  
		Last Modified: Wed, 01 Aug 2018 08:24:13 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5c885ab8c6af64faddfd14d1259a81869527db8b43c0b74b7696f9e809d9a4`  
		Last Modified: Fri, 03 Aug 2018 08:26:34 GMT  
		Size: 96.2 MB (96245338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ffe2cd0420ee719cdc721d8df7ad6e5dab9a4a812f0ed3c1aa40cc98966a11`  
		Last Modified: Fri, 03 Aug 2018 08:26:16 GMT  
		Size: 8.4 KB (8410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fabf2b6689c7fab22ac360f7546f1a0f58f2e2f4c17bf5a675f99f21d30cd81`  
		Last Modified: Fri, 03 Aug 2018 08:26:14 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8aa4c1f7308760effe6159541563e3f54a78be7f97e94e033be5b06e6707ae9`  
		Last Modified: Fri, 03 Aug 2018 08:26:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10334f7f00b0ee502b062412358a6cb4f30b9e054ed6616653009bbe182058f1`  
		Last Modified: Fri, 03 Aug 2018 08:26:14 GMT  
		Size: 30.5 KB (30504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.11.3`

```console
$ docker pull cassandra@sha256:17205a96d799a09d91a47b49b4bf98f3f28992f44077d5e6edab829e4655ef02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3.11.3` - linux; amd64

```console
$ docker pull cassandra@sha256:e958f7b30800fb44fe97573c46b973b2542228cc52edbeaffa944398469a3080
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132501846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d05bb5bbfe7d3c6253ccae766d6fa257b0ee152a901a819832a2712b75a7336d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 01:11:51 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 01:12:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 01:12:04 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 16:27:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 31 Jul 2018 16:27:01 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 31 Jul 2018 16:27:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 02 Aug 2018 22:24:53 GMT
ENV CASSANDRA_VERSION=3.11.3
# Thu, 02 Aug 2018 22:25:31 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 02 Aug 2018 22:25:32 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 02 Aug 2018 22:25:33 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 02 Aug 2018 22:25:33 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Thu, 02 Aug 2018 22:25:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 02 Aug 2018 22:25:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Aug 2018 22:25:35 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 02 Aug 2018 22:25:50 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Aug 2018 22:25:50 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 02 Aug 2018 22:25:50 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2c677ef3543446ad0c056d92b380a39a31906d0d91c3ebbe89d71504bd5c2d`  
		Last Modified: Tue, 17 Jul 2018 01:17:16 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba7d7818fb87749a6093e772cb9ec38f63debd75dc846a358e4bf3f171c552c`  
		Last Modified: Tue, 17 Jul 2018 01:17:17 GMT  
		Size: 5.7 MB (5673694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233a120980775fc1149946d7d5e9605ca3c06a2cbbe8d83568ad6ca73201188a`  
		Last Modified: Tue, 31 Jul 2018 16:32:26 GMT  
		Size: 957.3 KB (957320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3446f702d0d14bb5e59e6929700dd841ae733c1f7ff1ce8644f57949a0b3620d`  
		Last Modified: Tue, 31 Jul 2018 16:32:26 GMT  
		Size: 18.2 KB (18220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3b739ed5d52d5c6df8a0bc69cca51dce8fb8102df306231bfa88c4a3a69312`  
		Last Modified: Thu, 02 Aug 2018 22:29:56 GMT  
		Size: 103.3 MB (103328694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d104fb5620d79416b04beb3a9948c924ca0d48a7e8524180c516e6320530caa`  
		Last Modified: Thu, 02 Aug 2018 22:29:29 GMT  
		Size: 4.7 KB (4650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458446f55982b1398d260c4c77c0fc3db79774edd9ad0df8d13506f0465bf3a3`  
		Last Modified: Thu, 02 Aug 2018 22:29:29 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d44379168d281166402ad52890e2eb8fd683f9e17c70459ee90fc0a80e9738a`  
		Last Modified: Thu, 02 Aug 2018 22:29:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e191856325d36fe70ae55f32010257c5a3b0931dd8fcebf82a8ec0abf8af3237`  
		Last Modified: Thu, 02 Aug 2018 22:29:29 GMT  
		Size: 30.5 KB (30499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11.3` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:7200700c9836ca4197ad9e9cab955174294802a480ce278cad38cbb7a128ec8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121761029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cff152d1375028af7100fc70dc398ccedfd1442615b117c2d6963aa3b9c1157e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:33:48 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 14:36:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:36:30 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 08:41:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 01 Aug 2018 08:41:49 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 01 Aug 2018 08:41:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Aug 2018 08:45:54 GMT
ENV CASSANDRA_VERSION=3.11.3
# Fri, 03 Aug 2018 08:48:04 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Aug 2018 08:48:16 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Aug 2018 08:48:17 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Aug 2018 08:48:18 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Fri, 03 Aug 2018 08:48:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 03 Aug 2018 08:48:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 08:48:24 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Aug 2018 08:48:25 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Aug 2018 08:48:25 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Aug 2018 08:48:26 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c289a43b1265ebabd8a2f2bc8f343aefb2fd68eb4ed266fcc4513bf247f3cd`  
		Last Modified: Tue, 17 Jul 2018 14:47:08 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d28c2264ef0e035b98489ec001230d856ada5071607c735375de9ab243f2547`  
		Last Modified: Tue, 17 Jul 2018 14:47:10 GMT  
		Size: 5.1 MB (5144282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276335da3caa9fb05f36a0c4b189ae10a85cbdcac3b76da395f7b171b50ad8e5`  
		Last Modified: Wed, 01 Aug 2018 08:49:25 GMT  
		Size: 925.2 KB (925197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15b855a3168a25fa2579daf622f08cf2663a3ba8390ef75d5949a3b661bd30f`  
		Last Modified: Wed, 01 Aug 2018 08:49:26 GMT  
		Size: 18.2 KB (18220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d365db20b56beac0c250d1ef963fb40af43223d675b26a8557b0be1afbc2dc0d`  
		Last Modified: Fri, 03 Aug 2018 08:50:45 GMT  
		Size: 95.3 MB (95303653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f013960d2be757ce5c7eff4af6a924084f7ef9ee3c2333d1ee8014169f6ef28c`  
		Last Modified: Fri, 03 Aug 2018 08:50:18 GMT  
		Size: 4.7 KB (4653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2725702c83bd4e387a318346acf375a1b0170267537dc632ef5ea2b08ecdfb08`  
		Last Modified: Fri, 03 Aug 2018 08:50:18 GMT  
		Size: 999.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4f4ac2ea994a686f50ce14ec523d2fdf513b7a4f64a254568e81fec4d25cac`  
		Last Modified: Fri, 03 Aug 2018 08:50:18 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9db4e1623dfacd827d3420d4c3b1a6e3618bbec7df811898ad50b3c034222a`  
		Last Modified: Fri, 03 Aug 2018 08:50:18 GMT  
		Size: 30.5 KB (30498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11.3` - linux; 386

```console
$ docker pull cassandra@sha256:424b474594b665d7bf0fc1f388a00451752e1525e31813c4f83d84e3159aeb52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132584857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e24c83e9622c42aa62c95fef1810ee087d764037c21093c583b563c19d49ad2f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:53:43 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 14:53:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:53:57 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 10:46:07 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 01 Aug 2018 10:46:07 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 01 Aug 2018 10:46:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Aug 2018 10:44:33 GMT
ENV CASSANDRA_VERSION=3.11.3
# Fri, 03 Aug 2018 10:45:18 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Aug 2018 10:45:26 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Aug 2018 10:45:27 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Aug 2018 10:45:27 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Fri, 03 Aug 2018 10:45:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 03 Aug 2018 10:45:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 10:45:30 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Aug 2018 10:45:30 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Aug 2018 10:45:30 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Aug 2018 10:45:31 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ce9f23afae557b39a20baabf52956f80dad36459d70e2b7a6f47c7f131889e`  
		Last Modified: Tue, 17 Jul 2018 14:59:14 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e364edaaf7697ac74a990fa1d78a8dc554c4be5ee83bd13e5deb4f3e90704a8b`  
		Last Modified: Tue, 17 Jul 2018 14:59:13 GMT  
		Size: 6.1 MB (6056819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a69aad184c9455779cfced2e35eb86a64b4bf0804b08ab5f0093c0a664f4a8`  
		Last Modified: Wed, 01 Aug 2018 10:51:57 GMT  
		Size: 937.0 KB (936983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c525536fe81ee090e898f0be448dd42c799152916ee41ab93575868e93ddad`  
		Last Modified: Wed, 01 Aug 2018 10:51:56 GMT  
		Size: 18.2 KB (18221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58699f5d05335f646e8f6d7ee6e71312ec0430f1f7164aa70b9d3e8ddc896983`  
		Last Modified: Fri, 03 Aug 2018 10:49:45 GMT  
		Size: 102.4 MB (102408450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cb49221512f773f2808f116a9b6c7d8abd72a24a384282ca66bc2ae4be47a2`  
		Last Modified: Fri, 03 Aug 2018 10:49:11 GMT  
		Size: 4.7 KB (4650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5aaa8933e5ec20e5cb3b6098075dbae9c2de6d1d6ca2a2c0d2ea17f43a988b6`  
		Last Modified: Fri, 03 Aug 2018 10:49:11 GMT  
		Size: 1.0 KB (1001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b371d4774207c4e270c038cc03ae8981e248e55462760bf4f8a595f469d83cf9`  
		Last Modified: Fri, 03 Aug 2018 10:49:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bf20a8d0da8556b2f1633df94499584ab62d284c8606b89340e7f10386dce6`  
		Last Modified: Fri, 03 Aug 2018 10:49:11 GMT  
		Size: 30.5 KB (30497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11.3` - linux; ppc64le

```console
$ docker pull cassandra@sha256:2d6ab100703706b32780718f244d8375ade64b8728e91433be3c9358eb2c2261
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.5 MB (125509580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:455dee26194db42512d030f4b1f2eabe6ba8d449ba9f34bc668c22b192945bce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:29 GMT
ADD file:d8fd3ee34d99a5bb7abafecc4f8991a3de0ad779e8fd8f3ebb33a4811ecfd5a5 in / 
# Tue, 17 Jul 2018 08:20:30 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:29:37 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 11:31:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:31:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 08:16:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 01 Aug 2018 08:16:59 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 01 Aug 2018 08:17:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Aug 2018 08:21:16 GMT
ENV CASSANDRA_VERSION=3.11.3
# Fri, 03 Aug 2018 08:24:42 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Aug 2018 08:24:44 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Aug 2018 08:24:46 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Aug 2018 08:24:47 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Fri, 03 Aug 2018 08:24:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 03 Aug 2018 08:24:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 08:24:56 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Aug 2018 08:24:58 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Aug 2018 08:25:04 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Aug 2018 08:25:08 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6dc0c10e32a730b4a6b92aaa59148a751864a834dc8ac1b0032717f378efc701`  
		Last Modified: Tue, 17 Jul 2018 08:26:26 GMT  
		Size: 22.7 MB (22740445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24612f8aa78d896057e5ba24a12ea9a99c929336f7e243f93e9cab6c4f296cbf`  
		Last Modified: Tue, 17 Jul 2018 11:58:26 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9bc040a000567d1b1d6a00833e6d3cfb2de690c9ae9c11c0d2c1e4b62ed53f3`  
		Last Modified: Tue, 17 Jul 2018 11:58:29 GMT  
		Size: 5.5 MB (5537864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e1ab097f763466169e8e1d2abf01c95cf9a286941f91b5be620ad89ec284a8`  
		Last Modified: Wed, 01 Aug 2018 08:24:14 GMT  
		Size: 925.9 KB (925932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a507c08b5d58b0cdc867945a26b2b5d5252d3df989529c48777df3e2c42c1fa`  
		Last Modified: Wed, 01 Aug 2018 08:24:13 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5c885ab8c6af64faddfd14d1259a81869527db8b43c0b74b7696f9e809d9a4`  
		Last Modified: Fri, 03 Aug 2018 08:26:34 GMT  
		Size: 96.2 MB (96245338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ffe2cd0420ee719cdc721d8df7ad6e5dab9a4a812f0ed3c1aa40cc98966a11`  
		Last Modified: Fri, 03 Aug 2018 08:26:16 GMT  
		Size: 8.4 KB (8410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fabf2b6689c7fab22ac360f7546f1a0f58f2e2f4c17bf5a675f99f21d30cd81`  
		Last Modified: Fri, 03 Aug 2018 08:26:14 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8aa4c1f7308760effe6159541563e3f54a78be7f97e94e033be5b06e6707ae9`  
		Last Modified: Fri, 03 Aug 2018 08:26:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10334f7f00b0ee502b062412358a6cb4f30b9e054ed6616653009bbe182058f1`  
		Last Modified: Fri, 03 Aug 2018 08:26:14 GMT  
		Size: 30.5 KB (30504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:latest`

```console
$ docker pull cassandra@sha256:17205a96d799a09d91a47b49b4bf98f3f28992f44077d5e6edab829e4655ef02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:latest` - linux; amd64

```console
$ docker pull cassandra@sha256:e958f7b30800fb44fe97573c46b973b2542228cc52edbeaffa944398469a3080
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132501846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d05bb5bbfe7d3c6253ccae766d6fa257b0ee152a901a819832a2712b75a7336d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 01:11:51 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 01:12:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 01:12:04 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 16:27:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 31 Jul 2018 16:27:01 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 31 Jul 2018 16:27:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 02 Aug 2018 22:24:53 GMT
ENV CASSANDRA_VERSION=3.11.3
# Thu, 02 Aug 2018 22:25:31 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 02 Aug 2018 22:25:32 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 02 Aug 2018 22:25:33 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 02 Aug 2018 22:25:33 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Thu, 02 Aug 2018 22:25:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 02 Aug 2018 22:25:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Aug 2018 22:25:35 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 02 Aug 2018 22:25:50 GMT
VOLUME [/var/lib/cassandra]
# Thu, 02 Aug 2018 22:25:50 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 02 Aug 2018 22:25:50 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2c677ef3543446ad0c056d92b380a39a31906d0d91c3ebbe89d71504bd5c2d`  
		Last Modified: Tue, 17 Jul 2018 01:17:16 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba7d7818fb87749a6093e772cb9ec38f63debd75dc846a358e4bf3f171c552c`  
		Last Modified: Tue, 17 Jul 2018 01:17:17 GMT  
		Size: 5.7 MB (5673694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233a120980775fc1149946d7d5e9605ca3c06a2cbbe8d83568ad6ca73201188a`  
		Last Modified: Tue, 31 Jul 2018 16:32:26 GMT  
		Size: 957.3 KB (957320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3446f702d0d14bb5e59e6929700dd841ae733c1f7ff1ce8644f57949a0b3620d`  
		Last Modified: Tue, 31 Jul 2018 16:32:26 GMT  
		Size: 18.2 KB (18220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3b739ed5d52d5c6df8a0bc69cca51dce8fb8102df306231bfa88c4a3a69312`  
		Last Modified: Thu, 02 Aug 2018 22:29:56 GMT  
		Size: 103.3 MB (103328694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d104fb5620d79416b04beb3a9948c924ca0d48a7e8524180c516e6320530caa`  
		Last Modified: Thu, 02 Aug 2018 22:29:29 GMT  
		Size: 4.7 KB (4650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458446f55982b1398d260c4c77c0fc3db79774edd9ad0df8d13506f0465bf3a3`  
		Last Modified: Thu, 02 Aug 2018 22:29:29 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d44379168d281166402ad52890e2eb8fd683f9e17c70459ee90fc0a80e9738a`  
		Last Modified: Thu, 02 Aug 2018 22:29:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e191856325d36fe70ae55f32010257c5a3b0931dd8fcebf82a8ec0abf8af3237`  
		Last Modified: Thu, 02 Aug 2018 22:29:29 GMT  
		Size: 30.5 KB (30499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:latest` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:7200700c9836ca4197ad9e9cab955174294802a480ce278cad38cbb7a128ec8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121761029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cff152d1375028af7100fc70dc398ccedfd1442615b117c2d6963aa3b9c1157e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:33:48 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 14:36:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:36:30 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 08:41:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 01 Aug 2018 08:41:49 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 01 Aug 2018 08:41:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Aug 2018 08:45:54 GMT
ENV CASSANDRA_VERSION=3.11.3
# Fri, 03 Aug 2018 08:48:04 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Aug 2018 08:48:16 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Aug 2018 08:48:17 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Aug 2018 08:48:18 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Fri, 03 Aug 2018 08:48:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 03 Aug 2018 08:48:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 08:48:24 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Aug 2018 08:48:25 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Aug 2018 08:48:25 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Aug 2018 08:48:26 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c289a43b1265ebabd8a2f2bc8f343aefb2fd68eb4ed266fcc4513bf247f3cd`  
		Last Modified: Tue, 17 Jul 2018 14:47:08 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d28c2264ef0e035b98489ec001230d856ada5071607c735375de9ab243f2547`  
		Last Modified: Tue, 17 Jul 2018 14:47:10 GMT  
		Size: 5.1 MB (5144282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276335da3caa9fb05f36a0c4b189ae10a85cbdcac3b76da395f7b171b50ad8e5`  
		Last Modified: Wed, 01 Aug 2018 08:49:25 GMT  
		Size: 925.2 KB (925197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15b855a3168a25fa2579daf622f08cf2663a3ba8390ef75d5949a3b661bd30f`  
		Last Modified: Wed, 01 Aug 2018 08:49:26 GMT  
		Size: 18.2 KB (18220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d365db20b56beac0c250d1ef963fb40af43223d675b26a8557b0be1afbc2dc0d`  
		Last Modified: Fri, 03 Aug 2018 08:50:45 GMT  
		Size: 95.3 MB (95303653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f013960d2be757ce5c7eff4af6a924084f7ef9ee3c2333d1ee8014169f6ef28c`  
		Last Modified: Fri, 03 Aug 2018 08:50:18 GMT  
		Size: 4.7 KB (4653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2725702c83bd4e387a318346acf375a1b0170267537dc632ef5ea2b08ecdfb08`  
		Last Modified: Fri, 03 Aug 2018 08:50:18 GMT  
		Size: 999.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4f4ac2ea994a686f50ce14ec523d2fdf513b7a4f64a254568e81fec4d25cac`  
		Last Modified: Fri, 03 Aug 2018 08:50:18 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9db4e1623dfacd827d3420d4c3b1a6e3618bbec7df811898ad50b3c034222a`  
		Last Modified: Fri, 03 Aug 2018 08:50:18 GMT  
		Size: 30.5 KB (30498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:latest` - linux; 386

```console
$ docker pull cassandra@sha256:424b474594b665d7bf0fc1f388a00451752e1525e31813c4f83d84e3159aeb52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132584857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e24c83e9622c42aa62c95fef1810ee087d764037c21093c583b563c19d49ad2f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:53:43 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 14:53:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:53:57 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 10:46:07 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 01 Aug 2018 10:46:07 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 01 Aug 2018 10:46:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Aug 2018 10:44:33 GMT
ENV CASSANDRA_VERSION=3.11.3
# Fri, 03 Aug 2018 10:45:18 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Aug 2018 10:45:26 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Aug 2018 10:45:27 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Aug 2018 10:45:27 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Fri, 03 Aug 2018 10:45:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 03 Aug 2018 10:45:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 10:45:30 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Aug 2018 10:45:30 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Aug 2018 10:45:30 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Aug 2018 10:45:31 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ce9f23afae557b39a20baabf52956f80dad36459d70e2b7a6f47c7f131889e`  
		Last Modified: Tue, 17 Jul 2018 14:59:14 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e364edaaf7697ac74a990fa1d78a8dc554c4be5ee83bd13e5deb4f3e90704a8b`  
		Last Modified: Tue, 17 Jul 2018 14:59:13 GMT  
		Size: 6.1 MB (6056819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a69aad184c9455779cfced2e35eb86a64b4bf0804b08ab5f0093c0a664f4a8`  
		Last Modified: Wed, 01 Aug 2018 10:51:57 GMT  
		Size: 937.0 KB (936983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c525536fe81ee090e898f0be448dd42c799152916ee41ab93575868e93ddad`  
		Last Modified: Wed, 01 Aug 2018 10:51:56 GMT  
		Size: 18.2 KB (18221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58699f5d05335f646e8f6d7ee6e71312ec0430f1f7164aa70b9d3e8ddc896983`  
		Last Modified: Fri, 03 Aug 2018 10:49:45 GMT  
		Size: 102.4 MB (102408450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cb49221512f773f2808f116a9b6c7d8abd72a24a384282ca66bc2ae4be47a2`  
		Last Modified: Fri, 03 Aug 2018 10:49:11 GMT  
		Size: 4.7 KB (4650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5aaa8933e5ec20e5cb3b6098075dbae9c2de6d1d6ca2a2c0d2ea17f43a988b6`  
		Last Modified: Fri, 03 Aug 2018 10:49:11 GMT  
		Size: 1.0 KB (1001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b371d4774207c4e270c038cc03ae8981e248e55462760bf4f8a595f469d83cf9`  
		Last Modified: Fri, 03 Aug 2018 10:49:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bf20a8d0da8556b2f1633df94499584ab62d284c8606b89340e7f10386dce6`  
		Last Modified: Fri, 03 Aug 2018 10:49:11 GMT  
		Size: 30.5 KB (30497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:latest` - linux; ppc64le

```console
$ docker pull cassandra@sha256:2d6ab100703706b32780718f244d8375ade64b8728e91433be3c9358eb2c2261
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.5 MB (125509580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:455dee26194db42512d030f4b1f2eabe6ba8d449ba9f34bc668c22b192945bce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:29 GMT
ADD file:d8fd3ee34d99a5bb7abafecc4f8991a3de0ad779e8fd8f3ebb33a4811ecfd5a5 in / 
# Tue, 17 Jul 2018 08:20:30 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:29:37 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jul 2018 11:31:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:31:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 08:16:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 01 Aug 2018 08:16:59 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 01 Aug 2018 08:17:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Aug 2018 08:21:16 GMT
ENV CASSANDRA_VERSION=3.11.3
# Fri, 03 Aug 2018 08:24:42 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Aug 2018 08:24:44 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Aug 2018 08:24:46 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Aug 2018 08:24:47 GMT
COPY file:f8f11b9db08561e1af94b25a1dc5230d7e687ae49a1451e029f35631e7ae6338 in /usr/local/bin/ 
# Fri, 03 Aug 2018 08:24:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 03 Aug 2018 08:24:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 08:24:56 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Aug 2018 08:24:58 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Aug 2018 08:25:04 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Aug 2018 08:25:08 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6dc0c10e32a730b4a6b92aaa59148a751864a834dc8ac1b0032717f378efc701`  
		Last Modified: Tue, 17 Jul 2018 08:26:26 GMT  
		Size: 22.7 MB (22740445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24612f8aa78d896057e5ba24a12ea9a99c929336f7e243f93e9cab6c4f296cbf`  
		Last Modified: Tue, 17 Jul 2018 11:58:26 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9bc040a000567d1b1d6a00833e6d3cfb2de690c9ae9c11c0d2c1e4b62ed53f3`  
		Last Modified: Tue, 17 Jul 2018 11:58:29 GMT  
		Size: 5.5 MB (5537864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e1ab097f763466169e8e1d2abf01c95cf9a286941f91b5be620ad89ec284a8`  
		Last Modified: Wed, 01 Aug 2018 08:24:14 GMT  
		Size: 925.9 KB (925932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a507c08b5d58b0cdc867945a26b2b5d5252d3df989529c48777df3e2c42c1fa`  
		Last Modified: Wed, 01 Aug 2018 08:24:13 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5c885ab8c6af64faddfd14d1259a81869527db8b43c0b74b7696f9e809d9a4`  
		Last Modified: Fri, 03 Aug 2018 08:26:34 GMT  
		Size: 96.2 MB (96245338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ffe2cd0420ee719cdc721d8df7ad6e5dab9a4a812f0ed3c1aa40cc98966a11`  
		Last Modified: Fri, 03 Aug 2018 08:26:16 GMT  
		Size: 8.4 KB (8410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fabf2b6689c7fab22ac360f7546f1a0f58f2e2f4c17bf5a675f99f21d30cd81`  
		Last Modified: Fri, 03 Aug 2018 08:26:14 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8aa4c1f7308760effe6159541563e3f54a78be7f97e94e033be5b06e6707ae9`  
		Last Modified: Fri, 03 Aug 2018 08:26:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10334f7f00b0ee502b062412358a6cb4f30b9e054ed6616653009bbe182058f1`  
		Last Modified: Fri, 03 Aug 2018 08:26:14 GMT  
		Size: 30.5 KB (30504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
