<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `cassandra`

-	[`cassandra:2`](#cassandra2)
-	[`cassandra:2.1`](#cassandra21)
-	[`cassandra:2.1.21`](#cassandra2121)
-	[`cassandra:2.2`](#cassandra22)
-	[`cassandra:2.2.14`](#cassandra2214)
-	[`cassandra:3`](#cassandra3)
-	[`cassandra:3.0`](#cassandra30)
-	[`cassandra:3.0.18`](#cassandra3018)
-	[`cassandra:3.11`](#cassandra311)
-	[`cassandra:3.11.4`](#cassandra3114)
-	[`cassandra:latest`](#cassandralatest)

## `cassandra:2`

```console
$ docker pull cassandra@sha256:60f31ed82aab8782ca1eba3aac4a2013c6fa015ba73d957de291a3089447ced0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `cassandra:2` - linux; amd64

```console
$ docker pull cassandra@sha256:a57bd44a94b2aaa2c1fde1e2b1135ebc67b61952f85593f7b6e337ca06908f7f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.2 MB (196193650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8865ba99a0d2acf5c2f036ad77a60f30e31ebe2f55df8e220f841d7de44ff135`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:52:46 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 05 Mar 2019 03:52:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:52:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:53:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 03:53:05 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 05 Mar 2019 03:53:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 03:54:13 GMT
ENV CASSANDRA_VERSION=2.2.14
# Tue, 05 Mar 2019 03:55:05 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 05 Mar 2019 03:55:06 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 05 Mar 2019 03:55:08 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 05 Mar 2019 03:55:08 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Tue, 05 Mar 2019 03:55:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 03:55:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 03:55:12 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 05 Mar 2019 03:55:13 GMT
VOLUME [/var/lib/cassandra]
# Tue, 05 Mar 2019 03:55:13 GMT
EXPOSE 7000 7001 7199 9042 9160
# Tue, 05 Mar 2019 03:55:14 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f191f1b689772b40ced765f20d7b8c5d25accb69f9ef92a2b485c826d81935`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19a5d39fadda67101f597716241aa18bde49d13c386667b473a914d2648ba41`  
		Last Modified: Tue, 05 Mar 2019 03:56:59 GMT  
		Size: 5.7 MB (5676252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5f75b71aa54cf5dfe617611ed58b8fe5cd3840efba7556ba6f91ba3e0ee950`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 957.3 KB (957341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a818fde575e26ff06b56f6a820dd17f729c70a5a458422790fc8b98208d3da35`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 18.2 KB (18224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f763e945869d5a3e3856b9d23862da96dc260df5db2867f328c823984cff10eb`  
		Last Modified: Tue, 05 Mar 2019 03:57:50 GMT  
		Size: 167.0 MB (167015394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d75a6829adfd50c2e2b1e826e80826ba6619c8b3c977e142b0fa1cb71c537d`  
		Last Modified: Tue, 05 Mar 2019 03:57:24 GMT  
		Size: 4.9 KB (4887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff863250e8cc6196e9f0df1d283cb801785f91517f82e4b98f2f857be35886d7`  
		Last Modified: Tue, 05 Mar 2019 03:57:24 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ed438e48a343967f98a4ab22ac7554d6837a9d27d4c2a1ac0b15f5c9c17550`  
		Last Modified: Tue, 05 Mar 2019 03:57:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e58e58452bd33aa27afd2fc26588268f02f666642fbd66c6a2bcf99b7d3f14`  
		Last Modified: Tue, 05 Mar 2019 03:57:24 GMT  
		Size: 22.5 KB (22488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2` - linux; 386

```console
$ docker pull cassandra@sha256:f8c4cd211695660dda17ee5cd91c252984b67f861e228bc23b0aeb5115624cf4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.8 MB (199778305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9f788d9d8a7f18341781a0f701bfe6a8d311f89dad785ce895a7392a875bb1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 20:47:24 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 05 Mar 2019 20:47:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 20:47:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 20:47:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 20:47:48 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 05 Mar 2019 20:47:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 20:49:07 GMT
ENV CASSANDRA_VERSION=2.2.14
# Tue, 05 Mar 2019 20:50:04 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 05 Mar 2019 20:50:05 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 05 Mar 2019 20:50:05 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 05 Mar 2019 20:50:06 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Tue, 05 Mar 2019 20:50:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 20:50:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 20:50:07 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 05 Mar 2019 20:50:07 GMT
VOLUME [/var/lib/cassandra]
# Tue, 05 Mar 2019 20:50:08 GMT
EXPOSE 7000 7001 7199 9042 9160
# Tue, 05 Mar 2019 20:50:08 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6946319512779753db7d332250a1e797b1cae72d7cf27f37eb487f1313ca976f`  
		Last Modified: Tue, 05 Mar 2019 20:51:57 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecff23ece0779f69eb366144108ec6edb2353f7484e22394dc60306314cde05b`  
		Last Modified: Tue, 05 Mar 2019 20:51:58 GMT  
		Size: 6.1 MB (6061142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7557083f7c43abe1d28c86cf1421550fb7032ecdb574d31164e0f2c07952ece3`  
		Last Modified: Tue, 05 Mar 2019 20:51:56 GMT  
		Size: 937.0 KB (937024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4049fdccf3b07d03e3de87657ae11232575c16f9a005a71f5e088f2c8b23e480`  
		Last Modified: Tue, 05 Mar 2019 20:51:56 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f418eed8fe95ea9ec2820be3aa160aa15c193a439122ad336d73235dc4f54083`  
		Last Modified: Tue, 05 Mar 2019 20:53:03 GMT  
		Size: 169.6 MB (169605853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0967d149a9da4f0354bc61e8243d58944daebecfd098d2154acb7f8412b09e0a`  
		Last Modified: Tue, 05 Mar 2019 20:52:31 GMT  
		Size: 4.9 KB (4882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78589389a37c81d6cfd6e408095f8409f56c648d8052ee0572d97489011d27ca`  
		Last Modified: Tue, 05 Mar 2019 20:52:31 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150cda8ebbaa608db730a1b0244b76a30b7b5f833dca0561b62e72fb9fc40c2c`  
		Last Modified: Tue, 05 Mar 2019 20:52:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c796ef5d20fd44c3d2ec1c44206754878593b5f763c295853747d16b202b385`  
		Last Modified: Tue, 05 Mar 2019 20:52:31 GMT  
		Size: 22.5 KB (22486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1`

```console
$ docker pull cassandra@sha256:5c20d9371322e1085028d78cf5b7ee6cc25ea1c25aeb5f8ead315d43d758d1b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `cassandra:2.1` - linux; amd64

```console
$ docker pull cassandra@sha256:cf89f3b70c5edc4b90d8f239c48877ecc10e19cc05fc523f6e97abc3d2b5eda3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.9 MB (191857994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e43de04698aba3ab34de3d03fed2eeb6279f4a15014b909d46150b06e806c7b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:52:46 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 05 Mar 2019 03:52:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:52:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:53:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 03:53:05 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 05 Mar 2019 03:53:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 03:53:09 GMT
ENV CASSANDRA_VERSION=2.1.21
# Tue, 05 Mar 2019 03:53:58 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 05 Mar 2019 03:53:59 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 05 Mar 2019 03:54:01 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 05 Mar 2019 03:54:02 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Tue, 05 Mar 2019 03:54:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 03:54:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 03:54:05 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 05 Mar 2019 03:54:06 GMT
VOLUME [/var/lib/cassandra]
# Tue, 05 Mar 2019 03:54:06 GMT
EXPOSE 7000 7001 7199 9042 9160
# Tue, 05 Mar 2019 03:54:07 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f191f1b689772b40ced765f20d7b8c5d25accb69f9ef92a2b485c826d81935`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19a5d39fadda67101f597716241aa18bde49d13c386667b473a914d2648ba41`  
		Last Modified: Tue, 05 Mar 2019 03:56:59 GMT  
		Size: 5.7 MB (5676252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5f75b71aa54cf5dfe617611ed58b8fe5cd3840efba7556ba6f91ba3e0ee950`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 957.3 KB (957341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a818fde575e26ff06b56f6a820dd17f729c70a5a458422790fc8b98208d3da35`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 18.2 KB (18224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994f1a3759c14ffd42b8472ba30b5aeb70ee2d39e02f4c83353d03c50143f14e`  
		Last Modified: Tue, 05 Mar 2019 03:57:20 GMT  
		Size: 162.7 MB (162681912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05bafb9d6082364be6c457de8a76368339acb7f03c9ab41407e399bd7ac4c823`  
		Last Modified: Tue, 05 Mar 2019 03:56:55 GMT  
		Size: 4.7 KB (4675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c3501b11ef2297f9a5be2317e221ef825d8db572b4ea46311ee4e19f5acfff8`  
		Last Modified: Tue, 05 Mar 2019 03:56:55 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db97d70e7d76f7f4efdc2fefec3ee22ad626217d7e69dcfa677a8f881a1f0dd8`  
		Last Modified: Tue, 05 Mar 2019 03:56:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc951a5d9e43406f40b884e5e130a6a2075263f67aa02d66b8f720364b7fae03`  
		Last Modified: Tue, 05 Mar 2019 03:56:55 GMT  
		Size: 20.5 KB (20527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.1` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:6fc901f779ccae24bccd4d079d70444ce8e27bbd67c21fdf733ea2def8ed7114
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.0 MB (175984928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:322b370cb18ef0cf006c2aa6a811c12b9316c3420831bf119d3475e966eb57ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:26:43 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 06 Feb 2019 21:27:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 21:27:59 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 21:28:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 21:28:41 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 06 Feb 2019 21:28:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 14 Feb 2019 09:39:36 GMT
ENV CASSANDRA_VERSION=2.1.21
# Thu, 14 Feb 2019 09:44:25 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 14 Feb 2019 09:44:34 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 14 Feb 2019 09:44:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 14 Feb 2019 09:44:37 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Thu, 14 Feb 2019 09:44:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 14 Feb 2019 09:44:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Feb 2019 09:44:42 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 14 Feb 2019 09:44:43 GMT
VOLUME [/var/lib/cassandra]
# Thu, 14 Feb 2019 09:44:44 GMT
EXPOSE 7000 7001 7199 9042 9160
# Thu, 14 Feb 2019 09:44:45 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c2f4a84e1b6a1c11172d5c8896c5abf3d6f799bf5467e2575fb9552d14930c`  
		Last Modified: Wed, 06 Feb 2019 21:45:11 GMT  
		Size: 1.8 KB (1759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb0d71d77e31bbcaa111752dbf30b2753becca04f10ad2df933500038c73ce8`  
		Last Modified: Wed, 06 Feb 2019 21:45:10 GMT  
		Size: 5.1 MB (5147505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e1af13ad337a6a6d6e874ce42f294580a39500c575e107c0db441cb6044d83`  
		Last Modified: Wed, 06 Feb 2019 21:45:09 GMT  
		Size: 925.1 KB (925143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6e141c3155b59cc9272cb2e2a8f14c356c01fb06ea4f865c9b9ac875f8323b`  
		Last Modified: Wed, 06 Feb 2019 21:45:09 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab942fd491c257b418c4e09d6e8354a138bae38b69a00a8ecf702e25c93249d`  
		Last Modified: Thu, 14 Feb 2019 09:52:42 GMT  
		Size: 149.5 MB (149515656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe5a21a280be3af9c9f0d7be50975eb36cf38579a1808205a77581ae8fb85f7`  
		Last Modified: Thu, 14 Feb 2019 09:51:56 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab32dff7d52608bfedfe3fa9286f7f2ee6852862305f864966bb1c966ea0a9d`  
		Last Modified: Thu, 14 Feb 2019 09:51:57 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a596950cae6e6c6c44fbbf2f4ed4e397fb8b73f8178ab6cec018fdacdb2eccfb`  
		Last Modified: Thu, 14 Feb 2019 09:51:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53054933bebce1c33eea8cca31abd0b5ff79332e976acd23753300f31f9516e3`  
		Last Modified: Thu, 14 Feb 2019 09:51:57 GMT  
		Size: 20.5 KB (20530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.1` - linux; 386

```console
$ docker pull cassandra@sha256:637158593b0f610449df77819422c762437c2deb7ab12510c0c9d7d93c7af7c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.4 MB (195433508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b897cfd4f1df51c7aec051793369f222d544a17a936c3451cbcdf0ee35d0f55a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 20:47:24 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 05 Mar 2019 20:47:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 20:47:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 20:47:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 20:47:48 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 05 Mar 2019 20:47:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 20:47:52 GMT
ENV CASSANDRA_VERSION=2.1.21
# Tue, 05 Mar 2019 20:48:56 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 05 Mar 2019 20:48:56 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 05 Mar 2019 20:48:57 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 05 Mar 2019 20:48:57 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Tue, 05 Mar 2019 20:48:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 20:48:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 20:48:59 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 05 Mar 2019 20:48:59 GMT
VOLUME [/var/lib/cassandra]
# Tue, 05 Mar 2019 20:48:59 GMT
EXPOSE 7000 7001 7199 9042 9160
# Tue, 05 Mar 2019 20:49:00 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6946319512779753db7d332250a1e797b1cae72d7cf27f37eb487f1313ca976f`  
		Last Modified: Tue, 05 Mar 2019 20:51:57 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecff23ece0779f69eb366144108ec6edb2353f7484e22394dc60306314cde05b`  
		Last Modified: Tue, 05 Mar 2019 20:51:58 GMT  
		Size: 6.1 MB (6061142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7557083f7c43abe1d28c86cf1421550fb7032ecdb574d31164e0f2c07952ece3`  
		Last Modified: Tue, 05 Mar 2019 20:51:56 GMT  
		Size: 937.0 KB (937024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4049fdccf3b07d03e3de87657ae11232575c16f9a005a71f5e088f2c8b23e480`  
		Last Modified: Tue, 05 Mar 2019 20:51:56 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01297a1faded3b26e4e2cd8fe996f17b70b0cb860c07cf4291a9e5144e548e52`  
		Last Modified: Tue, 05 Mar 2019 20:52:28 GMT  
		Size: 165.3 MB (165263226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac608591022f5cecd01983d829aa3b9aa9a2ce94add25ba46a37f85f9243de0b`  
		Last Modified: Tue, 05 Mar 2019 20:51:55 GMT  
		Size: 4.7 KB (4671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98abb35b67d9e93de8fd23ec5526951310f760fb81b8d9d035144a8409bad641`  
		Last Modified: Tue, 05 Mar 2019 20:51:55 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4496d74b6cfa00a66b5007f0099c4393fbaf4bcb165f7c22665eb282496d13`  
		Last Modified: Tue, 05 Mar 2019 20:51:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52bb4012a11cde53068b34e683ccceea23afaa9da34bb67ba40c77ef0b7b930`  
		Last Modified: Tue, 05 Mar 2019 20:51:55 GMT  
		Size: 20.5 KB (20526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1.21`

```console
$ docker pull cassandra@sha256:5c20d9371322e1085028d78cf5b7ee6cc25ea1c25aeb5f8ead315d43d758d1b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `cassandra:2.1.21` - linux; amd64

```console
$ docker pull cassandra@sha256:cf89f3b70c5edc4b90d8f239c48877ecc10e19cc05fc523f6e97abc3d2b5eda3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.9 MB (191857994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e43de04698aba3ab34de3d03fed2eeb6279f4a15014b909d46150b06e806c7b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:52:46 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 05 Mar 2019 03:52:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:52:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:53:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 03:53:05 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 05 Mar 2019 03:53:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 03:53:09 GMT
ENV CASSANDRA_VERSION=2.1.21
# Tue, 05 Mar 2019 03:53:58 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 05 Mar 2019 03:53:59 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 05 Mar 2019 03:54:01 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 05 Mar 2019 03:54:02 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Tue, 05 Mar 2019 03:54:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 03:54:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 03:54:05 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 05 Mar 2019 03:54:06 GMT
VOLUME [/var/lib/cassandra]
# Tue, 05 Mar 2019 03:54:06 GMT
EXPOSE 7000 7001 7199 9042 9160
# Tue, 05 Mar 2019 03:54:07 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f191f1b689772b40ced765f20d7b8c5d25accb69f9ef92a2b485c826d81935`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19a5d39fadda67101f597716241aa18bde49d13c386667b473a914d2648ba41`  
		Last Modified: Tue, 05 Mar 2019 03:56:59 GMT  
		Size: 5.7 MB (5676252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5f75b71aa54cf5dfe617611ed58b8fe5cd3840efba7556ba6f91ba3e0ee950`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 957.3 KB (957341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a818fde575e26ff06b56f6a820dd17f729c70a5a458422790fc8b98208d3da35`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 18.2 KB (18224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994f1a3759c14ffd42b8472ba30b5aeb70ee2d39e02f4c83353d03c50143f14e`  
		Last Modified: Tue, 05 Mar 2019 03:57:20 GMT  
		Size: 162.7 MB (162681912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05bafb9d6082364be6c457de8a76368339acb7f03c9ab41407e399bd7ac4c823`  
		Last Modified: Tue, 05 Mar 2019 03:56:55 GMT  
		Size: 4.7 KB (4675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c3501b11ef2297f9a5be2317e221ef825d8db572b4ea46311ee4e19f5acfff8`  
		Last Modified: Tue, 05 Mar 2019 03:56:55 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db97d70e7d76f7f4efdc2fefec3ee22ad626217d7e69dcfa677a8f881a1f0dd8`  
		Last Modified: Tue, 05 Mar 2019 03:56:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc951a5d9e43406f40b884e5e130a6a2075263f67aa02d66b8f720364b7fae03`  
		Last Modified: Tue, 05 Mar 2019 03:56:55 GMT  
		Size: 20.5 KB (20527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.1.21` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:6fc901f779ccae24bccd4d079d70444ce8e27bbd67c21fdf733ea2def8ed7114
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.0 MB (175984928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:322b370cb18ef0cf006c2aa6a811c12b9316c3420831bf119d3475e966eb57ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:26:43 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 06 Feb 2019 21:27:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 21:27:59 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 21:28:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 21:28:41 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 06 Feb 2019 21:28:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 14 Feb 2019 09:39:36 GMT
ENV CASSANDRA_VERSION=2.1.21
# Thu, 14 Feb 2019 09:44:25 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 14 Feb 2019 09:44:34 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 14 Feb 2019 09:44:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 14 Feb 2019 09:44:37 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Thu, 14 Feb 2019 09:44:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 14 Feb 2019 09:44:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Feb 2019 09:44:42 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 14 Feb 2019 09:44:43 GMT
VOLUME [/var/lib/cassandra]
# Thu, 14 Feb 2019 09:44:44 GMT
EXPOSE 7000 7001 7199 9042 9160
# Thu, 14 Feb 2019 09:44:45 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c2f4a84e1b6a1c11172d5c8896c5abf3d6f799bf5467e2575fb9552d14930c`  
		Last Modified: Wed, 06 Feb 2019 21:45:11 GMT  
		Size: 1.8 KB (1759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb0d71d77e31bbcaa111752dbf30b2753becca04f10ad2df933500038c73ce8`  
		Last Modified: Wed, 06 Feb 2019 21:45:10 GMT  
		Size: 5.1 MB (5147505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e1af13ad337a6a6d6e874ce42f294580a39500c575e107c0db441cb6044d83`  
		Last Modified: Wed, 06 Feb 2019 21:45:09 GMT  
		Size: 925.1 KB (925143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6e141c3155b59cc9272cb2e2a8f14c356c01fb06ea4f865c9b9ac875f8323b`  
		Last Modified: Wed, 06 Feb 2019 21:45:09 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab942fd491c257b418c4e09d6e8354a138bae38b69a00a8ecf702e25c93249d`  
		Last Modified: Thu, 14 Feb 2019 09:52:42 GMT  
		Size: 149.5 MB (149515656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe5a21a280be3af9c9f0d7be50975eb36cf38579a1808205a77581ae8fb85f7`  
		Last Modified: Thu, 14 Feb 2019 09:51:56 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab32dff7d52608bfedfe3fa9286f7f2ee6852862305f864966bb1c966ea0a9d`  
		Last Modified: Thu, 14 Feb 2019 09:51:57 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a596950cae6e6c6c44fbbf2f4ed4e397fb8b73f8178ab6cec018fdacdb2eccfb`  
		Last Modified: Thu, 14 Feb 2019 09:51:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53054933bebce1c33eea8cca31abd0b5ff79332e976acd23753300f31f9516e3`  
		Last Modified: Thu, 14 Feb 2019 09:51:57 GMT  
		Size: 20.5 KB (20530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.1.21` - linux; 386

```console
$ docker pull cassandra@sha256:637158593b0f610449df77819422c762437c2deb7ab12510c0c9d7d93c7af7c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.4 MB (195433508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b897cfd4f1df51c7aec051793369f222d544a17a936c3451cbcdf0ee35d0f55a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 20:47:24 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 05 Mar 2019 20:47:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 20:47:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 20:47:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 20:47:48 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 05 Mar 2019 20:47:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 20:47:52 GMT
ENV CASSANDRA_VERSION=2.1.21
# Tue, 05 Mar 2019 20:48:56 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 05 Mar 2019 20:48:56 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 05 Mar 2019 20:48:57 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 05 Mar 2019 20:48:57 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Tue, 05 Mar 2019 20:48:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 20:48:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 20:48:59 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 05 Mar 2019 20:48:59 GMT
VOLUME [/var/lib/cassandra]
# Tue, 05 Mar 2019 20:48:59 GMT
EXPOSE 7000 7001 7199 9042 9160
# Tue, 05 Mar 2019 20:49:00 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6946319512779753db7d332250a1e797b1cae72d7cf27f37eb487f1313ca976f`  
		Last Modified: Tue, 05 Mar 2019 20:51:57 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecff23ece0779f69eb366144108ec6edb2353f7484e22394dc60306314cde05b`  
		Last Modified: Tue, 05 Mar 2019 20:51:58 GMT  
		Size: 6.1 MB (6061142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7557083f7c43abe1d28c86cf1421550fb7032ecdb574d31164e0f2c07952ece3`  
		Last Modified: Tue, 05 Mar 2019 20:51:56 GMT  
		Size: 937.0 KB (937024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4049fdccf3b07d03e3de87657ae11232575c16f9a005a71f5e088f2c8b23e480`  
		Last Modified: Tue, 05 Mar 2019 20:51:56 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01297a1faded3b26e4e2cd8fe996f17b70b0cb860c07cf4291a9e5144e548e52`  
		Last Modified: Tue, 05 Mar 2019 20:52:28 GMT  
		Size: 165.3 MB (165263226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac608591022f5cecd01983d829aa3b9aa9a2ce94add25ba46a37f85f9243de0b`  
		Last Modified: Tue, 05 Mar 2019 20:51:55 GMT  
		Size: 4.7 KB (4671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98abb35b67d9e93de8fd23ec5526951310f760fb81b8d9d035144a8409bad641`  
		Last Modified: Tue, 05 Mar 2019 20:51:55 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4496d74b6cfa00a66b5007f0099c4393fbaf4bcb165f7c22665eb282496d13`  
		Last Modified: Tue, 05 Mar 2019 20:51:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52bb4012a11cde53068b34e683ccceea23afaa9da34bb67ba40c77ef0b7b930`  
		Last Modified: Tue, 05 Mar 2019 20:51:55 GMT  
		Size: 20.5 KB (20526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2`

```console
$ docker pull cassandra@sha256:60f31ed82aab8782ca1eba3aac4a2013c6fa015ba73d957de291a3089447ced0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `cassandra:2.2` - linux; amd64

```console
$ docker pull cassandra@sha256:a57bd44a94b2aaa2c1fde1e2b1135ebc67b61952f85593f7b6e337ca06908f7f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.2 MB (196193650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8865ba99a0d2acf5c2f036ad77a60f30e31ebe2f55df8e220f841d7de44ff135`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:52:46 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 05 Mar 2019 03:52:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:52:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:53:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 03:53:05 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 05 Mar 2019 03:53:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 03:54:13 GMT
ENV CASSANDRA_VERSION=2.2.14
# Tue, 05 Mar 2019 03:55:05 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 05 Mar 2019 03:55:06 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 05 Mar 2019 03:55:08 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 05 Mar 2019 03:55:08 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Tue, 05 Mar 2019 03:55:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 03:55:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 03:55:12 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 05 Mar 2019 03:55:13 GMT
VOLUME [/var/lib/cassandra]
# Tue, 05 Mar 2019 03:55:13 GMT
EXPOSE 7000 7001 7199 9042 9160
# Tue, 05 Mar 2019 03:55:14 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f191f1b689772b40ced765f20d7b8c5d25accb69f9ef92a2b485c826d81935`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19a5d39fadda67101f597716241aa18bde49d13c386667b473a914d2648ba41`  
		Last Modified: Tue, 05 Mar 2019 03:56:59 GMT  
		Size: 5.7 MB (5676252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5f75b71aa54cf5dfe617611ed58b8fe5cd3840efba7556ba6f91ba3e0ee950`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 957.3 KB (957341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a818fde575e26ff06b56f6a820dd17f729c70a5a458422790fc8b98208d3da35`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 18.2 KB (18224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f763e945869d5a3e3856b9d23862da96dc260df5db2867f328c823984cff10eb`  
		Last Modified: Tue, 05 Mar 2019 03:57:50 GMT  
		Size: 167.0 MB (167015394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d75a6829adfd50c2e2b1e826e80826ba6619c8b3c977e142b0fa1cb71c537d`  
		Last Modified: Tue, 05 Mar 2019 03:57:24 GMT  
		Size: 4.9 KB (4887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff863250e8cc6196e9f0df1d283cb801785f91517f82e4b98f2f857be35886d7`  
		Last Modified: Tue, 05 Mar 2019 03:57:24 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ed438e48a343967f98a4ab22ac7554d6837a9d27d4c2a1ac0b15f5c9c17550`  
		Last Modified: Tue, 05 Mar 2019 03:57:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e58e58452bd33aa27afd2fc26588268f02f666642fbd66c6a2bcf99b7d3f14`  
		Last Modified: Tue, 05 Mar 2019 03:57:24 GMT  
		Size: 22.5 KB (22488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.2` - linux; 386

```console
$ docker pull cassandra@sha256:f8c4cd211695660dda17ee5cd91c252984b67f861e228bc23b0aeb5115624cf4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.8 MB (199778305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9f788d9d8a7f18341781a0f701bfe6a8d311f89dad785ce895a7392a875bb1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 20:47:24 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 05 Mar 2019 20:47:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 20:47:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 20:47:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 20:47:48 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 05 Mar 2019 20:47:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 20:49:07 GMT
ENV CASSANDRA_VERSION=2.2.14
# Tue, 05 Mar 2019 20:50:04 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 05 Mar 2019 20:50:05 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 05 Mar 2019 20:50:05 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 05 Mar 2019 20:50:06 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Tue, 05 Mar 2019 20:50:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 20:50:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 20:50:07 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 05 Mar 2019 20:50:07 GMT
VOLUME [/var/lib/cassandra]
# Tue, 05 Mar 2019 20:50:08 GMT
EXPOSE 7000 7001 7199 9042 9160
# Tue, 05 Mar 2019 20:50:08 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6946319512779753db7d332250a1e797b1cae72d7cf27f37eb487f1313ca976f`  
		Last Modified: Tue, 05 Mar 2019 20:51:57 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecff23ece0779f69eb366144108ec6edb2353f7484e22394dc60306314cde05b`  
		Last Modified: Tue, 05 Mar 2019 20:51:58 GMT  
		Size: 6.1 MB (6061142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7557083f7c43abe1d28c86cf1421550fb7032ecdb574d31164e0f2c07952ece3`  
		Last Modified: Tue, 05 Mar 2019 20:51:56 GMT  
		Size: 937.0 KB (937024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4049fdccf3b07d03e3de87657ae11232575c16f9a005a71f5e088f2c8b23e480`  
		Last Modified: Tue, 05 Mar 2019 20:51:56 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f418eed8fe95ea9ec2820be3aa160aa15c193a439122ad336d73235dc4f54083`  
		Last Modified: Tue, 05 Mar 2019 20:53:03 GMT  
		Size: 169.6 MB (169605853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0967d149a9da4f0354bc61e8243d58944daebecfd098d2154acb7f8412b09e0a`  
		Last Modified: Tue, 05 Mar 2019 20:52:31 GMT  
		Size: 4.9 KB (4882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78589389a37c81d6cfd6e408095f8409f56c648d8052ee0572d97489011d27ca`  
		Last Modified: Tue, 05 Mar 2019 20:52:31 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150cda8ebbaa608db730a1b0244b76a30b7b5f833dca0561b62e72fb9fc40c2c`  
		Last Modified: Tue, 05 Mar 2019 20:52:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c796ef5d20fd44c3d2ec1c44206754878593b5f763c295853747d16b202b385`  
		Last Modified: Tue, 05 Mar 2019 20:52:31 GMT  
		Size: 22.5 KB (22486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2.14`

```console
$ docker pull cassandra@sha256:60f31ed82aab8782ca1eba3aac4a2013c6fa015ba73d957de291a3089447ced0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `cassandra:2.2.14` - linux; amd64

```console
$ docker pull cassandra@sha256:a57bd44a94b2aaa2c1fde1e2b1135ebc67b61952f85593f7b6e337ca06908f7f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.2 MB (196193650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8865ba99a0d2acf5c2f036ad77a60f30e31ebe2f55df8e220f841d7de44ff135`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:52:46 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 05 Mar 2019 03:52:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:52:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:53:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 03:53:05 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 05 Mar 2019 03:53:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 03:54:13 GMT
ENV CASSANDRA_VERSION=2.2.14
# Tue, 05 Mar 2019 03:55:05 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 05 Mar 2019 03:55:06 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 05 Mar 2019 03:55:08 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 05 Mar 2019 03:55:08 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Tue, 05 Mar 2019 03:55:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 03:55:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 03:55:12 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 05 Mar 2019 03:55:13 GMT
VOLUME [/var/lib/cassandra]
# Tue, 05 Mar 2019 03:55:13 GMT
EXPOSE 7000 7001 7199 9042 9160
# Tue, 05 Mar 2019 03:55:14 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f191f1b689772b40ced765f20d7b8c5d25accb69f9ef92a2b485c826d81935`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19a5d39fadda67101f597716241aa18bde49d13c386667b473a914d2648ba41`  
		Last Modified: Tue, 05 Mar 2019 03:56:59 GMT  
		Size: 5.7 MB (5676252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5f75b71aa54cf5dfe617611ed58b8fe5cd3840efba7556ba6f91ba3e0ee950`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 957.3 KB (957341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a818fde575e26ff06b56f6a820dd17f729c70a5a458422790fc8b98208d3da35`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 18.2 KB (18224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f763e945869d5a3e3856b9d23862da96dc260df5db2867f328c823984cff10eb`  
		Last Modified: Tue, 05 Mar 2019 03:57:50 GMT  
		Size: 167.0 MB (167015394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d75a6829adfd50c2e2b1e826e80826ba6619c8b3c977e142b0fa1cb71c537d`  
		Last Modified: Tue, 05 Mar 2019 03:57:24 GMT  
		Size: 4.9 KB (4887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff863250e8cc6196e9f0df1d283cb801785f91517f82e4b98f2f857be35886d7`  
		Last Modified: Tue, 05 Mar 2019 03:57:24 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ed438e48a343967f98a4ab22ac7554d6837a9d27d4c2a1ac0b15f5c9c17550`  
		Last Modified: Tue, 05 Mar 2019 03:57:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e58e58452bd33aa27afd2fc26588268f02f666642fbd66c6a2bcf99b7d3f14`  
		Last Modified: Tue, 05 Mar 2019 03:57:24 GMT  
		Size: 22.5 KB (22488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.2.14` - linux; 386

```console
$ docker pull cassandra@sha256:f8c4cd211695660dda17ee5cd91c252984b67f861e228bc23b0aeb5115624cf4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.8 MB (199778305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9f788d9d8a7f18341781a0f701bfe6a8d311f89dad785ce895a7392a875bb1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 20:47:24 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 05 Mar 2019 20:47:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 20:47:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 20:47:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 20:47:48 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 05 Mar 2019 20:47:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 20:49:07 GMT
ENV CASSANDRA_VERSION=2.2.14
# Tue, 05 Mar 2019 20:50:04 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 05 Mar 2019 20:50:05 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 05 Mar 2019 20:50:05 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 05 Mar 2019 20:50:06 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Tue, 05 Mar 2019 20:50:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 20:50:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 20:50:07 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 05 Mar 2019 20:50:07 GMT
VOLUME [/var/lib/cassandra]
# Tue, 05 Mar 2019 20:50:08 GMT
EXPOSE 7000 7001 7199 9042 9160
# Tue, 05 Mar 2019 20:50:08 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6946319512779753db7d332250a1e797b1cae72d7cf27f37eb487f1313ca976f`  
		Last Modified: Tue, 05 Mar 2019 20:51:57 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecff23ece0779f69eb366144108ec6edb2353f7484e22394dc60306314cde05b`  
		Last Modified: Tue, 05 Mar 2019 20:51:58 GMT  
		Size: 6.1 MB (6061142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7557083f7c43abe1d28c86cf1421550fb7032ecdb574d31164e0f2c07952ece3`  
		Last Modified: Tue, 05 Mar 2019 20:51:56 GMT  
		Size: 937.0 KB (937024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4049fdccf3b07d03e3de87657ae11232575c16f9a005a71f5e088f2c8b23e480`  
		Last Modified: Tue, 05 Mar 2019 20:51:56 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f418eed8fe95ea9ec2820be3aa160aa15c193a439122ad336d73235dc4f54083`  
		Last Modified: Tue, 05 Mar 2019 20:53:03 GMT  
		Size: 169.6 MB (169605853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0967d149a9da4f0354bc61e8243d58944daebecfd098d2154acb7f8412b09e0a`  
		Last Modified: Tue, 05 Mar 2019 20:52:31 GMT  
		Size: 4.9 KB (4882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78589389a37c81d6cfd6e408095f8409f56c648d8052ee0572d97489011d27ca`  
		Last Modified: Tue, 05 Mar 2019 20:52:31 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150cda8ebbaa608db730a1b0244b76a30b7b5f833dca0561b62e72fb9fc40c2c`  
		Last Modified: Tue, 05 Mar 2019 20:52:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c796ef5d20fd44c3d2ec1c44206754878593b5f763c295853747d16b202b385`  
		Last Modified: Tue, 05 Mar 2019 20:52:31 GMT  
		Size: 22.5 KB (22486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3`

```console
$ docker pull cassandra@sha256:0c4bb1525c4965a76f41ff1017d0094a3d25e8f2036be85302af746c35d01f79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3` - linux; amd64

```console
$ docker pull cassandra@sha256:42eaa85083bac63e437853f69023f87c34095dd0486a9b434f9ad2c2e6c0c615
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132581551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2fad270aa542517e7276c1e3f4164d10e9135c711499d9c7f830925abb7a658`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:52:46 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 05 Mar 2019 03:52:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:52:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:53:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 03:53:05 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 05 Mar 2019 03:53:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 03:56:12 GMT
ENV CASSANDRA_VERSION=3.11.4
# Tue, 05 Mar 2019 03:56:41 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 05 Mar 2019 03:56:42 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 05 Mar 2019 03:56:42 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 05 Mar 2019 03:56:43 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Tue, 05 Mar 2019 03:56:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 03:56:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 03:56:44 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 05 Mar 2019 03:56:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 05 Mar 2019 03:56:45 GMT
EXPOSE 7000 7001 7199 9042 9160
# Tue, 05 Mar 2019 03:56:45 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f191f1b689772b40ced765f20d7b8c5d25accb69f9ef92a2b485c826d81935`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19a5d39fadda67101f597716241aa18bde49d13c386667b473a914d2648ba41`  
		Last Modified: Tue, 05 Mar 2019 03:56:59 GMT  
		Size: 5.7 MB (5676252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5f75b71aa54cf5dfe617611ed58b8fe5cd3840efba7556ba6f91ba3e0ee950`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 957.3 KB (957341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a818fde575e26ff06b56f6a820dd17f729c70a5a458422790fc8b98208d3da35`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 18.2 KB (18224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f27d48b09eba953f005ecb9af230d8b93077de99114f1db9723a78899a968a`  
		Last Modified: Tue, 05 Mar 2019 03:58:46 GMT  
		Size: 103.4 MB (103395518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173a08da348cf02d4ebd33bb95a482377b8948edf6295287deb56d6b1f335c95`  
		Last Modified: Tue, 05 Mar 2019 03:58:30 GMT  
		Size: 4.7 KB (4651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f1786035dfdf2c70f34b15f7ea177961ce23c247c4e7d7a6d0572873ab7f89`  
		Last Modified: Tue, 05 Mar 2019 03:58:31 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb7b63413ccb968f19a6d356d510d9422965d097ada8e3d6bfce8a44778797c`  
		Last Modified: Tue, 05 Mar 2019 03:58:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11a39dca7823bf37c5cca686e512292b4123732a9817299426fdbae45216b0b`  
		Last Modified: Tue, 05 Mar 2019 03:58:31 GMT  
		Size: 30.5 KB (30502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:302f1f970a37838a8e4975f0e068278b0ac4d28058cb3e5dcdaba89c69c3f66e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121840986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b988796366338e5865f16bbc12eb27aa28b735c1832675b9d28af740cc41f00f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:26:43 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 06 Feb 2019 21:27:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 21:27:59 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 21:28:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 21:28:41 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 06 Feb 2019 21:28:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 14 Feb 2019 09:48:04 GMT
ENV CASSANDRA_VERSION=3.11.4
# Thu, 14 Feb 2019 09:51:22 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 14 Feb 2019 09:51:24 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 14 Feb 2019 09:51:26 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 14 Feb 2019 09:51:27 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Thu, 14 Feb 2019 09:51:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 14 Feb 2019 09:51:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Feb 2019 09:51:32 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 14 Feb 2019 09:51:32 GMT
VOLUME [/var/lib/cassandra]
# Thu, 14 Feb 2019 09:51:33 GMT
EXPOSE 7000 7001 7199 9042 9160
# Thu, 14 Feb 2019 09:51:34 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c2f4a84e1b6a1c11172d5c8896c5abf3d6f799bf5467e2575fb9552d14930c`  
		Last Modified: Wed, 06 Feb 2019 21:45:11 GMT  
		Size: 1.8 KB (1759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb0d71d77e31bbcaa111752dbf30b2753becca04f10ad2df933500038c73ce8`  
		Last Modified: Wed, 06 Feb 2019 21:45:10 GMT  
		Size: 5.1 MB (5147505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e1af13ad337a6a6d6e874ce42f294580a39500c575e107c0db441cb6044d83`  
		Last Modified: Wed, 06 Feb 2019 21:45:09 GMT  
		Size: 925.1 KB (925143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6e141c3155b59cc9272cb2e2a8f14c356c01fb06ea4f865c9b9ac875f8323b`  
		Last Modified: Wed, 06 Feb 2019 21:45:09 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56b3ab7ce9543689ee7a102c5b81116f0d55daf6279986c62dfa0251a77ed23`  
		Last Modified: Thu, 14 Feb 2019 09:53:53 GMT  
		Size: 95.4 MB (95361758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989c3ba2abb95a5a0a8b9022a1a560294718282be261c84a5a08587880baa4f`  
		Last Modified: Thu, 14 Feb 2019 09:53:25 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04591014fb070e82547a2ff97b18058ecfb8e3b88a753475ada45df974ebded`  
		Last Modified: Thu, 14 Feb 2019 09:53:25 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fab67ae56e65579a0f00bd8cf79b36fd4b7e6cce8e81a92f6069e4d0ce168b`  
		Last Modified: Thu, 14 Feb 2019 09:53:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a952202982b07d3d03422a070d35a3ddf574a78390597bcf065abd3d969091`  
		Last Modified: Thu, 14 Feb 2019 09:53:25 GMT  
		Size: 30.5 KB (30504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3` - linux; 386

```console
$ docker pull cassandra@sha256:0f6a6ab6c9af74d4ce9cdbf0cd1f6c7ffa493b8e2bdd70491a4cc951eccceabc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.7 MB (132658761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0714825d1eb53d12e1ee956e356e38fe91a2a8bbabf983758bf80174aae075a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 20:47:24 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 05 Mar 2019 20:47:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 20:47:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 20:47:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 20:47:48 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 05 Mar 2019 20:47:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 20:51:05 GMT
ENV CASSANDRA_VERSION=3.11.4
# Tue, 05 Mar 2019 20:51:38 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 05 Mar 2019 20:51:38 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 05 Mar 2019 20:51:39 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 05 Mar 2019 20:51:39 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Tue, 05 Mar 2019 20:51:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 20:51:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 20:51:41 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 05 Mar 2019 20:51:41 GMT
VOLUME [/var/lib/cassandra]
# Tue, 05 Mar 2019 20:51:41 GMT
EXPOSE 7000 7001 7199 9042 9160
# Tue, 05 Mar 2019 20:51:42 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6946319512779753db7d332250a1e797b1cae72d7cf27f37eb487f1313ca976f`  
		Last Modified: Tue, 05 Mar 2019 20:51:57 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecff23ece0779f69eb366144108ec6edb2353f7484e22394dc60306314cde05b`  
		Last Modified: Tue, 05 Mar 2019 20:51:58 GMT  
		Size: 6.1 MB (6061142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7557083f7c43abe1d28c86cf1421550fb7032ecdb574d31164e0f2c07952ece3`  
		Last Modified: Tue, 05 Mar 2019 20:51:56 GMT  
		Size: 937.0 KB (937024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4049fdccf3b07d03e3de87657ae11232575c16f9a005a71f5e088f2c8b23e480`  
		Last Modified: Tue, 05 Mar 2019 20:51:56 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f8f96b1510dab4955d259fc81801345f7b7dfd9248c01dae78063f044d6a85`  
		Last Modified: Tue, 05 Mar 2019 20:53:47 GMT  
		Size: 102.5 MB (102478522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce18faf6fe0bd7e152feb621ecb2f3c554082375aa47db0ab7ad9b0ac5322cb`  
		Last Modified: Tue, 05 Mar 2019 20:53:30 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f9578bdf2b28c10838d602b354296714270c13b88cc9d52259b54a1359579f`  
		Last Modified: Tue, 05 Mar 2019 20:53:29 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb0d63491ab9043cfde200bba592b2a5d5477c6ee4b4f2649e0a81f32c8a4cf`  
		Last Modified: Tue, 05 Mar 2019 20:53:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1b703314b64c82259c83f343223dfa4ff009a20faa2383a2e8835c8fe50c9b`  
		Last Modified: Tue, 05 Mar 2019 20:53:29 GMT  
		Size: 30.5 KB (30500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3` - linux; ppc64le

```console
$ docker pull cassandra@sha256:6b651519e20cdbd2cae7c998c178b2024132328d91a999782c5fc9abd6e3ea69
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125579018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adbbc84d918d4923e3f1ae3b0c2aa0fd6165152456b6dc57fc49482220c86e46`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 12:08:28 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 05 Mar 2019 12:09:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:09:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 12:10:38 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 12:10:45 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 05 Mar 2019 12:10:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 12:15:36 GMT
ENV CASSANDRA_VERSION=3.11.4
# Tue, 05 Mar 2019 12:20:24 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 05 Mar 2019 12:20:29 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 05 Mar 2019 12:20:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 05 Mar 2019 12:20:39 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Tue, 05 Mar 2019 12:20:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 12:20:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 12:20:59 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 05 Mar 2019 12:21:01 GMT
VOLUME [/var/lib/cassandra]
# Tue, 05 Mar 2019 12:21:02 GMT
EXPOSE 7000 7001 7199 9042 9160
# Tue, 05 Mar 2019 12:21:05 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7906afcc84506bd72529f6469f6859f16d321ccd2534ce900e2a2b8c87cf0997`  
		Last Modified: Tue, 05 Mar 2019 12:21:30 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3dac71f11138e5d7d4bfba2691efe0e36e6ce50fa663e0bfe1b632c869b22e`  
		Last Modified: Tue, 05 Mar 2019 12:21:29 GMT  
		Size: 5.5 MB (5542663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a73e334f7ebf5d8073bb114bea3e4b99f235c0ccefe66e19cbc203d71363511`  
		Last Modified: Tue, 05 Mar 2019 12:21:28 GMT  
		Size: 926.0 KB (925982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b478ee6f32b4a840d93dfc69781ede5a58f1a462176be22b6d049442f234ce5c`  
		Last Modified: Tue, 05 Mar 2019 12:21:24 GMT  
		Size: 18.2 KB (18220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f6482abb221c236fbc88a1361f9e54bfbdf1f6bc716aca1771d1b705c87c2f`  
		Last Modified: Tue, 05 Mar 2019 12:22:04 GMT  
		Size: 96.3 MB (96298707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f46ea0bbb3a3fd80c587049dc83784afff0640696e68fa6946fd5a2b2547b936`  
		Last Modified: Tue, 05 Mar 2019 12:21:47 GMT  
		Size: 8.4 KB (8413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e22ee1813de17ce3f34dbe19edc27a62215c27d7fe7ff9e74f1fd2c7bb61628`  
		Last Modified: Tue, 05 Mar 2019 12:21:47 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510d3fa93fdbafc4282a7b592f57a7d1fe8b4f98657c6240a4d3704aebe64a21`  
		Last Modified: Tue, 05 Mar 2019 12:21:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21dc6b56fe78a378d70b91d1811401206c525a0252685593b5df11edc074e892`  
		Last Modified: Tue, 05 Mar 2019 12:21:47 GMT  
		Size: 30.5 KB (30507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0`

```console
$ docker pull cassandra@sha256:4de560c65eebd3675f38ed02440413392c910f9bdf6a84fc845ab7de6642ab5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3.0` - linux; amd64

```console
$ docker pull cassandra@sha256:b161ddaea22f26c6dff526999260fccdeeb731cf876ba3147dd2017d5b66ff4b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127776346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60773d78914b64bda8c27047a98b218d5d5a2c3205a39fa7da08f31109205803`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:52:46 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 05 Mar 2019 03:52:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:52:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:53:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 03:53:05 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 05 Mar 2019 03:53:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 03:55:27 GMT
ENV CASSANDRA_VERSION=3.0.18
# Tue, 05 Mar 2019 03:55:59 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 05 Mar 2019 03:55:59 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 05 Mar 2019 03:56:01 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 05 Mar 2019 03:56:02 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Tue, 05 Mar 2019 03:56:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 03:56:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 03:56:06 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 05 Mar 2019 03:56:06 GMT
VOLUME [/var/lib/cassandra]
# Tue, 05 Mar 2019 03:56:06 GMT
EXPOSE 7000 7001 7199 9042 9160
# Tue, 05 Mar 2019 03:56:06 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f191f1b689772b40ced765f20d7b8c5d25accb69f9ef92a2b485c826d81935`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19a5d39fadda67101f597716241aa18bde49d13c386667b473a914d2648ba41`  
		Last Modified: Tue, 05 Mar 2019 03:56:59 GMT  
		Size: 5.7 MB (5676252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5f75b71aa54cf5dfe617611ed58b8fe5cd3840efba7556ba6f91ba3e0ee950`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 957.3 KB (957341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a818fde575e26ff06b56f6a820dd17f729c70a5a458422790fc8b98208d3da35`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 18.2 KB (18224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d6fcb7e7c23a6d2dc85758043e87d2d63e2b57929264486b4f89aa55ff7b7f`  
		Last Modified: Tue, 05 Mar 2019 03:58:24 GMT  
		Size: 98.6 MB (98594672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6273e2940fc4fabc55b5f8b1bac5c8483a97d601f6f5f033633abc4eb4c6b04d`  
		Last Modified: Tue, 05 Mar 2019 03:58:09 GMT  
		Size: 4.9 KB (4945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b48c23fa369381f0fdbd318ad589434d31e29dc176c0896ffd09b2db4c36bb3`  
		Last Modified: Tue, 05 Mar 2019 03:58:09 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cba8c1935402823a65a8111e3c1253346b56f4682edfdcc02d7b1a44732152f`  
		Last Modified: Tue, 05 Mar 2019 03:58:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7dfd6d2ba47438dcc576e614913dda431df556752079f080fe6da64d25f6ff`  
		Last Modified: Tue, 05 Mar 2019 03:58:08 GMT  
		Size: 25.9 KB (25850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:b042caf4fdaa24ceb349fa200b79a683f7e599afdf1498e64b130f0abb8393f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (117034904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eedf23e64eb428b5d2d98071271bc2fe1591bd7c63faebd918a413be80d9541`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:26:43 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 06 Feb 2019 21:27:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 21:27:59 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 21:28:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 21:28:41 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 06 Feb 2019 21:28:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 14 Feb 2019 09:44:51 GMT
ENV CASSANDRA_VERSION=3.0.18
# Thu, 14 Feb 2019 09:47:36 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 14 Feb 2019 09:47:40 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 14 Feb 2019 09:47:42 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 14 Feb 2019 09:47:43 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Thu, 14 Feb 2019 09:47:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 14 Feb 2019 09:47:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Feb 2019 09:47:48 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 14 Feb 2019 09:47:48 GMT
VOLUME [/var/lib/cassandra]
# Thu, 14 Feb 2019 09:47:49 GMT
EXPOSE 7000 7001 7199 9042 9160
# Thu, 14 Feb 2019 09:47:50 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c2f4a84e1b6a1c11172d5c8896c5abf3d6f799bf5467e2575fb9552d14930c`  
		Last Modified: Wed, 06 Feb 2019 21:45:11 GMT  
		Size: 1.8 KB (1759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb0d71d77e31bbcaa111752dbf30b2753becca04f10ad2df933500038c73ce8`  
		Last Modified: Wed, 06 Feb 2019 21:45:10 GMT  
		Size: 5.1 MB (5147505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e1af13ad337a6a6d6e874ce42f294580a39500c575e107c0db441cb6044d83`  
		Last Modified: Wed, 06 Feb 2019 21:45:09 GMT  
		Size: 925.1 KB (925143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6e141c3155b59cc9272cb2e2a8f14c356c01fb06ea4f865c9b9ac875f8323b`  
		Last Modified: Wed, 06 Feb 2019 21:45:09 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a123e4969bd977a150cd343517eb92eb10c0f9e5d8dbad582f750bfa71cd04a`  
		Last Modified: Thu, 14 Feb 2019 09:53:17 GMT  
		Size: 90.6 MB (90560039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb46a4d84dd73e9ee0c52441b567303b2dfb75ee1982aa8747c96dc44477b88c`  
		Last Modified: Thu, 14 Feb 2019 09:52:51 GMT  
		Size: 4.9 KB (4947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e09045edd73f701ecfe7bf87a69a884ce71ba47386508228dc480e42259c22`  
		Last Modified: Thu, 14 Feb 2019 09:52:51 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2352204aee868ea0438d76076ec00fa7a725ed9a2dfa4138156f3126ab0add3`  
		Last Modified: Thu, 14 Feb 2019 09:52:51 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b5f71c04bab85bb9006a48c2335742ff23136688a62d1c0530b401ad13fe0c`  
		Last Modified: Thu, 14 Feb 2019 09:52:50 GMT  
		Size: 25.9 KB (25852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0` - linux; 386

```console
$ docker pull cassandra@sha256:02760ecc8889b47a769e81f0368e892db7295011fcd57c4452236ba439b81268
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127849352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aa08af79896317ee2346b5501ae0e6df9ec435a38d9d00ee724f1029ced2aba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 20:47:24 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 05 Mar 2019 20:47:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 20:47:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 20:47:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 20:47:48 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 05 Mar 2019 20:47:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 20:50:21 GMT
ENV CASSANDRA_VERSION=3.0.18
# Tue, 05 Mar 2019 20:50:54 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 05 Mar 2019 20:50:55 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 05 Mar 2019 20:50:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 05 Mar 2019 20:50:56 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Tue, 05 Mar 2019 20:50:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 20:50:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 20:50:57 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 05 Mar 2019 20:50:57 GMT
VOLUME [/var/lib/cassandra]
# Tue, 05 Mar 2019 20:50:58 GMT
EXPOSE 7000 7001 7199 9042 9160
# Tue, 05 Mar 2019 20:50:58 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6946319512779753db7d332250a1e797b1cae72d7cf27f37eb487f1313ca976f`  
		Last Modified: Tue, 05 Mar 2019 20:51:57 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecff23ece0779f69eb366144108ec6edb2353f7484e22394dc60306314cde05b`  
		Last Modified: Tue, 05 Mar 2019 20:51:58 GMT  
		Size: 6.1 MB (6061142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7557083f7c43abe1d28c86cf1421550fb7032ecdb574d31164e0f2c07952ece3`  
		Last Modified: Tue, 05 Mar 2019 20:51:56 GMT  
		Size: 937.0 KB (937024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4049fdccf3b07d03e3de87657ae11232575c16f9a005a71f5e088f2c8b23e480`  
		Last Modified: Tue, 05 Mar 2019 20:51:56 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35edd6d9ad8f8a65c52b6a7b0e816c4375633566174b464fe13d0eb88704e092`  
		Last Modified: Tue, 05 Mar 2019 20:53:26 GMT  
		Size: 97.7 MB (97673473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91e85879297975c431a3dd2d5e06d3de9c88be5fe135b4aa3c90818086ffa45`  
		Last Modified: Tue, 05 Mar 2019 20:53:08 GMT  
		Size: 4.9 KB (4943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b26d85ccc9af3cd4aa493141683fb01434f8603cc0d29cd8891c160209b19e9`  
		Last Modified: Tue, 05 Mar 2019 20:53:08 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d577bf771aeb7927e590c3acd9b9872f12210dadbd9345bd9de17f2fd1b2602e`  
		Last Modified: Tue, 05 Mar 2019 20:53:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d018bb5182dbed063dbb19d2a9c34c46a4484dcee4e89ea345d1483f773e1b9`  
		Last Modified: Tue, 05 Mar 2019 20:53:08 GMT  
		Size: 25.9 KB (25852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0` - linux; ppc64le

```console
$ docker pull cassandra@sha256:ecf3a3ea27684faf46a85f7fb8f7cc436d39e1789eec72386b3c9e9572eae7d6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.8 MB (120764846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45141fdee11ab2a9840929af5810025340666e1c62d963f16562b57b5f587275`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 12:08:28 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 05 Mar 2019 12:09:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:09:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 12:10:38 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 12:10:45 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 05 Mar 2019 12:10:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 12:10:56 GMT
ENV CASSANDRA_VERSION=3.0.18
# Tue, 05 Mar 2019 12:14:39 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 05 Mar 2019 12:14:45 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 05 Mar 2019 12:14:51 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 05 Mar 2019 12:14:55 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Tue, 05 Mar 2019 12:15:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 12:15:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 12:15:14 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 05 Mar 2019 12:15:17 GMT
VOLUME [/var/lib/cassandra]
# Tue, 05 Mar 2019 12:15:20 GMT
EXPOSE 7000 7001 7199 9042 9160
# Tue, 05 Mar 2019 12:15:25 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7906afcc84506bd72529f6469f6859f16d321ccd2534ce900e2a2b8c87cf0997`  
		Last Modified: Tue, 05 Mar 2019 12:21:30 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3dac71f11138e5d7d4bfba2691efe0e36e6ce50fa663e0bfe1b632c869b22e`  
		Last Modified: Tue, 05 Mar 2019 12:21:29 GMT  
		Size: 5.5 MB (5542663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a73e334f7ebf5d8073bb114bea3e4b99f235c0ccefe66e19cbc203d71363511`  
		Last Modified: Tue, 05 Mar 2019 12:21:28 GMT  
		Size: 926.0 KB (925982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b478ee6f32b4a840d93dfc69781ede5a58f1a462176be22b6d049442f234ce5c`  
		Last Modified: Tue, 05 Mar 2019 12:21:24 GMT  
		Size: 18.2 KB (18220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd97cc4a073067e8ce70e08b12d6d1efe4e792b64e2d80e1f0b5fd39d591b93`  
		Last Modified: Tue, 05 Mar 2019 12:21:35 GMT  
		Size: 91.5 MB (91492651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41d612a59d729fd75ececc64d4a94d775c850eaef45148311e89e109e7125bcb`  
		Last Modified: Tue, 05 Mar 2019 12:21:20 GMT  
		Size: 5.0 KB (4950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631a48ce5cf52d36f7191b512def71197af96bbfaea38307a30422fc722ab6a0`  
		Last Modified: Tue, 05 Mar 2019 12:21:20 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff38a4d542660d19ff316f574379bc3a36c3f4709166e7487f1d67996d388f13`  
		Last Modified: Tue, 05 Mar 2019 12:21:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f74499405fdd07aaf944e5bb373daf0350da1ebd9a6b4b71e4153e237660939`  
		Last Modified: Tue, 05 Mar 2019 12:21:20 GMT  
		Size: 25.9 KB (25853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0.18`

```console
$ docker pull cassandra@sha256:4de560c65eebd3675f38ed02440413392c910f9bdf6a84fc845ab7de6642ab5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3.0.18` - linux; amd64

```console
$ docker pull cassandra@sha256:b161ddaea22f26c6dff526999260fccdeeb731cf876ba3147dd2017d5b66ff4b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127776346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60773d78914b64bda8c27047a98b218d5d5a2c3205a39fa7da08f31109205803`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:52:46 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 05 Mar 2019 03:52:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:52:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:53:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 03:53:05 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 05 Mar 2019 03:53:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 03:55:27 GMT
ENV CASSANDRA_VERSION=3.0.18
# Tue, 05 Mar 2019 03:55:59 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 05 Mar 2019 03:55:59 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 05 Mar 2019 03:56:01 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 05 Mar 2019 03:56:02 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Tue, 05 Mar 2019 03:56:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 03:56:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 03:56:06 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 05 Mar 2019 03:56:06 GMT
VOLUME [/var/lib/cassandra]
# Tue, 05 Mar 2019 03:56:06 GMT
EXPOSE 7000 7001 7199 9042 9160
# Tue, 05 Mar 2019 03:56:06 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f191f1b689772b40ced765f20d7b8c5d25accb69f9ef92a2b485c826d81935`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19a5d39fadda67101f597716241aa18bde49d13c386667b473a914d2648ba41`  
		Last Modified: Tue, 05 Mar 2019 03:56:59 GMT  
		Size: 5.7 MB (5676252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5f75b71aa54cf5dfe617611ed58b8fe5cd3840efba7556ba6f91ba3e0ee950`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 957.3 KB (957341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a818fde575e26ff06b56f6a820dd17f729c70a5a458422790fc8b98208d3da35`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 18.2 KB (18224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d6fcb7e7c23a6d2dc85758043e87d2d63e2b57929264486b4f89aa55ff7b7f`  
		Last Modified: Tue, 05 Mar 2019 03:58:24 GMT  
		Size: 98.6 MB (98594672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6273e2940fc4fabc55b5f8b1bac5c8483a97d601f6f5f033633abc4eb4c6b04d`  
		Last Modified: Tue, 05 Mar 2019 03:58:09 GMT  
		Size: 4.9 KB (4945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b48c23fa369381f0fdbd318ad589434d31e29dc176c0896ffd09b2db4c36bb3`  
		Last Modified: Tue, 05 Mar 2019 03:58:09 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cba8c1935402823a65a8111e3c1253346b56f4682edfdcc02d7b1a44732152f`  
		Last Modified: Tue, 05 Mar 2019 03:58:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7dfd6d2ba47438dcc576e614913dda431df556752079f080fe6da64d25f6ff`  
		Last Modified: Tue, 05 Mar 2019 03:58:08 GMT  
		Size: 25.9 KB (25850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0.18` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:b042caf4fdaa24ceb349fa200b79a683f7e599afdf1498e64b130f0abb8393f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (117034904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eedf23e64eb428b5d2d98071271bc2fe1591bd7c63faebd918a413be80d9541`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:26:43 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 06 Feb 2019 21:27:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 21:27:59 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 21:28:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 21:28:41 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 06 Feb 2019 21:28:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 14 Feb 2019 09:44:51 GMT
ENV CASSANDRA_VERSION=3.0.18
# Thu, 14 Feb 2019 09:47:36 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 14 Feb 2019 09:47:40 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 14 Feb 2019 09:47:42 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 14 Feb 2019 09:47:43 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Thu, 14 Feb 2019 09:47:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 14 Feb 2019 09:47:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Feb 2019 09:47:48 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 14 Feb 2019 09:47:48 GMT
VOLUME [/var/lib/cassandra]
# Thu, 14 Feb 2019 09:47:49 GMT
EXPOSE 7000 7001 7199 9042 9160
# Thu, 14 Feb 2019 09:47:50 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c2f4a84e1b6a1c11172d5c8896c5abf3d6f799bf5467e2575fb9552d14930c`  
		Last Modified: Wed, 06 Feb 2019 21:45:11 GMT  
		Size: 1.8 KB (1759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb0d71d77e31bbcaa111752dbf30b2753becca04f10ad2df933500038c73ce8`  
		Last Modified: Wed, 06 Feb 2019 21:45:10 GMT  
		Size: 5.1 MB (5147505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e1af13ad337a6a6d6e874ce42f294580a39500c575e107c0db441cb6044d83`  
		Last Modified: Wed, 06 Feb 2019 21:45:09 GMT  
		Size: 925.1 KB (925143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6e141c3155b59cc9272cb2e2a8f14c356c01fb06ea4f865c9b9ac875f8323b`  
		Last Modified: Wed, 06 Feb 2019 21:45:09 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a123e4969bd977a150cd343517eb92eb10c0f9e5d8dbad582f750bfa71cd04a`  
		Last Modified: Thu, 14 Feb 2019 09:53:17 GMT  
		Size: 90.6 MB (90560039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb46a4d84dd73e9ee0c52441b567303b2dfb75ee1982aa8747c96dc44477b88c`  
		Last Modified: Thu, 14 Feb 2019 09:52:51 GMT  
		Size: 4.9 KB (4947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e09045edd73f701ecfe7bf87a69a884ce71ba47386508228dc480e42259c22`  
		Last Modified: Thu, 14 Feb 2019 09:52:51 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2352204aee868ea0438d76076ec00fa7a725ed9a2dfa4138156f3126ab0add3`  
		Last Modified: Thu, 14 Feb 2019 09:52:51 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b5f71c04bab85bb9006a48c2335742ff23136688a62d1c0530b401ad13fe0c`  
		Last Modified: Thu, 14 Feb 2019 09:52:50 GMT  
		Size: 25.9 KB (25852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0.18` - linux; 386

```console
$ docker pull cassandra@sha256:02760ecc8889b47a769e81f0368e892db7295011fcd57c4452236ba439b81268
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127849352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aa08af79896317ee2346b5501ae0e6df9ec435a38d9d00ee724f1029ced2aba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 20:47:24 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 05 Mar 2019 20:47:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 20:47:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 20:47:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 20:47:48 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 05 Mar 2019 20:47:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 20:50:21 GMT
ENV CASSANDRA_VERSION=3.0.18
# Tue, 05 Mar 2019 20:50:54 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 05 Mar 2019 20:50:55 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 05 Mar 2019 20:50:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 05 Mar 2019 20:50:56 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Tue, 05 Mar 2019 20:50:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 20:50:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 20:50:57 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 05 Mar 2019 20:50:57 GMT
VOLUME [/var/lib/cassandra]
# Tue, 05 Mar 2019 20:50:58 GMT
EXPOSE 7000 7001 7199 9042 9160
# Tue, 05 Mar 2019 20:50:58 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6946319512779753db7d332250a1e797b1cae72d7cf27f37eb487f1313ca976f`  
		Last Modified: Tue, 05 Mar 2019 20:51:57 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecff23ece0779f69eb366144108ec6edb2353f7484e22394dc60306314cde05b`  
		Last Modified: Tue, 05 Mar 2019 20:51:58 GMT  
		Size: 6.1 MB (6061142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7557083f7c43abe1d28c86cf1421550fb7032ecdb574d31164e0f2c07952ece3`  
		Last Modified: Tue, 05 Mar 2019 20:51:56 GMT  
		Size: 937.0 KB (937024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4049fdccf3b07d03e3de87657ae11232575c16f9a005a71f5e088f2c8b23e480`  
		Last Modified: Tue, 05 Mar 2019 20:51:56 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35edd6d9ad8f8a65c52b6a7b0e816c4375633566174b464fe13d0eb88704e092`  
		Last Modified: Tue, 05 Mar 2019 20:53:26 GMT  
		Size: 97.7 MB (97673473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91e85879297975c431a3dd2d5e06d3de9c88be5fe135b4aa3c90818086ffa45`  
		Last Modified: Tue, 05 Mar 2019 20:53:08 GMT  
		Size: 4.9 KB (4943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b26d85ccc9af3cd4aa493141683fb01434f8603cc0d29cd8891c160209b19e9`  
		Last Modified: Tue, 05 Mar 2019 20:53:08 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d577bf771aeb7927e590c3acd9b9872f12210dadbd9345bd9de17f2fd1b2602e`  
		Last Modified: Tue, 05 Mar 2019 20:53:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d018bb5182dbed063dbb19d2a9c34c46a4484dcee4e89ea345d1483f773e1b9`  
		Last Modified: Tue, 05 Mar 2019 20:53:08 GMT  
		Size: 25.9 KB (25852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0.18` - linux; ppc64le

```console
$ docker pull cassandra@sha256:ecf3a3ea27684faf46a85f7fb8f7cc436d39e1789eec72386b3c9e9572eae7d6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.8 MB (120764846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45141fdee11ab2a9840929af5810025340666e1c62d963f16562b57b5f587275`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 12:08:28 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 05 Mar 2019 12:09:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:09:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 12:10:38 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 12:10:45 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 05 Mar 2019 12:10:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 12:10:56 GMT
ENV CASSANDRA_VERSION=3.0.18
# Tue, 05 Mar 2019 12:14:39 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 05 Mar 2019 12:14:45 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 05 Mar 2019 12:14:51 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 05 Mar 2019 12:14:55 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Tue, 05 Mar 2019 12:15:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 12:15:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 12:15:14 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 05 Mar 2019 12:15:17 GMT
VOLUME [/var/lib/cassandra]
# Tue, 05 Mar 2019 12:15:20 GMT
EXPOSE 7000 7001 7199 9042 9160
# Tue, 05 Mar 2019 12:15:25 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7906afcc84506bd72529f6469f6859f16d321ccd2534ce900e2a2b8c87cf0997`  
		Last Modified: Tue, 05 Mar 2019 12:21:30 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3dac71f11138e5d7d4bfba2691efe0e36e6ce50fa663e0bfe1b632c869b22e`  
		Last Modified: Tue, 05 Mar 2019 12:21:29 GMT  
		Size: 5.5 MB (5542663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a73e334f7ebf5d8073bb114bea3e4b99f235c0ccefe66e19cbc203d71363511`  
		Last Modified: Tue, 05 Mar 2019 12:21:28 GMT  
		Size: 926.0 KB (925982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b478ee6f32b4a840d93dfc69781ede5a58f1a462176be22b6d049442f234ce5c`  
		Last Modified: Tue, 05 Mar 2019 12:21:24 GMT  
		Size: 18.2 KB (18220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd97cc4a073067e8ce70e08b12d6d1efe4e792b64e2d80e1f0b5fd39d591b93`  
		Last Modified: Tue, 05 Mar 2019 12:21:35 GMT  
		Size: 91.5 MB (91492651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41d612a59d729fd75ececc64d4a94d775c850eaef45148311e89e109e7125bcb`  
		Last Modified: Tue, 05 Mar 2019 12:21:20 GMT  
		Size: 5.0 KB (4950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631a48ce5cf52d36f7191b512def71197af96bbfaea38307a30422fc722ab6a0`  
		Last Modified: Tue, 05 Mar 2019 12:21:20 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff38a4d542660d19ff316f574379bc3a36c3f4709166e7487f1d67996d388f13`  
		Last Modified: Tue, 05 Mar 2019 12:21:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f74499405fdd07aaf944e5bb373daf0350da1ebd9a6b4b71e4153e237660939`  
		Last Modified: Tue, 05 Mar 2019 12:21:20 GMT  
		Size: 25.9 KB (25853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.11`

```console
$ docker pull cassandra@sha256:0c4bb1525c4965a76f41ff1017d0094a3d25e8f2036be85302af746c35d01f79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3.11` - linux; amd64

```console
$ docker pull cassandra@sha256:42eaa85083bac63e437853f69023f87c34095dd0486a9b434f9ad2c2e6c0c615
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132581551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2fad270aa542517e7276c1e3f4164d10e9135c711499d9c7f830925abb7a658`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:52:46 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 05 Mar 2019 03:52:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:52:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:53:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 03:53:05 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 05 Mar 2019 03:53:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 03:56:12 GMT
ENV CASSANDRA_VERSION=3.11.4
# Tue, 05 Mar 2019 03:56:41 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 05 Mar 2019 03:56:42 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 05 Mar 2019 03:56:42 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 05 Mar 2019 03:56:43 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Tue, 05 Mar 2019 03:56:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 03:56:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 03:56:44 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 05 Mar 2019 03:56:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 05 Mar 2019 03:56:45 GMT
EXPOSE 7000 7001 7199 9042 9160
# Tue, 05 Mar 2019 03:56:45 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f191f1b689772b40ced765f20d7b8c5d25accb69f9ef92a2b485c826d81935`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19a5d39fadda67101f597716241aa18bde49d13c386667b473a914d2648ba41`  
		Last Modified: Tue, 05 Mar 2019 03:56:59 GMT  
		Size: 5.7 MB (5676252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5f75b71aa54cf5dfe617611ed58b8fe5cd3840efba7556ba6f91ba3e0ee950`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 957.3 KB (957341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a818fde575e26ff06b56f6a820dd17f729c70a5a458422790fc8b98208d3da35`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 18.2 KB (18224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f27d48b09eba953f005ecb9af230d8b93077de99114f1db9723a78899a968a`  
		Last Modified: Tue, 05 Mar 2019 03:58:46 GMT  
		Size: 103.4 MB (103395518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173a08da348cf02d4ebd33bb95a482377b8948edf6295287deb56d6b1f335c95`  
		Last Modified: Tue, 05 Mar 2019 03:58:30 GMT  
		Size: 4.7 KB (4651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f1786035dfdf2c70f34b15f7ea177961ce23c247c4e7d7a6d0572873ab7f89`  
		Last Modified: Tue, 05 Mar 2019 03:58:31 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb7b63413ccb968f19a6d356d510d9422965d097ada8e3d6bfce8a44778797c`  
		Last Modified: Tue, 05 Mar 2019 03:58:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11a39dca7823bf37c5cca686e512292b4123732a9817299426fdbae45216b0b`  
		Last Modified: Tue, 05 Mar 2019 03:58:31 GMT  
		Size: 30.5 KB (30502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:302f1f970a37838a8e4975f0e068278b0ac4d28058cb3e5dcdaba89c69c3f66e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121840986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b988796366338e5865f16bbc12eb27aa28b735c1832675b9d28af740cc41f00f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:26:43 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 06 Feb 2019 21:27:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 21:27:59 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 21:28:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 21:28:41 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 06 Feb 2019 21:28:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 14 Feb 2019 09:48:04 GMT
ENV CASSANDRA_VERSION=3.11.4
# Thu, 14 Feb 2019 09:51:22 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 14 Feb 2019 09:51:24 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 14 Feb 2019 09:51:26 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 14 Feb 2019 09:51:27 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Thu, 14 Feb 2019 09:51:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 14 Feb 2019 09:51:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Feb 2019 09:51:32 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 14 Feb 2019 09:51:32 GMT
VOLUME [/var/lib/cassandra]
# Thu, 14 Feb 2019 09:51:33 GMT
EXPOSE 7000 7001 7199 9042 9160
# Thu, 14 Feb 2019 09:51:34 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c2f4a84e1b6a1c11172d5c8896c5abf3d6f799bf5467e2575fb9552d14930c`  
		Last Modified: Wed, 06 Feb 2019 21:45:11 GMT  
		Size: 1.8 KB (1759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb0d71d77e31bbcaa111752dbf30b2753becca04f10ad2df933500038c73ce8`  
		Last Modified: Wed, 06 Feb 2019 21:45:10 GMT  
		Size: 5.1 MB (5147505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e1af13ad337a6a6d6e874ce42f294580a39500c575e107c0db441cb6044d83`  
		Last Modified: Wed, 06 Feb 2019 21:45:09 GMT  
		Size: 925.1 KB (925143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6e141c3155b59cc9272cb2e2a8f14c356c01fb06ea4f865c9b9ac875f8323b`  
		Last Modified: Wed, 06 Feb 2019 21:45:09 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56b3ab7ce9543689ee7a102c5b81116f0d55daf6279986c62dfa0251a77ed23`  
		Last Modified: Thu, 14 Feb 2019 09:53:53 GMT  
		Size: 95.4 MB (95361758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989c3ba2abb95a5a0a8b9022a1a560294718282be261c84a5a08587880baa4f`  
		Last Modified: Thu, 14 Feb 2019 09:53:25 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04591014fb070e82547a2ff97b18058ecfb8e3b88a753475ada45df974ebded`  
		Last Modified: Thu, 14 Feb 2019 09:53:25 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fab67ae56e65579a0f00bd8cf79b36fd4b7e6cce8e81a92f6069e4d0ce168b`  
		Last Modified: Thu, 14 Feb 2019 09:53:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a952202982b07d3d03422a070d35a3ddf574a78390597bcf065abd3d969091`  
		Last Modified: Thu, 14 Feb 2019 09:53:25 GMT  
		Size: 30.5 KB (30504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11` - linux; 386

```console
$ docker pull cassandra@sha256:0f6a6ab6c9af74d4ce9cdbf0cd1f6c7ffa493b8e2bdd70491a4cc951eccceabc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.7 MB (132658761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0714825d1eb53d12e1ee956e356e38fe91a2a8bbabf983758bf80174aae075a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 20:47:24 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 05 Mar 2019 20:47:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 20:47:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 20:47:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 20:47:48 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 05 Mar 2019 20:47:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 20:51:05 GMT
ENV CASSANDRA_VERSION=3.11.4
# Tue, 05 Mar 2019 20:51:38 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 05 Mar 2019 20:51:38 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 05 Mar 2019 20:51:39 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 05 Mar 2019 20:51:39 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Tue, 05 Mar 2019 20:51:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 20:51:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 20:51:41 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 05 Mar 2019 20:51:41 GMT
VOLUME [/var/lib/cassandra]
# Tue, 05 Mar 2019 20:51:41 GMT
EXPOSE 7000 7001 7199 9042 9160
# Tue, 05 Mar 2019 20:51:42 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6946319512779753db7d332250a1e797b1cae72d7cf27f37eb487f1313ca976f`  
		Last Modified: Tue, 05 Mar 2019 20:51:57 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecff23ece0779f69eb366144108ec6edb2353f7484e22394dc60306314cde05b`  
		Last Modified: Tue, 05 Mar 2019 20:51:58 GMT  
		Size: 6.1 MB (6061142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7557083f7c43abe1d28c86cf1421550fb7032ecdb574d31164e0f2c07952ece3`  
		Last Modified: Tue, 05 Mar 2019 20:51:56 GMT  
		Size: 937.0 KB (937024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4049fdccf3b07d03e3de87657ae11232575c16f9a005a71f5e088f2c8b23e480`  
		Last Modified: Tue, 05 Mar 2019 20:51:56 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f8f96b1510dab4955d259fc81801345f7b7dfd9248c01dae78063f044d6a85`  
		Last Modified: Tue, 05 Mar 2019 20:53:47 GMT  
		Size: 102.5 MB (102478522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce18faf6fe0bd7e152feb621ecb2f3c554082375aa47db0ab7ad9b0ac5322cb`  
		Last Modified: Tue, 05 Mar 2019 20:53:30 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f9578bdf2b28c10838d602b354296714270c13b88cc9d52259b54a1359579f`  
		Last Modified: Tue, 05 Mar 2019 20:53:29 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb0d63491ab9043cfde200bba592b2a5d5477c6ee4b4f2649e0a81f32c8a4cf`  
		Last Modified: Tue, 05 Mar 2019 20:53:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1b703314b64c82259c83f343223dfa4ff009a20faa2383a2e8835c8fe50c9b`  
		Last Modified: Tue, 05 Mar 2019 20:53:29 GMT  
		Size: 30.5 KB (30500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11` - linux; ppc64le

```console
$ docker pull cassandra@sha256:6b651519e20cdbd2cae7c998c178b2024132328d91a999782c5fc9abd6e3ea69
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125579018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adbbc84d918d4923e3f1ae3b0c2aa0fd6165152456b6dc57fc49482220c86e46`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 12:08:28 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 05 Mar 2019 12:09:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:09:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 12:10:38 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 12:10:45 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 05 Mar 2019 12:10:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 12:15:36 GMT
ENV CASSANDRA_VERSION=3.11.4
# Tue, 05 Mar 2019 12:20:24 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 05 Mar 2019 12:20:29 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 05 Mar 2019 12:20:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 05 Mar 2019 12:20:39 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Tue, 05 Mar 2019 12:20:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 12:20:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 12:20:59 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 05 Mar 2019 12:21:01 GMT
VOLUME [/var/lib/cassandra]
# Tue, 05 Mar 2019 12:21:02 GMT
EXPOSE 7000 7001 7199 9042 9160
# Tue, 05 Mar 2019 12:21:05 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7906afcc84506bd72529f6469f6859f16d321ccd2534ce900e2a2b8c87cf0997`  
		Last Modified: Tue, 05 Mar 2019 12:21:30 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3dac71f11138e5d7d4bfba2691efe0e36e6ce50fa663e0bfe1b632c869b22e`  
		Last Modified: Tue, 05 Mar 2019 12:21:29 GMT  
		Size: 5.5 MB (5542663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a73e334f7ebf5d8073bb114bea3e4b99f235c0ccefe66e19cbc203d71363511`  
		Last Modified: Tue, 05 Mar 2019 12:21:28 GMT  
		Size: 926.0 KB (925982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b478ee6f32b4a840d93dfc69781ede5a58f1a462176be22b6d049442f234ce5c`  
		Last Modified: Tue, 05 Mar 2019 12:21:24 GMT  
		Size: 18.2 KB (18220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f6482abb221c236fbc88a1361f9e54bfbdf1f6bc716aca1771d1b705c87c2f`  
		Last Modified: Tue, 05 Mar 2019 12:22:04 GMT  
		Size: 96.3 MB (96298707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f46ea0bbb3a3fd80c587049dc83784afff0640696e68fa6946fd5a2b2547b936`  
		Last Modified: Tue, 05 Mar 2019 12:21:47 GMT  
		Size: 8.4 KB (8413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e22ee1813de17ce3f34dbe19edc27a62215c27d7fe7ff9e74f1fd2c7bb61628`  
		Last Modified: Tue, 05 Mar 2019 12:21:47 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510d3fa93fdbafc4282a7b592f57a7d1fe8b4f98657c6240a4d3704aebe64a21`  
		Last Modified: Tue, 05 Mar 2019 12:21:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21dc6b56fe78a378d70b91d1811401206c525a0252685593b5df11edc074e892`  
		Last Modified: Tue, 05 Mar 2019 12:21:47 GMT  
		Size: 30.5 KB (30507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.11.4`

```console
$ docker pull cassandra@sha256:0c4bb1525c4965a76f41ff1017d0094a3d25e8f2036be85302af746c35d01f79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3.11.4` - linux; amd64

```console
$ docker pull cassandra@sha256:42eaa85083bac63e437853f69023f87c34095dd0486a9b434f9ad2c2e6c0c615
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132581551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2fad270aa542517e7276c1e3f4164d10e9135c711499d9c7f830925abb7a658`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:52:46 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 05 Mar 2019 03:52:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:52:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:53:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 03:53:05 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 05 Mar 2019 03:53:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 03:56:12 GMT
ENV CASSANDRA_VERSION=3.11.4
# Tue, 05 Mar 2019 03:56:41 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 05 Mar 2019 03:56:42 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 05 Mar 2019 03:56:42 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 05 Mar 2019 03:56:43 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Tue, 05 Mar 2019 03:56:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 03:56:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 03:56:44 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 05 Mar 2019 03:56:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 05 Mar 2019 03:56:45 GMT
EXPOSE 7000 7001 7199 9042 9160
# Tue, 05 Mar 2019 03:56:45 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f191f1b689772b40ced765f20d7b8c5d25accb69f9ef92a2b485c826d81935`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19a5d39fadda67101f597716241aa18bde49d13c386667b473a914d2648ba41`  
		Last Modified: Tue, 05 Mar 2019 03:56:59 GMT  
		Size: 5.7 MB (5676252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5f75b71aa54cf5dfe617611ed58b8fe5cd3840efba7556ba6f91ba3e0ee950`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 957.3 KB (957341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a818fde575e26ff06b56f6a820dd17f729c70a5a458422790fc8b98208d3da35`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 18.2 KB (18224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f27d48b09eba953f005ecb9af230d8b93077de99114f1db9723a78899a968a`  
		Last Modified: Tue, 05 Mar 2019 03:58:46 GMT  
		Size: 103.4 MB (103395518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173a08da348cf02d4ebd33bb95a482377b8948edf6295287deb56d6b1f335c95`  
		Last Modified: Tue, 05 Mar 2019 03:58:30 GMT  
		Size: 4.7 KB (4651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f1786035dfdf2c70f34b15f7ea177961ce23c247c4e7d7a6d0572873ab7f89`  
		Last Modified: Tue, 05 Mar 2019 03:58:31 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb7b63413ccb968f19a6d356d510d9422965d097ada8e3d6bfce8a44778797c`  
		Last Modified: Tue, 05 Mar 2019 03:58:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11a39dca7823bf37c5cca686e512292b4123732a9817299426fdbae45216b0b`  
		Last Modified: Tue, 05 Mar 2019 03:58:31 GMT  
		Size: 30.5 KB (30502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11.4` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:302f1f970a37838a8e4975f0e068278b0ac4d28058cb3e5dcdaba89c69c3f66e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121840986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b988796366338e5865f16bbc12eb27aa28b735c1832675b9d28af740cc41f00f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:26:43 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 06 Feb 2019 21:27:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 21:27:59 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 21:28:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 21:28:41 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 06 Feb 2019 21:28:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 14 Feb 2019 09:48:04 GMT
ENV CASSANDRA_VERSION=3.11.4
# Thu, 14 Feb 2019 09:51:22 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 14 Feb 2019 09:51:24 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 14 Feb 2019 09:51:26 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 14 Feb 2019 09:51:27 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Thu, 14 Feb 2019 09:51:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 14 Feb 2019 09:51:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Feb 2019 09:51:32 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 14 Feb 2019 09:51:32 GMT
VOLUME [/var/lib/cassandra]
# Thu, 14 Feb 2019 09:51:33 GMT
EXPOSE 7000 7001 7199 9042 9160
# Thu, 14 Feb 2019 09:51:34 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c2f4a84e1b6a1c11172d5c8896c5abf3d6f799bf5467e2575fb9552d14930c`  
		Last Modified: Wed, 06 Feb 2019 21:45:11 GMT  
		Size: 1.8 KB (1759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb0d71d77e31bbcaa111752dbf30b2753becca04f10ad2df933500038c73ce8`  
		Last Modified: Wed, 06 Feb 2019 21:45:10 GMT  
		Size: 5.1 MB (5147505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e1af13ad337a6a6d6e874ce42f294580a39500c575e107c0db441cb6044d83`  
		Last Modified: Wed, 06 Feb 2019 21:45:09 GMT  
		Size: 925.1 KB (925143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6e141c3155b59cc9272cb2e2a8f14c356c01fb06ea4f865c9b9ac875f8323b`  
		Last Modified: Wed, 06 Feb 2019 21:45:09 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56b3ab7ce9543689ee7a102c5b81116f0d55daf6279986c62dfa0251a77ed23`  
		Last Modified: Thu, 14 Feb 2019 09:53:53 GMT  
		Size: 95.4 MB (95361758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989c3ba2abb95a5a0a8b9022a1a560294718282be261c84a5a08587880baa4f`  
		Last Modified: Thu, 14 Feb 2019 09:53:25 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04591014fb070e82547a2ff97b18058ecfb8e3b88a753475ada45df974ebded`  
		Last Modified: Thu, 14 Feb 2019 09:53:25 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fab67ae56e65579a0f00bd8cf79b36fd4b7e6cce8e81a92f6069e4d0ce168b`  
		Last Modified: Thu, 14 Feb 2019 09:53:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a952202982b07d3d03422a070d35a3ddf574a78390597bcf065abd3d969091`  
		Last Modified: Thu, 14 Feb 2019 09:53:25 GMT  
		Size: 30.5 KB (30504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11.4` - linux; 386

```console
$ docker pull cassandra@sha256:0f6a6ab6c9af74d4ce9cdbf0cd1f6c7ffa493b8e2bdd70491a4cc951eccceabc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.7 MB (132658761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0714825d1eb53d12e1ee956e356e38fe91a2a8bbabf983758bf80174aae075a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 20:47:24 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 05 Mar 2019 20:47:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 20:47:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 20:47:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 20:47:48 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 05 Mar 2019 20:47:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 20:51:05 GMT
ENV CASSANDRA_VERSION=3.11.4
# Tue, 05 Mar 2019 20:51:38 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 05 Mar 2019 20:51:38 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 05 Mar 2019 20:51:39 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 05 Mar 2019 20:51:39 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Tue, 05 Mar 2019 20:51:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 20:51:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 20:51:41 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 05 Mar 2019 20:51:41 GMT
VOLUME [/var/lib/cassandra]
# Tue, 05 Mar 2019 20:51:41 GMT
EXPOSE 7000 7001 7199 9042 9160
# Tue, 05 Mar 2019 20:51:42 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6946319512779753db7d332250a1e797b1cae72d7cf27f37eb487f1313ca976f`  
		Last Modified: Tue, 05 Mar 2019 20:51:57 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecff23ece0779f69eb366144108ec6edb2353f7484e22394dc60306314cde05b`  
		Last Modified: Tue, 05 Mar 2019 20:51:58 GMT  
		Size: 6.1 MB (6061142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7557083f7c43abe1d28c86cf1421550fb7032ecdb574d31164e0f2c07952ece3`  
		Last Modified: Tue, 05 Mar 2019 20:51:56 GMT  
		Size: 937.0 KB (937024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4049fdccf3b07d03e3de87657ae11232575c16f9a005a71f5e088f2c8b23e480`  
		Last Modified: Tue, 05 Mar 2019 20:51:56 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f8f96b1510dab4955d259fc81801345f7b7dfd9248c01dae78063f044d6a85`  
		Last Modified: Tue, 05 Mar 2019 20:53:47 GMT  
		Size: 102.5 MB (102478522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce18faf6fe0bd7e152feb621ecb2f3c554082375aa47db0ab7ad9b0ac5322cb`  
		Last Modified: Tue, 05 Mar 2019 20:53:30 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f9578bdf2b28c10838d602b354296714270c13b88cc9d52259b54a1359579f`  
		Last Modified: Tue, 05 Mar 2019 20:53:29 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb0d63491ab9043cfde200bba592b2a5d5477c6ee4b4f2649e0a81f32c8a4cf`  
		Last Modified: Tue, 05 Mar 2019 20:53:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1b703314b64c82259c83f343223dfa4ff009a20faa2383a2e8835c8fe50c9b`  
		Last Modified: Tue, 05 Mar 2019 20:53:29 GMT  
		Size: 30.5 KB (30500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11.4` - linux; ppc64le

```console
$ docker pull cassandra@sha256:6b651519e20cdbd2cae7c998c178b2024132328d91a999782c5fc9abd6e3ea69
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125579018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adbbc84d918d4923e3f1ae3b0c2aa0fd6165152456b6dc57fc49482220c86e46`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 12:08:28 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 05 Mar 2019 12:09:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:09:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 12:10:38 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 12:10:45 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 05 Mar 2019 12:10:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 12:15:36 GMT
ENV CASSANDRA_VERSION=3.11.4
# Tue, 05 Mar 2019 12:20:24 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 05 Mar 2019 12:20:29 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 05 Mar 2019 12:20:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 05 Mar 2019 12:20:39 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Tue, 05 Mar 2019 12:20:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 12:20:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 12:20:59 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 05 Mar 2019 12:21:01 GMT
VOLUME [/var/lib/cassandra]
# Tue, 05 Mar 2019 12:21:02 GMT
EXPOSE 7000 7001 7199 9042 9160
# Tue, 05 Mar 2019 12:21:05 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7906afcc84506bd72529f6469f6859f16d321ccd2534ce900e2a2b8c87cf0997`  
		Last Modified: Tue, 05 Mar 2019 12:21:30 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3dac71f11138e5d7d4bfba2691efe0e36e6ce50fa663e0bfe1b632c869b22e`  
		Last Modified: Tue, 05 Mar 2019 12:21:29 GMT  
		Size: 5.5 MB (5542663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a73e334f7ebf5d8073bb114bea3e4b99f235c0ccefe66e19cbc203d71363511`  
		Last Modified: Tue, 05 Mar 2019 12:21:28 GMT  
		Size: 926.0 KB (925982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b478ee6f32b4a840d93dfc69781ede5a58f1a462176be22b6d049442f234ce5c`  
		Last Modified: Tue, 05 Mar 2019 12:21:24 GMT  
		Size: 18.2 KB (18220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f6482abb221c236fbc88a1361f9e54bfbdf1f6bc716aca1771d1b705c87c2f`  
		Last Modified: Tue, 05 Mar 2019 12:22:04 GMT  
		Size: 96.3 MB (96298707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f46ea0bbb3a3fd80c587049dc83784afff0640696e68fa6946fd5a2b2547b936`  
		Last Modified: Tue, 05 Mar 2019 12:21:47 GMT  
		Size: 8.4 KB (8413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e22ee1813de17ce3f34dbe19edc27a62215c27d7fe7ff9e74f1fd2c7bb61628`  
		Last Modified: Tue, 05 Mar 2019 12:21:47 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510d3fa93fdbafc4282a7b592f57a7d1fe8b4f98657c6240a4d3704aebe64a21`  
		Last Modified: Tue, 05 Mar 2019 12:21:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21dc6b56fe78a378d70b91d1811401206c525a0252685593b5df11edc074e892`  
		Last Modified: Tue, 05 Mar 2019 12:21:47 GMT  
		Size: 30.5 KB (30507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:latest`

```console
$ docker pull cassandra@sha256:0c4bb1525c4965a76f41ff1017d0094a3d25e8f2036be85302af746c35d01f79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:latest` - linux; amd64

```console
$ docker pull cassandra@sha256:42eaa85083bac63e437853f69023f87c34095dd0486a9b434f9ad2c2e6c0c615
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132581551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2fad270aa542517e7276c1e3f4164d10e9135c711499d9c7f830925abb7a658`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:52:46 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 05 Mar 2019 03:52:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:52:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:53:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 03:53:05 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 05 Mar 2019 03:53:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 03:56:12 GMT
ENV CASSANDRA_VERSION=3.11.4
# Tue, 05 Mar 2019 03:56:41 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 05 Mar 2019 03:56:42 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 05 Mar 2019 03:56:42 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 05 Mar 2019 03:56:43 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Tue, 05 Mar 2019 03:56:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 03:56:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 03:56:44 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 05 Mar 2019 03:56:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 05 Mar 2019 03:56:45 GMT
EXPOSE 7000 7001 7199 9042 9160
# Tue, 05 Mar 2019 03:56:45 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f191f1b689772b40ced765f20d7b8c5d25accb69f9ef92a2b485c826d81935`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19a5d39fadda67101f597716241aa18bde49d13c386667b473a914d2648ba41`  
		Last Modified: Tue, 05 Mar 2019 03:56:59 GMT  
		Size: 5.7 MB (5676252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5f75b71aa54cf5dfe617611ed58b8fe5cd3840efba7556ba6f91ba3e0ee950`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 957.3 KB (957341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a818fde575e26ff06b56f6a820dd17f729c70a5a458422790fc8b98208d3da35`  
		Last Modified: Tue, 05 Mar 2019 03:56:56 GMT  
		Size: 18.2 KB (18224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f27d48b09eba953f005ecb9af230d8b93077de99114f1db9723a78899a968a`  
		Last Modified: Tue, 05 Mar 2019 03:58:46 GMT  
		Size: 103.4 MB (103395518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173a08da348cf02d4ebd33bb95a482377b8948edf6295287deb56d6b1f335c95`  
		Last Modified: Tue, 05 Mar 2019 03:58:30 GMT  
		Size: 4.7 KB (4651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f1786035dfdf2c70f34b15f7ea177961ce23c247c4e7d7a6d0572873ab7f89`  
		Last Modified: Tue, 05 Mar 2019 03:58:31 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb7b63413ccb968f19a6d356d510d9422965d097ada8e3d6bfce8a44778797c`  
		Last Modified: Tue, 05 Mar 2019 03:58:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11a39dca7823bf37c5cca686e512292b4123732a9817299426fdbae45216b0b`  
		Last Modified: Tue, 05 Mar 2019 03:58:31 GMT  
		Size: 30.5 KB (30502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:latest` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:302f1f970a37838a8e4975f0e068278b0ac4d28058cb3e5dcdaba89c69c3f66e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121840986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b988796366338e5865f16bbc12eb27aa28b735c1832675b9d28af740cc41f00f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:26:43 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 06 Feb 2019 21:27:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 21:27:59 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 21:28:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 21:28:41 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 06 Feb 2019 21:28:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 14 Feb 2019 09:48:04 GMT
ENV CASSANDRA_VERSION=3.11.4
# Thu, 14 Feb 2019 09:51:22 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 14 Feb 2019 09:51:24 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 14 Feb 2019 09:51:26 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 14 Feb 2019 09:51:27 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Thu, 14 Feb 2019 09:51:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 14 Feb 2019 09:51:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Feb 2019 09:51:32 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 14 Feb 2019 09:51:32 GMT
VOLUME [/var/lib/cassandra]
# Thu, 14 Feb 2019 09:51:33 GMT
EXPOSE 7000 7001 7199 9042 9160
# Thu, 14 Feb 2019 09:51:34 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c2f4a84e1b6a1c11172d5c8896c5abf3d6f799bf5467e2575fb9552d14930c`  
		Last Modified: Wed, 06 Feb 2019 21:45:11 GMT  
		Size: 1.8 KB (1759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb0d71d77e31bbcaa111752dbf30b2753becca04f10ad2df933500038c73ce8`  
		Last Modified: Wed, 06 Feb 2019 21:45:10 GMT  
		Size: 5.1 MB (5147505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e1af13ad337a6a6d6e874ce42f294580a39500c575e107c0db441cb6044d83`  
		Last Modified: Wed, 06 Feb 2019 21:45:09 GMT  
		Size: 925.1 KB (925143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6e141c3155b59cc9272cb2e2a8f14c356c01fb06ea4f865c9b9ac875f8323b`  
		Last Modified: Wed, 06 Feb 2019 21:45:09 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56b3ab7ce9543689ee7a102c5b81116f0d55daf6279986c62dfa0251a77ed23`  
		Last Modified: Thu, 14 Feb 2019 09:53:53 GMT  
		Size: 95.4 MB (95361758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989c3ba2abb95a5a0a8b9022a1a560294718282be261c84a5a08587880baa4f`  
		Last Modified: Thu, 14 Feb 2019 09:53:25 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04591014fb070e82547a2ff97b18058ecfb8e3b88a753475ada45df974ebded`  
		Last Modified: Thu, 14 Feb 2019 09:53:25 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fab67ae56e65579a0f00bd8cf79b36fd4b7e6cce8e81a92f6069e4d0ce168b`  
		Last Modified: Thu, 14 Feb 2019 09:53:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a952202982b07d3d03422a070d35a3ddf574a78390597bcf065abd3d969091`  
		Last Modified: Thu, 14 Feb 2019 09:53:25 GMT  
		Size: 30.5 KB (30504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:latest` - linux; 386

```console
$ docker pull cassandra@sha256:0f6a6ab6c9af74d4ce9cdbf0cd1f6c7ffa493b8e2bdd70491a4cc951eccceabc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.7 MB (132658761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0714825d1eb53d12e1ee956e356e38fe91a2a8bbabf983758bf80174aae075a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 20:47:24 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 05 Mar 2019 20:47:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 20:47:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 20:47:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 20:47:48 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 05 Mar 2019 20:47:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 20:51:05 GMT
ENV CASSANDRA_VERSION=3.11.4
# Tue, 05 Mar 2019 20:51:38 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 05 Mar 2019 20:51:38 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 05 Mar 2019 20:51:39 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 05 Mar 2019 20:51:39 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Tue, 05 Mar 2019 20:51:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 20:51:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 20:51:41 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 05 Mar 2019 20:51:41 GMT
VOLUME [/var/lib/cassandra]
# Tue, 05 Mar 2019 20:51:41 GMT
EXPOSE 7000 7001 7199 9042 9160
# Tue, 05 Mar 2019 20:51:42 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6946319512779753db7d332250a1e797b1cae72d7cf27f37eb487f1313ca976f`  
		Last Modified: Tue, 05 Mar 2019 20:51:57 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecff23ece0779f69eb366144108ec6edb2353f7484e22394dc60306314cde05b`  
		Last Modified: Tue, 05 Mar 2019 20:51:58 GMT  
		Size: 6.1 MB (6061142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7557083f7c43abe1d28c86cf1421550fb7032ecdb574d31164e0f2c07952ece3`  
		Last Modified: Tue, 05 Mar 2019 20:51:56 GMT  
		Size: 937.0 KB (937024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4049fdccf3b07d03e3de87657ae11232575c16f9a005a71f5e088f2c8b23e480`  
		Last Modified: Tue, 05 Mar 2019 20:51:56 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f8f96b1510dab4955d259fc81801345f7b7dfd9248c01dae78063f044d6a85`  
		Last Modified: Tue, 05 Mar 2019 20:53:47 GMT  
		Size: 102.5 MB (102478522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce18faf6fe0bd7e152feb621ecb2f3c554082375aa47db0ab7ad9b0ac5322cb`  
		Last Modified: Tue, 05 Mar 2019 20:53:30 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f9578bdf2b28c10838d602b354296714270c13b88cc9d52259b54a1359579f`  
		Last Modified: Tue, 05 Mar 2019 20:53:29 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb0d63491ab9043cfde200bba592b2a5d5477c6ee4b4f2649e0a81f32c8a4cf`  
		Last Modified: Tue, 05 Mar 2019 20:53:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1b703314b64c82259c83f343223dfa4ff009a20faa2383a2e8835c8fe50c9b`  
		Last Modified: Tue, 05 Mar 2019 20:53:29 GMT  
		Size: 30.5 KB (30500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:latest` - linux; ppc64le

```console
$ docker pull cassandra@sha256:6b651519e20cdbd2cae7c998c178b2024132328d91a999782c5fc9abd6e3ea69
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125579018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adbbc84d918d4923e3f1ae3b0c2aa0fd6165152456b6dc57fc49482220c86e46`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 12:08:28 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 05 Mar 2019 12:09:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:09:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 12:10:38 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 12:10:45 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 05 Mar 2019 12:10:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 12:15:36 GMT
ENV CASSANDRA_VERSION=3.11.4
# Tue, 05 Mar 2019 12:20:24 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 05 Mar 2019 12:20:29 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 05 Mar 2019 12:20:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 05 Mar 2019 12:20:39 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Tue, 05 Mar 2019 12:20:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 12:20:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 12:20:59 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 05 Mar 2019 12:21:01 GMT
VOLUME [/var/lib/cassandra]
# Tue, 05 Mar 2019 12:21:02 GMT
EXPOSE 7000 7001 7199 9042 9160
# Tue, 05 Mar 2019 12:21:05 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7906afcc84506bd72529f6469f6859f16d321ccd2534ce900e2a2b8c87cf0997`  
		Last Modified: Tue, 05 Mar 2019 12:21:30 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3dac71f11138e5d7d4bfba2691efe0e36e6ce50fa663e0bfe1b632c869b22e`  
		Last Modified: Tue, 05 Mar 2019 12:21:29 GMT  
		Size: 5.5 MB (5542663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a73e334f7ebf5d8073bb114bea3e4b99f235c0ccefe66e19cbc203d71363511`  
		Last Modified: Tue, 05 Mar 2019 12:21:28 GMT  
		Size: 926.0 KB (925982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b478ee6f32b4a840d93dfc69781ede5a58f1a462176be22b6d049442f234ce5c`  
		Last Modified: Tue, 05 Mar 2019 12:21:24 GMT  
		Size: 18.2 KB (18220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f6482abb221c236fbc88a1361f9e54bfbdf1f6bc716aca1771d1b705c87c2f`  
		Last Modified: Tue, 05 Mar 2019 12:22:04 GMT  
		Size: 96.3 MB (96298707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f46ea0bbb3a3fd80c587049dc83784afff0640696e68fa6946fd5a2b2547b936`  
		Last Modified: Tue, 05 Mar 2019 12:21:47 GMT  
		Size: 8.4 KB (8413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e22ee1813de17ce3f34dbe19edc27a62215c27d7fe7ff9e74f1fd2c7bb61628`  
		Last Modified: Tue, 05 Mar 2019 12:21:47 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510d3fa93fdbafc4282a7b592f57a7d1fe8b4f98657c6240a4d3704aebe64a21`  
		Last Modified: Tue, 05 Mar 2019 12:21:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21dc6b56fe78a378d70b91d1811401206c525a0252685593b5df11edc074e892`  
		Last Modified: Tue, 05 Mar 2019 12:21:47 GMT  
		Size: 30.5 KB (30507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
