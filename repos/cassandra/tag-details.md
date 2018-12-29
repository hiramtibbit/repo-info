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
$ docker pull cassandra@sha256:b2e8e69cc6f204adf41f2f506bbb88a01faa5f3ab4880c0c85434c61a5c96147
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
$ docker pull cassandra@sha256:c0de837d915b1f087bd0169516c8fd75b11d371f34c15bb8ed027591d3b64bad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.8 MB (199771420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9aa0cd587ac0049d3e73472030ddd59f4959dbfadb07644408c15a356428112`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:02:46 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 14:02:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:02:59 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 14:03:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 14:03:16 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 14:03:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 14:05:30 GMT
ENV CASSANDRA_VERSION=2.2.13
# Sat, 29 Dec 2018 14:06:56 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 14:06:57 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 14:06:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 14:06:59 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 14:07:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 14:07:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 14:07:03 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 14:07:03 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 14:07:03 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 14:07:04 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a79325a34d3a9a8dea66d1213c41f15e648257d6b79a4003a7432ce6b295974`  
		Last Modified: Sat, 29 Dec 2018 14:09:31 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:614d02b1f04d1f95d135a2f2ebfe296756d356e60fa80ef96dc9f6473d234e2c`  
		Last Modified: Sat, 29 Dec 2018 14:09:35 GMT  
		Size: 6.1 MB (6060844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f9734be4d8438c55981980051c713b783d251cfe5c2ce75976b087970eb6dc`  
		Last Modified: Sat, 29 Dec 2018 14:09:32 GMT  
		Size: 937.0 KB (937007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d9ca5a3a2768c518e80a9f1385b0d7c764b4bea6dc3301df4c92a272160c00`  
		Last Modified: Sat, 29 Dec 2018 14:09:31 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee5987a11852128f622c948b0ab718c0327b0351aad2f4c0688b56baabf6ec9`  
		Last Modified: Sat, 29 Dec 2018 14:11:51 GMT  
		Size: 169.6 MB (169591793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca9033cdbbad9b68e7efb79c713d6609c25f3e790f10b83986d46e691b1bffd`  
		Last Modified: Sat, 29 Dec 2018 14:10:45 GMT  
		Size: 4.9 KB (4887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0f6a227d1c139945ecb150a2bd715e04b344b4cd606de07d1b05578bdfcc7a`  
		Last Modified: Sat, 29 Dec 2018 14:10:45 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c064726b72a3d801f1edf070501e47302afd36f642b7117c1e0683f34301c448`  
		Last Modified: Sat, 29 Dec 2018 14:10:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e499c348c7cb82576e2fd96bfa9bab3d9e1f3dacbd6beccc2833f8702d7f1b`  
		Last Modified: Sat, 29 Dec 2018 14:10:45 GMT  
		Size: 22.5 KB (22493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1`

```console
$ docker pull cassandra@sha256:e25574956dd0a9daeea3b4f6bedbc8e99fd5a726869cbd0894d389da71fcea18
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
$ docker pull cassandra@sha256:5064911e02e585b2fc77d4ff2c068c09475b370a6291bb13d02fadc7c1dc3704
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.1 MB (176057869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84fe843d5ebac7d62e8eb57696da9c90ad1aab9bae36aa030fdd0e7a059460ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 16:31:36 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 16:32:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 16:32:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 16:33:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 16:33:26 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 16:33:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 16:33:33 GMT
ENV CASSANDRA_VERSION=2.1.20
# Sat, 29 Dec 2018 16:44:19 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 16:44:21 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 16:44:25 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 16:44:26 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 16:44:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 16:44:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 16:44:35 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 16:44:37 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 16:44:39 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 16:44:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67a3f3792a4e2f252094fb20554b7b5844cfbb8c5e403d4720fbbe629d09a05`  
		Last Modified: Sat, 29 Dec 2018 16:53:27 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bbd7fb6d6687bb0f1c0510943e8645742b7b61fc58d11f3b8de7d59c9b8f5d`  
		Last Modified: Sat, 29 Dec 2018 16:53:29 GMT  
		Size: 5.1 MB (5147359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a854cd6c2e14b57e0aad1f13caacd77b6e9315276ab88fb513456780b4f6b5`  
		Last Modified: Sat, 29 Dec 2018 16:53:27 GMT  
		Size: 925.1 KB (925066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7586c4592d1ae68177db24ff5c3b80691b12aeb03dd6c509fda1823191e83ecd`  
		Last Modified: Sat, 29 Dec 2018 16:53:27 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:939f3c039511d43ee65614f9a78c7c2eb3e2316db3c610ba52beb98be5f1b43e`  
		Last Modified: Sat, 29 Dec 2018 16:54:10 GMT  
		Size: 149.6 MB (149601450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178db36236d63e0c4ef5a22aa86a9b4da7335380fcbea27ed77ab024da12344f`  
		Last Modified: Sat, 29 Dec 2018 16:53:25 GMT  
		Size: 4.7 KB (4675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2494b30cd8ba699da48891c684b122e4b978eb47ddc4c2a631e3242224e3bcb2`  
		Last Modified: Sat, 29 Dec 2018 16:53:25 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02583dec4491118fbda95d59cb72fff2a32020cc57c21fbfb4cde03f586c0ec9`  
		Last Modified: Sat, 29 Dec 2018 16:53:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd50f501cbeb8d22a492933554bf834e447a6a6d492a8b4ac0c1d3db4ad344d8`  
		Last Modified: Sat, 29 Dec 2018 16:53:25 GMT  
		Size: 20.6 KB (20553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.1` - linux; 386

```console
$ docker pull cassandra@sha256:1ff4f8f243fe82363c064fe2e627224be836b36b46594a41c8e1bab84a4df189
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.5 MB (195526188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3aa867ed263e6cec7eeaf717bfeca1842b8f0bafd3dc241d4892eb9742ea23c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:02:46 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 14:02:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:02:59 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 14:03:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 14:03:16 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 14:03:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 14:03:20 GMT
ENV CASSANDRA_VERSION=2.1.20
# Sat, 29 Dec 2018 14:05:08 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 14:05:08 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 14:05:10 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 14:05:10 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 14:05:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 14:05:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 14:05:14 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 14:05:14 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 14:05:14 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 14:05:15 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a79325a34d3a9a8dea66d1213c41f15e648257d6b79a4003a7432ce6b295974`  
		Last Modified: Sat, 29 Dec 2018 14:09:31 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:614d02b1f04d1f95d135a2f2ebfe296756d356e60fa80ef96dc9f6473d234e2c`  
		Last Modified: Sat, 29 Dec 2018 14:09:35 GMT  
		Size: 6.1 MB (6060844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f9734be4d8438c55981980051c713b783d251cfe5c2ce75976b087970eb6dc`  
		Last Modified: Sat, 29 Dec 2018 14:09:32 GMT  
		Size: 937.0 KB (937007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d9ca5a3a2768c518e80a9f1385b0d7c764b4bea6dc3301df4c92a272160c00`  
		Last Modified: Sat, 29 Dec 2018 14:09:31 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e90793e87106413bebead8893fe81064e6033d34ea85414f0b8283f43f26d2`  
		Last Modified: Sat, 29 Dec 2018 14:10:38 GMT  
		Size: 165.3 MB (165348708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204d85ee9637c430590d752b83444f5cf507f920602ae1782f7a973a16412664`  
		Last Modified: Sat, 29 Dec 2018 14:09:30 GMT  
		Size: 4.7 KB (4673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120dfeca2dbbbe04c2e430fb7cf9d22c9c7c6ee3a05cf3d730d672a44aac7150`  
		Last Modified: Sat, 29 Dec 2018 14:09:30 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82fc8059cec7c4aa36dc1b49c8bc2940d8467bc0ec1faf9926d22b29f2d58393`  
		Last Modified: Sat, 29 Dec 2018 14:09:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1426cb112186d9e27eb7481181dbf2015799e423c97fa193fd1cbc2f2a24467c`  
		Last Modified: Sat, 29 Dec 2018 14:09:30 GMT  
		Size: 20.6 KB (20559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1.20`

```console
$ docker pull cassandra@sha256:e25574956dd0a9daeea3b4f6bedbc8e99fd5a726869cbd0894d389da71fcea18
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
$ docker pull cassandra@sha256:5064911e02e585b2fc77d4ff2c068c09475b370a6291bb13d02fadc7c1dc3704
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.1 MB (176057869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84fe843d5ebac7d62e8eb57696da9c90ad1aab9bae36aa030fdd0e7a059460ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 16:31:36 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 16:32:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 16:32:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 16:33:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 16:33:26 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 16:33:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 16:33:33 GMT
ENV CASSANDRA_VERSION=2.1.20
# Sat, 29 Dec 2018 16:44:19 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 16:44:21 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 16:44:25 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 16:44:26 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 16:44:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 16:44:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 16:44:35 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 16:44:37 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 16:44:39 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 16:44:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67a3f3792a4e2f252094fb20554b7b5844cfbb8c5e403d4720fbbe629d09a05`  
		Last Modified: Sat, 29 Dec 2018 16:53:27 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bbd7fb6d6687bb0f1c0510943e8645742b7b61fc58d11f3b8de7d59c9b8f5d`  
		Last Modified: Sat, 29 Dec 2018 16:53:29 GMT  
		Size: 5.1 MB (5147359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a854cd6c2e14b57e0aad1f13caacd77b6e9315276ab88fb513456780b4f6b5`  
		Last Modified: Sat, 29 Dec 2018 16:53:27 GMT  
		Size: 925.1 KB (925066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7586c4592d1ae68177db24ff5c3b80691b12aeb03dd6c509fda1823191e83ecd`  
		Last Modified: Sat, 29 Dec 2018 16:53:27 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:939f3c039511d43ee65614f9a78c7c2eb3e2316db3c610ba52beb98be5f1b43e`  
		Last Modified: Sat, 29 Dec 2018 16:54:10 GMT  
		Size: 149.6 MB (149601450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178db36236d63e0c4ef5a22aa86a9b4da7335380fcbea27ed77ab024da12344f`  
		Last Modified: Sat, 29 Dec 2018 16:53:25 GMT  
		Size: 4.7 KB (4675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2494b30cd8ba699da48891c684b122e4b978eb47ddc4c2a631e3242224e3bcb2`  
		Last Modified: Sat, 29 Dec 2018 16:53:25 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02583dec4491118fbda95d59cb72fff2a32020cc57c21fbfb4cde03f586c0ec9`  
		Last Modified: Sat, 29 Dec 2018 16:53:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd50f501cbeb8d22a492933554bf834e447a6a6d492a8b4ac0c1d3db4ad344d8`  
		Last Modified: Sat, 29 Dec 2018 16:53:25 GMT  
		Size: 20.6 KB (20553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.1.20` - linux; 386

```console
$ docker pull cassandra@sha256:1ff4f8f243fe82363c064fe2e627224be836b36b46594a41c8e1bab84a4df189
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.5 MB (195526188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3aa867ed263e6cec7eeaf717bfeca1842b8f0bafd3dc241d4892eb9742ea23c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:02:46 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 14:02:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:02:59 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 14:03:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 14:03:16 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 14:03:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 14:03:20 GMT
ENV CASSANDRA_VERSION=2.1.20
# Sat, 29 Dec 2018 14:05:08 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 14:05:08 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 14:05:10 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 14:05:10 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 14:05:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 14:05:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 14:05:14 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 14:05:14 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 14:05:14 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 14:05:15 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a79325a34d3a9a8dea66d1213c41f15e648257d6b79a4003a7432ce6b295974`  
		Last Modified: Sat, 29 Dec 2018 14:09:31 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:614d02b1f04d1f95d135a2f2ebfe296756d356e60fa80ef96dc9f6473d234e2c`  
		Last Modified: Sat, 29 Dec 2018 14:09:35 GMT  
		Size: 6.1 MB (6060844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f9734be4d8438c55981980051c713b783d251cfe5c2ce75976b087970eb6dc`  
		Last Modified: Sat, 29 Dec 2018 14:09:32 GMT  
		Size: 937.0 KB (937007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d9ca5a3a2768c518e80a9f1385b0d7c764b4bea6dc3301df4c92a272160c00`  
		Last Modified: Sat, 29 Dec 2018 14:09:31 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e90793e87106413bebead8893fe81064e6033d34ea85414f0b8283f43f26d2`  
		Last Modified: Sat, 29 Dec 2018 14:10:38 GMT  
		Size: 165.3 MB (165348708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204d85ee9637c430590d752b83444f5cf507f920602ae1782f7a973a16412664`  
		Last Modified: Sat, 29 Dec 2018 14:09:30 GMT  
		Size: 4.7 KB (4673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120dfeca2dbbbe04c2e430fb7cf9d22c9c7c6ee3a05cf3d730d672a44aac7150`  
		Last Modified: Sat, 29 Dec 2018 14:09:30 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82fc8059cec7c4aa36dc1b49c8bc2940d8467bc0ec1faf9926d22b29f2d58393`  
		Last Modified: Sat, 29 Dec 2018 14:09:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1426cb112186d9e27eb7481181dbf2015799e423c97fa193fd1cbc2f2a24467c`  
		Last Modified: Sat, 29 Dec 2018 14:09:30 GMT  
		Size: 20.6 KB (20559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2`

```console
$ docker pull cassandra@sha256:b2e8e69cc6f204adf41f2f506bbb88a01faa5f3ab4880c0c85434c61a5c96147
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
$ docker pull cassandra@sha256:c0de837d915b1f087bd0169516c8fd75b11d371f34c15bb8ed027591d3b64bad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.8 MB (199771420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9aa0cd587ac0049d3e73472030ddd59f4959dbfadb07644408c15a356428112`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:02:46 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 14:02:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:02:59 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 14:03:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 14:03:16 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 14:03:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 14:05:30 GMT
ENV CASSANDRA_VERSION=2.2.13
# Sat, 29 Dec 2018 14:06:56 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 14:06:57 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 14:06:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 14:06:59 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 14:07:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 14:07:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 14:07:03 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 14:07:03 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 14:07:03 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 14:07:04 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a79325a34d3a9a8dea66d1213c41f15e648257d6b79a4003a7432ce6b295974`  
		Last Modified: Sat, 29 Dec 2018 14:09:31 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:614d02b1f04d1f95d135a2f2ebfe296756d356e60fa80ef96dc9f6473d234e2c`  
		Last Modified: Sat, 29 Dec 2018 14:09:35 GMT  
		Size: 6.1 MB (6060844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f9734be4d8438c55981980051c713b783d251cfe5c2ce75976b087970eb6dc`  
		Last Modified: Sat, 29 Dec 2018 14:09:32 GMT  
		Size: 937.0 KB (937007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d9ca5a3a2768c518e80a9f1385b0d7c764b4bea6dc3301df4c92a272160c00`  
		Last Modified: Sat, 29 Dec 2018 14:09:31 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee5987a11852128f622c948b0ab718c0327b0351aad2f4c0688b56baabf6ec9`  
		Last Modified: Sat, 29 Dec 2018 14:11:51 GMT  
		Size: 169.6 MB (169591793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca9033cdbbad9b68e7efb79c713d6609c25f3e790f10b83986d46e691b1bffd`  
		Last Modified: Sat, 29 Dec 2018 14:10:45 GMT  
		Size: 4.9 KB (4887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0f6a227d1c139945ecb150a2bd715e04b344b4cd606de07d1b05578bdfcc7a`  
		Last Modified: Sat, 29 Dec 2018 14:10:45 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c064726b72a3d801f1edf070501e47302afd36f642b7117c1e0683f34301c448`  
		Last Modified: Sat, 29 Dec 2018 14:10:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e499c348c7cb82576e2fd96bfa9bab3d9e1f3dacbd6beccc2833f8702d7f1b`  
		Last Modified: Sat, 29 Dec 2018 14:10:45 GMT  
		Size: 22.5 KB (22493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2.13`

```console
$ docker pull cassandra@sha256:b2e8e69cc6f204adf41f2f506bbb88a01faa5f3ab4880c0c85434c61a5c96147
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
$ docker pull cassandra@sha256:c0de837d915b1f087bd0169516c8fd75b11d371f34c15bb8ed027591d3b64bad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.8 MB (199771420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9aa0cd587ac0049d3e73472030ddd59f4959dbfadb07644408c15a356428112`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:02:46 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 14:02:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:02:59 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 14:03:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 14:03:16 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 14:03:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 14:05:30 GMT
ENV CASSANDRA_VERSION=2.2.13
# Sat, 29 Dec 2018 14:06:56 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 14:06:57 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 14:06:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 14:06:59 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 14:07:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 14:07:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 14:07:03 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 14:07:03 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 14:07:03 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 14:07:04 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a79325a34d3a9a8dea66d1213c41f15e648257d6b79a4003a7432ce6b295974`  
		Last Modified: Sat, 29 Dec 2018 14:09:31 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:614d02b1f04d1f95d135a2f2ebfe296756d356e60fa80ef96dc9f6473d234e2c`  
		Last Modified: Sat, 29 Dec 2018 14:09:35 GMT  
		Size: 6.1 MB (6060844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f9734be4d8438c55981980051c713b783d251cfe5c2ce75976b087970eb6dc`  
		Last Modified: Sat, 29 Dec 2018 14:09:32 GMT  
		Size: 937.0 KB (937007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d9ca5a3a2768c518e80a9f1385b0d7c764b4bea6dc3301df4c92a272160c00`  
		Last Modified: Sat, 29 Dec 2018 14:09:31 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee5987a11852128f622c948b0ab718c0327b0351aad2f4c0688b56baabf6ec9`  
		Last Modified: Sat, 29 Dec 2018 14:11:51 GMT  
		Size: 169.6 MB (169591793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca9033cdbbad9b68e7efb79c713d6609c25f3e790f10b83986d46e691b1bffd`  
		Last Modified: Sat, 29 Dec 2018 14:10:45 GMT  
		Size: 4.9 KB (4887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0f6a227d1c139945ecb150a2bd715e04b344b4cd606de07d1b05578bdfcc7a`  
		Last Modified: Sat, 29 Dec 2018 14:10:45 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c064726b72a3d801f1edf070501e47302afd36f642b7117c1e0683f34301c448`  
		Last Modified: Sat, 29 Dec 2018 14:10:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e499c348c7cb82576e2fd96bfa9bab3d9e1f3dacbd6beccc2833f8702d7f1b`  
		Last Modified: Sat, 29 Dec 2018 14:10:45 GMT  
		Size: 22.5 KB (22493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3`

```console
$ docker pull cassandra@sha256:505202f7cb249e7e5665d338c92284c5576b18126163a825286527be11f28db7
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
$ docker pull cassandra@sha256:d913ed6ec0aa6839707383b635aed4015713312622194cfa3be6f01406b0a562
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121804678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c78bc5aa650350122ce29d943c917c705904ac1bdce797356f683c665a82f9cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 16:31:36 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 16:32:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 16:32:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 16:33:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 16:33:26 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 16:33:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 16:48:25 GMT
ENV CASSANDRA_VERSION=3.11.3
# Sat, 29 Dec 2018 16:52:38 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 16:52:39 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 16:52:45 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 16:52:46 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 16:52:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 16:52:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 16:52:56 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 16:52:58 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 16:53:00 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 16:53:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67a3f3792a4e2f252094fb20554b7b5844cfbb8c5e403d4720fbbe629d09a05`  
		Last Modified: Sat, 29 Dec 2018 16:53:27 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bbd7fb6d6687bb0f1c0510943e8645742b7b61fc58d11f3b8de7d59c9b8f5d`  
		Last Modified: Sat, 29 Dec 2018 16:53:29 GMT  
		Size: 5.1 MB (5147359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a854cd6c2e14b57e0aad1f13caacd77b6e9315276ab88fb513456780b4f6b5`  
		Last Modified: Sat, 29 Dec 2018 16:53:27 GMT  
		Size: 925.1 KB (925066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7586c4592d1ae68177db24ff5c3b80691b12aeb03dd6c509fda1823191e83ecd`  
		Last Modified: Sat, 29 Dec 2018 16:53:27 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14e268c48ec22c4bc725d009b003256bda2368deff771fd168e272c909736e6`  
		Last Modified: Sat, 29 Dec 2018 16:55:23 GMT  
		Size: 95.3 MB (95338331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8206b323e6b263c66c36d90c75a8e328c0f1872e84fefb60521597872bdfa76`  
		Last Modified: Sat, 29 Dec 2018 16:54:55 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483d855d6d7daddc1bc296240ed3c01feada63dee72c9647969b7d037567c960`  
		Last Modified: Sat, 29 Dec 2018 16:54:55 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b9a562e127c28a9433333badc2ce5c1c8e33704b98b9aeda28738636e3dddf9`  
		Last Modified: Sat, 29 Dec 2018 16:54:56 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:282a58ad2a43f5616a7845eaa311a704c797c71025da5ed458a88ceae9a863b0`  
		Last Modified: Sat, 29 Dec 2018 16:54:55 GMT  
		Size: 30.5 KB (30504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3` - linux; 386

```console
$ docker pull cassandra@sha256:9b6b12c70da69a9c52df6a91f6b77c1aebd9893370f8bfc19c953baacce939f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132642429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1d9bf9351cfe49500a69e8735fe57c423ef37fb521051c3647cfd5d71baf339`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:02:46 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 14:02:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:02:59 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 14:03:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 14:03:16 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 14:03:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 14:08:16 GMT
ENV CASSANDRA_VERSION=3.11.3
# Sat, 29 Dec 2018 14:09:06 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 14:09:06 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 14:09:08 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 14:09:08 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 14:09:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 14:09:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 14:09:12 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 14:09:13 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 14:09:13 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 14:09:13 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a79325a34d3a9a8dea66d1213c41f15e648257d6b79a4003a7432ce6b295974`  
		Last Modified: Sat, 29 Dec 2018 14:09:31 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:614d02b1f04d1f95d135a2f2ebfe296756d356e60fa80ef96dc9f6473d234e2c`  
		Last Modified: Sat, 29 Dec 2018 14:09:35 GMT  
		Size: 6.1 MB (6060844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f9734be4d8438c55981980051c713b783d251cfe5c2ce75976b087970eb6dc`  
		Last Modified: Sat, 29 Dec 2018 14:09:32 GMT  
		Size: 937.0 KB (937007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d9ca5a3a2768c518e80a9f1385b0d7c764b4bea6dc3301df4c92a272160c00`  
		Last Modified: Sat, 29 Dec 2018 14:09:31 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a301276cd1ffb71095ec064a9ec1b91b493a1d5493500736dd07c8d3ec11759f`  
		Last Modified: Sat, 29 Dec 2018 14:13:18 GMT  
		Size: 102.5 MB (102455038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd32310e49ab45c788675637e537b2b75ab5c33df74a999e5c529f98e24a43ef`  
		Last Modified: Sat, 29 Dec 2018 14:12:48 GMT  
		Size: 4.6 KB (4648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625ff082325864677148dd60683e0c847f17e3216258c0fc096a98644f717d51`  
		Last Modified: Sat, 29 Dec 2018 14:12:48 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78f56992974671d3dee225a31dbd48864447b36617b253b7ea5292568fb46e0`  
		Last Modified: Sat, 29 Dec 2018 14:12:48 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c65b2962dce9001fd77c343acf55a5383abbf34d0d986652d6b32a9e535e15`  
		Last Modified: Sat, 29 Dec 2018 14:12:48 GMT  
		Size: 30.5 KB (30499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3` - linux; ppc64le

```console
$ docker pull cassandra@sha256:8463e0784741cadd33f18316ccfebaed08527cbb8c5c6271133fb8c4fdc2c3ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125550706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bf3061a27bf00d264525e9493488e39867fa95c84bc25efaf2b67c9e4fac5d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:32:36 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 11:33:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:33:20 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 11:33:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 11:33:58 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 11:34:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 11:37:29 GMT
ENV CASSANDRA_VERSION=3.11.3
# Sat, 29 Dec 2018 11:39:40 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 11:39:44 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 11:39:49 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 11:39:50 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 11:39:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 11:39:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 11:40:02 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 11:40:04 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 11:40:06 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 11:40:08 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb307c944cd49eb9ac75457297cd6a75b39fe98d808628ccd3c4f6b9c08b594`  
		Last Modified: Sat, 29 Dec 2018 11:40:35 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a6cde26d393d1bd1f4280a28268e43a3f96031b091d19bc4f946d7e22f60e1`  
		Last Modified: Sat, 29 Dec 2018 11:40:37 GMT  
		Size: 5.5 MB (5542275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc017c807441938c40f56e47cf1099ccdfc86e3b94e38ce17ed4a5b2cb840ce3`  
		Last Modified: Sat, 29 Dec 2018 11:40:36 GMT  
		Size: 925.9 KB (925900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116f8ce7d6c418013654ad2f6c7332c258cbbbddf6c6ccc06985059a103429df`  
		Last Modified: Sat, 29 Dec 2018 11:40:35 GMT  
		Size: 18.2 KB (18222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a1a6deb5bab225ca8cdf21557f6fa8d6486197ae1290c1ba826786e4b6d2431`  
		Last Modified: Sat, 29 Dec 2018 11:41:20 GMT  
		Size: 96.3 MB (96275538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98172af92b229a6f6d6aeba2f536ab0ac35289ea9b182921eaddcefca8785b1`  
		Last Modified: Sat, 29 Dec 2018 11:41:01 GMT  
		Size: 8.4 KB (8412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7eb3051e79b50b2aa45d6f57660eeed6fa80b007c5519092d4acd23187b6ca`  
		Last Modified: Sat, 29 Dec 2018 11:41:01 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b39ef9b09f3d7465a55db0c19bf96245a88af2fb86d3c34b17e0e1ef7ca57b`  
		Last Modified: Sat, 29 Dec 2018 11:41:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d4c97eede8ccc036b67fcc6d94c74afd937d2d0dd81ce588456deb5a5c289d`  
		Last Modified: Sat, 29 Dec 2018 11:41:01 GMT  
		Size: 30.5 KB (30505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0`

```console
$ docker pull cassandra@sha256:9067d40a0e3dc3fea99880b7990ac92f8fa0e2d6fa0c5ee15a95c2d5350076e2
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
$ docker pull cassandra@sha256:79a5f2f1a307c11430f3baad0042df43259a6db43dfe7c0d5350492e7251952e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116999826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2709de278b0358f9866cf6be5b876b0c7e8deb72157efc07b864bc5cbd91dcc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 16:31:36 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 16:32:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 16:32:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 16:33:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 16:33:26 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 16:33:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 16:44:52 GMT
ENV CASSANDRA_VERSION=3.0.17
# Sat, 29 Dec 2018 16:47:53 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 16:47:59 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 16:48:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 16:48:03 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 16:48:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 16:48:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 16:48:09 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 16:48:10 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 16:48:11 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 16:48:13 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67a3f3792a4e2f252094fb20554b7b5844cfbb8c5e403d4720fbbe629d09a05`  
		Last Modified: Sat, 29 Dec 2018 16:53:27 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bbd7fb6d6687bb0f1c0510943e8645742b7b61fc58d11f3b8de7d59c9b8f5d`  
		Last Modified: Sat, 29 Dec 2018 16:53:29 GMT  
		Size: 5.1 MB (5147359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a854cd6c2e14b57e0aad1f13caacd77b6e9315276ab88fb513456780b4f6b5`  
		Last Modified: Sat, 29 Dec 2018 16:53:27 GMT  
		Size: 925.1 KB (925066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7586c4592d1ae68177db24ff5c3b80691b12aeb03dd6c509fda1823191e83ecd`  
		Last Modified: Sat, 29 Dec 2018 16:53:27 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ffac6fc5c397cec2ecc34970107f7bf33ffc825747b05bd8c09cc17096d2b9`  
		Last Modified: Sat, 29 Dec 2018 16:54:47 GMT  
		Size: 90.5 MB (90537840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b368a1026087c4d81a9dd1b1319f635e240036e7623d8ca89d702d7a6d9654f`  
		Last Modified: Sat, 29 Dec 2018 16:54:18 GMT  
		Size: 4.9 KB (4944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f99a7fa8f1f44d9f42d9aab24fca215ad2558d8fb12e564d9c598208ddd8c4c`  
		Last Modified: Sat, 29 Dec 2018 16:54:18 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82537c960e33a5a2fb82affa12b8a423eb768925968c0d1084d511a83517a522`  
		Last Modified: Sat, 29 Dec 2018 16:54:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb3b3c71fadbbbaa733812eb61e552dcfd665de26f86f2d5a7d47e90fe908e8a`  
		Last Modified: Sat, 29 Dec 2018 16:54:18 GMT  
		Size: 25.9 KB (25854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0` - linux; 386

```console
$ docker pull cassandra@sha256:af359775be47b10f204f9bec79d7d4ea7bc8eee6a26146052b93acae86695b79
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127835001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92a9ea339a0a9f19e57894c3e67072f3e148c28969309ca70a255fc6753517d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:02:46 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 14:02:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:02:59 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 14:03:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 14:03:16 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 14:03:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 14:07:13 GMT
ENV CASSANDRA_VERSION=3.0.17
# Sat, 29 Dec 2018 14:08:02 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 14:08:03 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 14:08:04 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 14:08:05 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 14:08:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 14:08:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 14:08:08 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 14:08:09 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 14:08:09 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 14:08:09 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a79325a34d3a9a8dea66d1213c41f15e648257d6b79a4003a7432ce6b295974`  
		Last Modified: Sat, 29 Dec 2018 14:09:31 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:614d02b1f04d1f95d135a2f2ebfe296756d356e60fa80ef96dc9f6473d234e2c`  
		Last Modified: Sat, 29 Dec 2018 14:09:35 GMT  
		Size: 6.1 MB (6060844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f9734be4d8438c55981980051c713b783d251cfe5c2ce75976b087970eb6dc`  
		Last Modified: Sat, 29 Dec 2018 14:09:32 GMT  
		Size: 937.0 KB (937007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d9ca5a3a2768c518e80a9f1385b0d7c764b4bea6dc3301df4c92a272160c00`  
		Last Modified: Sat, 29 Dec 2018 14:09:31 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94951bee02c91d4d2e66a9550a5dedc197b2c80bc1286c632788f42f641e9bcd`  
		Last Modified: Sat, 29 Dec 2018 14:12:42 GMT  
		Size: 97.7 MB (97651955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6803487bca83d24923bb8cab2b258e7b52b5ac67dd4d70920bed6ed6dfaac135`  
		Last Modified: Sat, 29 Dec 2018 14:12:09 GMT  
		Size: 4.9 KB (4948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a21b8d1209f094ff4f9a4e9b4c806527a20b82b1dd1da03dbc1e085a0372b46`  
		Last Modified: Sat, 29 Dec 2018 14:12:09 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1fa1ae018745f82169348b00dd5940fff93df0484934e0d911caaa1a979d841`  
		Last Modified: Sat, 29 Dec 2018 14:12:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f23be3deac2752c88dce3409a692c9bbda711d0a8eab1f9c27be2acfcdc5ec2`  
		Last Modified: Sat, 29 Dec 2018 14:12:08 GMT  
		Size: 25.9 KB (25852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0` - linux; ppc64le

```console
$ docker pull cassandra@sha256:32cca27f5cf57065d616994b71f24f723251f674f36562a0d47da457cdc7578f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120733915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f783d6b93d48fcc1691b3bb0d2d7d4b4ff3c86400db8d35b38cd253dccb28ed9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:32:36 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 11:33:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:33:20 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 11:33:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 11:33:58 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 11:34:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 11:34:06 GMT
ENV CASSANDRA_VERSION=3.0.17
# Sat, 29 Dec 2018 11:36:41 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 11:36:47 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 11:36:54 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 11:36:57 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 11:37:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 11:37:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 11:37:09 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 11:37:11 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 11:37:13 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 11:37:16 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb307c944cd49eb9ac75457297cd6a75b39fe98d808628ccd3c4f6b9c08b594`  
		Last Modified: Sat, 29 Dec 2018 11:40:35 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a6cde26d393d1bd1f4280a28268e43a3f96031b091d19bc4f946d7e22f60e1`  
		Last Modified: Sat, 29 Dec 2018 11:40:37 GMT  
		Size: 5.5 MB (5542275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc017c807441938c40f56e47cf1099ccdfc86e3b94e38ce17ed4a5b2cb840ce3`  
		Last Modified: Sat, 29 Dec 2018 11:40:36 GMT  
		Size: 925.9 KB (925900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116f8ce7d6c418013654ad2f6c7332c258cbbbddf6c6ccc06985059a103429df`  
		Last Modified: Sat, 29 Dec 2018 11:40:35 GMT  
		Size: 18.2 KB (18222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0b04f9ec165563c0656980e2ff792212af2e3cd2659a076d1a227aea301a89`  
		Last Modified: Sat, 29 Dec 2018 11:40:49 GMT  
		Size: 91.5 MB (91466862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:427a556f344d19d3067cdb85316a8aae1612647c21c642a795a63ae8e5db42c7`  
		Last Modified: Sat, 29 Dec 2018 11:40:32 GMT  
		Size: 4.9 KB (4948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:323136069e798edb337314feab1505d817b478968c6f6d4c1226fc62acef2123`  
		Last Modified: Sat, 29 Dec 2018 11:40:32 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0874b18607cc6c417cd383db7de96cd663c4ef491418cd3ba2c780c01e3e1603`  
		Last Modified: Sat, 29 Dec 2018 11:40:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ef55c76edc5871b73f8fef5050aca0a0ccf3c7f0071835080b77048e47f21e`  
		Last Modified: Sat, 29 Dec 2018 11:40:32 GMT  
		Size: 25.9 KB (25854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0.17`

```console
$ docker pull cassandra@sha256:9067d40a0e3dc3fea99880b7990ac92f8fa0e2d6fa0c5ee15a95c2d5350076e2
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
$ docker pull cassandra@sha256:79a5f2f1a307c11430f3baad0042df43259a6db43dfe7c0d5350492e7251952e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116999826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2709de278b0358f9866cf6be5b876b0c7e8deb72157efc07b864bc5cbd91dcc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 16:31:36 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 16:32:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 16:32:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 16:33:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 16:33:26 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 16:33:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 16:44:52 GMT
ENV CASSANDRA_VERSION=3.0.17
# Sat, 29 Dec 2018 16:47:53 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 16:47:59 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 16:48:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 16:48:03 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 16:48:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 16:48:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 16:48:09 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 16:48:10 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 16:48:11 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 16:48:13 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67a3f3792a4e2f252094fb20554b7b5844cfbb8c5e403d4720fbbe629d09a05`  
		Last Modified: Sat, 29 Dec 2018 16:53:27 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bbd7fb6d6687bb0f1c0510943e8645742b7b61fc58d11f3b8de7d59c9b8f5d`  
		Last Modified: Sat, 29 Dec 2018 16:53:29 GMT  
		Size: 5.1 MB (5147359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a854cd6c2e14b57e0aad1f13caacd77b6e9315276ab88fb513456780b4f6b5`  
		Last Modified: Sat, 29 Dec 2018 16:53:27 GMT  
		Size: 925.1 KB (925066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7586c4592d1ae68177db24ff5c3b80691b12aeb03dd6c509fda1823191e83ecd`  
		Last Modified: Sat, 29 Dec 2018 16:53:27 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ffac6fc5c397cec2ecc34970107f7bf33ffc825747b05bd8c09cc17096d2b9`  
		Last Modified: Sat, 29 Dec 2018 16:54:47 GMT  
		Size: 90.5 MB (90537840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b368a1026087c4d81a9dd1b1319f635e240036e7623d8ca89d702d7a6d9654f`  
		Last Modified: Sat, 29 Dec 2018 16:54:18 GMT  
		Size: 4.9 KB (4944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f99a7fa8f1f44d9f42d9aab24fca215ad2558d8fb12e564d9c598208ddd8c4c`  
		Last Modified: Sat, 29 Dec 2018 16:54:18 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82537c960e33a5a2fb82affa12b8a423eb768925968c0d1084d511a83517a522`  
		Last Modified: Sat, 29 Dec 2018 16:54:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb3b3c71fadbbbaa733812eb61e552dcfd665de26f86f2d5a7d47e90fe908e8a`  
		Last Modified: Sat, 29 Dec 2018 16:54:18 GMT  
		Size: 25.9 KB (25854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0.17` - linux; 386

```console
$ docker pull cassandra@sha256:af359775be47b10f204f9bec79d7d4ea7bc8eee6a26146052b93acae86695b79
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127835001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92a9ea339a0a9f19e57894c3e67072f3e148c28969309ca70a255fc6753517d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:02:46 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 14:02:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:02:59 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 14:03:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 14:03:16 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 14:03:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 14:07:13 GMT
ENV CASSANDRA_VERSION=3.0.17
# Sat, 29 Dec 2018 14:08:02 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 14:08:03 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 14:08:04 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 14:08:05 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 14:08:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 14:08:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 14:08:08 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 14:08:09 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 14:08:09 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 14:08:09 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a79325a34d3a9a8dea66d1213c41f15e648257d6b79a4003a7432ce6b295974`  
		Last Modified: Sat, 29 Dec 2018 14:09:31 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:614d02b1f04d1f95d135a2f2ebfe296756d356e60fa80ef96dc9f6473d234e2c`  
		Last Modified: Sat, 29 Dec 2018 14:09:35 GMT  
		Size: 6.1 MB (6060844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f9734be4d8438c55981980051c713b783d251cfe5c2ce75976b087970eb6dc`  
		Last Modified: Sat, 29 Dec 2018 14:09:32 GMT  
		Size: 937.0 KB (937007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d9ca5a3a2768c518e80a9f1385b0d7c764b4bea6dc3301df4c92a272160c00`  
		Last Modified: Sat, 29 Dec 2018 14:09:31 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94951bee02c91d4d2e66a9550a5dedc197b2c80bc1286c632788f42f641e9bcd`  
		Last Modified: Sat, 29 Dec 2018 14:12:42 GMT  
		Size: 97.7 MB (97651955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6803487bca83d24923bb8cab2b258e7b52b5ac67dd4d70920bed6ed6dfaac135`  
		Last Modified: Sat, 29 Dec 2018 14:12:09 GMT  
		Size: 4.9 KB (4948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a21b8d1209f094ff4f9a4e9b4c806527a20b82b1dd1da03dbc1e085a0372b46`  
		Last Modified: Sat, 29 Dec 2018 14:12:09 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1fa1ae018745f82169348b00dd5940fff93df0484934e0d911caaa1a979d841`  
		Last Modified: Sat, 29 Dec 2018 14:12:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f23be3deac2752c88dce3409a692c9bbda711d0a8eab1f9c27be2acfcdc5ec2`  
		Last Modified: Sat, 29 Dec 2018 14:12:08 GMT  
		Size: 25.9 KB (25852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0.17` - linux; ppc64le

```console
$ docker pull cassandra@sha256:32cca27f5cf57065d616994b71f24f723251f674f36562a0d47da457cdc7578f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120733915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f783d6b93d48fcc1691b3bb0d2d7d4b4ff3c86400db8d35b38cd253dccb28ed9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:32:36 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 11:33:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:33:20 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 11:33:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 11:33:58 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 11:34:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 11:34:06 GMT
ENV CASSANDRA_VERSION=3.0.17
# Sat, 29 Dec 2018 11:36:41 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 11:36:47 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 11:36:54 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 11:36:57 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 11:37:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 11:37:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 11:37:09 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 11:37:11 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 11:37:13 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 11:37:16 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb307c944cd49eb9ac75457297cd6a75b39fe98d808628ccd3c4f6b9c08b594`  
		Last Modified: Sat, 29 Dec 2018 11:40:35 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a6cde26d393d1bd1f4280a28268e43a3f96031b091d19bc4f946d7e22f60e1`  
		Last Modified: Sat, 29 Dec 2018 11:40:37 GMT  
		Size: 5.5 MB (5542275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc017c807441938c40f56e47cf1099ccdfc86e3b94e38ce17ed4a5b2cb840ce3`  
		Last Modified: Sat, 29 Dec 2018 11:40:36 GMT  
		Size: 925.9 KB (925900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116f8ce7d6c418013654ad2f6c7332c258cbbbddf6c6ccc06985059a103429df`  
		Last Modified: Sat, 29 Dec 2018 11:40:35 GMT  
		Size: 18.2 KB (18222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0b04f9ec165563c0656980e2ff792212af2e3cd2659a076d1a227aea301a89`  
		Last Modified: Sat, 29 Dec 2018 11:40:49 GMT  
		Size: 91.5 MB (91466862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:427a556f344d19d3067cdb85316a8aae1612647c21c642a795a63ae8e5db42c7`  
		Last Modified: Sat, 29 Dec 2018 11:40:32 GMT  
		Size: 4.9 KB (4948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:323136069e798edb337314feab1505d817b478968c6f6d4c1226fc62acef2123`  
		Last Modified: Sat, 29 Dec 2018 11:40:32 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0874b18607cc6c417cd383db7de96cd663c4ef491418cd3ba2c780c01e3e1603`  
		Last Modified: Sat, 29 Dec 2018 11:40:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ef55c76edc5871b73f8fef5050aca0a0ccf3c7f0071835080b77048e47f21e`  
		Last Modified: Sat, 29 Dec 2018 11:40:32 GMT  
		Size: 25.9 KB (25854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.11`

```console
$ docker pull cassandra@sha256:505202f7cb249e7e5665d338c92284c5576b18126163a825286527be11f28db7
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
$ docker pull cassandra@sha256:d913ed6ec0aa6839707383b635aed4015713312622194cfa3be6f01406b0a562
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121804678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c78bc5aa650350122ce29d943c917c705904ac1bdce797356f683c665a82f9cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 16:31:36 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 16:32:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 16:32:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 16:33:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 16:33:26 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 16:33:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 16:48:25 GMT
ENV CASSANDRA_VERSION=3.11.3
# Sat, 29 Dec 2018 16:52:38 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 16:52:39 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 16:52:45 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 16:52:46 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 16:52:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 16:52:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 16:52:56 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 16:52:58 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 16:53:00 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 16:53:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67a3f3792a4e2f252094fb20554b7b5844cfbb8c5e403d4720fbbe629d09a05`  
		Last Modified: Sat, 29 Dec 2018 16:53:27 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bbd7fb6d6687bb0f1c0510943e8645742b7b61fc58d11f3b8de7d59c9b8f5d`  
		Last Modified: Sat, 29 Dec 2018 16:53:29 GMT  
		Size: 5.1 MB (5147359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a854cd6c2e14b57e0aad1f13caacd77b6e9315276ab88fb513456780b4f6b5`  
		Last Modified: Sat, 29 Dec 2018 16:53:27 GMT  
		Size: 925.1 KB (925066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7586c4592d1ae68177db24ff5c3b80691b12aeb03dd6c509fda1823191e83ecd`  
		Last Modified: Sat, 29 Dec 2018 16:53:27 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14e268c48ec22c4bc725d009b003256bda2368deff771fd168e272c909736e6`  
		Last Modified: Sat, 29 Dec 2018 16:55:23 GMT  
		Size: 95.3 MB (95338331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8206b323e6b263c66c36d90c75a8e328c0f1872e84fefb60521597872bdfa76`  
		Last Modified: Sat, 29 Dec 2018 16:54:55 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483d855d6d7daddc1bc296240ed3c01feada63dee72c9647969b7d037567c960`  
		Last Modified: Sat, 29 Dec 2018 16:54:55 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b9a562e127c28a9433333badc2ce5c1c8e33704b98b9aeda28738636e3dddf9`  
		Last Modified: Sat, 29 Dec 2018 16:54:56 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:282a58ad2a43f5616a7845eaa311a704c797c71025da5ed458a88ceae9a863b0`  
		Last Modified: Sat, 29 Dec 2018 16:54:55 GMT  
		Size: 30.5 KB (30504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11` - linux; 386

```console
$ docker pull cassandra@sha256:9b6b12c70da69a9c52df6a91f6b77c1aebd9893370f8bfc19c953baacce939f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132642429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1d9bf9351cfe49500a69e8735fe57c423ef37fb521051c3647cfd5d71baf339`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:02:46 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 14:02:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:02:59 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 14:03:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 14:03:16 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 14:03:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 14:08:16 GMT
ENV CASSANDRA_VERSION=3.11.3
# Sat, 29 Dec 2018 14:09:06 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 14:09:06 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 14:09:08 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 14:09:08 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 14:09:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 14:09:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 14:09:12 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 14:09:13 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 14:09:13 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 14:09:13 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a79325a34d3a9a8dea66d1213c41f15e648257d6b79a4003a7432ce6b295974`  
		Last Modified: Sat, 29 Dec 2018 14:09:31 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:614d02b1f04d1f95d135a2f2ebfe296756d356e60fa80ef96dc9f6473d234e2c`  
		Last Modified: Sat, 29 Dec 2018 14:09:35 GMT  
		Size: 6.1 MB (6060844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f9734be4d8438c55981980051c713b783d251cfe5c2ce75976b087970eb6dc`  
		Last Modified: Sat, 29 Dec 2018 14:09:32 GMT  
		Size: 937.0 KB (937007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d9ca5a3a2768c518e80a9f1385b0d7c764b4bea6dc3301df4c92a272160c00`  
		Last Modified: Sat, 29 Dec 2018 14:09:31 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a301276cd1ffb71095ec064a9ec1b91b493a1d5493500736dd07c8d3ec11759f`  
		Last Modified: Sat, 29 Dec 2018 14:13:18 GMT  
		Size: 102.5 MB (102455038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd32310e49ab45c788675637e537b2b75ab5c33df74a999e5c529f98e24a43ef`  
		Last Modified: Sat, 29 Dec 2018 14:12:48 GMT  
		Size: 4.6 KB (4648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625ff082325864677148dd60683e0c847f17e3216258c0fc096a98644f717d51`  
		Last Modified: Sat, 29 Dec 2018 14:12:48 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78f56992974671d3dee225a31dbd48864447b36617b253b7ea5292568fb46e0`  
		Last Modified: Sat, 29 Dec 2018 14:12:48 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c65b2962dce9001fd77c343acf55a5383abbf34d0d986652d6b32a9e535e15`  
		Last Modified: Sat, 29 Dec 2018 14:12:48 GMT  
		Size: 30.5 KB (30499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11` - linux; ppc64le

```console
$ docker pull cassandra@sha256:8463e0784741cadd33f18316ccfebaed08527cbb8c5c6271133fb8c4fdc2c3ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125550706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bf3061a27bf00d264525e9493488e39867fa95c84bc25efaf2b67c9e4fac5d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:32:36 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 11:33:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:33:20 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 11:33:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 11:33:58 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 11:34:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 11:37:29 GMT
ENV CASSANDRA_VERSION=3.11.3
# Sat, 29 Dec 2018 11:39:40 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 11:39:44 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 11:39:49 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 11:39:50 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 11:39:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 11:39:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 11:40:02 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 11:40:04 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 11:40:06 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 11:40:08 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb307c944cd49eb9ac75457297cd6a75b39fe98d808628ccd3c4f6b9c08b594`  
		Last Modified: Sat, 29 Dec 2018 11:40:35 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a6cde26d393d1bd1f4280a28268e43a3f96031b091d19bc4f946d7e22f60e1`  
		Last Modified: Sat, 29 Dec 2018 11:40:37 GMT  
		Size: 5.5 MB (5542275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc017c807441938c40f56e47cf1099ccdfc86e3b94e38ce17ed4a5b2cb840ce3`  
		Last Modified: Sat, 29 Dec 2018 11:40:36 GMT  
		Size: 925.9 KB (925900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116f8ce7d6c418013654ad2f6c7332c258cbbbddf6c6ccc06985059a103429df`  
		Last Modified: Sat, 29 Dec 2018 11:40:35 GMT  
		Size: 18.2 KB (18222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a1a6deb5bab225ca8cdf21557f6fa8d6486197ae1290c1ba826786e4b6d2431`  
		Last Modified: Sat, 29 Dec 2018 11:41:20 GMT  
		Size: 96.3 MB (96275538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98172af92b229a6f6d6aeba2f536ab0ac35289ea9b182921eaddcefca8785b1`  
		Last Modified: Sat, 29 Dec 2018 11:41:01 GMT  
		Size: 8.4 KB (8412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7eb3051e79b50b2aa45d6f57660eeed6fa80b007c5519092d4acd23187b6ca`  
		Last Modified: Sat, 29 Dec 2018 11:41:01 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b39ef9b09f3d7465a55db0c19bf96245a88af2fb86d3c34b17e0e1ef7ca57b`  
		Last Modified: Sat, 29 Dec 2018 11:41:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d4c97eede8ccc036b67fcc6d94c74afd937d2d0dd81ce588456deb5a5c289d`  
		Last Modified: Sat, 29 Dec 2018 11:41:01 GMT  
		Size: 30.5 KB (30505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.11.3`

```console
$ docker pull cassandra@sha256:505202f7cb249e7e5665d338c92284c5576b18126163a825286527be11f28db7
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
$ docker pull cassandra@sha256:d913ed6ec0aa6839707383b635aed4015713312622194cfa3be6f01406b0a562
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121804678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c78bc5aa650350122ce29d943c917c705904ac1bdce797356f683c665a82f9cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 16:31:36 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 16:32:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 16:32:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 16:33:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 16:33:26 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 16:33:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 16:48:25 GMT
ENV CASSANDRA_VERSION=3.11.3
# Sat, 29 Dec 2018 16:52:38 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 16:52:39 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 16:52:45 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 16:52:46 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 16:52:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 16:52:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 16:52:56 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 16:52:58 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 16:53:00 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 16:53:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67a3f3792a4e2f252094fb20554b7b5844cfbb8c5e403d4720fbbe629d09a05`  
		Last Modified: Sat, 29 Dec 2018 16:53:27 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bbd7fb6d6687bb0f1c0510943e8645742b7b61fc58d11f3b8de7d59c9b8f5d`  
		Last Modified: Sat, 29 Dec 2018 16:53:29 GMT  
		Size: 5.1 MB (5147359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a854cd6c2e14b57e0aad1f13caacd77b6e9315276ab88fb513456780b4f6b5`  
		Last Modified: Sat, 29 Dec 2018 16:53:27 GMT  
		Size: 925.1 KB (925066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7586c4592d1ae68177db24ff5c3b80691b12aeb03dd6c509fda1823191e83ecd`  
		Last Modified: Sat, 29 Dec 2018 16:53:27 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14e268c48ec22c4bc725d009b003256bda2368deff771fd168e272c909736e6`  
		Last Modified: Sat, 29 Dec 2018 16:55:23 GMT  
		Size: 95.3 MB (95338331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8206b323e6b263c66c36d90c75a8e328c0f1872e84fefb60521597872bdfa76`  
		Last Modified: Sat, 29 Dec 2018 16:54:55 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483d855d6d7daddc1bc296240ed3c01feada63dee72c9647969b7d037567c960`  
		Last Modified: Sat, 29 Dec 2018 16:54:55 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b9a562e127c28a9433333badc2ce5c1c8e33704b98b9aeda28738636e3dddf9`  
		Last Modified: Sat, 29 Dec 2018 16:54:56 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:282a58ad2a43f5616a7845eaa311a704c797c71025da5ed458a88ceae9a863b0`  
		Last Modified: Sat, 29 Dec 2018 16:54:55 GMT  
		Size: 30.5 KB (30504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11.3` - linux; 386

```console
$ docker pull cassandra@sha256:9b6b12c70da69a9c52df6a91f6b77c1aebd9893370f8bfc19c953baacce939f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132642429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1d9bf9351cfe49500a69e8735fe57c423ef37fb521051c3647cfd5d71baf339`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:02:46 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 14:02:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:02:59 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 14:03:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 14:03:16 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 14:03:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 14:08:16 GMT
ENV CASSANDRA_VERSION=3.11.3
# Sat, 29 Dec 2018 14:09:06 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 14:09:06 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 14:09:08 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 14:09:08 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 14:09:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 14:09:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 14:09:12 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 14:09:13 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 14:09:13 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 14:09:13 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a79325a34d3a9a8dea66d1213c41f15e648257d6b79a4003a7432ce6b295974`  
		Last Modified: Sat, 29 Dec 2018 14:09:31 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:614d02b1f04d1f95d135a2f2ebfe296756d356e60fa80ef96dc9f6473d234e2c`  
		Last Modified: Sat, 29 Dec 2018 14:09:35 GMT  
		Size: 6.1 MB (6060844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f9734be4d8438c55981980051c713b783d251cfe5c2ce75976b087970eb6dc`  
		Last Modified: Sat, 29 Dec 2018 14:09:32 GMT  
		Size: 937.0 KB (937007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d9ca5a3a2768c518e80a9f1385b0d7c764b4bea6dc3301df4c92a272160c00`  
		Last Modified: Sat, 29 Dec 2018 14:09:31 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a301276cd1ffb71095ec064a9ec1b91b493a1d5493500736dd07c8d3ec11759f`  
		Last Modified: Sat, 29 Dec 2018 14:13:18 GMT  
		Size: 102.5 MB (102455038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd32310e49ab45c788675637e537b2b75ab5c33df74a999e5c529f98e24a43ef`  
		Last Modified: Sat, 29 Dec 2018 14:12:48 GMT  
		Size: 4.6 KB (4648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625ff082325864677148dd60683e0c847f17e3216258c0fc096a98644f717d51`  
		Last Modified: Sat, 29 Dec 2018 14:12:48 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78f56992974671d3dee225a31dbd48864447b36617b253b7ea5292568fb46e0`  
		Last Modified: Sat, 29 Dec 2018 14:12:48 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c65b2962dce9001fd77c343acf55a5383abbf34d0d986652d6b32a9e535e15`  
		Last Modified: Sat, 29 Dec 2018 14:12:48 GMT  
		Size: 30.5 KB (30499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11.3` - linux; ppc64le

```console
$ docker pull cassandra@sha256:8463e0784741cadd33f18316ccfebaed08527cbb8c5c6271133fb8c4fdc2c3ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125550706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bf3061a27bf00d264525e9493488e39867fa95c84bc25efaf2b67c9e4fac5d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:32:36 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 11:33:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:33:20 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 11:33:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 11:33:58 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 11:34:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 11:37:29 GMT
ENV CASSANDRA_VERSION=3.11.3
# Sat, 29 Dec 2018 11:39:40 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 11:39:44 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 11:39:49 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 11:39:50 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 11:39:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 11:39:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 11:40:02 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 11:40:04 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 11:40:06 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 11:40:08 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb307c944cd49eb9ac75457297cd6a75b39fe98d808628ccd3c4f6b9c08b594`  
		Last Modified: Sat, 29 Dec 2018 11:40:35 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a6cde26d393d1bd1f4280a28268e43a3f96031b091d19bc4f946d7e22f60e1`  
		Last Modified: Sat, 29 Dec 2018 11:40:37 GMT  
		Size: 5.5 MB (5542275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc017c807441938c40f56e47cf1099ccdfc86e3b94e38ce17ed4a5b2cb840ce3`  
		Last Modified: Sat, 29 Dec 2018 11:40:36 GMT  
		Size: 925.9 KB (925900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116f8ce7d6c418013654ad2f6c7332c258cbbbddf6c6ccc06985059a103429df`  
		Last Modified: Sat, 29 Dec 2018 11:40:35 GMT  
		Size: 18.2 KB (18222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a1a6deb5bab225ca8cdf21557f6fa8d6486197ae1290c1ba826786e4b6d2431`  
		Last Modified: Sat, 29 Dec 2018 11:41:20 GMT  
		Size: 96.3 MB (96275538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98172af92b229a6f6d6aeba2f536ab0ac35289ea9b182921eaddcefca8785b1`  
		Last Modified: Sat, 29 Dec 2018 11:41:01 GMT  
		Size: 8.4 KB (8412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7eb3051e79b50b2aa45d6f57660eeed6fa80b007c5519092d4acd23187b6ca`  
		Last Modified: Sat, 29 Dec 2018 11:41:01 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b39ef9b09f3d7465a55db0c19bf96245a88af2fb86d3c34b17e0e1ef7ca57b`  
		Last Modified: Sat, 29 Dec 2018 11:41:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d4c97eede8ccc036b67fcc6d94c74afd937d2d0dd81ce588456deb5a5c289d`  
		Last Modified: Sat, 29 Dec 2018 11:41:01 GMT  
		Size: 30.5 KB (30505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:latest`

```console
$ docker pull cassandra@sha256:505202f7cb249e7e5665d338c92284c5576b18126163a825286527be11f28db7
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
$ docker pull cassandra@sha256:d913ed6ec0aa6839707383b635aed4015713312622194cfa3be6f01406b0a562
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121804678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c78bc5aa650350122ce29d943c917c705904ac1bdce797356f683c665a82f9cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 16:31:36 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 16:32:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 16:32:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 16:33:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 16:33:26 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 16:33:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 16:48:25 GMT
ENV CASSANDRA_VERSION=3.11.3
# Sat, 29 Dec 2018 16:52:38 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 16:52:39 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 16:52:45 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 16:52:46 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 16:52:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 16:52:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 16:52:56 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 16:52:58 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 16:53:00 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 16:53:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67a3f3792a4e2f252094fb20554b7b5844cfbb8c5e403d4720fbbe629d09a05`  
		Last Modified: Sat, 29 Dec 2018 16:53:27 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bbd7fb6d6687bb0f1c0510943e8645742b7b61fc58d11f3b8de7d59c9b8f5d`  
		Last Modified: Sat, 29 Dec 2018 16:53:29 GMT  
		Size: 5.1 MB (5147359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a854cd6c2e14b57e0aad1f13caacd77b6e9315276ab88fb513456780b4f6b5`  
		Last Modified: Sat, 29 Dec 2018 16:53:27 GMT  
		Size: 925.1 KB (925066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7586c4592d1ae68177db24ff5c3b80691b12aeb03dd6c509fda1823191e83ecd`  
		Last Modified: Sat, 29 Dec 2018 16:53:27 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14e268c48ec22c4bc725d009b003256bda2368deff771fd168e272c909736e6`  
		Last Modified: Sat, 29 Dec 2018 16:55:23 GMT  
		Size: 95.3 MB (95338331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8206b323e6b263c66c36d90c75a8e328c0f1872e84fefb60521597872bdfa76`  
		Last Modified: Sat, 29 Dec 2018 16:54:55 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483d855d6d7daddc1bc296240ed3c01feada63dee72c9647969b7d037567c960`  
		Last Modified: Sat, 29 Dec 2018 16:54:55 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b9a562e127c28a9433333badc2ce5c1c8e33704b98b9aeda28738636e3dddf9`  
		Last Modified: Sat, 29 Dec 2018 16:54:56 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:282a58ad2a43f5616a7845eaa311a704c797c71025da5ed458a88ceae9a863b0`  
		Last Modified: Sat, 29 Dec 2018 16:54:55 GMT  
		Size: 30.5 KB (30504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:latest` - linux; 386

```console
$ docker pull cassandra@sha256:9b6b12c70da69a9c52df6a91f6b77c1aebd9893370f8bfc19c953baacce939f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132642429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1d9bf9351cfe49500a69e8735fe57c423ef37fb521051c3647cfd5d71baf339`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:02:46 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 14:02:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:02:59 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 14:03:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 14:03:16 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 14:03:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 14:08:16 GMT
ENV CASSANDRA_VERSION=3.11.3
# Sat, 29 Dec 2018 14:09:06 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 14:09:06 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 14:09:08 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 14:09:08 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 14:09:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 14:09:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 14:09:12 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 14:09:13 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 14:09:13 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 14:09:13 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a79325a34d3a9a8dea66d1213c41f15e648257d6b79a4003a7432ce6b295974`  
		Last Modified: Sat, 29 Dec 2018 14:09:31 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:614d02b1f04d1f95d135a2f2ebfe296756d356e60fa80ef96dc9f6473d234e2c`  
		Last Modified: Sat, 29 Dec 2018 14:09:35 GMT  
		Size: 6.1 MB (6060844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f9734be4d8438c55981980051c713b783d251cfe5c2ce75976b087970eb6dc`  
		Last Modified: Sat, 29 Dec 2018 14:09:32 GMT  
		Size: 937.0 KB (937007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d9ca5a3a2768c518e80a9f1385b0d7c764b4bea6dc3301df4c92a272160c00`  
		Last Modified: Sat, 29 Dec 2018 14:09:31 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a301276cd1ffb71095ec064a9ec1b91b493a1d5493500736dd07c8d3ec11759f`  
		Last Modified: Sat, 29 Dec 2018 14:13:18 GMT  
		Size: 102.5 MB (102455038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd32310e49ab45c788675637e537b2b75ab5c33df74a999e5c529f98e24a43ef`  
		Last Modified: Sat, 29 Dec 2018 14:12:48 GMT  
		Size: 4.6 KB (4648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625ff082325864677148dd60683e0c847f17e3216258c0fc096a98644f717d51`  
		Last Modified: Sat, 29 Dec 2018 14:12:48 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78f56992974671d3dee225a31dbd48864447b36617b253b7ea5292568fb46e0`  
		Last Modified: Sat, 29 Dec 2018 14:12:48 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c65b2962dce9001fd77c343acf55a5383abbf34d0d986652d6b32a9e535e15`  
		Last Modified: Sat, 29 Dec 2018 14:12:48 GMT  
		Size: 30.5 KB (30499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:latest` - linux; ppc64le

```console
$ docker pull cassandra@sha256:8463e0784741cadd33f18316ccfebaed08527cbb8c5c6271133fb8c4fdc2c3ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125550706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bf3061a27bf00d264525e9493488e39867fa95c84bc25efaf2b67c9e4fac5d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:32:36 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sat, 29 Dec 2018 11:33:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:33:20 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 11:33:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 11:33:58 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 29 Dec 2018 11:34:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 11:37:29 GMT
ENV CASSANDRA_VERSION=3.11.3
# Sat, 29 Dec 2018 11:39:40 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 29 Dec 2018 11:39:44 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 29 Dec 2018 11:39:49 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 29 Dec 2018 11:39:50 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 11:39:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 11:39:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 11:40:02 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 29 Dec 2018 11:40:04 GMT
VOLUME [/var/lib/cassandra]
# Sat, 29 Dec 2018 11:40:06 GMT
EXPOSE 7000 7001 7199 9042 9160
# Sat, 29 Dec 2018 11:40:08 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb307c944cd49eb9ac75457297cd6a75b39fe98d808628ccd3c4f6b9c08b594`  
		Last Modified: Sat, 29 Dec 2018 11:40:35 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a6cde26d393d1bd1f4280a28268e43a3f96031b091d19bc4f946d7e22f60e1`  
		Last Modified: Sat, 29 Dec 2018 11:40:37 GMT  
		Size: 5.5 MB (5542275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc017c807441938c40f56e47cf1099ccdfc86e3b94e38ce17ed4a5b2cb840ce3`  
		Last Modified: Sat, 29 Dec 2018 11:40:36 GMT  
		Size: 925.9 KB (925900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116f8ce7d6c418013654ad2f6c7332c258cbbbddf6c6ccc06985059a103429df`  
		Last Modified: Sat, 29 Dec 2018 11:40:35 GMT  
		Size: 18.2 KB (18222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a1a6deb5bab225ca8cdf21557f6fa8d6486197ae1290c1ba826786e4b6d2431`  
		Last Modified: Sat, 29 Dec 2018 11:41:20 GMT  
		Size: 96.3 MB (96275538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98172af92b229a6f6d6aeba2f536ab0ac35289ea9b182921eaddcefca8785b1`  
		Last Modified: Sat, 29 Dec 2018 11:41:01 GMT  
		Size: 8.4 KB (8412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7eb3051e79b50b2aa45d6f57660eeed6fa80b007c5519092d4acd23187b6ca`  
		Last Modified: Sat, 29 Dec 2018 11:41:01 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b39ef9b09f3d7465a55db0c19bf96245a88af2fb86d3c34b17e0e1ef7ca57b`  
		Last Modified: Sat, 29 Dec 2018 11:41:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d4c97eede8ccc036b67fcc6d94c74afd937d2d0dd81ce588456deb5a5c289d`  
		Last Modified: Sat, 29 Dec 2018 11:41:01 GMT  
		Size: 30.5 KB (30505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
