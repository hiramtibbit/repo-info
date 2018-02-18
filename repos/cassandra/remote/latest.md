## `cassandra:latest`

```console
$ docker pull cassandra@sha256:edab14406f41ac6786bba3b3a18866cd42c9b54c51e94f2f01f613c5a2b4cf87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:latest` - linux; amd64

```console
$ docker pull cassandra@sha256:18698b13866b5e805420718e22ad32e3b3227182d3143aaaa937c6154bb5d2bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132258857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:388c303fcc6dc6e593303f5f54a3432b3dfdf378cd146afc5f3938385fcbd8c6`
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
# Sun, 18 Feb 2018 02:57:38 GMT
ENV CASSANDRA_VERSION=3.11.1
# Sun, 18 Feb 2018 02:58:02 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sun, 18 Feb 2018 02:58:02 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sun, 18 Feb 2018 02:58:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sun, 18 Feb 2018 02:58:04 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Sun, 18 Feb 2018 02:58:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sun, 18 Feb 2018 02:58:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 02:58:05 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sun, 18 Feb 2018 02:58:06 GMT
VOLUME [/var/lib/cassandra]
# Sun, 18 Feb 2018 02:58:06 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sun, 18 Feb 2018 02:58:06 GMT
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
	-	`sha256:1e8f100e6d3bd4b27a10114d902c7363b9797c7a82ebfdc436a6d615ae1cd357`  
		Last Modified: Sun, 18 Feb 2018 03:14:49 GMT  
		Size: 103.1 MB (103076437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd0dfb0d423fa53a753301ae06f107d989cfed5fcfa1b838ad43bec745eb18e`  
		Last Modified: Sun, 18 Feb 2018 03:14:29 GMT  
		Size: 4.4 KB (4399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76a6e8dcf00be45c8f2ed506639c1c21ea858809db0436c9876b1042ed3baf89`  
		Last Modified: Sun, 18 Feb 2018 03:14:29 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b5f3525d58cbc32b4944d3b1f544e1cc19282943e9b0277309a3494e7747b8`  
		Last Modified: Sun, 18 Feb 2018 03:14:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dcfb3ba9cb470a9ad4ac90457b7378b857dd554a68915b5b28df50de2ca45e8`  
		Last Modified: Sun, 18 Feb 2018 03:14:29 GMT  
		Size: 30.0 KB (30010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:latest` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:8147a1de3db659c7606d0df5ce0790da6bdd6bc1df5f2587f339af4e5142f7a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.5 MB (121520441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5e2eeae5a3923cae6fe8fb5caab4c63ad41bfac02309a9cb0b24b512b28deaa`
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
# Sun, 18 Feb 2018 01:46:34 GMT
ENV CASSANDRA_VERSION=3.11.1
# Sun, 18 Feb 2018 01:48:40 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sun, 18 Feb 2018 01:48:41 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sun, 18 Feb 2018 01:48:43 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sun, 18 Feb 2018 01:48:43 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Sun, 18 Feb 2018 01:48:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sun, 18 Feb 2018 01:48:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 01:48:48 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sun, 18 Feb 2018 01:48:48 GMT
VOLUME [/var/lib/cassandra]
# Sun, 18 Feb 2018 01:48:49 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sun, 18 Feb 2018 01:48:50 GMT
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
	-	`sha256:7b6f68ef3a630b84c3a91dd3a20f85914b82d73fa8430678d9baabdb2c33580c`  
		Last Modified: Sun, 18 Feb 2018 01:50:53 GMT  
		Size: 95.0 MB (95049433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010f1fe9bbe9dbfd0ca988d7a7b01286bcb4f58d0b4b24dde29579075659cb98`  
		Last Modified: Sun, 18 Feb 2018 01:50:26 GMT  
		Size: 4.4 KB (4398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ca3ea1b31fae84fc8398fbf01670ed298fb7e86ec8bd386cd28c4fbe8bea79`  
		Last Modified: Sun, 18 Feb 2018 01:50:27 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97bfcd0e10076d17f853d9bb87c69431c107b082f10d3c79f8b4078289e6bb8`  
		Last Modified: Sun, 18 Feb 2018 01:50:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f26942e84d6c4bd28c29d17f9947a1a4ee1ec5bb710172aee5021405f9aea2`  
		Last Modified: Sun, 18 Feb 2018 01:50:26 GMT  
		Size: 30.0 KB (30005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:latest` - linux; 386

```console
$ docker pull cassandra@sha256:1f99ae6710c161557940ba8c3c4aa9ae68ef09f4ebbc3de30f51254357d4bc81
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132306062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab9e56087cdb7e53807f06fffd94ab0cbdf3ea914f9bdc3b67f99b652d5a7f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 13 Feb 2018 09:41:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sun, 18 Feb 2018 15:01:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 15:01:52 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 15:02:09 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 15:11:07 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sun, 18 Feb 2018 15:40:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sun, 18 Feb 2018 16:22:54 GMT
ENV CASSANDRA_VERSION=3.11.1
# Sun, 18 Feb 2018 16:23:33 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sun, 18 Feb 2018 16:31:23 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sun, 18 Feb 2018 16:31:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sun, 18 Feb 2018 16:31:25 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Sun, 18 Feb 2018 16:31:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sun, 18 Feb 2018 16:31:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 16:31:27 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sun, 18 Feb 2018 16:31:27 GMT
VOLUME [/var/lib/cassandra]
# Sun, 18 Feb 2018 16:31:27 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sun, 18 Feb 2018 16:31:27 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:4dbce982b05e209cf10a433462dc417f7816c47b0c1a151c8c93206b299b9a14`  
		Last Modified: Tue, 12 Dec 2017 15:03:13 GMT  
		Size: 23.1 MB (23122456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75337f949dbe96d677571a58bc21accbc1fecec0ca503338237e9925523a5675`  
		Last Modified: Tue, 13 Feb 2018 10:39:55 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee6cc2f225a55771c97eb39ea00d589c2ff95c61c493b81686b5fbd03b6efc2`  
		Last Modified: Sun, 18 Feb 2018 17:45:56 GMT  
		Size: 6.1 MB (6055763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a74513ec47773f6402d34f408aff2677e9605cfd3c99749812f0a2e6011012`  
		Last Modified: Sun, 18 Feb 2018 17:45:53 GMT  
		Size: 937.1 KB (937084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71521a95e1b911ea556c457a30ba3dd51052d6c6a81dad1fecf6d7fa5f19c7f`  
		Last Modified: Sun, 18 Feb 2018 17:45:53 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dee6d4873b50c09647037df4827807d2217e221190b745295911dba4a1bc7e`  
		Last Modified: Sun, 18 Feb 2018 18:10:19 GMT  
		Size: 102.1 MB (102135426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae959ae1c303b0b3ff85504bcf2d206128ebb999a3cc1faf185e2d982992b70`  
		Last Modified: Sun, 18 Feb 2018 18:09:50 GMT  
		Size: 4.4 KB (4398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16836e9adbdc14bb78ee8f128db27a5c6ce4a2e112aed436698bc191c9b4ae44`  
		Last Modified: Sun, 18 Feb 2018 18:09:50 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ac3f525f750a2c961d8958e88a282675131a5e3933bc64919baaeb10cd3d9c`  
		Last Modified: Sun, 18 Feb 2018 18:09:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f666b58c5acf4cc6aed051c2fdf501fd6ed82efe42340f1fce4760ace263d7c4`  
		Last Modified: Sun, 18 Feb 2018 18:09:50 GMT  
		Size: 30.0 KB (30010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:latest` - linux; ppc64le

```console
$ docker pull cassandra@sha256:1e3dca403bb45865da351753e5d4c615741fc15532d5188c61dacde06a42e9fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.3 MB (125255409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa6e37218ea66f09cad242e3962f3e8a445b41341596f2c82803c42524d77414`
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
# Sun, 18 Feb 2018 11:08:48 GMT
ENV CASSANDRA_VERSION=3.11.1
# Sun, 18 Feb 2018 11:13:03 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sun, 18 Feb 2018 11:13:04 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sun, 18 Feb 2018 11:13:08 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sun, 18 Feb 2018 11:13:10 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Sun, 18 Feb 2018 11:13:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sun, 18 Feb 2018 11:13:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 11:13:20 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sun, 18 Feb 2018 11:13:28 GMT
VOLUME [/var/lib/cassandra]
# Sun, 18 Feb 2018 11:13:30 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sun, 18 Feb 2018 11:13:31 GMT
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
	-	`sha256:6049ce8b7848f5b74277ec958ef41c43dbccb36e0bc5dda89ad51e2e30be33b0`  
		Last Modified: Sun, 18 Feb 2018 11:14:04 GMT  
		Size: 96.0 MB (95979621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afd0f38f5ee62d0b1dfd36136cd2bc4e4e9798fb1205980ecfc48e17ed82e15`  
		Last Modified: Sun, 18 Feb 2018 11:13:46 GMT  
		Size: 7.9 KB (7922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76f062c0e796de894d6a7c5a915701652e9ac99a8b7b509fdce6ca1e2098fba`  
		Last Modified: Sun, 18 Feb 2018 11:13:44 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f65b1a7fae451448d81db3926eb83ea8ed07b422b8952facbb61fca9cdb237`  
		Last Modified: Sun, 18 Feb 2018 11:13:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0118ef4f094e53d5877f5d27bd5639ee7698da33e461e17a714bca24e8f0fb7a`  
		Last Modified: Sun, 18 Feb 2018 11:13:44 GMT  
		Size: 30.0 KB (30014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
