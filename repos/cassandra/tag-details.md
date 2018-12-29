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
$ docker pull cassandra@sha256:7fc9955bccf9d2d0626f00f50388978e804f627060ad33a40d293420828fea02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `cassandra:2` - linux; amd64

```console
$ docker pull cassandra@sha256:6b98390824e1ccf732a83ebd80bc5b4b159d1ba44f98b41e1ca2c0db20d67697
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.2 MB (196179660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50b2ab8fee3aea0b82a6d42711bcde60d3f4eed7be9b8c554b0829c3f77df81b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:38:49 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 01:38:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:38:58 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:39:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 01:39:11 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 01:39:15 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:40:31 GMT
ENV CASSANDRA_VERSION=2.2.13
# Sat, 29 Dec 2018 01:41:23 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 01:41:24 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 01:41:25 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 01:41:25 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:41:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 01:41:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:41:27 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 01:41:27 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 01:41:27 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 01:41:27 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a786826b247a619e865cebc931dad8c44c1d3054b004dff378c3145ba261b68`  
		Last Modified: Sat, 29 Dec 2018 01:42:56 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b9975a47b33482fa2f7190ef50083a67eca0081cfe12cbdce7d0a37469fa5c`  
		Last Modified: Sat, 29 Dec 2018 01:42:57 GMT  
		Size: 5.7 MB (5675965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0959d68fc6a47f41d2f71929656644434bef8616f2963fb7554f474f17be6fcb`  
		Last Modified: Sat, 29 Dec 2018 01:42:56 GMT  
		Size: 957.3 KB (957267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408c2f5a724a79d4a1ee6c1f3a10e3eeb4687418dedf88e50f5c68beb52ad5f9`  
		Last Modified: Sat, 29 Dec 2018 01:42:55 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:601ad935420b60ac30b0978ce9479e30255403c2908bc3ccd44ee5ff57976516`  
		Last Modified: Sat, 29 Dec 2018 01:43:50 GMT  
		Size: 167.0 MB (167004888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:446ccfa6c8c8202be34433c6a521c50a6471686044340e1037bf77a873168f93`  
		Last Modified: Sat, 29 Dec 2018 01:43:24 GMT  
		Size: 4.9 KB (4884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919a17df7919c88579158a3c2692405ea4a639a9218c213332ef419bb1ed9331`  
		Last Modified: Sat, 29 Dec 2018 01:43:24 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2219ffda4d4ef7218476bc5f0a09fed3ef7d1fd05e9aee4ea9bb1c945336b1b1`  
		Last Modified: Sat, 29 Dec 2018 01:43:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bde2bd7aeabacc9169cb86154d7a2036bec875385490332f847a765d2f7e4da`  
		Last Modified: Sat, 29 Dec 2018 01:43:24 GMT  
		Size: 22.5 KB (22491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2` - linux; 386

```console
$ docker pull cassandra@sha256:e74894995b9f9e70b6feaacc09b221a21c42387098078335620844ad9df6532b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.7 MB (199749492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a587881e831f3bb3e64988cae77e22fc691800512be2c149900dd2bbb163f711`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 12:00:23 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 17 Nov 2018 12:00:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 12:00:33 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 12:00:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Nov 2018 12:00:47 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 17 Nov 2018 12:00:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 17 Nov 2018 12:03:32 GMT
ENV CASSANDRA_VERSION=2.2.13
# Sat, 17 Nov 2018 12:05:12 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 17 Nov 2018 12:05:13 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 17 Nov 2018 12:05:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 17 Nov 2018 12:05:15 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Sat, 17 Nov 2018 12:05:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 17 Nov 2018 12:05:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 12:05:18 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 17 Nov 2018 12:05:19 GMT
VOLUME [/var/lib/cassandra]
# Sat, 17 Nov 2018 12:05:19 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sat, 17 Nov 2018 12:05:19 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f2a27047501bd9ba79978fff825a26d4897f7945a5e793140d91804641cff9`  
		Last Modified: Sat, 17 Nov 2018 12:10:09 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ed322048c8e298a8c47f5ff00fc2afceb1f9e41c787833335aa400db190a76`  
		Last Modified: Sat, 17 Nov 2018 12:10:11 GMT  
		Size: 6.1 MB (6060739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d602011396da990c4bf0e0d17678e2e4604fdbce8535f2884759becdeedc7d`  
		Last Modified: Sat, 17 Nov 2018 12:10:09 GMT  
		Size: 936.9 KB (936945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0865f88ac8c31be472bef6dc24e78ee3a3516c6a319427536edfbf53921d67b5`  
		Last Modified: Sat, 17 Nov 2018 12:10:08 GMT  
		Size: 18.2 KB (18225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807c57b9b80ebf062e9fd9789c2b0f5936c0fae62157e63fbe50a2bdba1f7510`  
		Last Modified: Sat, 17 Nov 2018 12:11:57 GMT  
		Size: 169.6 MB (169576414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6de4d740925e8ed91a0adba8213d6e9ef2d963acdaf9f57f213ef3a2895115`  
		Last Modified: Sat, 17 Nov 2018 12:11:18 GMT  
		Size: 4.9 KB (4887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb975a7a56400844b11c550899045b31b971b3bcaf951e3337c7240de1a3aa7c`  
		Last Modified: Sat, 17 Nov 2018 12:11:18 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec68d70dee04b094156edc614d34d26ebc9ba28d4532aea45cdd8c5bc5da09ba`  
		Last Modified: Sat, 17 Nov 2018 12:11:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41128df9854cec170274044f772fdc34d37ddbff3b0fe78f1ea8f74a3ea6aec9`  
		Last Modified: Sat, 17 Nov 2018 12:11:18 GMT  
		Size: 22.5 KB (22485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1`

```console
$ docker pull cassandra@sha256:98e63fb054cecb6f833d7a63aeeef40645cb7a2ddb28a771948f19ca7f64fca8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `cassandra:2.1` - linux; amd64

```console
$ docker pull cassandra@sha256:74f0b0052b5f51daa07128c82b189b3ca74f65e47c4fa5ea58d0229ead40e718
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.9 MB (191922318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af89be684415cc1f7fb33fc1815874b90d1c0205c10047d55ceae382f63e872b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:38:49 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 01:38:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:38:58 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:39:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 01:39:11 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 01:39:15 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:39:15 GMT
ENV CASSANDRA_VERSION=2.1.20
# Sat, 29 Dec 2018 01:40:09 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 01:40:10 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 01:40:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 01:40:13 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:40:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 01:40:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:40:17 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 01:40:17 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 01:40:18 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 01:40:18 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a786826b247a619e865cebc931dad8c44c1d3054b004dff378c3145ba261b68`  
		Last Modified: Sat, 29 Dec 2018 01:42:56 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b9975a47b33482fa2f7190ef50083a67eca0081cfe12cbdce7d0a37469fa5c`  
		Last Modified: Sat, 29 Dec 2018 01:42:57 GMT  
		Size: 5.7 MB (5675965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0959d68fc6a47f41d2f71929656644434bef8616f2963fb7554f474f17be6fcb`  
		Last Modified: Sat, 29 Dec 2018 01:42:56 GMT  
		Size: 957.3 KB (957267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408c2f5a724a79d4a1ee6c1f3a10e3eeb4687418dedf88e50f5c68beb52ad5f9`  
		Last Modified: Sat, 29 Dec 2018 01:42:55 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc0c3310e6e3569a511d70b729e511d38ba5c0eb84b1172e020a02ae241e0b3`  
		Last Modified: Sat, 29 Dec 2018 01:43:19 GMT  
		Size: 162.7 MB (162749695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f710ce1eb77ff722c95a8cbc44c7ecd19a19b3b394e815fd96f87af4f9e935c2`  
		Last Modified: Sat, 29 Dec 2018 01:42:54 GMT  
		Size: 4.7 KB (4673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3693f5972ea2129b1c7628ba2375948496aec931c70913baec2989c23f354c38`  
		Last Modified: Sat, 29 Dec 2018 01:42:54 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681d3a65279f5a3686204b0b76812b8b84f5d0a269712b1a2e8667d8811ccf11`  
		Last Modified: Sat, 29 Dec 2018 01:42:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c5d06b55573a8b2bc81c071126b3f4c759b0f3a81420c2dadee17e28f39d2ea`  
		Last Modified: Sat, 29 Dec 2018 01:42:54 GMT  
		Size: 20.6 KB (20557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.1` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:2573c3d10b5d2c9ce3157d5c5ed7a2a04da8a9c95d0f9f9972e91507d34fe148
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.0 MB (176040563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b71f4db7e8e7dffe5d325a40e15de0cd0c9f553698b7b0e2af22c2fe5e1b4fc9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 01:54:34 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 17 Nov 2018 01:55:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 01:55:21 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 01:56:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Nov 2018 01:56:41 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 17 Nov 2018 01:57:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 17 Nov 2018 01:57:01 GMT
ENV CASSANDRA_VERSION=2.1.20
# Sat, 17 Nov 2018 02:04:30 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 17 Nov 2018 02:04:32 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 17 Nov 2018 02:04:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 17 Nov 2018 02:04:38 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Sat, 17 Nov 2018 02:04:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 17 Nov 2018 02:04:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 02:04:47 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 17 Nov 2018 02:04:48 GMT
VOLUME [/var/lib/cassandra]
# Sat, 17 Nov 2018 02:04:49 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sat, 17 Nov 2018 02:04:50 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bd440a75f3d23f4196fdf17a5bbeb6939e24d6ca40728b37eb49546d045bb4`  
		Last Modified: Sat, 17 Nov 2018 02:13:56 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbaa50eb7bb6febb19ca442db4cf8ba96f8eea44cc1ed5b44e5ee3d995f1e450`  
		Last Modified: Sat, 17 Nov 2018 02:13:58 GMT  
		Size: 5.1 MB (5147291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d00f9bb11c898f82282761df0a1d303c868bd9a325d9806956166970e27b027`  
		Last Modified: Sat, 17 Nov 2018 02:13:56 GMT  
		Size: 925.1 KB (925056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d593ed0848078291e63af17cf4af9619e93417bd360c8cd093e4f56c06a7bff`  
		Last Modified: Sat, 17 Nov 2018 02:13:56 GMT  
		Size: 18.2 KB (18222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468bce29443631d05ba225205f5392c9f04f33944e0b3a478285409f2c1c62c0`  
		Last Modified: Sat, 17 Nov 2018 02:14:36 GMT  
		Size: 149.6 MB (149590430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0827166b28df38c4050ad4a209b4359067010c4c4cf22875ad47a11ceeb871a8`  
		Last Modified: Sat, 17 Nov 2018 02:13:53 GMT  
		Size: 4.7 KB (4671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b59ea8c1c31160f12c32bdf6c215daab998256745b5b9e1db6608d39ab30fb5`  
		Last Modified: Sat, 17 Nov 2018 02:13:53 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28feb19b7af784d4c8e8e057c0161e012b36e4b7850dd6358520fe8ce061e804`  
		Last Modified: Sat, 17 Nov 2018 02:13:53 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2d55cf2c5a0d89c06d9f2584b2d3a5ac57ae68f26d7f2b44b8da01eccc040b`  
		Last Modified: Sat, 17 Nov 2018 02:13:54 GMT  
		Size: 20.6 KB (20556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.1` - linux; 386

```console
$ docker pull cassandra@sha256:7959b4a3d8ec5816626bec008830f1c026b7a9268f761f7216efe746c6d32bd8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.5 MB (195506586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65e17e2d5b9ea9aa2322699395787f432c9823de744161e7dd7d33c059a64dc5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 12:00:23 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 17 Nov 2018 12:00:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 12:00:33 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 12:00:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Nov 2018 12:00:47 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 17 Nov 2018 12:00:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 17 Nov 2018 12:00:50 GMT
ENV CASSANDRA_VERSION=2.1.20
# Sat, 17 Nov 2018 12:02:27 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 17 Nov 2018 12:02:28 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 17 Nov 2018 12:02:29 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 17 Nov 2018 12:02:30 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Sat, 17 Nov 2018 12:02:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 17 Nov 2018 12:02:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 12:02:32 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 17 Nov 2018 12:02:33 GMT
VOLUME [/var/lib/cassandra]
# Sat, 17 Nov 2018 12:02:33 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sat, 17 Nov 2018 12:02:33 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f2a27047501bd9ba79978fff825a26d4897f7945a5e793140d91804641cff9`  
		Last Modified: Sat, 17 Nov 2018 12:10:09 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ed322048c8e298a8c47f5ff00fc2afceb1f9e41c787833335aa400db190a76`  
		Last Modified: Sat, 17 Nov 2018 12:10:11 GMT  
		Size: 6.1 MB (6060739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d602011396da990c4bf0e0d17678e2e4604fdbce8535f2884759becdeedc7d`  
		Last Modified: Sat, 17 Nov 2018 12:10:09 GMT  
		Size: 936.9 KB (936945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0865f88ac8c31be472bef6dc24e78ee3a3516c6a319427536edfbf53921d67b5`  
		Last Modified: Sat, 17 Nov 2018 12:10:08 GMT  
		Size: 18.2 KB (18225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c95907a3e3b0733a162825ce999fd20a4b0bac47e4af3b7c4ab224150a77ca2`  
		Last Modified: Sat, 17 Nov 2018 12:10:49 GMT  
		Size: 165.3 MB (165335655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5c7b6fb6e3591e48a506c8ef2dc4f7096bfcba080de10e3754d67e7663c706`  
		Last Modified: Sat, 17 Nov 2018 12:10:07 GMT  
		Size: 4.7 KB (4673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701afac129e24eb8cdf72ceb00de456bb510381d5ccdcaf7a98bf89a7794b451`  
		Last Modified: Sat, 17 Nov 2018 12:10:07 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8090cca8670af6d56ac3f6ab54ed7384233e3d0709f77fe0061e529bc1ac1a`  
		Last Modified: Sat, 17 Nov 2018 12:10:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae09ee5fe75c44e50968deb87156c9415763c44d97c2147862b42f325e0bbc9a`  
		Last Modified: Sat, 17 Nov 2018 12:10:08 GMT  
		Size: 20.6 KB (20554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1.20`

```console
$ docker pull cassandra@sha256:98e63fb054cecb6f833d7a63aeeef40645cb7a2ddb28a771948f19ca7f64fca8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `cassandra:2.1.20` - linux; amd64

```console
$ docker pull cassandra@sha256:74f0b0052b5f51daa07128c82b189b3ca74f65e47c4fa5ea58d0229ead40e718
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.9 MB (191922318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af89be684415cc1f7fb33fc1815874b90d1c0205c10047d55ceae382f63e872b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:38:49 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 01:38:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:38:58 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:39:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 01:39:11 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 01:39:15 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:39:15 GMT
ENV CASSANDRA_VERSION=2.1.20
# Sat, 29 Dec 2018 01:40:09 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 01:40:10 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 01:40:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 01:40:13 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:40:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 01:40:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:40:17 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 01:40:17 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 01:40:18 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 01:40:18 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a786826b247a619e865cebc931dad8c44c1d3054b004dff378c3145ba261b68`  
		Last Modified: Sat, 29 Dec 2018 01:42:56 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b9975a47b33482fa2f7190ef50083a67eca0081cfe12cbdce7d0a37469fa5c`  
		Last Modified: Sat, 29 Dec 2018 01:42:57 GMT  
		Size: 5.7 MB (5675965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0959d68fc6a47f41d2f71929656644434bef8616f2963fb7554f474f17be6fcb`  
		Last Modified: Sat, 29 Dec 2018 01:42:56 GMT  
		Size: 957.3 KB (957267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408c2f5a724a79d4a1ee6c1f3a10e3eeb4687418dedf88e50f5c68beb52ad5f9`  
		Last Modified: Sat, 29 Dec 2018 01:42:55 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc0c3310e6e3569a511d70b729e511d38ba5c0eb84b1172e020a02ae241e0b3`  
		Last Modified: Sat, 29 Dec 2018 01:43:19 GMT  
		Size: 162.7 MB (162749695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f710ce1eb77ff722c95a8cbc44c7ecd19a19b3b394e815fd96f87af4f9e935c2`  
		Last Modified: Sat, 29 Dec 2018 01:42:54 GMT  
		Size: 4.7 KB (4673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3693f5972ea2129b1c7628ba2375948496aec931c70913baec2989c23f354c38`  
		Last Modified: Sat, 29 Dec 2018 01:42:54 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681d3a65279f5a3686204b0b76812b8b84f5d0a269712b1a2e8667d8811ccf11`  
		Last Modified: Sat, 29 Dec 2018 01:42:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c5d06b55573a8b2bc81c071126b3f4c759b0f3a81420c2dadee17e28f39d2ea`  
		Last Modified: Sat, 29 Dec 2018 01:42:54 GMT  
		Size: 20.6 KB (20557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.1.20` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:2573c3d10b5d2c9ce3157d5c5ed7a2a04da8a9c95d0f9f9972e91507d34fe148
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.0 MB (176040563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b71f4db7e8e7dffe5d325a40e15de0cd0c9f553698b7b0e2af22c2fe5e1b4fc9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 01:54:34 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 17 Nov 2018 01:55:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 01:55:21 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 01:56:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Nov 2018 01:56:41 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 17 Nov 2018 01:57:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 17 Nov 2018 01:57:01 GMT
ENV CASSANDRA_VERSION=2.1.20
# Sat, 17 Nov 2018 02:04:30 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 17 Nov 2018 02:04:32 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 17 Nov 2018 02:04:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 17 Nov 2018 02:04:38 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Sat, 17 Nov 2018 02:04:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 17 Nov 2018 02:04:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 02:04:47 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 17 Nov 2018 02:04:48 GMT
VOLUME [/var/lib/cassandra]
# Sat, 17 Nov 2018 02:04:49 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sat, 17 Nov 2018 02:04:50 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bd440a75f3d23f4196fdf17a5bbeb6939e24d6ca40728b37eb49546d045bb4`  
		Last Modified: Sat, 17 Nov 2018 02:13:56 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbaa50eb7bb6febb19ca442db4cf8ba96f8eea44cc1ed5b44e5ee3d995f1e450`  
		Last Modified: Sat, 17 Nov 2018 02:13:58 GMT  
		Size: 5.1 MB (5147291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d00f9bb11c898f82282761df0a1d303c868bd9a325d9806956166970e27b027`  
		Last Modified: Sat, 17 Nov 2018 02:13:56 GMT  
		Size: 925.1 KB (925056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d593ed0848078291e63af17cf4af9619e93417bd360c8cd093e4f56c06a7bff`  
		Last Modified: Sat, 17 Nov 2018 02:13:56 GMT  
		Size: 18.2 KB (18222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468bce29443631d05ba225205f5392c9f04f33944e0b3a478285409f2c1c62c0`  
		Last Modified: Sat, 17 Nov 2018 02:14:36 GMT  
		Size: 149.6 MB (149590430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0827166b28df38c4050ad4a209b4359067010c4c4cf22875ad47a11ceeb871a8`  
		Last Modified: Sat, 17 Nov 2018 02:13:53 GMT  
		Size: 4.7 KB (4671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b59ea8c1c31160f12c32bdf6c215daab998256745b5b9e1db6608d39ab30fb5`  
		Last Modified: Sat, 17 Nov 2018 02:13:53 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28feb19b7af784d4c8e8e057c0161e012b36e4b7850dd6358520fe8ce061e804`  
		Last Modified: Sat, 17 Nov 2018 02:13:53 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2d55cf2c5a0d89c06d9f2584b2d3a5ac57ae68f26d7f2b44b8da01eccc040b`  
		Last Modified: Sat, 17 Nov 2018 02:13:54 GMT  
		Size: 20.6 KB (20556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.1.20` - linux; 386

```console
$ docker pull cassandra@sha256:7959b4a3d8ec5816626bec008830f1c026b7a9268f761f7216efe746c6d32bd8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.5 MB (195506586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65e17e2d5b9ea9aa2322699395787f432c9823de744161e7dd7d33c059a64dc5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 12:00:23 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 17 Nov 2018 12:00:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 12:00:33 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 12:00:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Nov 2018 12:00:47 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 17 Nov 2018 12:00:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 17 Nov 2018 12:00:50 GMT
ENV CASSANDRA_VERSION=2.1.20
# Sat, 17 Nov 2018 12:02:27 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 17 Nov 2018 12:02:28 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 17 Nov 2018 12:02:29 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 17 Nov 2018 12:02:30 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Sat, 17 Nov 2018 12:02:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 17 Nov 2018 12:02:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 12:02:32 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 17 Nov 2018 12:02:33 GMT
VOLUME [/var/lib/cassandra]
# Sat, 17 Nov 2018 12:02:33 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sat, 17 Nov 2018 12:02:33 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f2a27047501bd9ba79978fff825a26d4897f7945a5e793140d91804641cff9`  
		Last Modified: Sat, 17 Nov 2018 12:10:09 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ed322048c8e298a8c47f5ff00fc2afceb1f9e41c787833335aa400db190a76`  
		Last Modified: Sat, 17 Nov 2018 12:10:11 GMT  
		Size: 6.1 MB (6060739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d602011396da990c4bf0e0d17678e2e4604fdbce8535f2884759becdeedc7d`  
		Last Modified: Sat, 17 Nov 2018 12:10:09 GMT  
		Size: 936.9 KB (936945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0865f88ac8c31be472bef6dc24e78ee3a3516c6a319427536edfbf53921d67b5`  
		Last Modified: Sat, 17 Nov 2018 12:10:08 GMT  
		Size: 18.2 KB (18225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c95907a3e3b0733a162825ce999fd20a4b0bac47e4af3b7c4ab224150a77ca2`  
		Last Modified: Sat, 17 Nov 2018 12:10:49 GMT  
		Size: 165.3 MB (165335655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5c7b6fb6e3591e48a506c8ef2dc4f7096bfcba080de10e3754d67e7663c706`  
		Last Modified: Sat, 17 Nov 2018 12:10:07 GMT  
		Size: 4.7 KB (4673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701afac129e24eb8cdf72ceb00de456bb510381d5ccdcaf7a98bf89a7794b451`  
		Last Modified: Sat, 17 Nov 2018 12:10:07 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8090cca8670af6d56ac3f6ab54ed7384233e3d0709f77fe0061e529bc1ac1a`  
		Last Modified: Sat, 17 Nov 2018 12:10:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae09ee5fe75c44e50968deb87156c9415763c44d97c2147862b42f325e0bbc9a`  
		Last Modified: Sat, 17 Nov 2018 12:10:08 GMT  
		Size: 20.6 KB (20554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2`

```console
$ docker pull cassandra@sha256:7fc9955bccf9d2d0626f00f50388978e804f627060ad33a40d293420828fea02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `cassandra:2.2` - linux; amd64

```console
$ docker pull cassandra@sha256:6b98390824e1ccf732a83ebd80bc5b4b159d1ba44f98b41e1ca2c0db20d67697
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.2 MB (196179660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50b2ab8fee3aea0b82a6d42711bcde60d3f4eed7be9b8c554b0829c3f77df81b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:38:49 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 01:38:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:38:58 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:39:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 01:39:11 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 01:39:15 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:40:31 GMT
ENV CASSANDRA_VERSION=2.2.13
# Sat, 29 Dec 2018 01:41:23 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 01:41:24 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 01:41:25 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 01:41:25 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:41:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 01:41:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:41:27 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 01:41:27 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 01:41:27 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 01:41:27 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a786826b247a619e865cebc931dad8c44c1d3054b004dff378c3145ba261b68`  
		Last Modified: Sat, 29 Dec 2018 01:42:56 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b9975a47b33482fa2f7190ef50083a67eca0081cfe12cbdce7d0a37469fa5c`  
		Last Modified: Sat, 29 Dec 2018 01:42:57 GMT  
		Size: 5.7 MB (5675965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0959d68fc6a47f41d2f71929656644434bef8616f2963fb7554f474f17be6fcb`  
		Last Modified: Sat, 29 Dec 2018 01:42:56 GMT  
		Size: 957.3 KB (957267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408c2f5a724a79d4a1ee6c1f3a10e3eeb4687418dedf88e50f5c68beb52ad5f9`  
		Last Modified: Sat, 29 Dec 2018 01:42:55 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:601ad935420b60ac30b0978ce9479e30255403c2908bc3ccd44ee5ff57976516`  
		Last Modified: Sat, 29 Dec 2018 01:43:50 GMT  
		Size: 167.0 MB (167004888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:446ccfa6c8c8202be34433c6a521c50a6471686044340e1037bf77a873168f93`  
		Last Modified: Sat, 29 Dec 2018 01:43:24 GMT  
		Size: 4.9 KB (4884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919a17df7919c88579158a3c2692405ea4a639a9218c213332ef419bb1ed9331`  
		Last Modified: Sat, 29 Dec 2018 01:43:24 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2219ffda4d4ef7218476bc5f0a09fed3ef7d1fd05e9aee4ea9bb1c945336b1b1`  
		Last Modified: Sat, 29 Dec 2018 01:43:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bde2bd7aeabacc9169cb86154d7a2036bec875385490332f847a765d2f7e4da`  
		Last Modified: Sat, 29 Dec 2018 01:43:24 GMT  
		Size: 22.5 KB (22491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.2` - linux; 386

```console
$ docker pull cassandra@sha256:e74894995b9f9e70b6feaacc09b221a21c42387098078335620844ad9df6532b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.7 MB (199749492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a587881e831f3bb3e64988cae77e22fc691800512be2c149900dd2bbb163f711`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 12:00:23 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 17 Nov 2018 12:00:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 12:00:33 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 12:00:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Nov 2018 12:00:47 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 17 Nov 2018 12:00:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 17 Nov 2018 12:03:32 GMT
ENV CASSANDRA_VERSION=2.2.13
# Sat, 17 Nov 2018 12:05:12 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 17 Nov 2018 12:05:13 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 17 Nov 2018 12:05:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 17 Nov 2018 12:05:15 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Sat, 17 Nov 2018 12:05:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 17 Nov 2018 12:05:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 12:05:18 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 17 Nov 2018 12:05:19 GMT
VOLUME [/var/lib/cassandra]
# Sat, 17 Nov 2018 12:05:19 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sat, 17 Nov 2018 12:05:19 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f2a27047501bd9ba79978fff825a26d4897f7945a5e793140d91804641cff9`  
		Last Modified: Sat, 17 Nov 2018 12:10:09 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ed322048c8e298a8c47f5ff00fc2afceb1f9e41c787833335aa400db190a76`  
		Last Modified: Sat, 17 Nov 2018 12:10:11 GMT  
		Size: 6.1 MB (6060739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d602011396da990c4bf0e0d17678e2e4604fdbce8535f2884759becdeedc7d`  
		Last Modified: Sat, 17 Nov 2018 12:10:09 GMT  
		Size: 936.9 KB (936945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0865f88ac8c31be472bef6dc24e78ee3a3516c6a319427536edfbf53921d67b5`  
		Last Modified: Sat, 17 Nov 2018 12:10:08 GMT  
		Size: 18.2 KB (18225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807c57b9b80ebf062e9fd9789c2b0f5936c0fae62157e63fbe50a2bdba1f7510`  
		Last Modified: Sat, 17 Nov 2018 12:11:57 GMT  
		Size: 169.6 MB (169576414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6de4d740925e8ed91a0adba8213d6e9ef2d963acdaf9f57f213ef3a2895115`  
		Last Modified: Sat, 17 Nov 2018 12:11:18 GMT  
		Size: 4.9 KB (4887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb975a7a56400844b11c550899045b31b971b3bcaf951e3337c7240de1a3aa7c`  
		Last Modified: Sat, 17 Nov 2018 12:11:18 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec68d70dee04b094156edc614d34d26ebc9ba28d4532aea45cdd8c5bc5da09ba`  
		Last Modified: Sat, 17 Nov 2018 12:11:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41128df9854cec170274044f772fdc34d37ddbff3b0fe78f1ea8f74a3ea6aec9`  
		Last Modified: Sat, 17 Nov 2018 12:11:18 GMT  
		Size: 22.5 KB (22485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2.13`

```console
$ docker pull cassandra@sha256:7fc9955bccf9d2d0626f00f50388978e804f627060ad33a40d293420828fea02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `cassandra:2.2.13` - linux; amd64

```console
$ docker pull cassandra@sha256:6b98390824e1ccf732a83ebd80bc5b4b159d1ba44f98b41e1ca2c0db20d67697
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.2 MB (196179660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50b2ab8fee3aea0b82a6d42711bcde60d3f4eed7be9b8c554b0829c3f77df81b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:38:49 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 01:38:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:38:58 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:39:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 01:39:11 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 01:39:15 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:40:31 GMT
ENV CASSANDRA_VERSION=2.2.13
# Sat, 29 Dec 2018 01:41:23 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 01:41:24 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 01:41:25 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 01:41:25 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:41:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 01:41:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:41:27 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 01:41:27 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 01:41:27 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 01:41:27 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a786826b247a619e865cebc931dad8c44c1d3054b004dff378c3145ba261b68`  
		Last Modified: Sat, 29 Dec 2018 01:42:56 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b9975a47b33482fa2f7190ef50083a67eca0081cfe12cbdce7d0a37469fa5c`  
		Last Modified: Sat, 29 Dec 2018 01:42:57 GMT  
		Size: 5.7 MB (5675965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0959d68fc6a47f41d2f71929656644434bef8616f2963fb7554f474f17be6fcb`  
		Last Modified: Sat, 29 Dec 2018 01:42:56 GMT  
		Size: 957.3 KB (957267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408c2f5a724a79d4a1ee6c1f3a10e3eeb4687418dedf88e50f5c68beb52ad5f9`  
		Last Modified: Sat, 29 Dec 2018 01:42:55 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:601ad935420b60ac30b0978ce9479e30255403c2908bc3ccd44ee5ff57976516`  
		Last Modified: Sat, 29 Dec 2018 01:43:50 GMT  
		Size: 167.0 MB (167004888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:446ccfa6c8c8202be34433c6a521c50a6471686044340e1037bf77a873168f93`  
		Last Modified: Sat, 29 Dec 2018 01:43:24 GMT  
		Size: 4.9 KB (4884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919a17df7919c88579158a3c2692405ea4a639a9218c213332ef419bb1ed9331`  
		Last Modified: Sat, 29 Dec 2018 01:43:24 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2219ffda4d4ef7218476bc5f0a09fed3ef7d1fd05e9aee4ea9bb1c945336b1b1`  
		Last Modified: Sat, 29 Dec 2018 01:43:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bde2bd7aeabacc9169cb86154d7a2036bec875385490332f847a765d2f7e4da`  
		Last Modified: Sat, 29 Dec 2018 01:43:24 GMT  
		Size: 22.5 KB (22491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.2.13` - linux; 386

```console
$ docker pull cassandra@sha256:e74894995b9f9e70b6feaacc09b221a21c42387098078335620844ad9df6532b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.7 MB (199749492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a587881e831f3bb3e64988cae77e22fc691800512be2c149900dd2bbb163f711`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 12:00:23 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 17 Nov 2018 12:00:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 12:00:33 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 12:00:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Nov 2018 12:00:47 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 17 Nov 2018 12:00:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 17 Nov 2018 12:03:32 GMT
ENV CASSANDRA_VERSION=2.2.13
# Sat, 17 Nov 2018 12:05:12 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 17 Nov 2018 12:05:13 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 17 Nov 2018 12:05:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 17 Nov 2018 12:05:15 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Sat, 17 Nov 2018 12:05:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 17 Nov 2018 12:05:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 12:05:18 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 17 Nov 2018 12:05:19 GMT
VOLUME [/var/lib/cassandra]
# Sat, 17 Nov 2018 12:05:19 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sat, 17 Nov 2018 12:05:19 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f2a27047501bd9ba79978fff825a26d4897f7945a5e793140d91804641cff9`  
		Last Modified: Sat, 17 Nov 2018 12:10:09 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ed322048c8e298a8c47f5ff00fc2afceb1f9e41c787833335aa400db190a76`  
		Last Modified: Sat, 17 Nov 2018 12:10:11 GMT  
		Size: 6.1 MB (6060739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d602011396da990c4bf0e0d17678e2e4604fdbce8535f2884759becdeedc7d`  
		Last Modified: Sat, 17 Nov 2018 12:10:09 GMT  
		Size: 936.9 KB (936945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0865f88ac8c31be472bef6dc24e78ee3a3516c6a319427536edfbf53921d67b5`  
		Last Modified: Sat, 17 Nov 2018 12:10:08 GMT  
		Size: 18.2 KB (18225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807c57b9b80ebf062e9fd9789c2b0f5936c0fae62157e63fbe50a2bdba1f7510`  
		Last Modified: Sat, 17 Nov 2018 12:11:57 GMT  
		Size: 169.6 MB (169576414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6de4d740925e8ed91a0adba8213d6e9ef2d963acdaf9f57f213ef3a2895115`  
		Last Modified: Sat, 17 Nov 2018 12:11:18 GMT  
		Size: 4.9 KB (4887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb975a7a56400844b11c550899045b31b971b3bcaf951e3337c7240de1a3aa7c`  
		Last Modified: Sat, 17 Nov 2018 12:11:18 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec68d70dee04b094156edc614d34d26ebc9ba28d4532aea45cdd8c5bc5da09ba`  
		Last Modified: Sat, 17 Nov 2018 12:11:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41128df9854cec170274044f772fdc34d37ddbff3b0fe78f1ea8f74a3ea6aec9`  
		Last Modified: Sat, 17 Nov 2018 12:11:18 GMT  
		Size: 22.5 KB (22485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3`

```console
$ docker pull cassandra@sha256:9feb4b740e44494dc2f0e46672fd5513ae42756515f02b452152303b3459f482
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3` - linux; amd64

```console
$ docker pull cassandra@sha256:8b88a4681c47fa5cc4d6b3213cc418d3a2e6cb3a8e70fa663a59fdb74e6265a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132557602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dd9c5333d40bfb9d091c8507fb2c4f823946dbb2a96a7eff2f26e0cec8ebdd8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:38:49 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 01:38:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:38:58 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:39:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 01:39:11 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 01:39:15 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:42:10 GMT
ENV CASSANDRA_VERSION=3.11.3
# Sat, 29 Dec 2018 01:42:39 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 01:42:40 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 01:42:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 01:42:41 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:42:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 01:42:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:42:42 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 01:42:42 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 01:42:43 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 01:42:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a786826b247a619e865cebc931dad8c44c1d3054b004dff378c3145ba261b68`  
		Last Modified: Sat, 29 Dec 2018 01:42:56 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b9975a47b33482fa2f7190ef50083a67eca0081cfe12cbdce7d0a37469fa5c`  
		Last Modified: Sat, 29 Dec 2018 01:42:57 GMT  
		Size: 5.7 MB (5675965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0959d68fc6a47f41d2f71929656644434bef8616f2963fb7554f474f17be6fcb`  
		Last Modified: Sat, 29 Dec 2018 01:42:56 GMT  
		Size: 957.3 KB (957267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408c2f5a724a79d4a1ee6c1f3a10e3eeb4687418dedf88e50f5c68beb52ad5f9`  
		Last Modified: Sat, 29 Dec 2018 01:42:55 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2f227b3126298823e605ac754bcb775cb96a0e83aa8cab68037b2412627bc3`  
		Last Modified: Sat, 29 Dec 2018 01:44:33 GMT  
		Size: 103.4 MB (103375058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d235df104a809250c14fd01351e9a2efb4e3b1170c732e6c9942948569559556`  
		Last Modified: Sat, 29 Dec 2018 01:44:19 GMT  
		Size: 4.6 KB (4649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646f5a3410091969170f1b4d616d96b47e93715f247e61762045a96912f2c6a8`  
		Last Modified: Sat, 29 Dec 2018 01:44:19 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfee26a7970d9ebe0ec55b433fd9c2116b4d97400db1bc3ef22d3053fe0b173d`  
		Last Modified: Sat, 29 Dec 2018 01:44:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7608ed8b18b5879645e33a82f725037c59aab0986e41716f34f00eb3066b0a02`  
		Last Modified: Sat, 29 Dec 2018 01:44:19 GMT  
		Size: 30.5 KB (30501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:dffce4e48ca803aeb85e470e6481fecf22e1103858af6fee78229fc901678cce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121781136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4510770983590cc4577f591e8b6e8ae8947dcc7c5df2796d171c3616dfd6b84`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 01:54:34 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 17 Nov 2018 01:55:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 01:55:21 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 01:56:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Nov 2018 01:56:41 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 17 Nov 2018 01:57:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 17 Nov 2018 02:09:32 GMT
ENV CASSANDRA_VERSION=3.11.3
# Sat, 17 Nov 2018 02:13:02 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 17 Nov 2018 02:13:03 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 17 Nov 2018 02:13:07 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 17 Nov 2018 02:13:08 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Sat, 17 Nov 2018 02:13:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 17 Nov 2018 02:13:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 02:13:17 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 17 Nov 2018 02:13:18 GMT
VOLUME [/var/lib/cassandra]
# Sat, 17 Nov 2018 02:13:20 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sat, 17 Nov 2018 02:13:21 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bd440a75f3d23f4196fdf17a5bbeb6939e24d6ca40728b37eb49546d045bb4`  
		Last Modified: Sat, 17 Nov 2018 02:13:56 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbaa50eb7bb6febb19ca442db4cf8ba96f8eea44cc1ed5b44e5ee3d995f1e450`  
		Last Modified: Sat, 17 Nov 2018 02:13:58 GMT  
		Size: 5.1 MB (5147291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d00f9bb11c898f82282761df0a1d303c868bd9a325d9806956166970e27b027`  
		Last Modified: Sat, 17 Nov 2018 02:13:56 GMT  
		Size: 925.1 KB (925056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d593ed0848078291e63af17cf4af9619e93417bd360c8cd093e4f56c06a7bff`  
		Last Modified: Sat, 17 Nov 2018 02:13:56 GMT  
		Size: 18.2 KB (18222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580cd06b294cb1ea08c105ac972ae7d28c903e6f0d6093bc5322ecd7c736f327`  
		Last Modified: Sat, 17 Nov 2018 02:16:49 GMT  
		Size: 95.3 MB (95321076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6590275c54fa15175c2683c680a1e929bb1c406ac306d39997cbe1ef13389a5`  
		Last Modified: Sat, 17 Nov 2018 02:16:22 GMT  
		Size: 4.7 KB (4652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1ea4fea1d221ae8e6ea212ad13799e23f3c4f01255f15af23fff18b2ac8a09a`  
		Last Modified: Sat, 17 Nov 2018 02:16:22 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750e277649b5fd5657795b9f35c182faf7196ec907c3efc98f55f354d0ec38f7`  
		Last Modified: Sat, 17 Nov 2018 02:16:22 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a24f3ce12ff2d9b0551f4bd09ef5b7e70d6a3695cf6be146403f51597501623`  
		Last Modified: Sat, 17 Nov 2018 02:16:22 GMT  
		Size: 30.5 KB (30503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3` - linux; 386

```console
$ docker pull cassandra@sha256:3d620c4b56636330edd7dea741e2c870de4f0839a4c24e88b4bda9117e6c45e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132622674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b88ca0737f36b75422ef675cfc0efac70062755c80ff37b759ba2b7eb1cdd4a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 12:00:23 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 17 Nov 2018 12:00:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 12:00:33 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 12:00:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Nov 2018 12:00:47 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 17 Nov 2018 12:00:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 17 Nov 2018 12:08:30 GMT
ENV CASSANDRA_VERSION=3.11.3
# Sat, 17 Nov 2018 12:09:06 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 17 Nov 2018 12:09:06 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 17 Nov 2018 12:09:07 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 17 Nov 2018 12:09:08 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Sat, 17 Nov 2018 12:09:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 17 Nov 2018 12:09:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 12:09:09 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 17 Nov 2018 12:09:10 GMT
VOLUME [/var/lib/cassandra]
# Sat, 17 Nov 2018 12:09:10 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sat, 17 Nov 2018 12:09:10 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f2a27047501bd9ba79978fff825a26d4897f7945a5e793140d91804641cff9`  
		Last Modified: Sat, 17 Nov 2018 12:10:09 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ed322048c8e298a8c47f5ff00fc2afceb1f9e41c787833335aa400db190a76`  
		Last Modified: Sat, 17 Nov 2018 12:10:11 GMT  
		Size: 6.1 MB (6060739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d602011396da990c4bf0e0d17678e2e4604fdbce8535f2884759becdeedc7d`  
		Last Modified: Sat, 17 Nov 2018 12:10:09 GMT  
		Size: 936.9 KB (936945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0865f88ac8c31be472bef6dc24e78ee3a3516c6a319427536edfbf53921d67b5`  
		Last Modified: Sat, 17 Nov 2018 12:10:08 GMT  
		Size: 18.2 KB (18225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ddcf8fca1d246a3acef09075c1b155a3d64314c6b90b7c6f07953bad6eb764`  
		Last Modified: Sat, 17 Nov 2018 12:14:40 GMT  
		Size: 102.4 MB (102441817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572b323b7315d624e7900908fffddf3c7c2ec808c2fab1d2503ae6032921be96`  
		Last Modified: Sat, 17 Nov 2018 12:14:05 GMT  
		Size: 4.7 KB (4653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a907f551f9b46bb1de51407b3c3b24b9c77c27ad269f64cf7b2a3d64b456db9f`  
		Last Modified: Sat, 17 Nov 2018 12:14:05 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1a41b19b39eb584c86142729ecb87ef24c8ba60de6922a59caf34384ddd9f3`  
		Last Modified: Sat, 17 Nov 2018 12:14:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f779bb4c9b45d80b85d06b88115c7c86e83aac7b6fe36b22b45b8c05191a3fd`  
		Last Modified: Sat, 17 Nov 2018 12:14:06 GMT  
		Size: 30.5 KB (30498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3` - linux; ppc64le

```console
$ docker pull cassandra@sha256:2b4327cd72c43bebfad65dbe5b74f5f3ac593003a5574625a938fbde350c0c24
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.5 MB (125537852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f5887369fb87230a42e99b37e79dabc1883c1a5c394ed88dd7a44c07fb7adf5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:18:36 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 16 Nov 2018 19:19:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:19:53 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 19:20:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Nov 2018 19:20:41 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 16 Nov 2018 19:20:48 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 19:25:37 GMT
ENV CASSANDRA_VERSION=3.11.3
# Fri, 16 Nov 2018 19:29:34 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 16 Nov 2018 19:29:36 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 16 Nov 2018 19:29:41 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 16 Nov 2018 19:29:42 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Fri, 16 Nov 2018 19:29:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 16 Nov 2018 19:29:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 19:29:51 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 16 Nov 2018 19:29:52 GMT
VOLUME [/var/lib/cassandra]
# Fri, 16 Nov 2018 19:29:52 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 16 Nov 2018 19:29:59 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b011aa75a1e1bdf6e7b9743f8a51e72897a3150396648e971e8d2cee45e0a94`  
		Last Modified: Fri, 16 Nov 2018 19:30:38 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3b20abf24e79ca180bb2af77e8d0047649d9b1e5833b9c47c593465414a109`  
		Last Modified: Fri, 16 Nov 2018 19:30:41 GMT  
		Size: 5.5 MB (5542339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cb0a78676e0ae732440a28dfae467c7532aa94eb02c5a5c8fc11f342448648`  
		Last Modified: Fri, 16 Nov 2018 19:30:39 GMT  
		Size: 926.0 KB (925958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5a7d84b647d3aea20d3895000fbf1bb62169c76fd2de130bc6191e791651cd`  
		Last Modified: Fri, 16 Nov 2018 19:30:38 GMT  
		Size: 18.2 KB (18221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16e6d4a346e7cb59813fcb322edf1663ca2cdb3acb21cc073cbf7ec18e1dbf6`  
		Last Modified: Fri, 16 Nov 2018 19:31:53 GMT  
		Size: 96.3 MB (96268669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a450a9f7e8000c66b3f8072b30dfc5dff181cf835816b68092cc6bd4188c91c`  
		Last Modified: Fri, 16 Nov 2018 19:31:32 GMT  
		Size: 8.4 KB (8412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2c3be9112965f17e0d0fb4a6f0220cb63489af18a7b2a5a4a92a18a76999d4`  
		Last Modified: Fri, 16 Nov 2018 19:31:32 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49268603fb1ef6b01b14d72ffa2fa858552292db2887a928ad2ecd13f29b2b3`  
		Last Modified: Fri, 16 Nov 2018 19:31:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20a1c9e71aa7baffb1959a0976dd54a0025175be7917c2c28999c56d022af72`  
		Last Modified: Fri, 16 Nov 2018 19:31:32 GMT  
		Size: 30.5 KB (30505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0`

```console
$ docker pull cassandra@sha256:399600936f4bd41ffb5404bccc4d4e34fb7a6d2a05552cad7d0babb3c501757a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3.0` - linux; amd64

```console
$ docker pull cassandra@sha256:c8edcbc49f78f3f79b59482baaee452568c48e50e4e6680a49842f9e249791e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127748745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499e13e6c590358fb2bb37af14c2c25adf2c4272639b33bd125ae170b9de6864`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:38:49 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 01:38:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:38:58 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:39:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 01:39:11 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 01:39:15 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:41:32 GMT
ENV CASSANDRA_VERSION=3.0.17
# Sat, 29 Dec 2018 01:42:02 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 01:42:03 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 01:42:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 01:42:04 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:42:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 01:42:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:42:06 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 01:42:06 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 01:42:06 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 01:42:06 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a786826b247a619e865cebc931dad8c44c1d3054b004dff378c3145ba261b68`  
		Last Modified: Sat, 29 Dec 2018 01:42:56 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b9975a47b33482fa2f7190ef50083a67eca0081cfe12cbdce7d0a37469fa5c`  
		Last Modified: Sat, 29 Dec 2018 01:42:57 GMT  
		Size: 5.7 MB (5675965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0959d68fc6a47f41d2f71929656644434bef8616f2963fb7554f474f17be6fcb`  
		Last Modified: Sat, 29 Dec 2018 01:42:56 GMT  
		Size: 957.3 KB (957267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408c2f5a724a79d4a1ee6c1f3a10e3eeb4687418dedf88e50f5c68beb52ad5f9`  
		Last Modified: Sat, 29 Dec 2018 01:42:55 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c8837f029655a62552356fc37055b4fbedb909b12980f1eccbb898ad149f3b`  
		Last Modified: Sat, 29 Dec 2018 01:44:14 GMT  
		Size: 98.6 MB (98570558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c3deef05b725349c78902e527e22feeea055f95b48623f0f97943026e86f54`  
		Last Modified: Sat, 29 Dec 2018 01:43:59 GMT  
		Size: 4.9 KB (4944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23fa64040681b589d40416cf7ac22380250531c2505b1e210189f6145d1723f`  
		Last Modified: Sat, 29 Dec 2018 01:43:59 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa23bfef49396dad4e0d191d19e742e4925facf778d4dec0ebd370a22fdc187d`  
		Last Modified: Sat, 29 Dec 2018 01:43:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6c3e986c44a52fec3e42c595115115ecb51d1b0708cb87339073b89e9b910c`  
		Last Modified: Sat, 29 Dec 2018 01:43:59 GMT  
		Size: 25.9 KB (25850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:451d32f02d05ef4cd974a86884057c4f831a9af664dda75ee9c70ac220ca7900
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116973378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c41333aab224d930fc9e99b5ed253e7f8468364065aca05c7b46d6b33aaa2df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 01:54:34 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 17 Nov 2018 01:55:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 01:55:21 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 01:56:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Nov 2018 01:56:41 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 17 Nov 2018 01:57:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 17 Nov 2018 02:05:31 GMT
ENV CASSANDRA_VERSION=3.0.17
# Sat, 17 Nov 2018 02:08:12 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 17 Nov 2018 02:08:15 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 17 Nov 2018 02:08:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 17 Nov 2018 02:08:27 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Sat, 17 Nov 2018 02:08:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 17 Nov 2018 02:08:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 02:08:50 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 17 Nov 2018 02:08:54 GMT
VOLUME [/var/lib/cassandra]
# Sat, 17 Nov 2018 02:08:58 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sat, 17 Nov 2018 02:09:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bd440a75f3d23f4196fdf17a5bbeb6939e24d6ca40728b37eb49546d045bb4`  
		Last Modified: Sat, 17 Nov 2018 02:13:56 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbaa50eb7bb6febb19ca442db4cf8ba96f8eea44cc1ed5b44e5ee3d995f1e450`  
		Last Modified: Sat, 17 Nov 2018 02:13:58 GMT  
		Size: 5.1 MB (5147291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d00f9bb11c898f82282761df0a1d303c868bd9a325d9806956166970e27b027`  
		Last Modified: Sat, 17 Nov 2018 02:13:56 GMT  
		Size: 925.1 KB (925056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d593ed0848078291e63af17cf4af9619e93417bd360c8cd093e4f56c06a7bff`  
		Last Modified: Sat, 17 Nov 2018 02:13:56 GMT  
		Size: 18.2 KB (18222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85dee84a731539134a551f2f61915c8e75ac4d1437f8d6066588c22479a76f8d`  
		Last Modified: Sat, 17 Nov 2018 02:15:41 GMT  
		Size: 90.5 MB (90517666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfe58cb318fbc46cef4c08cbfac3084208bbbdce38bb8c4a2ba0d8536ec4fec`  
		Last Modified: Sat, 17 Nov 2018 02:15:15 GMT  
		Size: 4.9 KB (4949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586d0e3bd001048aa11ac47f03952ac2134890a325f0163c81ea455d5c35d9e1`  
		Last Modified: Sat, 17 Nov 2018 02:15:15 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d028e73ef5b3538de9f81920ab98dc68978ccd8f4864063785828694337968`  
		Last Modified: Sat, 17 Nov 2018 02:15:15 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c1145d6f49d492467f1bf9d87fdc77637502245f801991b83e1f6b6c12b11c`  
		Last Modified: Sat, 17 Nov 2018 02:15:15 GMT  
		Size: 25.9 KB (25854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0` - linux; 386

```console
$ docker pull cassandra@sha256:5c05879dca762fad3d14d82406ce46082dd68c2104e1cb952cc8baeb7b7c9b49
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127815075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5296e7bfe0dcffdf50f4da01b81016f8d8835a7623ac286c82cd602f5dae444f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 12:00:23 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 17 Nov 2018 12:00:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 12:00:33 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 12:00:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Nov 2018 12:00:47 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 17 Nov 2018 12:00:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 17 Nov 2018 12:06:32 GMT
ENV CASSANDRA_VERSION=3.0.17
# Sat, 17 Nov 2018 12:07:26 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 17 Nov 2018 12:07:27 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 17 Nov 2018 12:07:28 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 17 Nov 2018 12:07:28 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Sat, 17 Nov 2018 12:07:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 17 Nov 2018 12:07:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 12:07:31 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 17 Nov 2018 12:07:31 GMT
VOLUME [/var/lib/cassandra]
# Sat, 17 Nov 2018 12:07:31 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sat, 17 Nov 2018 12:07:32 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f2a27047501bd9ba79978fff825a26d4897f7945a5e793140d91804641cff9`  
		Last Modified: Sat, 17 Nov 2018 12:10:09 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ed322048c8e298a8c47f5ff00fc2afceb1f9e41c787833335aa400db190a76`  
		Last Modified: Sat, 17 Nov 2018 12:10:11 GMT  
		Size: 6.1 MB (6060739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d602011396da990c4bf0e0d17678e2e4604fdbce8535f2884759becdeedc7d`  
		Last Modified: Sat, 17 Nov 2018 12:10:09 GMT  
		Size: 936.9 KB (936945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0865f88ac8c31be472bef6dc24e78ee3a3516c6a319427536edfbf53921d67b5`  
		Last Modified: Sat, 17 Nov 2018 12:10:08 GMT  
		Size: 18.2 KB (18225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0272fc6d93311e14ea96f3c55d9358d57432e8c85cbe66194a8142b07403eb47`  
		Last Modified: Sat, 17 Nov 2018 12:13:25 GMT  
		Size: 97.6 MB (97638579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dff10c40901701fba29efb9f8ff3a441b9560e9bf077fc306e086ae9f1005e4`  
		Last Modified: Sat, 17 Nov 2018 12:12:50 GMT  
		Size: 4.9 KB (4944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d93dedbb76bc36311395f57f475f17c022d7e52489f131a586a99d7887fa43`  
		Last Modified: Sat, 17 Nov 2018 12:12:50 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cba8ab587c105f8fb21ece802689eb98b3810bf3ce845d9452934e800c05710`  
		Last Modified: Sat, 17 Nov 2018 12:12:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb30a88e564efdc718c4a86d99a4db15e1c77efc1e003e1a9d2bca72ca6c371`  
		Last Modified: Sat, 17 Nov 2018 12:12:50 GMT  
		Size: 25.8 KB (25849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0` - linux; ppc64le

```console
$ docker pull cassandra@sha256:32cd41f7d28875bb5137fb8ee20475611009f040c75c94c1931a08ca715bb5fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120729103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5c7319f3e7e0dc62b5a909505e183a55cbab93fc8aa0ed81a75ef08ac32806f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:18:36 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 16 Nov 2018 19:19:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:19:53 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 19:20:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Nov 2018 19:20:41 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 16 Nov 2018 19:20:48 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 19:20:49 GMT
ENV CASSANDRA_VERSION=3.0.17
# Fri, 16 Nov 2018 19:24:54 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 16 Nov 2018 19:24:57 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 16 Nov 2018 19:25:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 16 Nov 2018 19:25:06 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Fri, 16 Nov 2018 19:25:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 16 Nov 2018 19:25:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 19:25:14 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 16 Nov 2018 19:25:16 GMT
VOLUME [/var/lib/cassandra]
# Fri, 16 Nov 2018 19:25:18 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 16 Nov 2018 19:25:20 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b011aa75a1e1bdf6e7b9743f8a51e72897a3150396648e971e8d2cee45e0a94`  
		Last Modified: Fri, 16 Nov 2018 19:30:38 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3b20abf24e79ca180bb2af77e8d0047649d9b1e5833b9c47c593465414a109`  
		Last Modified: Fri, 16 Nov 2018 19:30:41 GMT  
		Size: 5.5 MB (5542339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cb0a78676e0ae732440a28dfae467c7532aa94eb02c5a5c8fc11f342448648`  
		Last Modified: Fri, 16 Nov 2018 19:30:39 GMT  
		Size: 926.0 KB (925958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5a7d84b647d3aea20d3895000fbf1bb62169c76fd2de130bc6191e791651cd`  
		Last Modified: Fri, 16 Nov 2018 19:30:38 GMT  
		Size: 18.2 KB (18221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196a05839504e6efa57d8fc479939950674eec14335aaf56c77c9289ba2edd55`  
		Last Modified: Fri, 16 Nov 2018 19:30:59 GMT  
		Size: 91.5 MB (91468034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92513e0d19ff021f700e3de32893c5e600b430c237ce32983482c1f609ae7e55`  
		Last Modified: Fri, 16 Nov 2018 19:30:35 GMT  
		Size: 4.9 KB (4949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a269227f2e6cdc504bb42df8b0a16bd1f77c2b921ff7a624b1bf452398b022`  
		Last Modified: Fri, 16 Nov 2018 19:30:35 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781703d27097d69347c9d7eeb90dea48abb523f02f94760d546ae588f9bf0c48`  
		Last Modified: Fri, 16 Nov 2018 19:30:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c3cc8c2b1fb4c2163aa52f0e82c8c5cf58f479ba5a76619865e630d40a4c60`  
		Last Modified: Fri, 16 Nov 2018 19:30:35 GMT  
		Size: 25.9 KB (25851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0.17`

```console
$ docker pull cassandra@sha256:399600936f4bd41ffb5404bccc4d4e34fb7a6d2a05552cad7d0babb3c501757a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3.0.17` - linux; amd64

```console
$ docker pull cassandra@sha256:c8edcbc49f78f3f79b59482baaee452568c48e50e4e6680a49842f9e249791e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127748745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499e13e6c590358fb2bb37af14c2c25adf2c4272639b33bd125ae170b9de6864`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:38:49 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 01:38:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:38:58 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:39:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 01:39:11 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 01:39:15 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:41:32 GMT
ENV CASSANDRA_VERSION=3.0.17
# Sat, 29 Dec 2018 01:42:02 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 01:42:03 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 01:42:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 01:42:04 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:42:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 01:42:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:42:06 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 01:42:06 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 01:42:06 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 01:42:06 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a786826b247a619e865cebc931dad8c44c1d3054b004dff378c3145ba261b68`  
		Last Modified: Sat, 29 Dec 2018 01:42:56 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b9975a47b33482fa2f7190ef50083a67eca0081cfe12cbdce7d0a37469fa5c`  
		Last Modified: Sat, 29 Dec 2018 01:42:57 GMT  
		Size: 5.7 MB (5675965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0959d68fc6a47f41d2f71929656644434bef8616f2963fb7554f474f17be6fcb`  
		Last Modified: Sat, 29 Dec 2018 01:42:56 GMT  
		Size: 957.3 KB (957267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408c2f5a724a79d4a1ee6c1f3a10e3eeb4687418dedf88e50f5c68beb52ad5f9`  
		Last Modified: Sat, 29 Dec 2018 01:42:55 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c8837f029655a62552356fc37055b4fbedb909b12980f1eccbb898ad149f3b`  
		Last Modified: Sat, 29 Dec 2018 01:44:14 GMT  
		Size: 98.6 MB (98570558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c3deef05b725349c78902e527e22feeea055f95b48623f0f97943026e86f54`  
		Last Modified: Sat, 29 Dec 2018 01:43:59 GMT  
		Size: 4.9 KB (4944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23fa64040681b589d40416cf7ac22380250531c2505b1e210189f6145d1723f`  
		Last Modified: Sat, 29 Dec 2018 01:43:59 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa23bfef49396dad4e0d191d19e742e4925facf778d4dec0ebd370a22fdc187d`  
		Last Modified: Sat, 29 Dec 2018 01:43:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6c3e986c44a52fec3e42c595115115ecb51d1b0708cb87339073b89e9b910c`  
		Last Modified: Sat, 29 Dec 2018 01:43:59 GMT  
		Size: 25.9 KB (25850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0.17` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:451d32f02d05ef4cd974a86884057c4f831a9af664dda75ee9c70ac220ca7900
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116973378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c41333aab224d930fc9e99b5ed253e7f8468364065aca05c7b46d6b33aaa2df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 01:54:34 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 17 Nov 2018 01:55:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 01:55:21 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 01:56:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Nov 2018 01:56:41 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 17 Nov 2018 01:57:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 17 Nov 2018 02:05:31 GMT
ENV CASSANDRA_VERSION=3.0.17
# Sat, 17 Nov 2018 02:08:12 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 17 Nov 2018 02:08:15 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 17 Nov 2018 02:08:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 17 Nov 2018 02:08:27 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Sat, 17 Nov 2018 02:08:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 17 Nov 2018 02:08:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 02:08:50 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 17 Nov 2018 02:08:54 GMT
VOLUME [/var/lib/cassandra]
# Sat, 17 Nov 2018 02:08:58 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sat, 17 Nov 2018 02:09:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bd440a75f3d23f4196fdf17a5bbeb6939e24d6ca40728b37eb49546d045bb4`  
		Last Modified: Sat, 17 Nov 2018 02:13:56 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbaa50eb7bb6febb19ca442db4cf8ba96f8eea44cc1ed5b44e5ee3d995f1e450`  
		Last Modified: Sat, 17 Nov 2018 02:13:58 GMT  
		Size: 5.1 MB (5147291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d00f9bb11c898f82282761df0a1d303c868bd9a325d9806956166970e27b027`  
		Last Modified: Sat, 17 Nov 2018 02:13:56 GMT  
		Size: 925.1 KB (925056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d593ed0848078291e63af17cf4af9619e93417bd360c8cd093e4f56c06a7bff`  
		Last Modified: Sat, 17 Nov 2018 02:13:56 GMT  
		Size: 18.2 KB (18222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85dee84a731539134a551f2f61915c8e75ac4d1437f8d6066588c22479a76f8d`  
		Last Modified: Sat, 17 Nov 2018 02:15:41 GMT  
		Size: 90.5 MB (90517666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfe58cb318fbc46cef4c08cbfac3084208bbbdce38bb8c4a2ba0d8536ec4fec`  
		Last Modified: Sat, 17 Nov 2018 02:15:15 GMT  
		Size: 4.9 KB (4949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586d0e3bd001048aa11ac47f03952ac2134890a325f0163c81ea455d5c35d9e1`  
		Last Modified: Sat, 17 Nov 2018 02:15:15 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d028e73ef5b3538de9f81920ab98dc68978ccd8f4864063785828694337968`  
		Last Modified: Sat, 17 Nov 2018 02:15:15 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c1145d6f49d492467f1bf9d87fdc77637502245f801991b83e1f6b6c12b11c`  
		Last Modified: Sat, 17 Nov 2018 02:15:15 GMT  
		Size: 25.9 KB (25854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0.17` - linux; 386

```console
$ docker pull cassandra@sha256:5c05879dca762fad3d14d82406ce46082dd68c2104e1cb952cc8baeb7b7c9b49
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127815075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5296e7bfe0dcffdf50f4da01b81016f8d8835a7623ac286c82cd602f5dae444f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 12:00:23 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 17 Nov 2018 12:00:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 12:00:33 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 12:00:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Nov 2018 12:00:47 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 17 Nov 2018 12:00:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 17 Nov 2018 12:06:32 GMT
ENV CASSANDRA_VERSION=3.0.17
# Sat, 17 Nov 2018 12:07:26 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 17 Nov 2018 12:07:27 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 17 Nov 2018 12:07:28 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 17 Nov 2018 12:07:28 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Sat, 17 Nov 2018 12:07:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 17 Nov 2018 12:07:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 12:07:31 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 17 Nov 2018 12:07:31 GMT
VOLUME [/var/lib/cassandra]
# Sat, 17 Nov 2018 12:07:31 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sat, 17 Nov 2018 12:07:32 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f2a27047501bd9ba79978fff825a26d4897f7945a5e793140d91804641cff9`  
		Last Modified: Sat, 17 Nov 2018 12:10:09 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ed322048c8e298a8c47f5ff00fc2afceb1f9e41c787833335aa400db190a76`  
		Last Modified: Sat, 17 Nov 2018 12:10:11 GMT  
		Size: 6.1 MB (6060739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d602011396da990c4bf0e0d17678e2e4604fdbce8535f2884759becdeedc7d`  
		Last Modified: Sat, 17 Nov 2018 12:10:09 GMT  
		Size: 936.9 KB (936945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0865f88ac8c31be472bef6dc24e78ee3a3516c6a319427536edfbf53921d67b5`  
		Last Modified: Sat, 17 Nov 2018 12:10:08 GMT  
		Size: 18.2 KB (18225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0272fc6d93311e14ea96f3c55d9358d57432e8c85cbe66194a8142b07403eb47`  
		Last Modified: Sat, 17 Nov 2018 12:13:25 GMT  
		Size: 97.6 MB (97638579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dff10c40901701fba29efb9f8ff3a441b9560e9bf077fc306e086ae9f1005e4`  
		Last Modified: Sat, 17 Nov 2018 12:12:50 GMT  
		Size: 4.9 KB (4944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d93dedbb76bc36311395f57f475f17c022d7e52489f131a586a99d7887fa43`  
		Last Modified: Sat, 17 Nov 2018 12:12:50 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cba8ab587c105f8fb21ece802689eb98b3810bf3ce845d9452934e800c05710`  
		Last Modified: Sat, 17 Nov 2018 12:12:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb30a88e564efdc718c4a86d99a4db15e1c77efc1e003e1a9d2bca72ca6c371`  
		Last Modified: Sat, 17 Nov 2018 12:12:50 GMT  
		Size: 25.8 KB (25849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0.17` - linux; ppc64le

```console
$ docker pull cassandra@sha256:32cd41f7d28875bb5137fb8ee20475611009f040c75c94c1931a08ca715bb5fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120729103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5c7319f3e7e0dc62b5a909505e183a55cbab93fc8aa0ed81a75ef08ac32806f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:18:36 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 16 Nov 2018 19:19:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:19:53 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 19:20:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Nov 2018 19:20:41 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 16 Nov 2018 19:20:48 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 19:20:49 GMT
ENV CASSANDRA_VERSION=3.0.17
# Fri, 16 Nov 2018 19:24:54 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 16 Nov 2018 19:24:57 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 16 Nov 2018 19:25:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 16 Nov 2018 19:25:06 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Fri, 16 Nov 2018 19:25:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 16 Nov 2018 19:25:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 19:25:14 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 16 Nov 2018 19:25:16 GMT
VOLUME [/var/lib/cassandra]
# Fri, 16 Nov 2018 19:25:18 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 16 Nov 2018 19:25:20 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b011aa75a1e1bdf6e7b9743f8a51e72897a3150396648e971e8d2cee45e0a94`  
		Last Modified: Fri, 16 Nov 2018 19:30:38 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3b20abf24e79ca180bb2af77e8d0047649d9b1e5833b9c47c593465414a109`  
		Last Modified: Fri, 16 Nov 2018 19:30:41 GMT  
		Size: 5.5 MB (5542339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cb0a78676e0ae732440a28dfae467c7532aa94eb02c5a5c8fc11f342448648`  
		Last Modified: Fri, 16 Nov 2018 19:30:39 GMT  
		Size: 926.0 KB (925958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5a7d84b647d3aea20d3895000fbf1bb62169c76fd2de130bc6191e791651cd`  
		Last Modified: Fri, 16 Nov 2018 19:30:38 GMT  
		Size: 18.2 KB (18221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196a05839504e6efa57d8fc479939950674eec14335aaf56c77c9289ba2edd55`  
		Last Modified: Fri, 16 Nov 2018 19:30:59 GMT  
		Size: 91.5 MB (91468034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92513e0d19ff021f700e3de32893c5e600b430c237ce32983482c1f609ae7e55`  
		Last Modified: Fri, 16 Nov 2018 19:30:35 GMT  
		Size: 4.9 KB (4949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a269227f2e6cdc504bb42df8b0a16bd1f77c2b921ff7a624b1bf452398b022`  
		Last Modified: Fri, 16 Nov 2018 19:30:35 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781703d27097d69347c9d7eeb90dea48abb523f02f94760d546ae588f9bf0c48`  
		Last Modified: Fri, 16 Nov 2018 19:30:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c3cc8c2b1fb4c2163aa52f0e82c8c5cf58f479ba5a76619865e630d40a4c60`  
		Last Modified: Fri, 16 Nov 2018 19:30:35 GMT  
		Size: 25.9 KB (25851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.11`

```console
$ docker pull cassandra@sha256:9feb4b740e44494dc2f0e46672fd5513ae42756515f02b452152303b3459f482
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3.11` - linux; amd64

```console
$ docker pull cassandra@sha256:8b88a4681c47fa5cc4d6b3213cc418d3a2e6cb3a8e70fa663a59fdb74e6265a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132557602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dd9c5333d40bfb9d091c8507fb2c4f823946dbb2a96a7eff2f26e0cec8ebdd8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:38:49 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 01:38:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:38:58 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:39:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 01:39:11 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 01:39:15 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:42:10 GMT
ENV CASSANDRA_VERSION=3.11.3
# Sat, 29 Dec 2018 01:42:39 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 01:42:40 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 01:42:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 01:42:41 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:42:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 01:42:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:42:42 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 01:42:42 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 01:42:43 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 01:42:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a786826b247a619e865cebc931dad8c44c1d3054b004dff378c3145ba261b68`  
		Last Modified: Sat, 29 Dec 2018 01:42:56 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b9975a47b33482fa2f7190ef50083a67eca0081cfe12cbdce7d0a37469fa5c`  
		Last Modified: Sat, 29 Dec 2018 01:42:57 GMT  
		Size: 5.7 MB (5675965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0959d68fc6a47f41d2f71929656644434bef8616f2963fb7554f474f17be6fcb`  
		Last Modified: Sat, 29 Dec 2018 01:42:56 GMT  
		Size: 957.3 KB (957267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408c2f5a724a79d4a1ee6c1f3a10e3eeb4687418dedf88e50f5c68beb52ad5f9`  
		Last Modified: Sat, 29 Dec 2018 01:42:55 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2f227b3126298823e605ac754bcb775cb96a0e83aa8cab68037b2412627bc3`  
		Last Modified: Sat, 29 Dec 2018 01:44:33 GMT  
		Size: 103.4 MB (103375058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d235df104a809250c14fd01351e9a2efb4e3b1170c732e6c9942948569559556`  
		Last Modified: Sat, 29 Dec 2018 01:44:19 GMT  
		Size: 4.6 KB (4649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646f5a3410091969170f1b4d616d96b47e93715f247e61762045a96912f2c6a8`  
		Last Modified: Sat, 29 Dec 2018 01:44:19 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfee26a7970d9ebe0ec55b433fd9c2116b4d97400db1bc3ef22d3053fe0b173d`  
		Last Modified: Sat, 29 Dec 2018 01:44:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7608ed8b18b5879645e33a82f725037c59aab0986e41716f34f00eb3066b0a02`  
		Last Modified: Sat, 29 Dec 2018 01:44:19 GMT  
		Size: 30.5 KB (30501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:dffce4e48ca803aeb85e470e6481fecf22e1103858af6fee78229fc901678cce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121781136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4510770983590cc4577f591e8b6e8ae8947dcc7c5df2796d171c3616dfd6b84`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 01:54:34 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 17 Nov 2018 01:55:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 01:55:21 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 01:56:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Nov 2018 01:56:41 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 17 Nov 2018 01:57:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 17 Nov 2018 02:09:32 GMT
ENV CASSANDRA_VERSION=3.11.3
# Sat, 17 Nov 2018 02:13:02 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 17 Nov 2018 02:13:03 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 17 Nov 2018 02:13:07 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 17 Nov 2018 02:13:08 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Sat, 17 Nov 2018 02:13:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 17 Nov 2018 02:13:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 02:13:17 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 17 Nov 2018 02:13:18 GMT
VOLUME [/var/lib/cassandra]
# Sat, 17 Nov 2018 02:13:20 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sat, 17 Nov 2018 02:13:21 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bd440a75f3d23f4196fdf17a5bbeb6939e24d6ca40728b37eb49546d045bb4`  
		Last Modified: Sat, 17 Nov 2018 02:13:56 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbaa50eb7bb6febb19ca442db4cf8ba96f8eea44cc1ed5b44e5ee3d995f1e450`  
		Last Modified: Sat, 17 Nov 2018 02:13:58 GMT  
		Size: 5.1 MB (5147291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d00f9bb11c898f82282761df0a1d303c868bd9a325d9806956166970e27b027`  
		Last Modified: Sat, 17 Nov 2018 02:13:56 GMT  
		Size: 925.1 KB (925056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d593ed0848078291e63af17cf4af9619e93417bd360c8cd093e4f56c06a7bff`  
		Last Modified: Sat, 17 Nov 2018 02:13:56 GMT  
		Size: 18.2 KB (18222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580cd06b294cb1ea08c105ac972ae7d28c903e6f0d6093bc5322ecd7c736f327`  
		Last Modified: Sat, 17 Nov 2018 02:16:49 GMT  
		Size: 95.3 MB (95321076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6590275c54fa15175c2683c680a1e929bb1c406ac306d39997cbe1ef13389a5`  
		Last Modified: Sat, 17 Nov 2018 02:16:22 GMT  
		Size: 4.7 KB (4652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1ea4fea1d221ae8e6ea212ad13799e23f3c4f01255f15af23fff18b2ac8a09a`  
		Last Modified: Sat, 17 Nov 2018 02:16:22 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750e277649b5fd5657795b9f35c182faf7196ec907c3efc98f55f354d0ec38f7`  
		Last Modified: Sat, 17 Nov 2018 02:16:22 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a24f3ce12ff2d9b0551f4bd09ef5b7e70d6a3695cf6be146403f51597501623`  
		Last Modified: Sat, 17 Nov 2018 02:16:22 GMT  
		Size: 30.5 KB (30503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11` - linux; 386

```console
$ docker pull cassandra@sha256:3d620c4b56636330edd7dea741e2c870de4f0839a4c24e88b4bda9117e6c45e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132622674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b88ca0737f36b75422ef675cfc0efac70062755c80ff37b759ba2b7eb1cdd4a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 12:00:23 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 17 Nov 2018 12:00:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 12:00:33 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 12:00:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Nov 2018 12:00:47 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 17 Nov 2018 12:00:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 17 Nov 2018 12:08:30 GMT
ENV CASSANDRA_VERSION=3.11.3
# Sat, 17 Nov 2018 12:09:06 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 17 Nov 2018 12:09:06 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 17 Nov 2018 12:09:07 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 17 Nov 2018 12:09:08 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Sat, 17 Nov 2018 12:09:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 17 Nov 2018 12:09:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 12:09:09 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 17 Nov 2018 12:09:10 GMT
VOLUME [/var/lib/cassandra]
# Sat, 17 Nov 2018 12:09:10 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sat, 17 Nov 2018 12:09:10 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f2a27047501bd9ba79978fff825a26d4897f7945a5e793140d91804641cff9`  
		Last Modified: Sat, 17 Nov 2018 12:10:09 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ed322048c8e298a8c47f5ff00fc2afceb1f9e41c787833335aa400db190a76`  
		Last Modified: Sat, 17 Nov 2018 12:10:11 GMT  
		Size: 6.1 MB (6060739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d602011396da990c4bf0e0d17678e2e4604fdbce8535f2884759becdeedc7d`  
		Last Modified: Sat, 17 Nov 2018 12:10:09 GMT  
		Size: 936.9 KB (936945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0865f88ac8c31be472bef6dc24e78ee3a3516c6a319427536edfbf53921d67b5`  
		Last Modified: Sat, 17 Nov 2018 12:10:08 GMT  
		Size: 18.2 KB (18225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ddcf8fca1d246a3acef09075c1b155a3d64314c6b90b7c6f07953bad6eb764`  
		Last Modified: Sat, 17 Nov 2018 12:14:40 GMT  
		Size: 102.4 MB (102441817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572b323b7315d624e7900908fffddf3c7c2ec808c2fab1d2503ae6032921be96`  
		Last Modified: Sat, 17 Nov 2018 12:14:05 GMT  
		Size: 4.7 KB (4653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a907f551f9b46bb1de51407b3c3b24b9c77c27ad269f64cf7b2a3d64b456db9f`  
		Last Modified: Sat, 17 Nov 2018 12:14:05 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1a41b19b39eb584c86142729ecb87ef24c8ba60de6922a59caf34384ddd9f3`  
		Last Modified: Sat, 17 Nov 2018 12:14:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f779bb4c9b45d80b85d06b88115c7c86e83aac7b6fe36b22b45b8c05191a3fd`  
		Last Modified: Sat, 17 Nov 2018 12:14:06 GMT  
		Size: 30.5 KB (30498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11` - linux; ppc64le

```console
$ docker pull cassandra@sha256:2b4327cd72c43bebfad65dbe5b74f5f3ac593003a5574625a938fbde350c0c24
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.5 MB (125537852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f5887369fb87230a42e99b37e79dabc1883c1a5c394ed88dd7a44c07fb7adf5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:18:36 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 16 Nov 2018 19:19:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:19:53 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 19:20:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Nov 2018 19:20:41 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 16 Nov 2018 19:20:48 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 19:25:37 GMT
ENV CASSANDRA_VERSION=3.11.3
# Fri, 16 Nov 2018 19:29:34 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 16 Nov 2018 19:29:36 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 16 Nov 2018 19:29:41 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 16 Nov 2018 19:29:42 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Fri, 16 Nov 2018 19:29:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 16 Nov 2018 19:29:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 19:29:51 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 16 Nov 2018 19:29:52 GMT
VOLUME [/var/lib/cassandra]
# Fri, 16 Nov 2018 19:29:52 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 16 Nov 2018 19:29:59 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b011aa75a1e1bdf6e7b9743f8a51e72897a3150396648e971e8d2cee45e0a94`  
		Last Modified: Fri, 16 Nov 2018 19:30:38 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3b20abf24e79ca180bb2af77e8d0047649d9b1e5833b9c47c593465414a109`  
		Last Modified: Fri, 16 Nov 2018 19:30:41 GMT  
		Size: 5.5 MB (5542339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cb0a78676e0ae732440a28dfae467c7532aa94eb02c5a5c8fc11f342448648`  
		Last Modified: Fri, 16 Nov 2018 19:30:39 GMT  
		Size: 926.0 KB (925958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5a7d84b647d3aea20d3895000fbf1bb62169c76fd2de130bc6191e791651cd`  
		Last Modified: Fri, 16 Nov 2018 19:30:38 GMT  
		Size: 18.2 KB (18221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16e6d4a346e7cb59813fcb322edf1663ca2cdb3acb21cc073cbf7ec18e1dbf6`  
		Last Modified: Fri, 16 Nov 2018 19:31:53 GMT  
		Size: 96.3 MB (96268669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a450a9f7e8000c66b3f8072b30dfc5dff181cf835816b68092cc6bd4188c91c`  
		Last Modified: Fri, 16 Nov 2018 19:31:32 GMT  
		Size: 8.4 KB (8412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2c3be9112965f17e0d0fb4a6f0220cb63489af18a7b2a5a4a92a18a76999d4`  
		Last Modified: Fri, 16 Nov 2018 19:31:32 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49268603fb1ef6b01b14d72ffa2fa858552292db2887a928ad2ecd13f29b2b3`  
		Last Modified: Fri, 16 Nov 2018 19:31:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20a1c9e71aa7baffb1959a0976dd54a0025175be7917c2c28999c56d022af72`  
		Last Modified: Fri, 16 Nov 2018 19:31:32 GMT  
		Size: 30.5 KB (30505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.11.3`

```console
$ docker pull cassandra@sha256:9feb4b740e44494dc2f0e46672fd5513ae42756515f02b452152303b3459f482
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3.11.3` - linux; amd64

```console
$ docker pull cassandra@sha256:8b88a4681c47fa5cc4d6b3213cc418d3a2e6cb3a8e70fa663a59fdb74e6265a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132557602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dd9c5333d40bfb9d091c8507fb2c4f823946dbb2a96a7eff2f26e0cec8ebdd8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:38:49 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 01:38:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:38:58 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:39:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 01:39:11 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 01:39:15 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:42:10 GMT
ENV CASSANDRA_VERSION=3.11.3
# Sat, 29 Dec 2018 01:42:39 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 01:42:40 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 01:42:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 01:42:41 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:42:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 01:42:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:42:42 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 01:42:42 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 01:42:43 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 01:42:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a786826b247a619e865cebc931dad8c44c1d3054b004dff378c3145ba261b68`  
		Last Modified: Sat, 29 Dec 2018 01:42:56 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b9975a47b33482fa2f7190ef50083a67eca0081cfe12cbdce7d0a37469fa5c`  
		Last Modified: Sat, 29 Dec 2018 01:42:57 GMT  
		Size: 5.7 MB (5675965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0959d68fc6a47f41d2f71929656644434bef8616f2963fb7554f474f17be6fcb`  
		Last Modified: Sat, 29 Dec 2018 01:42:56 GMT  
		Size: 957.3 KB (957267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408c2f5a724a79d4a1ee6c1f3a10e3eeb4687418dedf88e50f5c68beb52ad5f9`  
		Last Modified: Sat, 29 Dec 2018 01:42:55 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2f227b3126298823e605ac754bcb775cb96a0e83aa8cab68037b2412627bc3`  
		Last Modified: Sat, 29 Dec 2018 01:44:33 GMT  
		Size: 103.4 MB (103375058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d235df104a809250c14fd01351e9a2efb4e3b1170c732e6c9942948569559556`  
		Last Modified: Sat, 29 Dec 2018 01:44:19 GMT  
		Size: 4.6 KB (4649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646f5a3410091969170f1b4d616d96b47e93715f247e61762045a96912f2c6a8`  
		Last Modified: Sat, 29 Dec 2018 01:44:19 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfee26a7970d9ebe0ec55b433fd9c2116b4d97400db1bc3ef22d3053fe0b173d`  
		Last Modified: Sat, 29 Dec 2018 01:44:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7608ed8b18b5879645e33a82f725037c59aab0986e41716f34f00eb3066b0a02`  
		Last Modified: Sat, 29 Dec 2018 01:44:19 GMT  
		Size: 30.5 KB (30501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11.3` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:dffce4e48ca803aeb85e470e6481fecf22e1103858af6fee78229fc901678cce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121781136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4510770983590cc4577f591e8b6e8ae8947dcc7c5df2796d171c3616dfd6b84`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 01:54:34 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 17 Nov 2018 01:55:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 01:55:21 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 01:56:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Nov 2018 01:56:41 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 17 Nov 2018 01:57:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 17 Nov 2018 02:09:32 GMT
ENV CASSANDRA_VERSION=3.11.3
# Sat, 17 Nov 2018 02:13:02 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 17 Nov 2018 02:13:03 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 17 Nov 2018 02:13:07 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 17 Nov 2018 02:13:08 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Sat, 17 Nov 2018 02:13:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 17 Nov 2018 02:13:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 02:13:17 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 17 Nov 2018 02:13:18 GMT
VOLUME [/var/lib/cassandra]
# Sat, 17 Nov 2018 02:13:20 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sat, 17 Nov 2018 02:13:21 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bd440a75f3d23f4196fdf17a5bbeb6939e24d6ca40728b37eb49546d045bb4`  
		Last Modified: Sat, 17 Nov 2018 02:13:56 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbaa50eb7bb6febb19ca442db4cf8ba96f8eea44cc1ed5b44e5ee3d995f1e450`  
		Last Modified: Sat, 17 Nov 2018 02:13:58 GMT  
		Size: 5.1 MB (5147291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d00f9bb11c898f82282761df0a1d303c868bd9a325d9806956166970e27b027`  
		Last Modified: Sat, 17 Nov 2018 02:13:56 GMT  
		Size: 925.1 KB (925056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d593ed0848078291e63af17cf4af9619e93417bd360c8cd093e4f56c06a7bff`  
		Last Modified: Sat, 17 Nov 2018 02:13:56 GMT  
		Size: 18.2 KB (18222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580cd06b294cb1ea08c105ac972ae7d28c903e6f0d6093bc5322ecd7c736f327`  
		Last Modified: Sat, 17 Nov 2018 02:16:49 GMT  
		Size: 95.3 MB (95321076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6590275c54fa15175c2683c680a1e929bb1c406ac306d39997cbe1ef13389a5`  
		Last Modified: Sat, 17 Nov 2018 02:16:22 GMT  
		Size: 4.7 KB (4652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1ea4fea1d221ae8e6ea212ad13799e23f3c4f01255f15af23fff18b2ac8a09a`  
		Last Modified: Sat, 17 Nov 2018 02:16:22 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750e277649b5fd5657795b9f35c182faf7196ec907c3efc98f55f354d0ec38f7`  
		Last Modified: Sat, 17 Nov 2018 02:16:22 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a24f3ce12ff2d9b0551f4bd09ef5b7e70d6a3695cf6be146403f51597501623`  
		Last Modified: Sat, 17 Nov 2018 02:16:22 GMT  
		Size: 30.5 KB (30503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11.3` - linux; 386

```console
$ docker pull cassandra@sha256:3d620c4b56636330edd7dea741e2c870de4f0839a4c24e88b4bda9117e6c45e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132622674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b88ca0737f36b75422ef675cfc0efac70062755c80ff37b759ba2b7eb1cdd4a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 12:00:23 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 17 Nov 2018 12:00:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 12:00:33 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 12:00:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Nov 2018 12:00:47 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 17 Nov 2018 12:00:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 17 Nov 2018 12:08:30 GMT
ENV CASSANDRA_VERSION=3.11.3
# Sat, 17 Nov 2018 12:09:06 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 17 Nov 2018 12:09:06 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 17 Nov 2018 12:09:07 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 17 Nov 2018 12:09:08 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Sat, 17 Nov 2018 12:09:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 17 Nov 2018 12:09:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 12:09:09 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 17 Nov 2018 12:09:10 GMT
VOLUME [/var/lib/cassandra]
# Sat, 17 Nov 2018 12:09:10 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sat, 17 Nov 2018 12:09:10 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f2a27047501bd9ba79978fff825a26d4897f7945a5e793140d91804641cff9`  
		Last Modified: Sat, 17 Nov 2018 12:10:09 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ed322048c8e298a8c47f5ff00fc2afceb1f9e41c787833335aa400db190a76`  
		Last Modified: Sat, 17 Nov 2018 12:10:11 GMT  
		Size: 6.1 MB (6060739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d602011396da990c4bf0e0d17678e2e4604fdbce8535f2884759becdeedc7d`  
		Last Modified: Sat, 17 Nov 2018 12:10:09 GMT  
		Size: 936.9 KB (936945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0865f88ac8c31be472bef6dc24e78ee3a3516c6a319427536edfbf53921d67b5`  
		Last Modified: Sat, 17 Nov 2018 12:10:08 GMT  
		Size: 18.2 KB (18225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ddcf8fca1d246a3acef09075c1b155a3d64314c6b90b7c6f07953bad6eb764`  
		Last Modified: Sat, 17 Nov 2018 12:14:40 GMT  
		Size: 102.4 MB (102441817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572b323b7315d624e7900908fffddf3c7c2ec808c2fab1d2503ae6032921be96`  
		Last Modified: Sat, 17 Nov 2018 12:14:05 GMT  
		Size: 4.7 KB (4653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a907f551f9b46bb1de51407b3c3b24b9c77c27ad269f64cf7b2a3d64b456db9f`  
		Last Modified: Sat, 17 Nov 2018 12:14:05 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1a41b19b39eb584c86142729ecb87ef24c8ba60de6922a59caf34384ddd9f3`  
		Last Modified: Sat, 17 Nov 2018 12:14:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f779bb4c9b45d80b85d06b88115c7c86e83aac7b6fe36b22b45b8c05191a3fd`  
		Last Modified: Sat, 17 Nov 2018 12:14:06 GMT  
		Size: 30.5 KB (30498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11.3` - linux; ppc64le

```console
$ docker pull cassandra@sha256:2b4327cd72c43bebfad65dbe5b74f5f3ac593003a5574625a938fbde350c0c24
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.5 MB (125537852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f5887369fb87230a42e99b37e79dabc1883c1a5c394ed88dd7a44c07fb7adf5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:18:36 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 16 Nov 2018 19:19:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:19:53 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 19:20:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Nov 2018 19:20:41 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 16 Nov 2018 19:20:48 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 19:25:37 GMT
ENV CASSANDRA_VERSION=3.11.3
# Fri, 16 Nov 2018 19:29:34 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 16 Nov 2018 19:29:36 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 16 Nov 2018 19:29:41 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 16 Nov 2018 19:29:42 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Fri, 16 Nov 2018 19:29:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 16 Nov 2018 19:29:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 19:29:51 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 16 Nov 2018 19:29:52 GMT
VOLUME [/var/lib/cassandra]
# Fri, 16 Nov 2018 19:29:52 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 16 Nov 2018 19:29:59 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b011aa75a1e1bdf6e7b9743f8a51e72897a3150396648e971e8d2cee45e0a94`  
		Last Modified: Fri, 16 Nov 2018 19:30:38 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3b20abf24e79ca180bb2af77e8d0047649d9b1e5833b9c47c593465414a109`  
		Last Modified: Fri, 16 Nov 2018 19:30:41 GMT  
		Size: 5.5 MB (5542339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cb0a78676e0ae732440a28dfae467c7532aa94eb02c5a5c8fc11f342448648`  
		Last Modified: Fri, 16 Nov 2018 19:30:39 GMT  
		Size: 926.0 KB (925958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5a7d84b647d3aea20d3895000fbf1bb62169c76fd2de130bc6191e791651cd`  
		Last Modified: Fri, 16 Nov 2018 19:30:38 GMT  
		Size: 18.2 KB (18221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16e6d4a346e7cb59813fcb322edf1663ca2cdb3acb21cc073cbf7ec18e1dbf6`  
		Last Modified: Fri, 16 Nov 2018 19:31:53 GMT  
		Size: 96.3 MB (96268669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a450a9f7e8000c66b3f8072b30dfc5dff181cf835816b68092cc6bd4188c91c`  
		Last Modified: Fri, 16 Nov 2018 19:31:32 GMT  
		Size: 8.4 KB (8412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2c3be9112965f17e0d0fb4a6f0220cb63489af18a7b2a5a4a92a18a76999d4`  
		Last Modified: Fri, 16 Nov 2018 19:31:32 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49268603fb1ef6b01b14d72ffa2fa858552292db2887a928ad2ecd13f29b2b3`  
		Last Modified: Fri, 16 Nov 2018 19:31:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20a1c9e71aa7baffb1959a0976dd54a0025175be7917c2c28999c56d022af72`  
		Last Modified: Fri, 16 Nov 2018 19:31:32 GMT  
		Size: 30.5 KB (30505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:latest`

```console
$ docker pull cassandra@sha256:9feb4b740e44494dc2f0e46672fd5513ae42756515f02b452152303b3459f482
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:latest` - linux; amd64

```console
$ docker pull cassandra@sha256:8b88a4681c47fa5cc4d6b3213cc418d3a2e6cb3a8e70fa663a59fdb74e6265a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132557602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dd9c5333d40bfb9d091c8507fb2c4f823946dbb2a96a7eff2f26e0cec8ebdd8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:38:49 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 01:38:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:38:58 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:39:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 01:39:11 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 01:39:15 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:42:10 GMT
ENV CASSANDRA_VERSION=3.11.3
# Sat, 29 Dec 2018 01:42:39 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 01:42:40 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 01:42:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 01:42:41 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:42:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 01:42:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:42:42 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 01:42:42 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 01:42:43 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 01:42:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a786826b247a619e865cebc931dad8c44c1d3054b004dff378c3145ba261b68`  
		Last Modified: Sat, 29 Dec 2018 01:42:56 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b9975a47b33482fa2f7190ef50083a67eca0081cfe12cbdce7d0a37469fa5c`  
		Last Modified: Sat, 29 Dec 2018 01:42:57 GMT  
		Size: 5.7 MB (5675965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0959d68fc6a47f41d2f71929656644434bef8616f2963fb7554f474f17be6fcb`  
		Last Modified: Sat, 29 Dec 2018 01:42:56 GMT  
		Size: 957.3 KB (957267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408c2f5a724a79d4a1ee6c1f3a10e3eeb4687418dedf88e50f5c68beb52ad5f9`  
		Last Modified: Sat, 29 Dec 2018 01:42:55 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2f227b3126298823e605ac754bcb775cb96a0e83aa8cab68037b2412627bc3`  
		Last Modified: Sat, 29 Dec 2018 01:44:33 GMT  
		Size: 103.4 MB (103375058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d235df104a809250c14fd01351e9a2efb4e3b1170c732e6c9942948569559556`  
		Last Modified: Sat, 29 Dec 2018 01:44:19 GMT  
		Size: 4.6 KB (4649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646f5a3410091969170f1b4d616d96b47e93715f247e61762045a96912f2c6a8`  
		Last Modified: Sat, 29 Dec 2018 01:44:19 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfee26a7970d9ebe0ec55b433fd9c2116b4d97400db1bc3ef22d3053fe0b173d`  
		Last Modified: Sat, 29 Dec 2018 01:44:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7608ed8b18b5879645e33a82f725037c59aab0986e41716f34f00eb3066b0a02`  
		Last Modified: Sat, 29 Dec 2018 01:44:19 GMT  
		Size: 30.5 KB (30501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:latest` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:dffce4e48ca803aeb85e470e6481fecf22e1103858af6fee78229fc901678cce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121781136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4510770983590cc4577f591e8b6e8ae8947dcc7c5df2796d171c3616dfd6b84`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 01:54:34 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 17 Nov 2018 01:55:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 01:55:21 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 01:56:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Nov 2018 01:56:41 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 17 Nov 2018 01:57:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 17 Nov 2018 02:09:32 GMT
ENV CASSANDRA_VERSION=3.11.3
# Sat, 17 Nov 2018 02:13:02 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 17 Nov 2018 02:13:03 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 17 Nov 2018 02:13:07 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 17 Nov 2018 02:13:08 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Sat, 17 Nov 2018 02:13:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 17 Nov 2018 02:13:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 02:13:17 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 17 Nov 2018 02:13:18 GMT
VOLUME [/var/lib/cassandra]
# Sat, 17 Nov 2018 02:13:20 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sat, 17 Nov 2018 02:13:21 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bd440a75f3d23f4196fdf17a5bbeb6939e24d6ca40728b37eb49546d045bb4`  
		Last Modified: Sat, 17 Nov 2018 02:13:56 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbaa50eb7bb6febb19ca442db4cf8ba96f8eea44cc1ed5b44e5ee3d995f1e450`  
		Last Modified: Sat, 17 Nov 2018 02:13:58 GMT  
		Size: 5.1 MB (5147291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d00f9bb11c898f82282761df0a1d303c868bd9a325d9806956166970e27b027`  
		Last Modified: Sat, 17 Nov 2018 02:13:56 GMT  
		Size: 925.1 KB (925056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d593ed0848078291e63af17cf4af9619e93417bd360c8cd093e4f56c06a7bff`  
		Last Modified: Sat, 17 Nov 2018 02:13:56 GMT  
		Size: 18.2 KB (18222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580cd06b294cb1ea08c105ac972ae7d28c903e6f0d6093bc5322ecd7c736f327`  
		Last Modified: Sat, 17 Nov 2018 02:16:49 GMT  
		Size: 95.3 MB (95321076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6590275c54fa15175c2683c680a1e929bb1c406ac306d39997cbe1ef13389a5`  
		Last Modified: Sat, 17 Nov 2018 02:16:22 GMT  
		Size: 4.7 KB (4652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1ea4fea1d221ae8e6ea212ad13799e23f3c4f01255f15af23fff18b2ac8a09a`  
		Last Modified: Sat, 17 Nov 2018 02:16:22 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750e277649b5fd5657795b9f35c182faf7196ec907c3efc98f55f354d0ec38f7`  
		Last Modified: Sat, 17 Nov 2018 02:16:22 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a24f3ce12ff2d9b0551f4bd09ef5b7e70d6a3695cf6be146403f51597501623`  
		Last Modified: Sat, 17 Nov 2018 02:16:22 GMT  
		Size: 30.5 KB (30503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:latest` - linux; 386

```console
$ docker pull cassandra@sha256:3d620c4b56636330edd7dea741e2c870de4f0839a4c24e88b4bda9117e6c45e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132622674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b88ca0737f36b75422ef675cfc0efac70062755c80ff37b759ba2b7eb1cdd4a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 12:00:23 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 17 Nov 2018 12:00:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 12:00:33 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 12:00:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Nov 2018 12:00:47 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 17 Nov 2018 12:00:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 17 Nov 2018 12:08:30 GMT
ENV CASSANDRA_VERSION=3.11.3
# Sat, 17 Nov 2018 12:09:06 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 17 Nov 2018 12:09:06 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 17 Nov 2018 12:09:07 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 17 Nov 2018 12:09:08 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Sat, 17 Nov 2018 12:09:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 17 Nov 2018 12:09:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 12:09:09 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 17 Nov 2018 12:09:10 GMT
VOLUME [/var/lib/cassandra]
# Sat, 17 Nov 2018 12:09:10 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sat, 17 Nov 2018 12:09:10 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f2a27047501bd9ba79978fff825a26d4897f7945a5e793140d91804641cff9`  
		Last Modified: Sat, 17 Nov 2018 12:10:09 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ed322048c8e298a8c47f5ff00fc2afceb1f9e41c787833335aa400db190a76`  
		Last Modified: Sat, 17 Nov 2018 12:10:11 GMT  
		Size: 6.1 MB (6060739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d602011396da990c4bf0e0d17678e2e4604fdbce8535f2884759becdeedc7d`  
		Last Modified: Sat, 17 Nov 2018 12:10:09 GMT  
		Size: 936.9 KB (936945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0865f88ac8c31be472bef6dc24e78ee3a3516c6a319427536edfbf53921d67b5`  
		Last Modified: Sat, 17 Nov 2018 12:10:08 GMT  
		Size: 18.2 KB (18225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ddcf8fca1d246a3acef09075c1b155a3d64314c6b90b7c6f07953bad6eb764`  
		Last Modified: Sat, 17 Nov 2018 12:14:40 GMT  
		Size: 102.4 MB (102441817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572b323b7315d624e7900908fffddf3c7c2ec808c2fab1d2503ae6032921be96`  
		Last Modified: Sat, 17 Nov 2018 12:14:05 GMT  
		Size: 4.7 KB (4653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a907f551f9b46bb1de51407b3c3b24b9c77c27ad269f64cf7b2a3d64b456db9f`  
		Last Modified: Sat, 17 Nov 2018 12:14:05 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1a41b19b39eb584c86142729ecb87ef24c8ba60de6922a59caf34384ddd9f3`  
		Last Modified: Sat, 17 Nov 2018 12:14:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f779bb4c9b45d80b85d06b88115c7c86e83aac7b6fe36b22b45b8c05191a3fd`  
		Last Modified: Sat, 17 Nov 2018 12:14:06 GMT  
		Size: 30.5 KB (30498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:latest` - linux; ppc64le

```console
$ docker pull cassandra@sha256:2b4327cd72c43bebfad65dbe5b74f5f3ac593003a5574625a938fbde350c0c24
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.5 MB (125537852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f5887369fb87230a42e99b37e79dabc1883c1a5c394ed88dd7a44c07fb7adf5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:18:36 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 16 Nov 2018 19:19:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:19:53 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 19:20:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Nov 2018 19:20:41 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 16 Nov 2018 19:20:48 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 19:25:37 GMT
ENV CASSANDRA_VERSION=3.11.3
# Fri, 16 Nov 2018 19:29:34 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 16 Nov 2018 19:29:36 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 16 Nov 2018 19:29:41 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 16 Nov 2018 19:29:42 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Fri, 16 Nov 2018 19:29:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 16 Nov 2018 19:29:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 19:29:51 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 16 Nov 2018 19:29:52 GMT
VOLUME [/var/lib/cassandra]
# Fri, 16 Nov 2018 19:29:52 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 16 Nov 2018 19:29:59 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b011aa75a1e1bdf6e7b9743f8a51e72897a3150396648e971e8d2cee45e0a94`  
		Last Modified: Fri, 16 Nov 2018 19:30:38 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3b20abf24e79ca180bb2af77e8d0047649d9b1e5833b9c47c593465414a109`  
		Last Modified: Fri, 16 Nov 2018 19:30:41 GMT  
		Size: 5.5 MB (5542339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cb0a78676e0ae732440a28dfae467c7532aa94eb02c5a5c8fc11f342448648`  
		Last Modified: Fri, 16 Nov 2018 19:30:39 GMT  
		Size: 926.0 KB (925958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5a7d84b647d3aea20d3895000fbf1bb62169c76fd2de130bc6191e791651cd`  
		Last Modified: Fri, 16 Nov 2018 19:30:38 GMT  
		Size: 18.2 KB (18221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16e6d4a346e7cb59813fcb322edf1663ca2cdb3acb21cc073cbf7ec18e1dbf6`  
		Last Modified: Fri, 16 Nov 2018 19:31:53 GMT  
		Size: 96.3 MB (96268669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a450a9f7e8000c66b3f8072b30dfc5dff181cf835816b68092cc6bd4188c91c`  
		Last Modified: Fri, 16 Nov 2018 19:31:32 GMT  
		Size: 8.4 KB (8412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2c3be9112965f17e0d0fb4a6f0220cb63489af18a7b2a5a4a92a18a76999d4`  
		Last Modified: Fri, 16 Nov 2018 19:31:32 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49268603fb1ef6b01b14d72ffa2fa858552292db2887a928ad2ecd13f29b2b3`  
		Last Modified: Fri, 16 Nov 2018 19:31:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20a1c9e71aa7baffb1959a0976dd54a0025175be7917c2c28999c56d022af72`  
		Last Modified: Fri, 16 Nov 2018 19:31:32 GMT  
		Size: 30.5 KB (30505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
