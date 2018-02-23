<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `cassandra`

-	[`cassandra:2`](#cassandra2)
-	[`cassandra:2.1`](#cassandra21)
-	[`cassandra:2.1.20`](#cassandra2120)
-	[`cassandra:2.2`](#cassandra22)
-	[`cassandra:2.2.12`](#cassandra2212)
-	[`cassandra:3`](#cassandra3)
-	[`cassandra:3.0`](#cassandra30)
-	[`cassandra:3.0.16`](#cassandra3016)
-	[`cassandra:3.11`](#cassandra311)
-	[`cassandra:3.11.2`](#cassandra3112)
-	[`cassandra:latest`](#cassandralatest)

## `cassandra:2`

```console
$ docker pull cassandra@sha256:488e7a80c3929711740e89246c2ae2084e4b0f7a9e8e424e7a64bcaacd144a34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `cassandra:2` - linux; amd64

```console
$ docker pull cassandra@sha256:ad2d6da8c626043c8751e6dbe4d00707e11079900b360ccd7bab771bd16f558c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138530306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1858bd3e15d413303ebd5e20a0db57d0df6707b2b9b345ed5da309e80326b20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:17:55 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sun, 18 Feb 2018 02:34:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 02:34:36 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 02:34:57 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 02:35:05 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sun, 18 Feb 2018 02:35:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sun, 18 Feb 2018 02:37:00 GMT
ENV CASSANDRA_VERSION=2.2.12
# Sun, 18 Feb 2018 02:37:58 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sun, 18 Feb 2018 02:49:58 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sun, 18 Feb 2018 02:49:59 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sun, 18 Feb 2018 02:50:00 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Sun, 18 Feb 2018 02:50:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sun, 18 Feb 2018 02:50:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 02:50:01 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sun, 18 Feb 2018 02:50:02 GMT
VOLUME [/var/lib/cassandra]
# Sun, 18 Feb 2018 02:50:02 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sun, 18 Feb 2018 02:50:02 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eedbcd43184b33ea571c7d77ef462a7fd894114b6ada52f28f5d14671cb8492`  
		Last Modified: Thu, 15 Feb 2018 03:23:25 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:072ae729cd957937ce320e32556c03fe592d7714494346531e2ff53fa74ac827`  
		Last Modified: Sun, 18 Feb 2018 02:58:59 GMT  
		Size: 815.2 KB (815232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88af7399e8e6c29af4cbdadd9b0beb370bb5f0aa26571d24c415569009f761b5`  
		Last Modified: Sun, 18 Feb 2018 02:58:59 GMT  
		Size: 983.9 KB (983930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8e1872a95dff6e83d1d890fdb1aabcc77a5d23f2b632f04ee4ae5b5614c29a`  
		Last Modified: Sun, 18 Feb 2018 02:58:59 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b40ad95ac1f9c7ca11514784a1319152f77defd764ef0eefff692dc3866be85`  
		Last Modified: Sun, 18 Feb 2018 03:00:14 GMT  
		Size: 106.6 MB (106560076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ef1f4e3c5b6eb2dfd95117ab2f0f937e5be75a31a01e010351356ec7df9a6c`  
		Last Modified: Sun, 18 Feb 2018 02:59:50 GMT  
		Size: 4.9 KB (4887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd8dec42e2357001244a5dd2534980d66fb6c5fb3d89dd59421337e25ca7e58`  
		Last Modified: Sun, 18 Feb 2018 02:59:50 GMT  
		Size: 840.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cff269e592cf6f413acd97c40162a89c63bbeab79ac7ff844102703b7a97006`  
		Last Modified: Sun, 18 Feb 2018 02:59:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb88307ea490862eb958f4adf2833d3a9fb5af26044349643d0e1ecb84363d9`  
		Last Modified: Sun, 18 Feb 2018 02:59:50 GMT  
		Size: 22.5 KB (22516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2` - linux; 386

```console
$ docker pull cassandra@sha256:595c3019b84c93b3d45740ac19b6e139749c5b97a60287e2bea8fbd8a35cb89d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.9 MB (149870826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a572f3a232197ea62db8706e1e56d2d209e6405e59520a87792fc0282519563`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Tue, 20 Feb 2018 02:04:32 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 20 Feb 2018 02:04:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Feb 2018 02:12:24 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Feb 2018 02:13:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 20 Feb 2018 02:14:06 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 20 Feb 2018 02:14:13 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Feb 2018 02:36:42 GMT
ENV CASSANDRA_VERSION=2.2.12
# Tue, 20 Feb 2018 02:38:07 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 20 Feb 2018 02:41:14 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 20 Feb 2018 02:41:15 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 20 Feb 2018 02:41:15 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Tue, 20 Feb 2018 02:41:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 20 Feb 2018 02:41:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Feb 2018 02:48:15 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 20 Feb 2018 02:48:15 GMT
VOLUME [/var/lib/cassandra]
# Tue, 20 Feb 2018 02:48:15 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 20 Feb 2018 02:48:16 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10425450b7595b66f33a1d0be168ec9664f6cf59d4c2862c26a6e2ba98c407c4`  
		Last Modified: Tue, 20 Feb 2018 03:22:40 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30bbb8d50927fc5a016a67ee3ade9bc0e03f706c608bcbb08cfa580b6ca58a73`  
		Last Modified: Tue, 20 Feb 2018 03:22:40 GMT  
		Size: 844.4 KB (844444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:886ac36c32186fe92153f4671ff1b1e1cfaf9438ecb81f3e46b81447ab56799b`  
		Last Modified: Tue, 20 Feb 2018 03:22:41 GMT  
		Size: 962.9 KB (962864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e293aa46d4e7f47de06561bbabc8b4c4d68c1ca35e593659ee86832171d15ad`  
		Last Modified: Tue, 20 Feb 2018 03:22:40 GMT  
		Size: 18.2 KB (18234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f459e4dbeca4572d1c2ea750632de523e3b338c00f609b751b3eae1eebbc97e7`  
		Last Modified: Tue, 20 Feb 2018 03:34:08 GMT  
		Size: 117.7 MB (117741636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258b46bfa21736d1547bed9ead8001128b8365be6fb5abb1462b48949b8f7ef2`  
		Last Modified: Tue, 20 Feb 2018 03:33:42 GMT  
		Size: 4.9 KB (4883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132703dd2d9c298fce49f92dae7ad3fe14fafe6e811db437c6c3ed80969d30dc`  
		Last Modified: Tue, 20 Feb 2018 03:33:41 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514043b3a7216cafd3c1b641db4f22e90a250eb5dd843a3ffe0200196ef2352d`  
		Last Modified: Tue, 20 Feb 2018 03:33:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41b25a39b9dd71136d208dd665b33f772c21167e03b68aaf1db2ac62316508f`  
		Last Modified: Tue, 20 Feb 2018 03:33:41 GMT  
		Size: 22.5 KB (22520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1`

```console
$ docker pull cassandra@sha256:bf1bdffae89470ecc9c76c94a8efb719d7d8f774a63713c39ba6c5929144a8e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `cassandra:2.1` - linux; amd64

```console
$ docker pull cassandra@sha256:fad8ce7174a9a47d94123694b998f41487c9a17592b5295ca5a9b1adacf877fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134205102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70cdb82bf282a74cf2cb31c29604360db396423415d506c887c6c8913115126b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:17:55 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sun, 18 Feb 2018 02:34:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 02:34:36 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 02:34:57 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 02:35:05 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sun, 18 Feb 2018 02:35:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sun, 18 Feb 2018 02:35:09 GMT
ENV CASSANDRA_VERSION=2.1.20
# Sun, 18 Feb 2018 02:36:08 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sun, 18 Feb 2018 02:36:15 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sun, 18 Feb 2018 02:36:16 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sun, 18 Feb 2018 02:36:28 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Sun, 18 Feb 2018 02:36:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sun, 18 Feb 2018 02:36:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 02:36:30 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sun, 18 Feb 2018 02:36:30 GMT
VOLUME [/var/lib/cassandra]
# Sun, 18 Feb 2018 02:36:31 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sun, 18 Feb 2018 02:36:31 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eedbcd43184b33ea571c7d77ef462a7fd894114b6ada52f28f5d14671cb8492`  
		Last Modified: Thu, 15 Feb 2018 03:23:25 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:072ae729cd957937ce320e32556c03fe592d7714494346531e2ff53fa74ac827`  
		Last Modified: Sun, 18 Feb 2018 02:58:59 GMT  
		Size: 815.2 KB (815232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88af7399e8e6c29af4cbdadd9b0beb370bb5f0aa26571d24c415569009f761b5`  
		Last Modified: Sun, 18 Feb 2018 02:58:59 GMT  
		Size: 983.9 KB (983930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8e1872a95dff6e83d1d890fdb1aabcc77a5d23f2b632f04ee4ae5b5614c29a`  
		Last Modified: Sun, 18 Feb 2018 02:58:59 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e14cc45a65efd01abb77e90a860771d3f714e10b838cb0675db0452d440a98`  
		Last Modified: Sun, 18 Feb 2018 02:59:14 GMT  
		Size: 102.2 MB (102237056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ad0a55d58ea87c548f2677fd4b9dc814f1266518733ab3c0be7415ccc2f4df`  
		Last Modified: Sun, 18 Feb 2018 02:58:56 GMT  
		Size: 4.7 KB (4670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f5dd8b034b159eee3c244f99ae5fced70c3cd37509a1d59998f025916cf364`  
		Last Modified: Sun, 18 Feb 2018 02:58:56 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c12d14297ee90c50c1cb444baef1ff5f6667a4c85279880d6a4b4689c8689c9`  
		Last Modified: Sun, 18 Feb 2018 02:58:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed33ce922c1d7b9476b2b9f4061dd94c7e364f6e6bc0e14d6cd9789cbfd9af8`  
		Last Modified: Sun, 18 Feb 2018 02:58:56 GMT  
		Size: 20.6 KB (20550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.1` - linux; 386

```console
$ docker pull cassandra@sha256:702ad7578d9e9ab7ef9eb5c8027524476355bd43f8830356eb0666d0b955fe18
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.5 MB (145537486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ca0d4805285bb830da8ff28d8798d8e6aeb2cafa897c1aaab46e696e022d0b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Tue, 20 Feb 2018 02:04:32 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 20 Feb 2018 02:04:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Feb 2018 02:12:24 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Feb 2018 02:13:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 20 Feb 2018 02:14:06 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 20 Feb 2018 02:14:13 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Feb 2018 02:17:49 GMT
ENV CASSANDRA_VERSION=2.1.20
# Tue, 20 Feb 2018 02:19:01 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 20 Feb 2018 02:25:31 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 20 Feb 2018 02:25:33 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 20 Feb 2018 02:25:33 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Tue, 20 Feb 2018 02:25:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 20 Feb 2018 02:25:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Feb 2018 02:25:35 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 20 Feb 2018 02:25:35 GMT
VOLUME [/var/lib/cassandra]
# Tue, 20 Feb 2018 02:25:36 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 20 Feb 2018 02:25:36 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10425450b7595b66f33a1d0be168ec9664f6cf59d4c2862c26a6e2ba98c407c4`  
		Last Modified: Tue, 20 Feb 2018 03:22:40 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30bbb8d50927fc5a016a67ee3ade9bc0e03f706c608bcbb08cfa580b6ca58a73`  
		Last Modified: Tue, 20 Feb 2018 03:22:40 GMT  
		Size: 844.4 KB (844444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:886ac36c32186fe92153f4671ff1b1e1cfaf9438ecb81f3e46b81447ab56799b`  
		Last Modified: Tue, 20 Feb 2018 03:22:41 GMT  
		Size: 962.9 KB (962864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e293aa46d4e7f47de06561bbabc8b4c4d68c1ca35e593659ee86832171d15ad`  
		Last Modified: Tue, 20 Feb 2018 03:22:40 GMT  
		Size: 18.2 KB (18234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd0bd2ba6f863f78e6f85fc29bdede10464af47331d3f34543c76b466cdd781`  
		Last Modified: Tue, 20 Feb 2018 03:23:06 GMT  
		Size: 113.4 MB (113410480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55cd0c87135320b22131f4732de1431b7f36b067c33d4e912fd62fbb0bf1be1`  
		Last Modified: Tue, 20 Feb 2018 03:22:40 GMT  
		Size: 4.7 KB (4671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1419da83363a043a659dd7430abb14cb66a8642f992b277c6b30904227127b`  
		Last Modified: Tue, 20 Feb 2018 03:22:40 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1093031256a1c38351c8c3e3bfc8114039b4ad4e0b1dd10cb1c19fcbc2d37fc`  
		Last Modified: Tue, 20 Feb 2018 03:22:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89284e5a7b20721def71d720d11e50edfc50281578484ca0bacf3bf4fcf49a06`  
		Last Modified: Tue, 20 Feb 2018 03:22:40 GMT  
		Size: 20.5 KB (20548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1.20`

```console
$ docker pull cassandra@sha256:bf1bdffae89470ecc9c76c94a8efb719d7d8f774a63713c39ba6c5929144a8e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `cassandra:2.1.20` - linux; amd64

```console
$ docker pull cassandra@sha256:fad8ce7174a9a47d94123694b998f41487c9a17592b5295ca5a9b1adacf877fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134205102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70cdb82bf282a74cf2cb31c29604360db396423415d506c887c6c8913115126b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:17:55 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sun, 18 Feb 2018 02:34:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 02:34:36 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 02:34:57 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 02:35:05 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sun, 18 Feb 2018 02:35:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sun, 18 Feb 2018 02:35:09 GMT
ENV CASSANDRA_VERSION=2.1.20
# Sun, 18 Feb 2018 02:36:08 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sun, 18 Feb 2018 02:36:15 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sun, 18 Feb 2018 02:36:16 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sun, 18 Feb 2018 02:36:28 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Sun, 18 Feb 2018 02:36:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sun, 18 Feb 2018 02:36:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 02:36:30 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sun, 18 Feb 2018 02:36:30 GMT
VOLUME [/var/lib/cassandra]
# Sun, 18 Feb 2018 02:36:31 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sun, 18 Feb 2018 02:36:31 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eedbcd43184b33ea571c7d77ef462a7fd894114b6ada52f28f5d14671cb8492`  
		Last Modified: Thu, 15 Feb 2018 03:23:25 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:072ae729cd957937ce320e32556c03fe592d7714494346531e2ff53fa74ac827`  
		Last Modified: Sun, 18 Feb 2018 02:58:59 GMT  
		Size: 815.2 KB (815232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88af7399e8e6c29af4cbdadd9b0beb370bb5f0aa26571d24c415569009f761b5`  
		Last Modified: Sun, 18 Feb 2018 02:58:59 GMT  
		Size: 983.9 KB (983930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8e1872a95dff6e83d1d890fdb1aabcc77a5d23f2b632f04ee4ae5b5614c29a`  
		Last Modified: Sun, 18 Feb 2018 02:58:59 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e14cc45a65efd01abb77e90a860771d3f714e10b838cb0675db0452d440a98`  
		Last Modified: Sun, 18 Feb 2018 02:59:14 GMT  
		Size: 102.2 MB (102237056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ad0a55d58ea87c548f2677fd4b9dc814f1266518733ab3c0be7415ccc2f4df`  
		Last Modified: Sun, 18 Feb 2018 02:58:56 GMT  
		Size: 4.7 KB (4670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f5dd8b034b159eee3c244f99ae5fced70c3cd37509a1d59998f025916cf364`  
		Last Modified: Sun, 18 Feb 2018 02:58:56 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c12d14297ee90c50c1cb444baef1ff5f6667a4c85279880d6a4b4689c8689c9`  
		Last Modified: Sun, 18 Feb 2018 02:58:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed33ce922c1d7b9476b2b9f4061dd94c7e364f6e6bc0e14d6cd9789cbfd9af8`  
		Last Modified: Sun, 18 Feb 2018 02:58:56 GMT  
		Size: 20.6 KB (20550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.1.20` - linux; 386

```console
$ docker pull cassandra@sha256:702ad7578d9e9ab7ef9eb5c8027524476355bd43f8830356eb0666d0b955fe18
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.5 MB (145537486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ca0d4805285bb830da8ff28d8798d8e6aeb2cafa897c1aaab46e696e022d0b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Tue, 20 Feb 2018 02:04:32 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 20 Feb 2018 02:04:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Feb 2018 02:12:24 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Feb 2018 02:13:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 20 Feb 2018 02:14:06 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 20 Feb 2018 02:14:13 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Feb 2018 02:17:49 GMT
ENV CASSANDRA_VERSION=2.1.20
# Tue, 20 Feb 2018 02:19:01 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 20 Feb 2018 02:25:31 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 20 Feb 2018 02:25:33 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 20 Feb 2018 02:25:33 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Tue, 20 Feb 2018 02:25:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 20 Feb 2018 02:25:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Feb 2018 02:25:35 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 20 Feb 2018 02:25:35 GMT
VOLUME [/var/lib/cassandra]
# Tue, 20 Feb 2018 02:25:36 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 20 Feb 2018 02:25:36 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10425450b7595b66f33a1d0be168ec9664f6cf59d4c2862c26a6e2ba98c407c4`  
		Last Modified: Tue, 20 Feb 2018 03:22:40 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30bbb8d50927fc5a016a67ee3ade9bc0e03f706c608bcbb08cfa580b6ca58a73`  
		Last Modified: Tue, 20 Feb 2018 03:22:40 GMT  
		Size: 844.4 KB (844444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:886ac36c32186fe92153f4671ff1b1e1cfaf9438ecb81f3e46b81447ab56799b`  
		Last Modified: Tue, 20 Feb 2018 03:22:41 GMT  
		Size: 962.9 KB (962864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e293aa46d4e7f47de06561bbabc8b4c4d68c1ca35e593659ee86832171d15ad`  
		Last Modified: Tue, 20 Feb 2018 03:22:40 GMT  
		Size: 18.2 KB (18234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd0bd2ba6f863f78e6f85fc29bdede10464af47331d3f34543c76b466cdd781`  
		Last Modified: Tue, 20 Feb 2018 03:23:06 GMT  
		Size: 113.4 MB (113410480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55cd0c87135320b22131f4732de1431b7f36b067c33d4e912fd62fbb0bf1be1`  
		Last Modified: Tue, 20 Feb 2018 03:22:40 GMT  
		Size: 4.7 KB (4671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1419da83363a043a659dd7430abb14cb66a8642f992b277c6b30904227127b`  
		Last Modified: Tue, 20 Feb 2018 03:22:40 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1093031256a1c38351c8c3e3bfc8114039b4ad4e0b1dd10cb1c19fcbc2d37fc`  
		Last Modified: Tue, 20 Feb 2018 03:22:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89284e5a7b20721def71d720d11e50edfc50281578484ca0bacf3bf4fcf49a06`  
		Last Modified: Tue, 20 Feb 2018 03:22:40 GMT  
		Size: 20.5 KB (20548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2`

```console
$ docker pull cassandra@sha256:488e7a80c3929711740e89246c2ae2084e4b0f7a9e8e424e7a64bcaacd144a34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `cassandra:2.2` - linux; amd64

```console
$ docker pull cassandra@sha256:ad2d6da8c626043c8751e6dbe4d00707e11079900b360ccd7bab771bd16f558c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138530306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1858bd3e15d413303ebd5e20a0db57d0df6707b2b9b345ed5da309e80326b20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:17:55 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sun, 18 Feb 2018 02:34:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 02:34:36 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 02:34:57 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 02:35:05 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sun, 18 Feb 2018 02:35:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sun, 18 Feb 2018 02:37:00 GMT
ENV CASSANDRA_VERSION=2.2.12
# Sun, 18 Feb 2018 02:37:58 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sun, 18 Feb 2018 02:49:58 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sun, 18 Feb 2018 02:49:59 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sun, 18 Feb 2018 02:50:00 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Sun, 18 Feb 2018 02:50:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sun, 18 Feb 2018 02:50:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 02:50:01 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sun, 18 Feb 2018 02:50:02 GMT
VOLUME [/var/lib/cassandra]
# Sun, 18 Feb 2018 02:50:02 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sun, 18 Feb 2018 02:50:02 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eedbcd43184b33ea571c7d77ef462a7fd894114b6ada52f28f5d14671cb8492`  
		Last Modified: Thu, 15 Feb 2018 03:23:25 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:072ae729cd957937ce320e32556c03fe592d7714494346531e2ff53fa74ac827`  
		Last Modified: Sun, 18 Feb 2018 02:58:59 GMT  
		Size: 815.2 KB (815232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88af7399e8e6c29af4cbdadd9b0beb370bb5f0aa26571d24c415569009f761b5`  
		Last Modified: Sun, 18 Feb 2018 02:58:59 GMT  
		Size: 983.9 KB (983930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8e1872a95dff6e83d1d890fdb1aabcc77a5d23f2b632f04ee4ae5b5614c29a`  
		Last Modified: Sun, 18 Feb 2018 02:58:59 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b40ad95ac1f9c7ca11514784a1319152f77defd764ef0eefff692dc3866be85`  
		Last Modified: Sun, 18 Feb 2018 03:00:14 GMT  
		Size: 106.6 MB (106560076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ef1f4e3c5b6eb2dfd95117ab2f0f937e5be75a31a01e010351356ec7df9a6c`  
		Last Modified: Sun, 18 Feb 2018 02:59:50 GMT  
		Size: 4.9 KB (4887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd8dec42e2357001244a5dd2534980d66fb6c5fb3d89dd59421337e25ca7e58`  
		Last Modified: Sun, 18 Feb 2018 02:59:50 GMT  
		Size: 840.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cff269e592cf6f413acd97c40162a89c63bbeab79ac7ff844102703b7a97006`  
		Last Modified: Sun, 18 Feb 2018 02:59:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb88307ea490862eb958f4adf2833d3a9fb5af26044349643d0e1ecb84363d9`  
		Last Modified: Sun, 18 Feb 2018 02:59:50 GMT  
		Size: 22.5 KB (22516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.2` - linux; 386

```console
$ docker pull cassandra@sha256:595c3019b84c93b3d45740ac19b6e139749c5b97a60287e2bea8fbd8a35cb89d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.9 MB (149870826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a572f3a232197ea62db8706e1e56d2d209e6405e59520a87792fc0282519563`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Tue, 20 Feb 2018 02:04:32 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 20 Feb 2018 02:04:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Feb 2018 02:12:24 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Feb 2018 02:13:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 20 Feb 2018 02:14:06 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 20 Feb 2018 02:14:13 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Feb 2018 02:36:42 GMT
ENV CASSANDRA_VERSION=2.2.12
# Tue, 20 Feb 2018 02:38:07 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 20 Feb 2018 02:41:14 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 20 Feb 2018 02:41:15 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 20 Feb 2018 02:41:15 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Tue, 20 Feb 2018 02:41:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 20 Feb 2018 02:41:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Feb 2018 02:48:15 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 20 Feb 2018 02:48:15 GMT
VOLUME [/var/lib/cassandra]
# Tue, 20 Feb 2018 02:48:15 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 20 Feb 2018 02:48:16 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10425450b7595b66f33a1d0be168ec9664f6cf59d4c2862c26a6e2ba98c407c4`  
		Last Modified: Tue, 20 Feb 2018 03:22:40 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30bbb8d50927fc5a016a67ee3ade9bc0e03f706c608bcbb08cfa580b6ca58a73`  
		Last Modified: Tue, 20 Feb 2018 03:22:40 GMT  
		Size: 844.4 KB (844444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:886ac36c32186fe92153f4671ff1b1e1cfaf9438ecb81f3e46b81447ab56799b`  
		Last Modified: Tue, 20 Feb 2018 03:22:41 GMT  
		Size: 962.9 KB (962864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e293aa46d4e7f47de06561bbabc8b4c4d68c1ca35e593659ee86832171d15ad`  
		Last Modified: Tue, 20 Feb 2018 03:22:40 GMT  
		Size: 18.2 KB (18234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f459e4dbeca4572d1c2ea750632de523e3b338c00f609b751b3eae1eebbc97e7`  
		Last Modified: Tue, 20 Feb 2018 03:34:08 GMT  
		Size: 117.7 MB (117741636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258b46bfa21736d1547bed9ead8001128b8365be6fb5abb1462b48949b8f7ef2`  
		Last Modified: Tue, 20 Feb 2018 03:33:42 GMT  
		Size: 4.9 KB (4883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132703dd2d9c298fce49f92dae7ad3fe14fafe6e811db437c6c3ed80969d30dc`  
		Last Modified: Tue, 20 Feb 2018 03:33:41 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514043b3a7216cafd3c1b641db4f22e90a250eb5dd843a3ffe0200196ef2352d`  
		Last Modified: Tue, 20 Feb 2018 03:33:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41b25a39b9dd71136d208dd665b33f772c21167e03b68aaf1db2ac62316508f`  
		Last Modified: Tue, 20 Feb 2018 03:33:41 GMT  
		Size: 22.5 KB (22520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2.12`

```console
$ docker pull cassandra@sha256:488e7a80c3929711740e89246c2ae2084e4b0f7a9e8e424e7a64bcaacd144a34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `cassandra:2.2.12` - linux; amd64

```console
$ docker pull cassandra@sha256:ad2d6da8c626043c8751e6dbe4d00707e11079900b360ccd7bab771bd16f558c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138530306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1858bd3e15d413303ebd5e20a0db57d0df6707b2b9b345ed5da309e80326b20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:17:55 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sun, 18 Feb 2018 02:34:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 02:34:36 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 02:34:57 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 02:35:05 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sun, 18 Feb 2018 02:35:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sun, 18 Feb 2018 02:37:00 GMT
ENV CASSANDRA_VERSION=2.2.12
# Sun, 18 Feb 2018 02:37:58 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sun, 18 Feb 2018 02:49:58 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sun, 18 Feb 2018 02:49:59 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sun, 18 Feb 2018 02:50:00 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Sun, 18 Feb 2018 02:50:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sun, 18 Feb 2018 02:50:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 02:50:01 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sun, 18 Feb 2018 02:50:02 GMT
VOLUME [/var/lib/cassandra]
# Sun, 18 Feb 2018 02:50:02 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sun, 18 Feb 2018 02:50:02 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eedbcd43184b33ea571c7d77ef462a7fd894114b6ada52f28f5d14671cb8492`  
		Last Modified: Thu, 15 Feb 2018 03:23:25 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:072ae729cd957937ce320e32556c03fe592d7714494346531e2ff53fa74ac827`  
		Last Modified: Sun, 18 Feb 2018 02:58:59 GMT  
		Size: 815.2 KB (815232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88af7399e8e6c29af4cbdadd9b0beb370bb5f0aa26571d24c415569009f761b5`  
		Last Modified: Sun, 18 Feb 2018 02:58:59 GMT  
		Size: 983.9 KB (983930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8e1872a95dff6e83d1d890fdb1aabcc77a5d23f2b632f04ee4ae5b5614c29a`  
		Last Modified: Sun, 18 Feb 2018 02:58:59 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b40ad95ac1f9c7ca11514784a1319152f77defd764ef0eefff692dc3866be85`  
		Last Modified: Sun, 18 Feb 2018 03:00:14 GMT  
		Size: 106.6 MB (106560076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ef1f4e3c5b6eb2dfd95117ab2f0f937e5be75a31a01e010351356ec7df9a6c`  
		Last Modified: Sun, 18 Feb 2018 02:59:50 GMT  
		Size: 4.9 KB (4887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd8dec42e2357001244a5dd2534980d66fb6c5fb3d89dd59421337e25ca7e58`  
		Last Modified: Sun, 18 Feb 2018 02:59:50 GMT  
		Size: 840.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cff269e592cf6f413acd97c40162a89c63bbeab79ac7ff844102703b7a97006`  
		Last Modified: Sun, 18 Feb 2018 02:59:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb88307ea490862eb958f4adf2833d3a9fb5af26044349643d0e1ecb84363d9`  
		Last Modified: Sun, 18 Feb 2018 02:59:50 GMT  
		Size: 22.5 KB (22516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.2.12` - linux; 386

```console
$ docker pull cassandra@sha256:595c3019b84c93b3d45740ac19b6e139749c5b97a60287e2bea8fbd8a35cb89d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.9 MB (149870826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a572f3a232197ea62db8706e1e56d2d209e6405e59520a87792fc0282519563`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Tue, 20 Feb 2018 02:04:32 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 20 Feb 2018 02:04:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Feb 2018 02:12:24 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Feb 2018 02:13:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 20 Feb 2018 02:14:06 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 20 Feb 2018 02:14:13 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Feb 2018 02:36:42 GMT
ENV CASSANDRA_VERSION=2.2.12
# Tue, 20 Feb 2018 02:38:07 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 20 Feb 2018 02:41:14 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 20 Feb 2018 02:41:15 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 20 Feb 2018 02:41:15 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Tue, 20 Feb 2018 02:41:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 20 Feb 2018 02:41:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Feb 2018 02:48:15 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 20 Feb 2018 02:48:15 GMT
VOLUME [/var/lib/cassandra]
# Tue, 20 Feb 2018 02:48:15 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 20 Feb 2018 02:48:16 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10425450b7595b66f33a1d0be168ec9664f6cf59d4c2862c26a6e2ba98c407c4`  
		Last Modified: Tue, 20 Feb 2018 03:22:40 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30bbb8d50927fc5a016a67ee3ade9bc0e03f706c608bcbb08cfa580b6ca58a73`  
		Last Modified: Tue, 20 Feb 2018 03:22:40 GMT  
		Size: 844.4 KB (844444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:886ac36c32186fe92153f4671ff1b1e1cfaf9438ecb81f3e46b81447ab56799b`  
		Last Modified: Tue, 20 Feb 2018 03:22:41 GMT  
		Size: 962.9 KB (962864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e293aa46d4e7f47de06561bbabc8b4c4d68c1ca35e593659ee86832171d15ad`  
		Last Modified: Tue, 20 Feb 2018 03:22:40 GMT  
		Size: 18.2 KB (18234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f459e4dbeca4572d1c2ea750632de523e3b338c00f609b751b3eae1eebbc97e7`  
		Last Modified: Tue, 20 Feb 2018 03:34:08 GMT  
		Size: 117.7 MB (117741636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258b46bfa21736d1547bed9ead8001128b8365be6fb5abb1462b48949b8f7ef2`  
		Last Modified: Tue, 20 Feb 2018 03:33:42 GMT  
		Size: 4.9 KB (4883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132703dd2d9c298fce49f92dae7ad3fe14fafe6e811db437c6c3ed80969d30dc`  
		Last Modified: Tue, 20 Feb 2018 03:33:41 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514043b3a7216cafd3c1b641db4f22e90a250eb5dd843a3ffe0200196ef2352d`  
		Last Modified: Tue, 20 Feb 2018 03:33:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41b25a39b9dd71136d208dd665b33f772c21167e03b68aaf1db2ac62316508f`  
		Last Modified: Tue, 20 Feb 2018 03:33:41 GMT  
		Size: 22.5 KB (22520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3`

```console
$ docker pull cassandra@sha256:881f0ebf67b9554879bab58ed5f991650f03ab07ed5167a01c9f8cfae7140645
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `cassandra:3` - linux; amd64

```console
$ docker pull cassandra@sha256:7fb746ab6f577335183652b5e930d1113b2042198c38c53ce70d09f2ff7760c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132563364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fb9df189322acc54a02fe93cfa15d928e4c46698ec4fc4974b7937c29a9402d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Thu, 15 Feb 2018 02:01:56 GMT
ADD file:27ffb1ef53bfa3b9f26c0ad9d788ae2340b46470f958f451ddd80e122d94d100 in / 
# Thu, 15 Feb 2018 02:01:56 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:00:43 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sun, 18 Feb 2018 02:50:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 02:50:53 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 02:51:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 02:51:43 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sun, 18 Feb 2018 02:51:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 22 Feb 2018 19:47:37 GMT
ENV CASSANDRA_VERSION=3.11.2
# Thu, 22 Feb 2018 19:48:05 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 22 Feb 2018 19:48:06 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 22 Feb 2018 19:48:06 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 22 Feb 2018 19:48:07 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Thu, 22 Feb 2018 19:48:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 22 Feb 2018 19:48:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Feb 2018 19:48:08 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 22 Feb 2018 19:48:09 GMT
VOLUME [/var/lib/cassandra]
# Thu, 22 Feb 2018 19:48:09 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 22 Feb 2018 19:48:09 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:8176e34d5d92775e15a602541e02fec25a22933a12561c114436b757b8e7a9e8`  
		Last Modified: Thu, 15 Feb 2018 02:27:50 GMT  
		Size: 22.5 MB (22496767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73bd674a49d304aa9eaea6779a1b976da48a1eff703555be2ad3a9393879cb02`  
		Last Modified: Sun, 18 Feb 2018 03:13:26 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ff671d9c1324d2d7a21070cf9e67494f8d3809560b97ba23ef10894bfef9cb`  
		Last Modified: Sun, 18 Feb 2018 03:13:27 GMT  
		Size: 5.7 MB (5672946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bd7b662ce42a9e826ec6c20e9c4b59b0b89f311871e44e5b0da03972d959b0`  
		Last Modified: Sun, 18 Feb 2018 03:13:25 GMT  
		Size: 957.4 KB (957370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19665db7d4f7b3172619d82da1507abb41ce8a1282d7cdade0678dfdcf327ca1`  
		Last Modified: Sun, 18 Feb 2018 03:13:25 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f9dac377e1ff143c7f370d9a34d5a2218769ca5bbcd2457f31c3f0ac31ba4d`  
		Last Modified: Thu, 22 Feb 2018 19:49:29 GMT  
		Size: 103.4 MB (103380171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d4057ad4b5885c75c8031c4cc9ff5af135db9784b774a11bdac3fc8e89e21ae`  
		Last Modified: Thu, 22 Feb 2018 19:49:17 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67195fd512722c4c13405a8c00921efee73ff24eb60eed060ca600be073396a`  
		Last Modified: Thu, 22 Feb 2018 19:49:17 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f474f82b5aed80f1179b936e54eae54dd43514bfc48999665d9ab3d029763d`  
		Last Modified: Thu, 22 Feb 2018 19:49:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a983727de8b5e95945941cce116a9ddc767b65a59eed4f45cc1101ba9ee72e5`  
		Last Modified: Thu, 22 Feb 2018 19:49:17 GMT  
		Size: 30.5 KB (30528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:160a550508c6bcf798acba614a48d0e19e89fcae2e4d42f2855efb9cd4b49e06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121818427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2cbe064451eeda0eaa164b20a6b0c87314a9e2cc678c787af0978eaa82230e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 03:10:42 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sun, 18 Feb 2018 01:42:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 01:42:16 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 01:42:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 01:42:50 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sun, 18 Feb 2018 01:43:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 22 Feb 2018 23:55:29 GMT
ENV CASSANDRA_VERSION=3.11.2
# Thu, 22 Feb 2018 23:57:37 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 22 Feb 2018 23:57:38 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 22 Feb 2018 23:57:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 22 Feb 2018 23:57:40 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Thu, 22 Feb 2018 23:57:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 22 Feb 2018 23:57:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Feb 2018 23:57:44 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 22 Feb 2018 23:57:45 GMT
VOLUME [/var/lib/cassandra]
# Thu, 22 Feb 2018 23:57:46 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 22 Feb 2018 23:57:47 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ba3c64abb917c03ae79d3b02b14013152ee61b645d3fb1439893636f6fdf13`  
		Last Modified: Fri, 16 Feb 2018 03:16:36 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29eb4e09c6bafa133510a2392696a2d4e0d3df4ee87a7f014b71cad42b96bf25`  
		Last Modified: Sun, 18 Feb 2018 01:49:24 GMT  
		Size: 5.1 MB (5143317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09cfee8ccecc7fb6a0e3caa002bf6c8041dadc21dbfcf717eca678de3cd09db8`  
		Last Modified: Sun, 18 Feb 2018 01:49:21 GMT  
		Size: 924.9 KB (924937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8f90d18115f18d000f8b7d8c6bdae2e8b7c5c03adcaa6229633983b7a46a55`  
		Last Modified: Sun, 18 Feb 2018 01:49:21 GMT  
		Size: 18.2 KB (18220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48f72a229299b151ac7ebf6fa4f5cd8d73847d3f7aa10e87490f8ebec522c19`  
		Last Modified: Thu, 22 Feb 2018 23:59:38 GMT  
		Size: 95.3 MB (95346641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c112821c87542e89e7d022e6108ea69710828444382d2a4ad9997956397786`  
		Last Modified: Thu, 22 Feb 2018 23:59:13 GMT  
		Size: 4.7 KB (4657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a494f7b9ff7b2f20b1acf92d2490ce6002b7d4f79c75a4dd66bb520cd5c7b38`  
		Last Modified: Thu, 22 Feb 2018 23:59:14 GMT  
		Size: 840.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd88b6c6475a689cac639adf7faddc2edcc140ec22811f57ceb3e2d6c255b2e`  
		Last Modified: Thu, 22 Feb 2018 23:59:13 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61b5b0815f63307fe0e62bc2a60f7d168da6e67841480a84d9081e4874756ec`  
		Last Modified: Thu, 22 Feb 2018 23:59:13 GMT  
		Size: 30.5 KB (30526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3` - linux; ppc64le

```console
$ docker pull cassandra@sha256:2a54291b4b950f6a20f32c1c5ccbe6234c1b20cdb2d1d6e55183a4e2dadc25a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125558041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4295ecf64b6f0143cc9aaf73a6e5c0e7febf828a0df3aacf44bb45b417c8c0eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 02:27:58 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sun, 18 Feb 2018 11:06:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 11:06:43 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 11:08:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 11:08:12 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sun, 18 Feb 2018 11:08:46 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 23 Feb 2018 11:10:59 GMT
ENV CASSANDRA_VERSION=3.11.2
# Fri, 23 Feb 2018 11:15:15 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 23 Feb 2018 11:15:17 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 23 Feb 2018 11:15:23 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 23 Feb 2018 11:15:25 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Fri, 23 Feb 2018 11:15:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 23 Feb 2018 11:15:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Feb 2018 11:15:34 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 23 Feb 2018 11:15:36 GMT
VOLUME [/var/lib/cassandra]
# Fri, 23 Feb 2018 11:15:37 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 23 Feb 2018 11:15:38 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:07a374cd4a95ebfac482b60ccc87f4492e55d2f46ad3344b9f1656082a2d40c9`  
		Last Modified: Thu, 15 Feb 2018 01:46:41 GMT  
		Size: 22.8 MB (22753099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed0ebc3f29b9122b92e366a38faeb5d3f88db1cd5aa91bed8e2633f3a2ec55c`  
		Last Modified: Sat, 17 Feb 2018 11:13:15 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf01b2b767b70f35d0cd43aa0c98debb7e431b414c9077601db54071126f832`  
		Last Modified: Sun, 18 Feb 2018 11:13:48 GMT  
		Size: 5.5 MB (5537672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1045a32f0141590a4b3d93e25e795b649372edaed7e6800ebac555162edc78`  
		Last Modified: Sun, 18 Feb 2018 11:13:47 GMT  
		Size: 926.1 KB (926144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e3efac6e73ffa84537269d159624080c0978c6bdbd368a7d0b7c2495a4ed08`  
		Last Modified: Sun, 18 Feb 2018 11:13:46 GMT  
		Size: 18.2 KB (18221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f436e7dfcc27c0386274e78831d5301ab47d9cb2ff3136a7ee2bc33fe0e62637`  
		Last Modified: Fri, 23 Feb 2018 11:17:00 GMT  
		Size: 96.3 MB (96281242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf286e66857a6af3afae97b8220402f2b3b66696132a5689537de706009935cc`  
		Last Modified: Fri, 23 Feb 2018 11:16:42 GMT  
		Size: 8.4 KB (8416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2adbb25be1c362d99f24fde551c421ece090689e8e746d74014f25f6b5d14987`  
		Last Modified: Fri, 23 Feb 2018 11:16:42 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8fd2038a3b2c94b790ad0c3d1443f46367dbfdbc77909e73efd474dd4598470`  
		Last Modified: Fri, 23 Feb 2018 11:16:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90489d03c48c027c6dab2d97d70e999469009d216cfb943280e368ab66d0b375`  
		Last Modified: Fri, 23 Feb 2018 11:16:44 GMT  
		Size: 30.5 KB (30530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0`

```console
$ docker pull cassandra@sha256:2db1583a47850cebe4dc8f0d176086d31e5c6e02c75226b400d1cdab2d6a7abb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `cassandra:3.0` - linux; amd64

```console
$ docker pull cassandra@sha256:2cb61f4a5e3793e7295e61880b0c801a8eb781e3832b377da1b4b59f31b9898b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127765950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ae0d344eee91ba9e2679ad3fcc7a1250188cabe4b975cbb12bdd65ed131a29e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Thu, 15 Feb 2018 02:01:56 GMT
ADD file:27ffb1ef53bfa3b9f26c0ad9d788ae2340b46470f958f451ddd80e122d94d100 in / 
# Thu, 15 Feb 2018 02:01:56 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:00:43 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sun, 18 Feb 2018 02:50:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 02:50:53 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 02:51:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 02:51:43 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sun, 18 Feb 2018 02:51:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 22 Feb 2018 19:46:49 GMT
ENV CASSANDRA_VERSION=3.0.16
# Thu, 22 Feb 2018 19:47:17 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 22 Feb 2018 19:47:18 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 22 Feb 2018 19:47:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 22 Feb 2018 19:47:19 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Thu, 22 Feb 2018 19:47:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 22 Feb 2018 19:47:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Feb 2018 19:47:20 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 22 Feb 2018 19:47:21 GMT
VOLUME [/var/lib/cassandra]
# Thu, 22 Feb 2018 19:47:21 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 22 Feb 2018 19:47:21 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:8176e34d5d92775e15a602541e02fec25a22933a12561c114436b757b8e7a9e8`  
		Last Modified: Thu, 15 Feb 2018 02:27:50 GMT  
		Size: 22.5 MB (22496767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73bd674a49d304aa9eaea6779a1b976da48a1eff703555be2ad3a9393879cb02`  
		Last Modified: Sun, 18 Feb 2018 03:13:26 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ff671d9c1324d2d7a21070cf9e67494f8d3809560b97ba23ef10894bfef9cb`  
		Last Modified: Sun, 18 Feb 2018 03:13:27 GMT  
		Size: 5.7 MB (5672946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bd7b662ce42a9e826ec6c20e9c4b59b0b89f311871e44e5b0da03972d959b0`  
		Last Modified: Sun, 18 Feb 2018 03:13:25 GMT  
		Size: 957.4 KB (957370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19665db7d4f7b3172619d82da1507abb41ce8a1282d7cdade0678dfdcf327ca1`  
		Last Modified: Sun, 18 Feb 2018 03:13:25 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f364e942baa6cd449f7e312c13c19655fee835a459311d3afa2f3fedef6665`  
		Last Modified: Thu, 22 Feb 2018 19:48:41 GMT  
		Size: 98.6 MB (98587119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd35e7a6ff2a8fcfd6a5bdec5cd2c3d6c1610394bf9913287e3bf871a042615`  
		Last Modified: Thu, 22 Feb 2018 19:48:30 GMT  
		Size: 4.9 KB (4945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e75c45a7a8c1cd2c10933fcbe2b16dbcb79632bd0a42ca9e0bae32321ef6524`  
		Last Modified: Thu, 22 Feb 2018 19:48:29 GMT  
		Size: 840.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bc80fdc84883c9d8541e7576303ad6e93a7ed31f84f583933db09b93af316e`  
		Last Modified: Thu, 22 Feb 2018 19:48:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989c56716494638276e9b89616400b0b28ece5d0c42edf5d47c44b7cb311b81f`  
		Last Modified: Thu, 22 Feb 2018 19:48:30 GMT  
		Size: 25.9 KB (25874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:8da1fdceab439fd4f74e4e60653155a32f34a258c70f8eb0c50837ca443f5e9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (117022666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a34d0e644a48cd3a7140e2202898db95d06535f1bc77b55e263268c0f079b42c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 03:10:42 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sun, 18 Feb 2018 01:42:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 01:42:16 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 01:42:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 01:42:50 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sun, 18 Feb 2018 01:43:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 22 Feb 2018 23:52:47 GMT
ENV CASSANDRA_VERSION=3.0.16
# Thu, 22 Feb 2018 23:55:03 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 22 Feb 2018 23:55:04 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 22 Feb 2018 23:55:05 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 22 Feb 2018 23:55:06 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Thu, 22 Feb 2018 23:55:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 22 Feb 2018 23:55:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Feb 2018 23:55:10 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 22 Feb 2018 23:55:10 GMT
VOLUME [/var/lib/cassandra]
# Thu, 22 Feb 2018 23:55:11 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 22 Feb 2018 23:55:11 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ba3c64abb917c03ae79d3b02b14013152ee61b645d3fb1439893636f6fdf13`  
		Last Modified: Fri, 16 Feb 2018 03:16:36 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29eb4e09c6bafa133510a2392696a2d4e0d3df4ee87a7f014b71cad42b96bf25`  
		Last Modified: Sun, 18 Feb 2018 01:49:24 GMT  
		Size: 5.1 MB (5143317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09cfee8ccecc7fb6a0e3caa002bf6c8041dadc21dbfcf717eca678de3cd09db8`  
		Last Modified: Sun, 18 Feb 2018 01:49:21 GMT  
		Size: 924.9 KB (924937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8f90d18115f18d000f8b7d8c6bdae2e8b7c5c03adcaa6229633983b7a46a55`  
		Last Modified: Sun, 18 Feb 2018 01:49:21 GMT  
		Size: 18.2 KB (18220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ce07317b2bb262d3cbe09fb885b6e200a13a355428f65e84a2c837e6b6305b`  
		Last Modified: Thu, 22 Feb 2018 23:58:41 GMT  
		Size: 90.6 MB (90555239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7736bd117be3264d8fc2f9b8527e6baaf49d7faa1b59a634fe47cfe0310e6469`  
		Last Modified: Thu, 22 Feb 2018 23:58:16 GMT  
		Size: 4.9 KB (4947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed33b68b0b9eec83c13f85c767084d9d26a963ab9319ab6be152a5a16c372c9`  
		Last Modified: Thu, 22 Feb 2018 23:58:16 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d50f5a53ba8d948c5414ec262c8621c21682e413bb0ad777449025504d29d55`  
		Last Modified: Thu, 22 Feb 2018 23:58:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b6e4e83a8c9dbfd9f719a9cd85e61019487cdf95dc70cd5dc2e528b200af9d`  
		Last Modified: Thu, 22 Feb 2018 23:58:16 GMT  
		Size: 25.9 KB (25872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0` - linux; ppc64le

```console
$ docker pull cassandra@sha256:0f12658cd84e40de0bfad13b206515fc57813d4f221de6a725845488589c1636
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.8 MB (120755930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b75ade7e9e395e310187e5261cee4da04142efac3af071de4b995d1afc0ee206`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 02:27:58 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sun, 18 Feb 2018 11:06:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 11:06:43 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 11:08:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 11:08:12 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sun, 18 Feb 2018 11:08:46 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 23 Feb 2018 11:05:29 GMT
ENV CASSANDRA_VERSION=3.0.16
# Fri, 23 Feb 2018 11:10:08 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 23 Feb 2018 11:10:11 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 23 Feb 2018 11:10:28 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 23 Feb 2018 11:10:30 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Fri, 23 Feb 2018 11:10:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 23 Feb 2018 11:10:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Feb 2018 11:10:47 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 23 Feb 2018 11:10:49 GMT
VOLUME [/var/lib/cassandra]
# Fri, 23 Feb 2018 11:10:50 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 23 Feb 2018 11:10:52 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:07a374cd4a95ebfac482b60ccc87f4492e55d2f46ad3344b9f1656082a2d40c9`  
		Last Modified: Thu, 15 Feb 2018 01:46:41 GMT  
		Size: 22.8 MB (22753099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed0ebc3f29b9122b92e366a38faeb5d3f88db1cd5aa91bed8e2633f3a2ec55c`  
		Last Modified: Sat, 17 Feb 2018 11:13:15 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf01b2b767b70f35d0cd43aa0c98debb7e431b414c9077601db54071126f832`  
		Last Modified: Sun, 18 Feb 2018 11:13:48 GMT  
		Size: 5.5 MB (5537672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1045a32f0141590a4b3d93e25e795b649372edaed7e6800ebac555162edc78`  
		Last Modified: Sun, 18 Feb 2018 11:13:47 GMT  
		Size: 926.1 KB (926144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e3efac6e73ffa84537269d159624080c0978c6bdbd368a7d0b7c2495a4ed08`  
		Last Modified: Sun, 18 Feb 2018 11:13:46 GMT  
		Size: 18.2 KB (18221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea8de389deaffae27d94529428ce3cfdc95ecd70a30adbcdc928fd69141ce5b`  
		Last Modified: Fri, 23 Feb 2018 11:16:22 GMT  
		Size: 91.5 MB (91487257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5dd31204ca11964f8a2655dbc859d791bfedfdb636fe39ba1c3c6de19af104`  
		Last Modified: Fri, 23 Feb 2018 11:16:04 GMT  
		Size: 5.0 KB (4950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c640f1235e340b6fe4a839eb8cf9988ed17c1763107a2a2e627c263847d84c2`  
		Last Modified: Fri, 23 Feb 2018 11:16:04 GMT  
		Size: 840.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c223c8dc6d6b7aed089c1baa7339717faf7819d9659a326fa0d05ec2035474f`  
		Last Modified: Fri, 23 Feb 2018 11:16:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04a5ae4a4953e40dc1a65aa165a9ed0a2c1ac1623b76fbc07d930026ced9879`  
		Last Modified: Fri, 23 Feb 2018 11:16:04 GMT  
		Size: 25.9 KB (25872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0.16`

```console
$ docker pull cassandra@sha256:2db1583a47850cebe4dc8f0d176086d31e5c6e02c75226b400d1cdab2d6a7abb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `cassandra:3.0.16` - linux; amd64

```console
$ docker pull cassandra@sha256:2cb61f4a5e3793e7295e61880b0c801a8eb781e3832b377da1b4b59f31b9898b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127765950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ae0d344eee91ba9e2679ad3fcc7a1250188cabe4b975cbb12bdd65ed131a29e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Thu, 15 Feb 2018 02:01:56 GMT
ADD file:27ffb1ef53bfa3b9f26c0ad9d788ae2340b46470f958f451ddd80e122d94d100 in / 
# Thu, 15 Feb 2018 02:01:56 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:00:43 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sun, 18 Feb 2018 02:50:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 02:50:53 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 02:51:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 02:51:43 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sun, 18 Feb 2018 02:51:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 22 Feb 2018 19:46:49 GMT
ENV CASSANDRA_VERSION=3.0.16
# Thu, 22 Feb 2018 19:47:17 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 22 Feb 2018 19:47:18 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 22 Feb 2018 19:47:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 22 Feb 2018 19:47:19 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Thu, 22 Feb 2018 19:47:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 22 Feb 2018 19:47:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Feb 2018 19:47:20 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 22 Feb 2018 19:47:21 GMT
VOLUME [/var/lib/cassandra]
# Thu, 22 Feb 2018 19:47:21 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 22 Feb 2018 19:47:21 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:8176e34d5d92775e15a602541e02fec25a22933a12561c114436b757b8e7a9e8`  
		Last Modified: Thu, 15 Feb 2018 02:27:50 GMT  
		Size: 22.5 MB (22496767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73bd674a49d304aa9eaea6779a1b976da48a1eff703555be2ad3a9393879cb02`  
		Last Modified: Sun, 18 Feb 2018 03:13:26 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ff671d9c1324d2d7a21070cf9e67494f8d3809560b97ba23ef10894bfef9cb`  
		Last Modified: Sun, 18 Feb 2018 03:13:27 GMT  
		Size: 5.7 MB (5672946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bd7b662ce42a9e826ec6c20e9c4b59b0b89f311871e44e5b0da03972d959b0`  
		Last Modified: Sun, 18 Feb 2018 03:13:25 GMT  
		Size: 957.4 KB (957370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19665db7d4f7b3172619d82da1507abb41ce8a1282d7cdade0678dfdcf327ca1`  
		Last Modified: Sun, 18 Feb 2018 03:13:25 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f364e942baa6cd449f7e312c13c19655fee835a459311d3afa2f3fedef6665`  
		Last Modified: Thu, 22 Feb 2018 19:48:41 GMT  
		Size: 98.6 MB (98587119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd35e7a6ff2a8fcfd6a5bdec5cd2c3d6c1610394bf9913287e3bf871a042615`  
		Last Modified: Thu, 22 Feb 2018 19:48:30 GMT  
		Size: 4.9 KB (4945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e75c45a7a8c1cd2c10933fcbe2b16dbcb79632bd0a42ca9e0bae32321ef6524`  
		Last Modified: Thu, 22 Feb 2018 19:48:29 GMT  
		Size: 840.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bc80fdc84883c9d8541e7576303ad6e93a7ed31f84f583933db09b93af316e`  
		Last Modified: Thu, 22 Feb 2018 19:48:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989c56716494638276e9b89616400b0b28ece5d0c42edf5d47c44b7cb311b81f`  
		Last Modified: Thu, 22 Feb 2018 19:48:30 GMT  
		Size: 25.9 KB (25874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0.16` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:8da1fdceab439fd4f74e4e60653155a32f34a258c70f8eb0c50837ca443f5e9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (117022666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a34d0e644a48cd3a7140e2202898db95d06535f1bc77b55e263268c0f079b42c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 03:10:42 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sun, 18 Feb 2018 01:42:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 01:42:16 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 01:42:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 01:42:50 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sun, 18 Feb 2018 01:43:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 22 Feb 2018 23:52:47 GMT
ENV CASSANDRA_VERSION=3.0.16
# Thu, 22 Feb 2018 23:55:03 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 22 Feb 2018 23:55:04 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 22 Feb 2018 23:55:05 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 22 Feb 2018 23:55:06 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Thu, 22 Feb 2018 23:55:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 22 Feb 2018 23:55:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Feb 2018 23:55:10 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 22 Feb 2018 23:55:10 GMT
VOLUME [/var/lib/cassandra]
# Thu, 22 Feb 2018 23:55:11 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 22 Feb 2018 23:55:11 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ba3c64abb917c03ae79d3b02b14013152ee61b645d3fb1439893636f6fdf13`  
		Last Modified: Fri, 16 Feb 2018 03:16:36 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29eb4e09c6bafa133510a2392696a2d4e0d3df4ee87a7f014b71cad42b96bf25`  
		Last Modified: Sun, 18 Feb 2018 01:49:24 GMT  
		Size: 5.1 MB (5143317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09cfee8ccecc7fb6a0e3caa002bf6c8041dadc21dbfcf717eca678de3cd09db8`  
		Last Modified: Sun, 18 Feb 2018 01:49:21 GMT  
		Size: 924.9 KB (924937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8f90d18115f18d000f8b7d8c6bdae2e8b7c5c03adcaa6229633983b7a46a55`  
		Last Modified: Sun, 18 Feb 2018 01:49:21 GMT  
		Size: 18.2 KB (18220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ce07317b2bb262d3cbe09fb885b6e200a13a355428f65e84a2c837e6b6305b`  
		Last Modified: Thu, 22 Feb 2018 23:58:41 GMT  
		Size: 90.6 MB (90555239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7736bd117be3264d8fc2f9b8527e6baaf49d7faa1b59a634fe47cfe0310e6469`  
		Last Modified: Thu, 22 Feb 2018 23:58:16 GMT  
		Size: 4.9 KB (4947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed33b68b0b9eec83c13f85c767084d9d26a963ab9319ab6be152a5a16c372c9`  
		Last Modified: Thu, 22 Feb 2018 23:58:16 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d50f5a53ba8d948c5414ec262c8621c21682e413bb0ad777449025504d29d55`  
		Last Modified: Thu, 22 Feb 2018 23:58:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b6e4e83a8c9dbfd9f719a9cd85e61019487cdf95dc70cd5dc2e528b200af9d`  
		Last Modified: Thu, 22 Feb 2018 23:58:16 GMT  
		Size: 25.9 KB (25872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0.16` - linux; ppc64le

```console
$ docker pull cassandra@sha256:0f12658cd84e40de0bfad13b206515fc57813d4f221de6a725845488589c1636
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.8 MB (120755930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b75ade7e9e395e310187e5261cee4da04142efac3af071de4b995d1afc0ee206`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 02:27:58 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sun, 18 Feb 2018 11:06:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 11:06:43 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 11:08:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 11:08:12 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sun, 18 Feb 2018 11:08:46 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 23 Feb 2018 11:05:29 GMT
ENV CASSANDRA_VERSION=3.0.16
# Fri, 23 Feb 2018 11:10:08 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 23 Feb 2018 11:10:11 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 23 Feb 2018 11:10:28 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 23 Feb 2018 11:10:30 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Fri, 23 Feb 2018 11:10:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 23 Feb 2018 11:10:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Feb 2018 11:10:47 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 23 Feb 2018 11:10:49 GMT
VOLUME [/var/lib/cassandra]
# Fri, 23 Feb 2018 11:10:50 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 23 Feb 2018 11:10:52 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:07a374cd4a95ebfac482b60ccc87f4492e55d2f46ad3344b9f1656082a2d40c9`  
		Last Modified: Thu, 15 Feb 2018 01:46:41 GMT  
		Size: 22.8 MB (22753099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed0ebc3f29b9122b92e366a38faeb5d3f88db1cd5aa91bed8e2633f3a2ec55c`  
		Last Modified: Sat, 17 Feb 2018 11:13:15 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf01b2b767b70f35d0cd43aa0c98debb7e431b414c9077601db54071126f832`  
		Last Modified: Sun, 18 Feb 2018 11:13:48 GMT  
		Size: 5.5 MB (5537672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1045a32f0141590a4b3d93e25e795b649372edaed7e6800ebac555162edc78`  
		Last Modified: Sun, 18 Feb 2018 11:13:47 GMT  
		Size: 926.1 KB (926144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e3efac6e73ffa84537269d159624080c0978c6bdbd368a7d0b7c2495a4ed08`  
		Last Modified: Sun, 18 Feb 2018 11:13:46 GMT  
		Size: 18.2 KB (18221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea8de389deaffae27d94529428ce3cfdc95ecd70a30adbcdc928fd69141ce5b`  
		Last Modified: Fri, 23 Feb 2018 11:16:22 GMT  
		Size: 91.5 MB (91487257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5dd31204ca11964f8a2655dbc859d791bfedfdb636fe39ba1c3c6de19af104`  
		Last Modified: Fri, 23 Feb 2018 11:16:04 GMT  
		Size: 5.0 KB (4950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c640f1235e340b6fe4a839eb8cf9988ed17c1763107a2a2e627c263847d84c2`  
		Last Modified: Fri, 23 Feb 2018 11:16:04 GMT  
		Size: 840.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c223c8dc6d6b7aed089c1baa7339717faf7819d9659a326fa0d05ec2035474f`  
		Last Modified: Fri, 23 Feb 2018 11:16:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04a5ae4a4953e40dc1a65aa165a9ed0a2c1ac1623b76fbc07d930026ced9879`  
		Last Modified: Fri, 23 Feb 2018 11:16:04 GMT  
		Size: 25.9 KB (25872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.11`

```console
$ docker pull cassandra@sha256:881f0ebf67b9554879bab58ed5f991650f03ab07ed5167a01c9f8cfae7140645
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `cassandra:3.11` - linux; amd64

```console
$ docker pull cassandra@sha256:7fb746ab6f577335183652b5e930d1113b2042198c38c53ce70d09f2ff7760c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132563364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fb9df189322acc54a02fe93cfa15d928e4c46698ec4fc4974b7937c29a9402d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Thu, 15 Feb 2018 02:01:56 GMT
ADD file:27ffb1ef53bfa3b9f26c0ad9d788ae2340b46470f958f451ddd80e122d94d100 in / 
# Thu, 15 Feb 2018 02:01:56 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:00:43 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sun, 18 Feb 2018 02:50:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 02:50:53 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 02:51:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 02:51:43 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sun, 18 Feb 2018 02:51:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 22 Feb 2018 19:47:37 GMT
ENV CASSANDRA_VERSION=3.11.2
# Thu, 22 Feb 2018 19:48:05 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 22 Feb 2018 19:48:06 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 22 Feb 2018 19:48:06 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 22 Feb 2018 19:48:07 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Thu, 22 Feb 2018 19:48:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 22 Feb 2018 19:48:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Feb 2018 19:48:08 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 22 Feb 2018 19:48:09 GMT
VOLUME [/var/lib/cassandra]
# Thu, 22 Feb 2018 19:48:09 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 22 Feb 2018 19:48:09 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:8176e34d5d92775e15a602541e02fec25a22933a12561c114436b757b8e7a9e8`  
		Last Modified: Thu, 15 Feb 2018 02:27:50 GMT  
		Size: 22.5 MB (22496767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73bd674a49d304aa9eaea6779a1b976da48a1eff703555be2ad3a9393879cb02`  
		Last Modified: Sun, 18 Feb 2018 03:13:26 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ff671d9c1324d2d7a21070cf9e67494f8d3809560b97ba23ef10894bfef9cb`  
		Last Modified: Sun, 18 Feb 2018 03:13:27 GMT  
		Size: 5.7 MB (5672946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bd7b662ce42a9e826ec6c20e9c4b59b0b89f311871e44e5b0da03972d959b0`  
		Last Modified: Sun, 18 Feb 2018 03:13:25 GMT  
		Size: 957.4 KB (957370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19665db7d4f7b3172619d82da1507abb41ce8a1282d7cdade0678dfdcf327ca1`  
		Last Modified: Sun, 18 Feb 2018 03:13:25 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f9dac377e1ff143c7f370d9a34d5a2218769ca5bbcd2457f31c3f0ac31ba4d`  
		Last Modified: Thu, 22 Feb 2018 19:49:29 GMT  
		Size: 103.4 MB (103380171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d4057ad4b5885c75c8031c4cc9ff5af135db9784b774a11bdac3fc8e89e21ae`  
		Last Modified: Thu, 22 Feb 2018 19:49:17 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67195fd512722c4c13405a8c00921efee73ff24eb60eed060ca600be073396a`  
		Last Modified: Thu, 22 Feb 2018 19:49:17 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f474f82b5aed80f1179b936e54eae54dd43514bfc48999665d9ab3d029763d`  
		Last Modified: Thu, 22 Feb 2018 19:49:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a983727de8b5e95945941cce116a9ddc767b65a59eed4f45cc1101ba9ee72e5`  
		Last Modified: Thu, 22 Feb 2018 19:49:17 GMT  
		Size: 30.5 KB (30528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:160a550508c6bcf798acba614a48d0e19e89fcae2e4d42f2855efb9cd4b49e06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121818427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2cbe064451eeda0eaa164b20a6b0c87314a9e2cc678c787af0978eaa82230e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 03:10:42 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sun, 18 Feb 2018 01:42:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 01:42:16 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 01:42:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 01:42:50 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sun, 18 Feb 2018 01:43:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 22 Feb 2018 23:55:29 GMT
ENV CASSANDRA_VERSION=3.11.2
# Thu, 22 Feb 2018 23:57:37 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 22 Feb 2018 23:57:38 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 22 Feb 2018 23:57:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 22 Feb 2018 23:57:40 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Thu, 22 Feb 2018 23:57:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 22 Feb 2018 23:57:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Feb 2018 23:57:44 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 22 Feb 2018 23:57:45 GMT
VOLUME [/var/lib/cassandra]
# Thu, 22 Feb 2018 23:57:46 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 22 Feb 2018 23:57:47 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ba3c64abb917c03ae79d3b02b14013152ee61b645d3fb1439893636f6fdf13`  
		Last Modified: Fri, 16 Feb 2018 03:16:36 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29eb4e09c6bafa133510a2392696a2d4e0d3df4ee87a7f014b71cad42b96bf25`  
		Last Modified: Sun, 18 Feb 2018 01:49:24 GMT  
		Size: 5.1 MB (5143317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09cfee8ccecc7fb6a0e3caa002bf6c8041dadc21dbfcf717eca678de3cd09db8`  
		Last Modified: Sun, 18 Feb 2018 01:49:21 GMT  
		Size: 924.9 KB (924937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8f90d18115f18d000f8b7d8c6bdae2e8b7c5c03adcaa6229633983b7a46a55`  
		Last Modified: Sun, 18 Feb 2018 01:49:21 GMT  
		Size: 18.2 KB (18220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48f72a229299b151ac7ebf6fa4f5cd8d73847d3f7aa10e87490f8ebec522c19`  
		Last Modified: Thu, 22 Feb 2018 23:59:38 GMT  
		Size: 95.3 MB (95346641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c112821c87542e89e7d022e6108ea69710828444382d2a4ad9997956397786`  
		Last Modified: Thu, 22 Feb 2018 23:59:13 GMT  
		Size: 4.7 KB (4657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a494f7b9ff7b2f20b1acf92d2490ce6002b7d4f79c75a4dd66bb520cd5c7b38`  
		Last Modified: Thu, 22 Feb 2018 23:59:14 GMT  
		Size: 840.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd88b6c6475a689cac639adf7faddc2edcc140ec22811f57ceb3e2d6c255b2e`  
		Last Modified: Thu, 22 Feb 2018 23:59:13 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61b5b0815f63307fe0e62bc2a60f7d168da6e67841480a84d9081e4874756ec`  
		Last Modified: Thu, 22 Feb 2018 23:59:13 GMT  
		Size: 30.5 KB (30526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11` - linux; ppc64le

```console
$ docker pull cassandra@sha256:2a54291b4b950f6a20f32c1c5ccbe6234c1b20cdb2d1d6e55183a4e2dadc25a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125558041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4295ecf64b6f0143cc9aaf73a6e5c0e7febf828a0df3aacf44bb45b417c8c0eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 02:27:58 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sun, 18 Feb 2018 11:06:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 11:06:43 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 11:08:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 11:08:12 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sun, 18 Feb 2018 11:08:46 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 23 Feb 2018 11:10:59 GMT
ENV CASSANDRA_VERSION=3.11.2
# Fri, 23 Feb 2018 11:15:15 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 23 Feb 2018 11:15:17 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 23 Feb 2018 11:15:23 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 23 Feb 2018 11:15:25 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Fri, 23 Feb 2018 11:15:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 23 Feb 2018 11:15:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Feb 2018 11:15:34 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 23 Feb 2018 11:15:36 GMT
VOLUME [/var/lib/cassandra]
# Fri, 23 Feb 2018 11:15:37 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 23 Feb 2018 11:15:38 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:07a374cd4a95ebfac482b60ccc87f4492e55d2f46ad3344b9f1656082a2d40c9`  
		Last Modified: Thu, 15 Feb 2018 01:46:41 GMT  
		Size: 22.8 MB (22753099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed0ebc3f29b9122b92e366a38faeb5d3f88db1cd5aa91bed8e2633f3a2ec55c`  
		Last Modified: Sat, 17 Feb 2018 11:13:15 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf01b2b767b70f35d0cd43aa0c98debb7e431b414c9077601db54071126f832`  
		Last Modified: Sun, 18 Feb 2018 11:13:48 GMT  
		Size: 5.5 MB (5537672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1045a32f0141590a4b3d93e25e795b649372edaed7e6800ebac555162edc78`  
		Last Modified: Sun, 18 Feb 2018 11:13:47 GMT  
		Size: 926.1 KB (926144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e3efac6e73ffa84537269d159624080c0978c6bdbd368a7d0b7c2495a4ed08`  
		Last Modified: Sun, 18 Feb 2018 11:13:46 GMT  
		Size: 18.2 KB (18221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f436e7dfcc27c0386274e78831d5301ab47d9cb2ff3136a7ee2bc33fe0e62637`  
		Last Modified: Fri, 23 Feb 2018 11:17:00 GMT  
		Size: 96.3 MB (96281242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf286e66857a6af3afae97b8220402f2b3b66696132a5689537de706009935cc`  
		Last Modified: Fri, 23 Feb 2018 11:16:42 GMT  
		Size: 8.4 KB (8416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2adbb25be1c362d99f24fde551c421ece090689e8e746d74014f25f6b5d14987`  
		Last Modified: Fri, 23 Feb 2018 11:16:42 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8fd2038a3b2c94b790ad0c3d1443f46367dbfdbc77909e73efd474dd4598470`  
		Last Modified: Fri, 23 Feb 2018 11:16:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90489d03c48c027c6dab2d97d70e999469009d216cfb943280e368ab66d0b375`  
		Last Modified: Fri, 23 Feb 2018 11:16:44 GMT  
		Size: 30.5 KB (30530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.11.2`

```console
$ docker pull cassandra@sha256:881f0ebf67b9554879bab58ed5f991650f03ab07ed5167a01c9f8cfae7140645
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `cassandra:3.11.2` - linux; amd64

```console
$ docker pull cassandra@sha256:7fb746ab6f577335183652b5e930d1113b2042198c38c53ce70d09f2ff7760c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132563364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fb9df189322acc54a02fe93cfa15d928e4c46698ec4fc4974b7937c29a9402d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Thu, 15 Feb 2018 02:01:56 GMT
ADD file:27ffb1ef53bfa3b9f26c0ad9d788ae2340b46470f958f451ddd80e122d94d100 in / 
# Thu, 15 Feb 2018 02:01:56 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:00:43 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sun, 18 Feb 2018 02:50:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 02:50:53 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 02:51:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 02:51:43 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sun, 18 Feb 2018 02:51:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 22 Feb 2018 19:47:37 GMT
ENV CASSANDRA_VERSION=3.11.2
# Thu, 22 Feb 2018 19:48:05 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 22 Feb 2018 19:48:06 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 22 Feb 2018 19:48:06 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 22 Feb 2018 19:48:07 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Thu, 22 Feb 2018 19:48:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 22 Feb 2018 19:48:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Feb 2018 19:48:08 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 22 Feb 2018 19:48:09 GMT
VOLUME [/var/lib/cassandra]
# Thu, 22 Feb 2018 19:48:09 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 22 Feb 2018 19:48:09 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:8176e34d5d92775e15a602541e02fec25a22933a12561c114436b757b8e7a9e8`  
		Last Modified: Thu, 15 Feb 2018 02:27:50 GMT  
		Size: 22.5 MB (22496767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73bd674a49d304aa9eaea6779a1b976da48a1eff703555be2ad3a9393879cb02`  
		Last Modified: Sun, 18 Feb 2018 03:13:26 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ff671d9c1324d2d7a21070cf9e67494f8d3809560b97ba23ef10894bfef9cb`  
		Last Modified: Sun, 18 Feb 2018 03:13:27 GMT  
		Size: 5.7 MB (5672946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bd7b662ce42a9e826ec6c20e9c4b59b0b89f311871e44e5b0da03972d959b0`  
		Last Modified: Sun, 18 Feb 2018 03:13:25 GMT  
		Size: 957.4 KB (957370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19665db7d4f7b3172619d82da1507abb41ce8a1282d7cdade0678dfdcf327ca1`  
		Last Modified: Sun, 18 Feb 2018 03:13:25 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f9dac377e1ff143c7f370d9a34d5a2218769ca5bbcd2457f31c3f0ac31ba4d`  
		Last Modified: Thu, 22 Feb 2018 19:49:29 GMT  
		Size: 103.4 MB (103380171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d4057ad4b5885c75c8031c4cc9ff5af135db9784b774a11bdac3fc8e89e21ae`  
		Last Modified: Thu, 22 Feb 2018 19:49:17 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67195fd512722c4c13405a8c00921efee73ff24eb60eed060ca600be073396a`  
		Last Modified: Thu, 22 Feb 2018 19:49:17 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f474f82b5aed80f1179b936e54eae54dd43514bfc48999665d9ab3d029763d`  
		Last Modified: Thu, 22 Feb 2018 19:49:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a983727de8b5e95945941cce116a9ddc767b65a59eed4f45cc1101ba9ee72e5`  
		Last Modified: Thu, 22 Feb 2018 19:49:17 GMT  
		Size: 30.5 KB (30528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11.2` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:160a550508c6bcf798acba614a48d0e19e89fcae2e4d42f2855efb9cd4b49e06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121818427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2cbe064451eeda0eaa164b20a6b0c87314a9e2cc678c787af0978eaa82230e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 03:10:42 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sun, 18 Feb 2018 01:42:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 01:42:16 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 01:42:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 01:42:50 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sun, 18 Feb 2018 01:43:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 22 Feb 2018 23:55:29 GMT
ENV CASSANDRA_VERSION=3.11.2
# Thu, 22 Feb 2018 23:57:37 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 22 Feb 2018 23:57:38 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 22 Feb 2018 23:57:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 22 Feb 2018 23:57:40 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Thu, 22 Feb 2018 23:57:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 22 Feb 2018 23:57:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Feb 2018 23:57:44 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 22 Feb 2018 23:57:45 GMT
VOLUME [/var/lib/cassandra]
# Thu, 22 Feb 2018 23:57:46 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 22 Feb 2018 23:57:47 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ba3c64abb917c03ae79d3b02b14013152ee61b645d3fb1439893636f6fdf13`  
		Last Modified: Fri, 16 Feb 2018 03:16:36 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29eb4e09c6bafa133510a2392696a2d4e0d3df4ee87a7f014b71cad42b96bf25`  
		Last Modified: Sun, 18 Feb 2018 01:49:24 GMT  
		Size: 5.1 MB (5143317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09cfee8ccecc7fb6a0e3caa002bf6c8041dadc21dbfcf717eca678de3cd09db8`  
		Last Modified: Sun, 18 Feb 2018 01:49:21 GMT  
		Size: 924.9 KB (924937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8f90d18115f18d000f8b7d8c6bdae2e8b7c5c03adcaa6229633983b7a46a55`  
		Last Modified: Sun, 18 Feb 2018 01:49:21 GMT  
		Size: 18.2 KB (18220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48f72a229299b151ac7ebf6fa4f5cd8d73847d3f7aa10e87490f8ebec522c19`  
		Last Modified: Thu, 22 Feb 2018 23:59:38 GMT  
		Size: 95.3 MB (95346641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c112821c87542e89e7d022e6108ea69710828444382d2a4ad9997956397786`  
		Last Modified: Thu, 22 Feb 2018 23:59:13 GMT  
		Size: 4.7 KB (4657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a494f7b9ff7b2f20b1acf92d2490ce6002b7d4f79c75a4dd66bb520cd5c7b38`  
		Last Modified: Thu, 22 Feb 2018 23:59:14 GMT  
		Size: 840.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd88b6c6475a689cac639adf7faddc2edcc140ec22811f57ceb3e2d6c255b2e`  
		Last Modified: Thu, 22 Feb 2018 23:59:13 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61b5b0815f63307fe0e62bc2a60f7d168da6e67841480a84d9081e4874756ec`  
		Last Modified: Thu, 22 Feb 2018 23:59:13 GMT  
		Size: 30.5 KB (30526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11.2` - linux; ppc64le

```console
$ docker pull cassandra@sha256:2a54291b4b950f6a20f32c1c5ccbe6234c1b20cdb2d1d6e55183a4e2dadc25a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125558041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4295ecf64b6f0143cc9aaf73a6e5c0e7febf828a0df3aacf44bb45b417c8c0eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 02:27:58 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sun, 18 Feb 2018 11:06:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 11:06:43 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 11:08:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 11:08:12 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sun, 18 Feb 2018 11:08:46 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 23 Feb 2018 11:10:59 GMT
ENV CASSANDRA_VERSION=3.11.2
# Fri, 23 Feb 2018 11:15:15 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 23 Feb 2018 11:15:17 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 23 Feb 2018 11:15:23 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 23 Feb 2018 11:15:25 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Fri, 23 Feb 2018 11:15:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 23 Feb 2018 11:15:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Feb 2018 11:15:34 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 23 Feb 2018 11:15:36 GMT
VOLUME [/var/lib/cassandra]
# Fri, 23 Feb 2018 11:15:37 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 23 Feb 2018 11:15:38 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:07a374cd4a95ebfac482b60ccc87f4492e55d2f46ad3344b9f1656082a2d40c9`  
		Last Modified: Thu, 15 Feb 2018 01:46:41 GMT  
		Size: 22.8 MB (22753099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed0ebc3f29b9122b92e366a38faeb5d3f88db1cd5aa91bed8e2633f3a2ec55c`  
		Last Modified: Sat, 17 Feb 2018 11:13:15 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf01b2b767b70f35d0cd43aa0c98debb7e431b414c9077601db54071126f832`  
		Last Modified: Sun, 18 Feb 2018 11:13:48 GMT  
		Size: 5.5 MB (5537672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1045a32f0141590a4b3d93e25e795b649372edaed7e6800ebac555162edc78`  
		Last Modified: Sun, 18 Feb 2018 11:13:47 GMT  
		Size: 926.1 KB (926144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e3efac6e73ffa84537269d159624080c0978c6bdbd368a7d0b7c2495a4ed08`  
		Last Modified: Sun, 18 Feb 2018 11:13:46 GMT  
		Size: 18.2 KB (18221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f436e7dfcc27c0386274e78831d5301ab47d9cb2ff3136a7ee2bc33fe0e62637`  
		Last Modified: Fri, 23 Feb 2018 11:17:00 GMT  
		Size: 96.3 MB (96281242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf286e66857a6af3afae97b8220402f2b3b66696132a5689537de706009935cc`  
		Last Modified: Fri, 23 Feb 2018 11:16:42 GMT  
		Size: 8.4 KB (8416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2adbb25be1c362d99f24fde551c421ece090689e8e746d74014f25f6b5d14987`  
		Last Modified: Fri, 23 Feb 2018 11:16:42 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8fd2038a3b2c94b790ad0c3d1443f46367dbfdbc77909e73efd474dd4598470`  
		Last Modified: Fri, 23 Feb 2018 11:16:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90489d03c48c027c6dab2d97d70e999469009d216cfb943280e368ab66d0b375`  
		Last Modified: Fri, 23 Feb 2018 11:16:44 GMT  
		Size: 30.5 KB (30530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:latest`

```console
$ docker pull cassandra@sha256:881f0ebf67b9554879bab58ed5f991650f03ab07ed5167a01c9f8cfae7140645
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `cassandra:latest` - linux; amd64

```console
$ docker pull cassandra@sha256:7fb746ab6f577335183652b5e930d1113b2042198c38c53ce70d09f2ff7760c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132563364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fb9df189322acc54a02fe93cfa15d928e4c46698ec4fc4974b7937c29a9402d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Thu, 15 Feb 2018 02:01:56 GMT
ADD file:27ffb1ef53bfa3b9f26c0ad9d788ae2340b46470f958f451ddd80e122d94d100 in / 
# Thu, 15 Feb 2018 02:01:56 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:00:43 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sun, 18 Feb 2018 02:50:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 02:50:53 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 02:51:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 02:51:43 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sun, 18 Feb 2018 02:51:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 22 Feb 2018 19:47:37 GMT
ENV CASSANDRA_VERSION=3.11.2
# Thu, 22 Feb 2018 19:48:05 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 22 Feb 2018 19:48:06 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 22 Feb 2018 19:48:06 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 22 Feb 2018 19:48:07 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Thu, 22 Feb 2018 19:48:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 22 Feb 2018 19:48:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Feb 2018 19:48:08 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 22 Feb 2018 19:48:09 GMT
VOLUME [/var/lib/cassandra]
# Thu, 22 Feb 2018 19:48:09 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 22 Feb 2018 19:48:09 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:8176e34d5d92775e15a602541e02fec25a22933a12561c114436b757b8e7a9e8`  
		Last Modified: Thu, 15 Feb 2018 02:27:50 GMT  
		Size: 22.5 MB (22496767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73bd674a49d304aa9eaea6779a1b976da48a1eff703555be2ad3a9393879cb02`  
		Last Modified: Sun, 18 Feb 2018 03:13:26 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ff671d9c1324d2d7a21070cf9e67494f8d3809560b97ba23ef10894bfef9cb`  
		Last Modified: Sun, 18 Feb 2018 03:13:27 GMT  
		Size: 5.7 MB (5672946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bd7b662ce42a9e826ec6c20e9c4b59b0b89f311871e44e5b0da03972d959b0`  
		Last Modified: Sun, 18 Feb 2018 03:13:25 GMT  
		Size: 957.4 KB (957370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19665db7d4f7b3172619d82da1507abb41ce8a1282d7cdade0678dfdcf327ca1`  
		Last Modified: Sun, 18 Feb 2018 03:13:25 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f9dac377e1ff143c7f370d9a34d5a2218769ca5bbcd2457f31c3f0ac31ba4d`  
		Last Modified: Thu, 22 Feb 2018 19:49:29 GMT  
		Size: 103.4 MB (103380171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d4057ad4b5885c75c8031c4cc9ff5af135db9784b774a11bdac3fc8e89e21ae`  
		Last Modified: Thu, 22 Feb 2018 19:49:17 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67195fd512722c4c13405a8c00921efee73ff24eb60eed060ca600be073396a`  
		Last Modified: Thu, 22 Feb 2018 19:49:17 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f474f82b5aed80f1179b936e54eae54dd43514bfc48999665d9ab3d029763d`  
		Last Modified: Thu, 22 Feb 2018 19:49:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a983727de8b5e95945941cce116a9ddc767b65a59eed4f45cc1101ba9ee72e5`  
		Last Modified: Thu, 22 Feb 2018 19:49:17 GMT  
		Size: 30.5 KB (30528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:latest` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:160a550508c6bcf798acba614a48d0e19e89fcae2e4d42f2855efb9cd4b49e06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121818427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2cbe064451eeda0eaa164b20a6b0c87314a9e2cc678c787af0978eaa82230e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 03:10:42 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sun, 18 Feb 2018 01:42:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 01:42:16 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 01:42:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 01:42:50 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sun, 18 Feb 2018 01:43:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 22 Feb 2018 23:55:29 GMT
ENV CASSANDRA_VERSION=3.11.2
# Thu, 22 Feb 2018 23:57:37 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 22 Feb 2018 23:57:38 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 22 Feb 2018 23:57:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 22 Feb 2018 23:57:40 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Thu, 22 Feb 2018 23:57:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 22 Feb 2018 23:57:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Feb 2018 23:57:44 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 22 Feb 2018 23:57:45 GMT
VOLUME [/var/lib/cassandra]
# Thu, 22 Feb 2018 23:57:46 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 22 Feb 2018 23:57:47 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ba3c64abb917c03ae79d3b02b14013152ee61b645d3fb1439893636f6fdf13`  
		Last Modified: Fri, 16 Feb 2018 03:16:36 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29eb4e09c6bafa133510a2392696a2d4e0d3df4ee87a7f014b71cad42b96bf25`  
		Last Modified: Sun, 18 Feb 2018 01:49:24 GMT  
		Size: 5.1 MB (5143317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09cfee8ccecc7fb6a0e3caa002bf6c8041dadc21dbfcf717eca678de3cd09db8`  
		Last Modified: Sun, 18 Feb 2018 01:49:21 GMT  
		Size: 924.9 KB (924937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8f90d18115f18d000f8b7d8c6bdae2e8b7c5c03adcaa6229633983b7a46a55`  
		Last Modified: Sun, 18 Feb 2018 01:49:21 GMT  
		Size: 18.2 KB (18220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48f72a229299b151ac7ebf6fa4f5cd8d73847d3f7aa10e87490f8ebec522c19`  
		Last Modified: Thu, 22 Feb 2018 23:59:38 GMT  
		Size: 95.3 MB (95346641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c112821c87542e89e7d022e6108ea69710828444382d2a4ad9997956397786`  
		Last Modified: Thu, 22 Feb 2018 23:59:13 GMT  
		Size: 4.7 KB (4657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a494f7b9ff7b2f20b1acf92d2490ce6002b7d4f79c75a4dd66bb520cd5c7b38`  
		Last Modified: Thu, 22 Feb 2018 23:59:14 GMT  
		Size: 840.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd88b6c6475a689cac639adf7faddc2edcc140ec22811f57ceb3e2d6c255b2e`  
		Last Modified: Thu, 22 Feb 2018 23:59:13 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61b5b0815f63307fe0e62bc2a60f7d168da6e67841480a84d9081e4874756ec`  
		Last Modified: Thu, 22 Feb 2018 23:59:13 GMT  
		Size: 30.5 KB (30526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:latest` - linux; ppc64le

```console
$ docker pull cassandra@sha256:2a54291b4b950f6a20f32c1c5ccbe6234c1b20cdb2d1d6e55183a4e2dadc25a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125558041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4295ecf64b6f0143cc9aaf73a6e5c0e7febf828a0df3aacf44bb45b417c8c0eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 02:27:58 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sun, 18 Feb 2018 11:06:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 11:06:43 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 11:08:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 11:08:12 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sun, 18 Feb 2018 11:08:46 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 23 Feb 2018 11:10:59 GMT
ENV CASSANDRA_VERSION=3.11.2
# Fri, 23 Feb 2018 11:15:15 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 23 Feb 2018 11:15:17 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 23 Feb 2018 11:15:23 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 23 Feb 2018 11:15:25 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Fri, 23 Feb 2018 11:15:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 23 Feb 2018 11:15:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Feb 2018 11:15:34 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 23 Feb 2018 11:15:36 GMT
VOLUME [/var/lib/cassandra]
# Fri, 23 Feb 2018 11:15:37 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 23 Feb 2018 11:15:38 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:07a374cd4a95ebfac482b60ccc87f4492e55d2f46ad3344b9f1656082a2d40c9`  
		Last Modified: Thu, 15 Feb 2018 01:46:41 GMT  
		Size: 22.8 MB (22753099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed0ebc3f29b9122b92e366a38faeb5d3f88db1cd5aa91bed8e2633f3a2ec55c`  
		Last Modified: Sat, 17 Feb 2018 11:13:15 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf01b2b767b70f35d0cd43aa0c98debb7e431b414c9077601db54071126f832`  
		Last Modified: Sun, 18 Feb 2018 11:13:48 GMT  
		Size: 5.5 MB (5537672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1045a32f0141590a4b3d93e25e795b649372edaed7e6800ebac555162edc78`  
		Last Modified: Sun, 18 Feb 2018 11:13:47 GMT  
		Size: 926.1 KB (926144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e3efac6e73ffa84537269d159624080c0978c6bdbd368a7d0b7c2495a4ed08`  
		Last Modified: Sun, 18 Feb 2018 11:13:46 GMT  
		Size: 18.2 KB (18221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f436e7dfcc27c0386274e78831d5301ab47d9cb2ff3136a7ee2bc33fe0e62637`  
		Last Modified: Fri, 23 Feb 2018 11:17:00 GMT  
		Size: 96.3 MB (96281242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf286e66857a6af3afae97b8220402f2b3b66696132a5689537de706009935cc`  
		Last Modified: Fri, 23 Feb 2018 11:16:42 GMT  
		Size: 8.4 KB (8416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2adbb25be1c362d99f24fde551c421ece090689e8e746d74014f25f6b5d14987`  
		Last Modified: Fri, 23 Feb 2018 11:16:42 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8fd2038a3b2c94b790ad0c3d1443f46367dbfdbc77909e73efd474dd4598470`  
		Last Modified: Fri, 23 Feb 2018 11:16:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90489d03c48c027c6dab2d97d70e999469009d216cfb943280e368ab66d0b375`  
		Last Modified: Fri, 23 Feb 2018 11:16:44 GMT  
		Size: 30.5 KB (30530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
