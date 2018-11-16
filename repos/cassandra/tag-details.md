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
$ docker pull cassandra@sha256:3c390d17925450857b72ee1bcff5c220e4064a9cfa2eb9b1840301010d135fbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `cassandra:2` - linux; amd64

```console
$ docker pull cassandra@sha256:df995e4860cf218b01479ca9d9169a81bfe356c281b9b653a22ccd59fdf69173
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.1 MB (196146982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a33a4e722eedfa23875c0787dac59665c4ec213d8b82816359608be610b0bfc8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:26:20 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 01:26:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:26:33 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Nov 2018 22:20:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Nov 2018 22:20:51 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Thu, 15 Nov 2018 22:20:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Nov 2018 22:22:37 GMT
ENV CASSANDRA_VERSION=2.2.13
# Thu, 15 Nov 2018 22:23:24 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Nov 2018 22:23:25 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 15 Nov 2018 22:23:26 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 15 Nov 2018 22:23:26 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Thu, 15 Nov 2018 22:23:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 15 Nov 2018 22:23:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Nov 2018 22:23:29 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 15 Nov 2018 22:23:29 GMT
VOLUME [/var/lib/cassandra]
# Thu, 15 Nov 2018 22:23:30 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 15 Nov 2018 22:23:30 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346e425d7fdcd26171d7dfa401654011040c87a01e7aeb08a83748e2cad52bab`  
		Last Modified: Tue, 16 Oct 2018 01:30:06 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dff060d6d3e2ae9f8476ba972d83e08f079a85685bd2da608739c717eecff4`  
		Last Modified: Tue, 16 Oct 2018 01:30:07 GMT  
		Size: 5.7 MB (5673746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae4e64ec3e1e3a76cd9d314a385f6a09ae7c8de341026769eadcbe663f2037ff`  
		Last Modified: Thu, 15 Nov 2018 22:26:57 GMT  
		Size: 957.3 KB (957317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e62567b3b30554fc13be2ab26ac0f72d968a0217a44245a5b3581464ac2d2e3`  
		Last Modified: Thu, 15 Nov 2018 22:26:57 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d532e7d43866a1c3d9d0188e2d1777933a42196cc76478539a6076e032842b96`  
		Last Modified: Thu, 15 Nov 2018 22:28:30 GMT  
		Size: 167.0 MB (166981257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d733adb4f9fd11471a270983d8b17c8eb7f4b40658cb6d3beb5e42e7c3538fb`  
		Last Modified: Thu, 15 Nov 2018 22:27:58 GMT  
		Size: 4.9 KB (4884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de18db94209f2a5b0101a715de4d440e56d428e7aea26db3391de035a969652`  
		Last Modified: Thu, 15 Nov 2018 22:27:58 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c54160894791a8536fc12a7134fee7eb0d965133cdd470af126b0dfa73e0ee9`  
		Last Modified: Thu, 15 Nov 2018 22:27:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c248316d287da94b75a41042407a83c7440914d75226803cdfbdc55377acc2f`  
		Last Modified: Thu, 15 Nov 2018 22:27:58 GMT  
		Size: 22.5 KB (22490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2` - linux; 386

```console
$ docker pull cassandra@sha256:7c41ac60e59cf6035fbfca9fb75c571ae1347631d7438997a9ca030e07051326
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.7 MB (199744771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:933812096516f34674a9871b0a6b458307f019441cb15a77875947c2be34ef21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:08:22 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 22:08:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:08:32 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 22:08:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 22:08:44 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 16 Oct 2018 22:08:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 02 Nov 2018 10:43:39 GMT
ENV CASSANDRA_VERSION=2.2.13
# Fri, 02 Nov 2018 10:44:34 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 02 Nov 2018 10:44:35 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 02 Nov 2018 10:44:35 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 02 Nov 2018 10:44:36 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Fri, 02 Nov 2018 10:44:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 02 Nov 2018 10:44:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Nov 2018 10:44:37 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 02 Nov 2018 10:44:37 GMT
VOLUME [/var/lib/cassandra]
# Fri, 02 Nov 2018 10:44:38 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 02 Nov 2018 10:44:38 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1d95d8d308ff55099777a809b4d62d1642ded41259c1c37d5604f293712a40`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8a67f3dcb44c81877bd940b950839796be75a1f7a4b8756d1b6fda89c386e5`  
		Last Modified: Tue, 16 Oct 2018 22:12:20 GMT  
		Size: 6.1 MB (6056823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0b7621c780c7fb88d0cce00be9b9893420481d190e484ecfec35bb5a8b9a22`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 937.0 KB (936971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f944e1b94da409cbdf6919953f9690b47530f7da284df45d7bee5b7b644a6a42`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5081beb8fe0c9f0d8ff7f9dd606df7b51eda68c28e6984a61fe5ab304ade7407`  
		Last Modified: Fri, 02 Nov 2018 10:46:48 GMT  
		Size: 169.6 MB (169575755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466a6282cb3dff2dcdcc290cb906d65299efdee9d435e518b1a09b50f12b330e`  
		Last Modified: Fri, 02 Nov 2018 10:46:16 GMT  
		Size: 4.9 KB (4884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dec7aa78e5dae597722943bbc80d206135aac60bf25eaf766022118350d90b1`  
		Last Modified: Fri, 02 Nov 2018 10:46:16 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6ef10950166f671e74f1827f00b26a2f9ba7b06e20ef16e1c73d9f59f60c0a`  
		Last Modified: Fri, 02 Nov 2018 10:46:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e00ab20a08260539620cc6ceb0e619c19376a4c5a3d84b02c275329bf304b4`  
		Last Modified: Fri, 02 Nov 2018 10:46:15 GMT  
		Size: 22.5 KB (22490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1`

```console
$ docker pull cassandra@sha256:4797cc78ab5f6334e24838e223e2a3bbfddcfd8d5e8019262a7d4fd92590bd60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `cassandra:2.1` - linux; amd64

```console
$ docker pull cassandra@sha256:a336a40b633f6830d4efe1c5bce1734cbf298258d6a349a43624948b9136d4f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.9 MB (191913700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d65340b20d7110af1d0c788b0bdd58882875696a51802dd9b7a5b95c4fdab7a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:26:20 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 01:26:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:26:33 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Nov 2018 22:20:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Nov 2018 22:20:51 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Thu, 15 Nov 2018 22:20:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Nov 2018 22:20:54 GMT
ENV CASSANDRA_VERSION=2.1.20
# Thu, 15 Nov 2018 22:22:01 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Nov 2018 22:22:01 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 15 Nov 2018 22:22:02 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 15 Nov 2018 22:22:02 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Thu, 15 Nov 2018 22:22:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 15 Nov 2018 22:22:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Nov 2018 22:22:04 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 15 Nov 2018 22:22:04 GMT
VOLUME [/var/lib/cassandra]
# Thu, 15 Nov 2018 22:22:04 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 15 Nov 2018 22:22:05 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346e425d7fdcd26171d7dfa401654011040c87a01e7aeb08a83748e2cad52bab`  
		Last Modified: Tue, 16 Oct 2018 01:30:06 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dff060d6d3e2ae9f8476ba972d83e08f079a85685bd2da608739c717eecff4`  
		Last Modified: Tue, 16 Oct 2018 01:30:07 GMT  
		Size: 5.7 MB (5673746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae4e64ec3e1e3a76cd9d314a385f6a09ae7c8de341026769eadcbe663f2037ff`  
		Last Modified: Thu, 15 Nov 2018 22:26:57 GMT  
		Size: 957.3 KB (957317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e62567b3b30554fc13be2ab26ac0f72d968a0217a44245a5b3581464ac2d2e3`  
		Last Modified: Thu, 15 Nov 2018 22:26:57 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c487f60a5ce6c7d0d43d52577ca218bf9eaecf36fb65e933d86a5f7aaa8c65`  
		Last Modified: Thu, 15 Nov 2018 22:27:26 GMT  
		Size: 162.8 MB (162750118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8290ad6c13d5149bb4847b44d0ab844e2963c6fcf9273f6a752e7cbe89c9754f`  
		Last Modified: Thu, 15 Nov 2018 22:26:56 GMT  
		Size: 4.7 KB (4673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb210c1100bba4b84268deb81c9a12f7416152f07e9fff6271c771ec06b3604`  
		Last Modified: Thu, 15 Nov 2018 22:26:56 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a9a105e3c3d3cac2e37dd142f8571ee069b60a0f032143eceaa339d9d461a8`  
		Last Modified: Thu, 15 Nov 2018 22:26:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04031caf3a366407ca4eecc3978fe9fabc9f00474235d7c905a1d266bbf31a23`  
		Last Modified: Thu, 15 Nov 2018 22:26:56 GMT  
		Size: 20.6 KB (20556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.1` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:e8947be757a5328710bcce721222c844836edb760d5ff857b9f2286ee87482f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.0 MB (176035267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a449f7188c4861e769e6c7dbe6569b26bec1d42ef4d04ca1a37308642a2a77f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:30:58 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 12:31:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:31:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 12:32:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 12:32:20 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 16 Oct 2018 12:32:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 02 Nov 2018 08:39:47 GMT
ENV CASSANDRA_VERSION=2.1.20
# Fri, 02 Nov 2018 08:46:03 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 02 Nov 2018 08:46:06 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 02 Nov 2018 08:46:08 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 02 Nov 2018 08:46:09 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Fri, 02 Nov 2018 08:46:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 02 Nov 2018 08:46:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Nov 2018 08:46:25 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 02 Nov 2018 08:46:26 GMT
VOLUME [/var/lib/cassandra]
# Fri, 02 Nov 2018 08:46:28 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 02 Nov 2018 08:46:30 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf303a61394af98a28a10e12b48ffe2110f8650405e1cd09a432c9a7d326295`  
		Last Modified: Tue, 16 Oct 2018 12:41:29 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34604110be2999a331df7a10cb8e17cfa188e432bc097fab53fd1eeb9ba4e0d9`  
		Last Modified: Tue, 16 Oct 2018 12:41:37 GMT  
		Size: 5.1 MB (5143952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a99d48291ebc681d7daf3ace68a3c2feed9db691092dc1f1335c3107b599fe9`  
		Last Modified: Tue, 16 Oct 2018 12:41:30 GMT  
		Size: 924.9 KB (924909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0e80dccd29631a4fc6d7c3d3db303f740e5dbce0df9e85a6c7f0735733936a`  
		Last Modified: Tue, 16 Oct 2018 12:41:32 GMT  
		Size: 18.2 KB (18225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfe45b6c9d067bc0f7130b73e6d87c110603dac595521d6902552a7c5c66b7a`  
		Last Modified: Fri, 02 Nov 2018 08:48:10 GMT  
		Size: 149.6 MB (149588332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08972a3e73e37761ca94878cd549903ea22848a9c0a95d7b2f126c807addfce8`  
		Last Modified: Fri, 02 Nov 2018 08:47:25 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a986428ea586db2743c297e6e42e4074737d4b6c4750c62d0339298c378885f`  
		Last Modified: Fri, 02 Nov 2018 08:47:25 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aec2ddb5032e97238f8e847570c03861e09da05a83927c705a4c5721c75df39`  
		Last Modified: Fri, 02 Nov 2018 08:47:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871f78700e8815b329f5434e039a696c4f3586cde6fc240d14f6131e8aaf47ed`  
		Last Modified: Fri, 02 Nov 2018 08:47:25 GMT  
		Size: 20.6 KB (20561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.1` - linux; 386

```console
$ docker pull cassandra@sha256:1453ba8a1c6f67f300c7cf1869539e251274296b36f6ab3f5b4613de0e21b0df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.5 MB (195502732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56cea926370ab303de41d5f897c931a15112e22def289f76f0464b54aaaa44b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:08:22 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 22:08:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:08:32 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 22:08:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 22:08:44 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 16 Oct 2018 22:08:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 02 Nov 2018 10:42:01 GMT
ENV CASSANDRA_VERSION=2.1.20
# Fri, 02 Nov 2018 10:43:19 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 02 Nov 2018 10:43:20 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 02 Nov 2018 10:43:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 02 Nov 2018 10:43:21 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Fri, 02 Nov 2018 10:43:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 02 Nov 2018 10:43:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Nov 2018 10:43:22 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 02 Nov 2018 10:43:22 GMT
VOLUME [/var/lib/cassandra]
# Fri, 02 Nov 2018 10:43:23 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 02 Nov 2018 10:43:23 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1d95d8d308ff55099777a809b4d62d1642ded41259c1c37d5604f293712a40`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8a67f3dcb44c81877bd940b950839796be75a1f7a4b8756d1b6fda89c386e5`  
		Last Modified: Tue, 16 Oct 2018 22:12:20 GMT  
		Size: 6.1 MB (6056823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0b7621c780c7fb88d0cce00be9b9893420481d190e484ecfec35bb5a8b9a22`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 937.0 KB (936971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f944e1b94da409cbdf6919953f9690b47530f7da284df45d7bee5b7b644a6a42`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6de3641728c6b4cb3427ffdea5bd8c4081cf1f6aab8dc3adf1b20edef38998`  
		Last Modified: Fri, 02 Nov 2018 10:45:53 GMT  
		Size: 165.3 MB (165335867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72866cbc8bfdae194cb6375bb053d2604bfecd8fa4ed21463dd5537bff1937bf`  
		Last Modified: Fri, 02 Nov 2018 10:45:21 GMT  
		Size: 4.7 KB (4670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6aa1e530001a38c48b0ba9546873010cf43ca7a49c8e2fcc19f87a691f72a00`  
		Last Modified: Fri, 02 Nov 2018 10:45:21 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3339e9445d8f5df4b97ec9925fe94935b286f9695251c4752d4eee42e4d8c5`  
		Last Modified: Fri, 02 Nov 2018 10:45:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24febd888af4ec7753f2f595744e6a29db3f4b9501d9579a53e339b0a6f9cff`  
		Last Modified: Fri, 02 Nov 2018 10:45:21 GMT  
		Size: 20.6 KB (20553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1.20`

```console
$ docker pull cassandra@sha256:4797cc78ab5f6334e24838e223e2a3bbfddcfd8d5e8019262a7d4fd92590bd60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `cassandra:2.1.20` - linux; amd64

```console
$ docker pull cassandra@sha256:a336a40b633f6830d4efe1c5bce1734cbf298258d6a349a43624948b9136d4f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.9 MB (191913700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d65340b20d7110af1d0c788b0bdd58882875696a51802dd9b7a5b95c4fdab7a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:26:20 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 01:26:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:26:33 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Nov 2018 22:20:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Nov 2018 22:20:51 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Thu, 15 Nov 2018 22:20:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Nov 2018 22:20:54 GMT
ENV CASSANDRA_VERSION=2.1.20
# Thu, 15 Nov 2018 22:22:01 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Nov 2018 22:22:01 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 15 Nov 2018 22:22:02 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 15 Nov 2018 22:22:02 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Thu, 15 Nov 2018 22:22:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 15 Nov 2018 22:22:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Nov 2018 22:22:04 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 15 Nov 2018 22:22:04 GMT
VOLUME [/var/lib/cassandra]
# Thu, 15 Nov 2018 22:22:04 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 15 Nov 2018 22:22:05 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346e425d7fdcd26171d7dfa401654011040c87a01e7aeb08a83748e2cad52bab`  
		Last Modified: Tue, 16 Oct 2018 01:30:06 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dff060d6d3e2ae9f8476ba972d83e08f079a85685bd2da608739c717eecff4`  
		Last Modified: Tue, 16 Oct 2018 01:30:07 GMT  
		Size: 5.7 MB (5673746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae4e64ec3e1e3a76cd9d314a385f6a09ae7c8de341026769eadcbe663f2037ff`  
		Last Modified: Thu, 15 Nov 2018 22:26:57 GMT  
		Size: 957.3 KB (957317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e62567b3b30554fc13be2ab26ac0f72d968a0217a44245a5b3581464ac2d2e3`  
		Last Modified: Thu, 15 Nov 2018 22:26:57 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c487f60a5ce6c7d0d43d52577ca218bf9eaecf36fb65e933d86a5f7aaa8c65`  
		Last Modified: Thu, 15 Nov 2018 22:27:26 GMT  
		Size: 162.8 MB (162750118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8290ad6c13d5149bb4847b44d0ab844e2963c6fcf9273f6a752e7cbe89c9754f`  
		Last Modified: Thu, 15 Nov 2018 22:26:56 GMT  
		Size: 4.7 KB (4673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb210c1100bba4b84268deb81c9a12f7416152f07e9fff6271c771ec06b3604`  
		Last Modified: Thu, 15 Nov 2018 22:26:56 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a9a105e3c3d3cac2e37dd142f8571ee069b60a0f032143eceaa339d9d461a8`  
		Last Modified: Thu, 15 Nov 2018 22:26:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04031caf3a366407ca4eecc3978fe9fabc9f00474235d7c905a1d266bbf31a23`  
		Last Modified: Thu, 15 Nov 2018 22:26:56 GMT  
		Size: 20.6 KB (20556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.1.20` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:e8947be757a5328710bcce721222c844836edb760d5ff857b9f2286ee87482f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.0 MB (176035267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a449f7188c4861e769e6c7dbe6569b26bec1d42ef4d04ca1a37308642a2a77f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:30:58 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 12:31:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:31:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 12:32:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 12:32:20 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 16 Oct 2018 12:32:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 02 Nov 2018 08:39:47 GMT
ENV CASSANDRA_VERSION=2.1.20
# Fri, 02 Nov 2018 08:46:03 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 02 Nov 2018 08:46:06 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 02 Nov 2018 08:46:08 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 02 Nov 2018 08:46:09 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Fri, 02 Nov 2018 08:46:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 02 Nov 2018 08:46:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Nov 2018 08:46:25 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 02 Nov 2018 08:46:26 GMT
VOLUME [/var/lib/cassandra]
# Fri, 02 Nov 2018 08:46:28 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 02 Nov 2018 08:46:30 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf303a61394af98a28a10e12b48ffe2110f8650405e1cd09a432c9a7d326295`  
		Last Modified: Tue, 16 Oct 2018 12:41:29 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34604110be2999a331df7a10cb8e17cfa188e432bc097fab53fd1eeb9ba4e0d9`  
		Last Modified: Tue, 16 Oct 2018 12:41:37 GMT  
		Size: 5.1 MB (5143952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a99d48291ebc681d7daf3ace68a3c2feed9db691092dc1f1335c3107b599fe9`  
		Last Modified: Tue, 16 Oct 2018 12:41:30 GMT  
		Size: 924.9 KB (924909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0e80dccd29631a4fc6d7c3d3db303f740e5dbce0df9e85a6c7f0735733936a`  
		Last Modified: Tue, 16 Oct 2018 12:41:32 GMT  
		Size: 18.2 KB (18225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfe45b6c9d067bc0f7130b73e6d87c110603dac595521d6902552a7c5c66b7a`  
		Last Modified: Fri, 02 Nov 2018 08:48:10 GMT  
		Size: 149.6 MB (149588332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08972a3e73e37761ca94878cd549903ea22848a9c0a95d7b2f126c807addfce8`  
		Last Modified: Fri, 02 Nov 2018 08:47:25 GMT  
		Size: 4.7 KB (4672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a986428ea586db2743c297e6e42e4074737d4b6c4750c62d0339298c378885f`  
		Last Modified: Fri, 02 Nov 2018 08:47:25 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aec2ddb5032e97238f8e847570c03861e09da05a83927c705a4c5721c75df39`  
		Last Modified: Fri, 02 Nov 2018 08:47:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871f78700e8815b329f5434e039a696c4f3586cde6fc240d14f6131e8aaf47ed`  
		Last Modified: Fri, 02 Nov 2018 08:47:25 GMT  
		Size: 20.6 KB (20561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.1.20` - linux; 386

```console
$ docker pull cassandra@sha256:1453ba8a1c6f67f300c7cf1869539e251274296b36f6ab3f5b4613de0e21b0df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.5 MB (195502732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56cea926370ab303de41d5f897c931a15112e22def289f76f0464b54aaaa44b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:08:22 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 22:08:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:08:32 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 22:08:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 22:08:44 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 16 Oct 2018 22:08:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 02 Nov 2018 10:42:01 GMT
ENV CASSANDRA_VERSION=2.1.20
# Fri, 02 Nov 2018 10:43:19 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 02 Nov 2018 10:43:20 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 02 Nov 2018 10:43:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 02 Nov 2018 10:43:21 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Fri, 02 Nov 2018 10:43:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 02 Nov 2018 10:43:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Nov 2018 10:43:22 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 02 Nov 2018 10:43:22 GMT
VOLUME [/var/lib/cassandra]
# Fri, 02 Nov 2018 10:43:23 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 02 Nov 2018 10:43:23 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1d95d8d308ff55099777a809b4d62d1642ded41259c1c37d5604f293712a40`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8a67f3dcb44c81877bd940b950839796be75a1f7a4b8756d1b6fda89c386e5`  
		Last Modified: Tue, 16 Oct 2018 22:12:20 GMT  
		Size: 6.1 MB (6056823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0b7621c780c7fb88d0cce00be9b9893420481d190e484ecfec35bb5a8b9a22`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 937.0 KB (936971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f944e1b94da409cbdf6919953f9690b47530f7da284df45d7bee5b7b644a6a42`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6de3641728c6b4cb3427ffdea5bd8c4081cf1f6aab8dc3adf1b20edef38998`  
		Last Modified: Fri, 02 Nov 2018 10:45:53 GMT  
		Size: 165.3 MB (165335867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72866cbc8bfdae194cb6375bb053d2604bfecd8fa4ed21463dd5537bff1937bf`  
		Last Modified: Fri, 02 Nov 2018 10:45:21 GMT  
		Size: 4.7 KB (4670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6aa1e530001a38c48b0ba9546873010cf43ca7a49c8e2fcc19f87a691f72a00`  
		Last Modified: Fri, 02 Nov 2018 10:45:21 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3339e9445d8f5df4b97ec9925fe94935b286f9695251c4752d4eee42e4d8c5`  
		Last Modified: Fri, 02 Nov 2018 10:45:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24febd888af4ec7753f2f595744e6a29db3f4b9501d9579a53e339b0a6f9cff`  
		Last Modified: Fri, 02 Nov 2018 10:45:21 GMT  
		Size: 20.6 KB (20553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2`

```console
$ docker pull cassandra@sha256:3c390d17925450857b72ee1bcff5c220e4064a9cfa2eb9b1840301010d135fbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `cassandra:2.2` - linux; amd64

```console
$ docker pull cassandra@sha256:df995e4860cf218b01479ca9d9169a81bfe356c281b9b653a22ccd59fdf69173
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.1 MB (196146982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a33a4e722eedfa23875c0787dac59665c4ec213d8b82816359608be610b0bfc8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:26:20 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 01:26:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:26:33 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Nov 2018 22:20:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Nov 2018 22:20:51 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Thu, 15 Nov 2018 22:20:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Nov 2018 22:22:37 GMT
ENV CASSANDRA_VERSION=2.2.13
# Thu, 15 Nov 2018 22:23:24 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Nov 2018 22:23:25 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 15 Nov 2018 22:23:26 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 15 Nov 2018 22:23:26 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Thu, 15 Nov 2018 22:23:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 15 Nov 2018 22:23:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Nov 2018 22:23:29 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 15 Nov 2018 22:23:29 GMT
VOLUME [/var/lib/cassandra]
# Thu, 15 Nov 2018 22:23:30 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 15 Nov 2018 22:23:30 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346e425d7fdcd26171d7dfa401654011040c87a01e7aeb08a83748e2cad52bab`  
		Last Modified: Tue, 16 Oct 2018 01:30:06 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dff060d6d3e2ae9f8476ba972d83e08f079a85685bd2da608739c717eecff4`  
		Last Modified: Tue, 16 Oct 2018 01:30:07 GMT  
		Size: 5.7 MB (5673746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae4e64ec3e1e3a76cd9d314a385f6a09ae7c8de341026769eadcbe663f2037ff`  
		Last Modified: Thu, 15 Nov 2018 22:26:57 GMT  
		Size: 957.3 KB (957317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e62567b3b30554fc13be2ab26ac0f72d968a0217a44245a5b3581464ac2d2e3`  
		Last Modified: Thu, 15 Nov 2018 22:26:57 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d532e7d43866a1c3d9d0188e2d1777933a42196cc76478539a6076e032842b96`  
		Last Modified: Thu, 15 Nov 2018 22:28:30 GMT  
		Size: 167.0 MB (166981257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d733adb4f9fd11471a270983d8b17c8eb7f4b40658cb6d3beb5e42e7c3538fb`  
		Last Modified: Thu, 15 Nov 2018 22:27:58 GMT  
		Size: 4.9 KB (4884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de18db94209f2a5b0101a715de4d440e56d428e7aea26db3391de035a969652`  
		Last Modified: Thu, 15 Nov 2018 22:27:58 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c54160894791a8536fc12a7134fee7eb0d965133cdd470af126b0dfa73e0ee9`  
		Last Modified: Thu, 15 Nov 2018 22:27:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c248316d287da94b75a41042407a83c7440914d75226803cdfbdc55377acc2f`  
		Last Modified: Thu, 15 Nov 2018 22:27:58 GMT  
		Size: 22.5 KB (22490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.2` - linux; 386

```console
$ docker pull cassandra@sha256:7c41ac60e59cf6035fbfca9fb75c571ae1347631d7438997a9ca030e07051326
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.7 MB (199744771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:933812096516f34674a9871b0a6b458307f019441cb15a77875947c2be34ef21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:08:22 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 22:08:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:08:32 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 22:08:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 22:08:44 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 16 Oct 2018 22:08:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 02 Nov 2018 10:43:39 GMT
ENV CASSANDRA_VERSION=2.2.13
# Fri, 02 Nov 2018 10:44:34 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 02 Nov 2018 10:44:35 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 02 Nov 2018 10:44:35 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 02 Nov 2018 10:44:36 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Fri, 02 Nov 2018 10:44:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 02 Nov 2018 10:44:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Nov 2018 10:44:37 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 02 Nov 2018 10:44:37 GMT
VOLUME [/var/lib/cassandra]
# Fri, 02 Nov 2018 10:44:38 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 02 Nov 2018 10:44:38 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1d95d8d308ff55099777a809b4d62d1642ded41259c1c37d5604f293712a40`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8a67f3dcb44c81877bd940b950839796be75a1f7a4b8756d1b6fda89c386e5`  
		Last Modified: Tue, 16 Oct 2018 22:12:20 GMT  
		Size: 6.1 MB (6056823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0b7621c780c7fb88d0cce00be9b9893420481d190e484ecfec35bb5a8b9a22`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 937.0 KB (936971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f944e1b94da409cbdf6919953f9690b47530f7da284df45d7bee5b7b644a6a42`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5081beb8fe0c9f0d8ff7f9dd606df7b51eda68c28e6984a61fe5ab304ade7407`  
		Last Modified: Fri, 02 Nov 2018 10:46:48 GMT  
		Size: 169.6 MB (169575755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466a6282cb3dff2dcdcc290cb906d65299efdee9d435e518b1a09b50f12b330e`  
		Last Modified: Fri, 02 Nov 2018 10:46:16 GMT  
		Size: 4.9 KB (4884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dec7aa78e5dae597722943bbc80d206135aac60bf25eaf766022118350d90b1`  
		Last Modified: Fri, 02 Nov 2018 10:46:16 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6ef10950166f671e74f1827f00b26a2f9ba7b06e20ef16e1c73d9f59f60c0a`  
		Last Modified: Fri, 02 Nov 2018 10:46:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e00ab20a08260539620cc6ceb0e619c19376a4c5a3d84b02c275329bf304b4`  
		Last Modified: Fri, 02 Nov 2018 10:46:15 GMT  
		Size: 22.5 KB (22490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2.13`

```console
$ docker pull cassandra@sha256:3c390d17925450857b72ee1bcff5c220e4064a9cfa2eb9b1840301010d135fbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `cassandra:2.2.13` - linux; amd64

```console
$ docker pull cassandra@sha256:df995e4860cf218b01479ca9d9169a81bfe356c281b9b653a22ccd59fdf69173
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.1 MB (196146982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a33a4e722eedfa23875c0787dac59665c4ec213d8b82816359608be610b0bfc8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:26:20 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 01:26:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:26:33 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Nov 2018 22:20:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Nov 2018 22:20:51 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Thu, 15 Nov 2018 22:20:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Nov 2018 22:22:37 GMT
ENV CASSANDRA_VERSION=2.2.13
# Thu, 15 Nov 2018 22:23:24 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Nov 2018 22:23:25 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 15 Nov 2018 22:23:26 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 15 Nov 2018 22:23:26 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Thu, 15 Nov 2018 22:23:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 15 Nov 2018 22:23:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Nov 2018 22:23:29 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 15 Nov 2018 22:23:29 GMT
VOLUME [/var/lib/cassandra]
# Thu, 15 Nov 2018 22:23:30 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 15 Nov 2018 22:23:30 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346e425d7fdcd26171d7dfa401654011040c87a01e7aeb08a83748e2cad52bab`  
		Last Modified: Tue, 16 Oct 2018 01:30:06 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dff060d6d3e2ae9f8476ba972d83e08f079a85685bd2da608739c717eecff4`  
		Last Modified: Tue, 16 Oct 2018 01:30:07 GMT  
		Size: 5.7 MB (5673746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae4e64ec3e1e3a76cd9d314a385f6a09ae7c8de341026769eadcbe663f2037ff`  
		Last Modified: Thu, 15 Nov 2018 22:26:57 GMT  
		Size: 957.3 KB (957317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e62567b3b30554fc13be2ab26ac0f72d968a0217a44245a5b3581464ac2d2e3`  
		Last Modified: Thu, 15 Nov 2018 22:26:57 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d532e7d43866a1c3d9d0188e2d1777933a42196cc76478539a6076e032842b96`  
		Last Modified: Thu, 15 Nov 2018 22:28:30 GMT  
		Size: 167.0 MB (166981257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d733adb4f9fd11471a270983d8b17c8eb7f4b40658cb6d3beb5e42e7c3538fb`  
		Last Modified: Thu, 15 Nov 2018 22:27:58 GMT  
		Size: 4.9 KB (4884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de18db94209f2a5b0101a715de4d440e56d428e7aea26db3391de035a969652`  
		Last Modified: Thu, 15 Nov 2018 22:27:58 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c54160894791a8536fc12a7134fee7eb0d965133cdd470af126b0dfa73e0ee9`  
		Last Modified: Thu, 15 Nov 2018 22:27:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c248316d287da94b75a41042407a83c7440914d75226803cdfbdc55377acc2f`  
		Last Modified: Thu, 15 Nov 2018 22:27:58 GMT  
		Size: 22.5 KB (22490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.2.13` - linux; 386

```console
$ docker pull cassandra@sha256:7c41ac60e59cf6035fbfca9fb75c571ae1347631d7438997a9ca030e07051326
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.7 MB (199744771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:933812096516f34674a9871b0a6b458307f019441cb15a77875947c2be34ef21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:08:22 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 22:08:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:08:32 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 22:08:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 22:08:44 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 16 Oct 2018 22:08:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 02 Nov 2018 10:43:39 GMT
ENV CASSANDRA_VERSION=2.2.13
# Fri, 02 Nov 2018 10:44:34 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 02 Nov 2018 10:44:35 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 02 Nov 2018 10:44:35 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 02 Nov 2018 10:44:36 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Fri, 02 Nov 2018 10:44:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Fri, 02 Nov 2018 10:44:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Nov 2018 10:44:37 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 02 Nov 2018 10:44:37 GMT
VOLUME [/var/lib/cassandra]
# Fri, 02 Nov 2018 10:44:38 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 02 Nov 2018 10:44:38 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1d95d8d308ff55099777a809b4d62d1642ded41259c1c37d5604f293712a40`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8a67f3dcb44c81877bd940b950839796be75a1f7a4b8756d1b6fda89c386e5`  
		Last Modified: Tue, 16 Oct 2018 22:12:20 GMT  
		Size: 6.1 MB (6056823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0b7621c780c7fb88d0cce00be9b9893420481d190e484ecfec35bb5a8b9a22`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 937.0 KB (936971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f944e1b94da409cbdf6919953f9690b47530f7da284df45d7bee5b7b644a6a42`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5081beb8fe0c9f0d8ff7f9dd606df7b51eda68c28e6984a61fe5ab304ade7407`  
		Last Modified: Fri, 02 Nov 2018 10:46:48 GMT  
		Size: 169.6 MB (169575755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466a6282cb3dff2dcdcc290cb906d65299efdee9d435e518b1a09b50f12b330e`  
		Last Modified: Fri, 02 Nov 2018 10:46:16 GMT  
		Size: 4.9 KB (4884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dec7aa78e5dae597722943bbc80d206135aac60bf25eaf766022118350d90b1`  
		Last Modified: Fri, 02 Nov 2018 10:46:16 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6ef10950166f671e74f1827f00b26a2f9ba7b06e20ef16e1c73d9f59f60c0a`  
		Last Modified: Fri, 02 Nov 2018 10:46:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e00ab20a08260539620cc6ceb0e619c19376a4c5a3d84b02c275329bf304b4`  
		Last Modified: Fri, 02 Nov 2018 10:46:15 GMT  
		Size: 22.5 KB (22490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3`

```console
$ docker pull cassandra@sha256:010656c24ec1fccc8166ed4363f487b56a771eb49d3bd3486e97de2026886692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3` - linux; amd64

```console
$ docker pull cassandra@sha256:55d754f455307a26d0d54f88c665790e5e392ad292b8f6799bdab4e91aee49e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132536633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a90a86e05ad15bde963493e7a276958e1f58c9ec3857cf8231e0e9d9cb9aacf3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:26:20 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 01:26:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:26:33 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Nov 2018 22:20:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Nov 2018 22:20:51 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Thu, 15 Nov 2018 22:20:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Nov 2018 22:24:43 GMT
ENV CASSANDRA_VERSION=3.11.3
# Thu, 15 Nov 2018 22:25:12 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Nov 2018 22:25:35 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 15 Nov 2018 22:25:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 15 Nov 2018 22:25:36 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Thu, 15 Nov 2018 22:25:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 15 Nov 2018 22:25:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Nov 2018 22:25:38 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 15 Nov 2018 22:25:38 GMT
VOLUME [/var/lib/cassandra]
# Thu, 15 Nov 2018 22:25:38 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 15 Nov 2018 22:25:38 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346e425d7fdcd26171d7dfa401654011040c87a01e7aeb08a83748e2cad52bab`  
		Last Modified: Tue, 16 Oct 2018 01:30:06 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dff060d6d3e2ae9f8476ba972d83e08f079a85685bd2da608739c717eecff4`  
		Last Modified: Tue, 16 Oct 2018 01:30:07 GMT  
		Size: 5.7 MB (5673746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae4e64ec3e1e3a76cd9d314a385f6a09ae7c8de341026769eadcbe663f2037ff`  
		Last Modified: Thu, 15 Nov 2018 22:26:57 GMT  
		Size: 957.3 KB (957317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e62567b3b30554fc13be2ab26ac0f72d968a0217a44245a5b3581464ac2d2e3`  
		Last Modified: Thu, 15 Nov 2018 22:26:57 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457fefc8301368215227475d39c3c6a7b6967b363fed02e9854ff12eb26f1d55`  
		Last Modified: Thu, 15 Nov 2018 22:30:19 GMT  
		Size: 103.4 MB (103363128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513ad3e18d76cd12a51188b8609ba79e1b706103c143c8260075a872acc2dbd9`  
		Last Modified: Thu, 15 Nov 2018 22:30:00 GMT  
		Size: 4.7 KB (4651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655c9155198c74b2590ae26f0424260b90750af95ffc253de8414d6996a2fbde`  
		Last Modified: Thu, 15 Nov 2018 22:30:01 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97127f493ab00ac6049c4904679e6f4eb3e5e9a90d99ffbe5e67d6c54f622e03`  
		Last Modified: Thu, 15 Nov 2018 22:30:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a9987c1ed80c24eab4813e09f6ea41a55a36bac4e0b20203fe8ada003a7004`  
		Last Modified: Thu, 15 Nov 2018 22:30:01 GMT  
		Size: 30.5 KB (30502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:c667d14dcf345a22415405a31709dfeb0d49d4efc7b812c650801228cd572b93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121788686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:312bb66001634ce7388b9268edbec94908f39c63630127a875c969cfb13ba7f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:30:58 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 12:31:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:31:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 12:32:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 12:32:20 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 16 Oct 2018 12:32:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 12:38:16 GMT
ENV CASSANDRA_VERSION=3.11.3
# Tue, 16 Oct 2018 12:40:51 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 16 Oct 2018 12:40:52 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 16 Oct 2018 12:40:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 16 Oct 2018 12:40:57 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:40:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 12:41:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 12:41:04 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 16 Oct 2018 12:41:05 GMT
VOLUME [/var/lib/cassandra]
# Tue, 16 Oct 2018 12:41:06 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 16 Oct 2018 12:41:07 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf303a61394af98a28a10e12b48ffe2110f8650405e1cd09a432c9a7d326295`  
		Last Modified: Tue, 16 Oct 2018 12:41:29 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34604110be2999a331df7a10cb8e17cfa188e432bc097fab53fd1eeb9ba4e0d9`  
		Last Modified: Tue, 16 Oct 2018 12:41:37 GMT  
		Size: 5.1 MB (5143952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a99d48291ebc681d7daf3ace68a3c2feed9db691092dc1f1335c3107b599fe9`  
		Last Modified: Tue, 16 Oct 2018 12:41:30 GMT  
		Size: 924.9 KB (924909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0e80dccd29631a4fc6d7c3d3db303f740e5dbce0df9e85a6c7f0735733936a`  
		Last Modified: Tue, 16 Oct 2018 12:41:32 GMT  
		Size: 18.2 KB (18225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304aeb33d306109e96ff9bbb07c33f3fe7e3859bd7ca2d102754885bbe5925c0`  
		Last Modified: Tue, 16 Oct 2018 12:43:18 GMT  
		Size: 95.3 MB (95331829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abed2c73accf0955fe03b09e241a0806e0b3b4d9bb25ecf26700786c614b63b4`  
		Last Modified: Tue, 16 Oct 2018 12:42:33 GMT  
		Size: 4.7 KB (4655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad09a2d8682651f960e966bf35a1721e334b090e1df3125b333ff6f52d1182ee`  
		Last Modified: Tue, 16 Oct 2018 12:42:34 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9682f4d31ef3f4b7655a99974b12b747cc1dd3c62be31d6f6948a18d530bae1c`  
		Last Modified: Tue, 16 Oct 2018 12:42:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaaad67d174bad5a3a693c6d6ec7adfddcdf143e03113180cd30593cf9e05a24`  
		Last Modified: Tue, 16 Oct 2018 12:42:33 GMT  
		Size: 30.5 KB (30500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3` - linux; 386

```console
$ docker pull cassandra@sha256:a746681b9de6be2d54ba0510199d548219f030386dd96e98ed34afd032c80e2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132606563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0273951f488a7ae55c856341968342ef0ecfd1b2b66edfdef5b3ef08068ed2e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:08:22 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 22:08:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:08:32 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 22:08:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 22:08:44 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 16 Oct 2018 22:08:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 22:09:36 GMT
ENV CASSANDRA_VERSION=3.11.3
# Tue, 16 Oct 2018 22:10:11 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 16 Oct 2018 22:10:11 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 16 Oct 2018 22:10:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 16 Oct 2018 22:10:12 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Tue, 16 Oct 2018 22:10:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 22:10:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 22:10:14 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 16 Oct 2018 22:10:14 GMT
VOLUME [/var/lib/cassandra]
# Tue, 16 Oct 2018 22:10:14 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 16 Oct 2018 22:10:15 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1d95d8d308ff55099777a809b4d62d1642ded41259c1c37d5604f293712a40`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8a67f3dcb44c81877bd940b950839796be75a1f7a4b8756d1b6fda89c386e5`  
		Last Modified: Tue, 16 Oct 2018 22:12:20 GMT  
		Size: 6.1 MB (6056823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0b7621c780c7fb88d0cce00be9b9893420481d190e484ecfec35bb5a8b9a22`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 937.0 KB (936971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f944e1b94da409cbdf6919953f9690b47530f7da284df45d7bee5b7b644a6a42`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab372dd82631c0c4a1d3954cc08a92c11b80f683b8e417a870abc818a678bcd`  
		Last Modified: Tue, 16 Oct 2018 22:13:22 GMT  
		Size: 102.4 MB (102429770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de99162dfc5658ff74c8471a5ec476b76bfc0d9398cfb496ad5c6ab9b5c17b9a`  
		Last Modified: Tue, 16 Oct 2018 22:12:59 GMT  
		Size: 4.7 KB (4651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c866d9d0b5f8b6e39079da0161100153f93476c10ba9ac6d8f7c9050c64278b`  
		Last Modified: Tue, 16 Oct 2018 22:12:59 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57dbce3114d3fafd7b0ea1e719075aa9ac966d6a5737c92902a77ba02fea03f1`  
		Last Modified: Tue, 16 Oct 2018 22:12:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:467ed153bdb450de1c5cfe9be824c7e7a26a8702ca84a4a1d13858c359a84b11`  
		Last Modified: Tue, 16 Oct 2018 22:12:59 GMT  
		Size: 30.5 KB (30501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3` - linux; ppc64le

```console
$ docker pull cassandra@sha256:f7804ac06df9bc8b02b360f66d6ff39c0a25c505d70613c5102ed7daf8c6e308
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.5 MB (125516077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:516f5a0d4a0ae33c83ee98631aafcd6e09eeaefa09e7376a4181f3ec707b0aa0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:05:04 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 10:05:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:05:39 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 10:06:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 10:06:09 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 16 Oct 2018 10:06:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 10:11:36 GMT
ENV CASSANDRA_VERSION=3.11.3
# Tue, 16 Oct 2018 10:14:25 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 16 Oct 2018 10:14:27 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 16 Oct 2018 10:14:31 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 16 Oct 2018 10:14:33 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Tue, 16 Oct 2018 10:14:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 10:14:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 10:14:41 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 16 Oct 2018 10:14:42 GMT
VOLUME [/var/lib/cassandra]
# Tue, 16 Oct 2018 10:14:42 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 16 Oct 2018 10:14:45 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f7cca661582cdacaea568b133466bb13dff6411dd38047d00c950a392ece614`  
		Last Modified: Tue, 16 Oct 2018 10:16:35 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2ca19b45a35bc44aa46bd88732a2b960f2916ba429c212f7961045286e3a98`  
		Last Modified: Tue, 16 Oct 2018 10:16:37 GMT  
		Size: 5.5 MB (5537768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9decce5839f08d5c15e7726c9090ef2b54d9195f552f89e7ab222c867b1145`  
		Last Modified: Tue, 16 Oct 2018 10:16:34 GMT  
		Size: 925.8 KB (925820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf4c492f6dbb6f35c6d16c04aa5e07ccdfeea8406901d5d4df0fd392b9ed199`  
		Last Modified: Tue, 16 Oct 2018 10:16:34 GMT  
		Size: 18.2 KB (18222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e95bd6db73597731d3c87c5f11bc29f3398f7442598753eba04bb200137d22`  
		Last Modified: Tue, 16 Oct 2018 10:17:36 GMT  
		Size: 96.3 MB (96251741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3de7f3a9354762cfc9e40b6b79990d65256ffc57a639ad21cd2dbeece96688`  
		Last Modified: Tue, 16 Oct 2018 10:17:17 GMT  
		Size: 8.4 KB (8412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0094ac1a4a75bd004aa807ab69609592527389b9694357a71109d61cc0487cd8`  
		Last Modified: Tue, 16 Oct 2018 10:17:16 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed6879673c6c2d22e6492afad6292354ff5a72a63515a9bd8f5885aeb10beba`  
		Last Modified: Tue, 16 Oct 2018 10:17:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8088f3343d54f998516d70615062ce6557b0874a2a23c117912e8660ead24c`  
		Last Modified: Tue, 16 Oct 2018 10:17:16 GMT  
		Size: 30.5 KB (30504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0`

```console
$ docker pull cassandra@sha256:25bf7e5716f949b227c9c80ad225c04358311732d0d1c08086c42153309e8232
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3.0` - linux; amd64

```console
$ docker pull cassandra@sha256:b5be09b26f14b6b065d65e74f892b7760a742f45522cec8db0e1f1107d96b8a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127721364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:202879362290210f3ac89f217061debc7d2cdb3efbabfa2b267c77dcba407199`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:26:20 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 01:26:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:26:33 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Nov 2018 22:20:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Nov 2018 22:20:51 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Thu, 15 Nov 2018 22:20:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Nov 2018 22:23:52 GMT
ENV CASSANDRA_VERSION=3.0.17
# Thu, 15 Nov 2018 22:24:18 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Nov 2018 22:24:19 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 15 Nov 2018 22:24:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 15 Nov 2018 22:24:20 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Thu, 15 Nov 2018 22:24:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 15 Nov 2018 22:24:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Nov 2018 22:24:22 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 15 Nov 2018 22:24:22 GMT
VOLUME [/var/lib/cassandra]
# Thu, 15 Nov 2018 22:24:22 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 15 Nov 2018 22:24:22 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346e425d7fdcd26171d7dfa401654011040c87a01e7aeb08a83748e2cad52bab`  
		Last Modified: Tue, 16 Oct 2018 01:30:06 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dff060d6d3e2ae9f8476ba972d83e08f079a85685bd2da608739c717eecff4`  
		Last Modified: Tue, 16 Oct 2018 01:30:07 GMT  
		Size: 5.7 MB (5673746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae4e64ec3e1e3a76cd9d314a385f6a09ae7c8de341026769eadcbe663f2037ff`  
		Last Modified: Thu, 15 Nov 2018 22:26:57 GMT  
		Size: 957.3 KB (957317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e62567b3b30554fc13be2ab26ac0f72d968a0217a44245a5b3581464ac2d2e3`  
		Last Modified: Thu, 15 Nov 2018 22:26:57 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5910071f8b4c16e102ed7ea769349f157a67160c64faae6f594626624be0260`  
		Last Modified: Thu, 15 Nov 2018 22:29:31 GMT  
		Size: 98.6 MB (98552218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fafb61a70285afc26e1e777655d8c4d2a30e2a9d739f6cdc686b58b3c4073003`  
		Last Modified: Thu, 15 Nov 2018 22:29:13 GMT  
		Size: 4.9 KB (4945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe84856963befe8042d530b3b759a650df5e119adc149f10124e1b2ade3bf289`  
		Last Modified: Thu, 15 Nov 2018 22:29:13 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a695de606a3fcd502e9cadbecac03b3572dbcd668909a1ffc899462f00d31c0c`  
		Last Modified: Thu, 15 Nov 2018 22:29:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f2da27635969730ebabe943f763f7d2f2288697220d0e863aa3ff87dbc3efe`  
		Last Modified: Thu, 15 Nov 2018 22:29:13 GMT  
		Size: 25.8 KB (25849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:d61b9365168fba5624d7300d2af5b36d7e4772c3f2d0d056eff35caa172f1c66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116977525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5691cc667d19f7d7f3e9bf4fd9c99e45815ef63b0e9011b57baa0a42a18871de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:30:58 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 12:31:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:31:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 12:32:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 12:32:20 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 16 Oct 2018 12:32:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 12:32:25 GMT
ENV CASSANDRA_VERSION=3.0.17
# Tue, 16 Oct 2018 12:37:43 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 16 Oct 2018 12:37:44 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 16 Oct 2018 12:37:46 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 16 Oct 2018 12:37:46 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:37:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 12:37:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 12:37:57 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 16 Oct 2018 12:37:59 GMT
VOLUME [/var/lib/cassandra]
# Tue, 16 Oct 2018 12:38:00 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 16 Oct 2018 12:38:02 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf303a61394af98a28a10e12b48ffe2110f8650405e1cd09a432c9a7d326295`  
		Last Modified: Tue, 16 Oct 2018 12:41:29 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34604110be2999a331df7a10cb8e17cfa188e432bc097fab53fd1eeb9ba4e0d9`  
		Last Modified: Tue, 16 Oct 2018 12:41:37 GMT  
		Size: 5.1 MB (5143952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a99d48291ebc681d7daf3ace68a3c2feed9db691092dc1f1335c3107b599fe9`  
		Last Modified: Tue, 16 Oct 2018 12:41:30 GMT  
		Size: 924.9 KB (924909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0e80dccd29631a4fc6d7c3d3db303f740e5dbce0df9e85a6c7f0735733936a`  
		Last Modified: Tue, 16 Oct 2018 12:41:32 GMT  
		Size: 18.2 KB (18225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b678aaf7f835a5ae12ed9bbe19c3c05e57897b9625055f4b845fd585c11095d`  
		Last Modified: Tue, 16 Oct 2018 12:42:08 GMT  
		Size: 90.5 MB (90525023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4bd8ce09252095675cfd66d08c911f7488af3ccea807df155d3ca22cf6943f`  
		Last Modified: Tue, 16 Oct 2018 12:41:27 GMT  
		Size: 4.9 KB (4948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260417b5ccd28f2dc107b0a73f17c55ed02b748bb45e7bd3f3632400465db75c`  
		Last Modified: Tue, 16 Oct 2018 12:41:27 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7008a9c0371645fa309af5c02286693a97f5c5c7d935efd86597fe5f1f42202`  
		Last Modified: Tue, 16 Oct 2018 12:41:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8db232c9eb412ed45d9f142d238c8215c783e94ab29cb8035de946060440112`  
		Last Modified: Tue, 16 Oct 2018 12:41:27 GMT  
		Size: 25.9 KB (25851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0` - linux; 386

```console
$ docker pull cassandra@sha256:e3cb7d8eb70db68bf4b70647ab280a660701ebc08c1e62737fb4c7da904639e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127806569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5821d5cebf69335f451d87e871baf287058e2db2cb6249c768ae9bd8cf139afd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:08:22 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 22:08:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:08:32 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 22:08:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 22:08:44 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 16 Oct 2018 22:08:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 22:08:47 GMT
ENV CASSANDRA_VERSION=3.0.17
# Tue, 16 Oct 2018 22:09:21 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 16 Oct 2018 22:09:21 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 16 Oct 2018 22:09:22 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 16 Oct 2018 22:09:22 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Tue, 16 Oct 2018 22:09:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 22:09:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 22:09:24 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 16 Oct 2018 22:09:24 GMT
VOLUME [/var/lib/cassandra]
# Tue, 16 Oct 2018 22:09:24 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 16 Oct 2018 22:09:24 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1d95d8d308ff55099777a809b4d62d1642ded41259c1c37d5604f293712a40`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8a67f3dcb44c81877bd940b950839796be75a1f7a4b8756d1b6fda89c386e5`  
		Last Modified: Tue, 16 Oct 2018 22:12:20 GMT  
		Size: 6.1 MB (6056823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0b7621c780c7fb88d0cce00be9b9893420481d190e484ecfec35bb5a8b9a22`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 937.0 KB (936971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f944e1b94da409cbdf6919953f9690b47530f7da284df45d7bee5b7b644a6a42`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c702dcc7fbfd5bd95c05cd7486f0d9b2a3f6e7a13057fe083b5aa069760751`  
		Last Modified: Tue, 16 Oct 2018 22:12:38 GMT  
		Size: 97.6 MB (97634130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7a8c1bda567bc5941b9e47bc31e34a25d98398df9375e365d386d88827bdc2`  
		Last Modified: Tue, 16 Oct 2018 22:12:17 GMT  
		Size: 4.9 KB (4944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da22ff32d1a6699b960f5f97b2e2a2834983044555b4976cf8976ae1755ed52`  
		Last Modified: Tue, 16 Oct 2018 22:12:16 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44b8099095f18974eb18b14f9c54df9a980d023efd68f62a3ddaa7de5b4d1eb`  
		Last Modified: Tue, 16 Oct 2018 22:12:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5eaf7bcc151e51a918f48addeed7bb186a007cf010fc0f0c75376888b8b25c`  
		Last Modified: Tue, 16 Oct 2018 22:12:17 GMT  
		Size: 25.9 KB (25851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0` - linux; ppc64le

```console
$ docker pull cassandra@sha256:cf1bc43a0ec4760f984ac1d779cf9917e8725eef53488fa5915d8dc29c72ae91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120702111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02f37910147ee7f56e33d6dc937b2354ca046c04918b3310277dd6a1a15a3864`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:05:04 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 10:05:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:05:39 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 10:06:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 10:06:09 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 16 Oct 2018 10:06:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 10:06:15 GMT
ENV CASSANDRA_VERSION=3.0.17
# Tue, 16 Oct 2018 10:09:29 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 16 Oct 2018 10:09:30 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 16 Oct 2018 10:09:33 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 16 Oct 2018 10:09:34 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Tue, 16 Oct 2018 10:09:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 10:09:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 10:09:48 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 16 Oct 2018 10:09:50 GMT
VOLUME [/var/lib/cassandra]
# Tue, 16 Oct 2018 10:09:51 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 16 Oct 2018 10:09:51 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f7cca661582cdacaea568b133466bb13dff6411dd38047d00c950a392ece614`  
		Last Modified: Tue, 16 Oct 2018 10:16:35 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2ca19b45a35bc44aa46bd88732a2b960f2916ba429c212f7961045286e3a98`  
		Last Modified: Tue, 16 Oct 2018 10:16:37 GMT  
		Size: 5.5 MB (5537768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9decce5839f08d5c15e7726c9090ef2b54d9195f552f89e7ab222c867b1145`  
		Last Modified: Tue, 16 Oct 2018 10:16:34 GMT  
		Size: 925.8 KB (925820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf4c492f6dbb6f35c6d16c04aa5e07ccdfeea8406901d5d4df0fd392b9ed199`  
		Last Modified: Tue, 16 Oct 2018 10:16:34 GMT  
		Size: 18.2 KB (18222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a93007c9eb3c847dc8225f425c64aaba0a1a212a8cd76cc81d5451177e215a8`  
		Last Modified: Tue, 16 Oct 2018 10:16:59 GMT  
		Size: 91.4 MB (91445887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c49143f6b4e4efec4974a396355c5ce55aacfe34bd6adcd986d55cc9ec1a00d`  
		Last Modified: Tue, 16 Oct 2018 10:16:31 GMT  
		Size: 4.9 KB (4947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c1cf9e6b5da76f27b208f22eda136daa7ba62fa7a847a9d7fe47a6669d314aa`  
		Last Modified: Tue, 16 Oct 2018 10:16:31 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47565c206d27d8c058af57bc9967fb8e18549fb916ec4924227957d5b56ab10b`  
		Last Modified: Tue, 16 Oct 2018 10:16:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1000a2dcd97a849ac083f4d5d053ce5b70e1f8f7d8f65e4d0d8efa0108d1aab4`  
		Last Modified: Tue, 16 Oct 2018 10:16:32 GMT  
		Size: 25.9 KB (25854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0.17`

```console
$ docker pull cassandra@sha256:25bf7e5716f949b227c9c80ad225c04358311732d0d1c08086c42153309e8232
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3.0.17` - linux; amd64

```console
$ docker pull cassandra@sha256:b5be09b26f14b6b065d65e74f892b7760a742f45522cec8db0e1f1107d96b8a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127721364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:202879362290210f3ac89f217061debc7d2cdb3efbabfa2b267c77dcba407199`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:26:20 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 01:26:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:26:33 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Nov 2018 22:20:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Nov 2018 22:20:51 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Thu, 15 Nov 2018 22:20:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Nov 2018 22:23:52 GMT
ENV CASSANDRA_VERSION=3.0.17
# Thu, 15 Nov 2018 22:24:18 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Nov 2018 22:24:19 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 15 Nov 2018 22:24:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 15 Nov 2018 22:24:20 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Thu, 15 Nov 2018 22:24:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 15 Nov 2018 22:24:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Nov 2018 22:24:22 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 15 Nov 2018 22:24:22 GMT
VOLUME [/var/lib/cassandra]
# Thu, 15 Nov 2018 22:24:22 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 15 Nov 2018 22:24:22 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346e425d7fdcd26171d7dfa401654011040c87a01e7aeb08a83748e2cad52bab`  
		Last Modified: Tue, 16 Oct 2018 01:30:06 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dff060d6d3e2ae9f8476ba972d83e08f079a85685bd2da608739c717eecff4`  
		Last Modified: Tue, 16 Oct 2018 01:30:07 GMT  
		Size: 5.7 MB (5673746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae4e64ec3e1e3a76cd9d314a385f6a09ae7c8de341026769eadcbe663f2037ff`  
		Last Modified: Thu, 15 Nov 2018 22:26:57 GMT  
		Size: 957.3 KB (957317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e62567b3b30554fc13be2ab26ac0f72d968a0217a44245a5b3581464ac2d2e3`  
		Last Modified: Thu, 15 Nov 2018 22:26:57 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5910071f8b4c16e102ed7ea769349f157a67160c64faae6f594626624be0260`  
		Last Modified: Thu, 15 Nov 2018 22:29:31 GMT  
		Size: 98.6 MB (98552218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fafb61a70285afc26e1e777655d8c4d2a30e2a9d739f6cdc686b58b3c4073003`  
		Last Modified: Thu, 15 Nov 2018 22:29:13 GMT  
		Size: 4.9 KB (4945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe84856963befe8042d530b3b759a650df5e119adc149f10124e1b2ade3bf289`  
		Last Modified: Thu, 15 Nov 2018 22:29:13 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a695de606a3fcd502e9cadbecac03b3572dbcd668909a1ffc899462f00d31c0c`  
		Last Modified: Thu, 15 Nov 2018 22:29:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f2da27635969730ebabe943f763f7d2f2288697220d0e863aa3ff87dbc3efe`  
		Last Modified: Thu, 15 Nov 2018 22:29:13 GMT  
		Size: 25.8 KB (25849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0.17` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:d61b9365168fba5624d7300d2af5b36d7e4772c3f2d0d056eff35caa172f1c66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116977525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5691cc667d19f7d7f3e9bf4fd9c99e45815ef63b0e9011b57baa0a42a18871de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:30:58 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 12:31:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:31:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 12:32:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 12:32:20 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 16 Oct 2018 12:32:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 12:32:25 GMT
ENV CASSANDRA_VERSION=3.0.17
# Tue, 16 Oct 2018 12:37:43 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 16 Oct 2018 12:37:44 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 16 Oct 2018 12:37:46 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 16 Oct 2018 12:37:46 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:37:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 12:37:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 12:37:57 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 16 Oct 2018 12:37:59 GMT
VOLUME [/var/lib/cassandra]
# Tue, 16 Oct 2018 12:38:00 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 16 Oct 2018 12:38:02 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf303a61394af98a28a10e12b48ffe2110f8650405e1cd09a432c9a7d326295`  
		Last Modified: Tue, 16 Oct 2018 12:41:29 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34604110be2999a331df7a10cb8e17cfa188e432bc097fab53fd1eeb9ba4e0d9`  
		Last Modified: Tue, 16 Oct 2018 12:41:37 GMT  
		Size: 5.1 MB (5143952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a99d48291ebc681d7daf3ace68a3c2feed9db691092dc1f1335c3107b599fe9`  
		Last Modified: Tue, 16 Oct 2018 12:41:30 GMT  
		Size: 924.9 KB (924909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0e80dccd29631a4fc6d7c3d3db303f740e5dbce0df9e85a6c7f0735733936a`  
		Last Modified: Tue, 16 Oct 2018 12:41:32 GMT  
		Size: 18.2 KB (18225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b678aaf7f835a5ae12ed9bbe19c3c05e57897b9625055f4b845fd585c11095d`  
		Last Modified: Tue, 16 Oct 2018 12:42:08 GMT  
		Size: 90.5 MB (90525023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4bd8ce09252095675cfd66d08c911f7488af3ccea807df155d3ca22cf6943f`  
		Last Modified: Tue, 16 Oct 2018 12:41:27 GMT  
		Size: 4.9 KB (4948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260417b5ccd28f2dc107b0a73f17c55ed02b748bb45e7bd3f3632400465db75c`  
		Last Modified: Tue, 16 Oct 2018 12:41:27 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7008a9c0371645fa309af5c02286693a97f5c5c7d935efd86597fe5f1f42202`  
		Last Modified: Tue, 16 Oct 2018 12:41:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8db232c9eb412ed45d9f142d238c8215c783e94ab29cb8035de946060440112`  
		Last Modified: Tue, 16 Oct 2018 12:41:27 GMT  
		Size: 25.9 KB (25851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0.17` - linux; 386

```console
$ docker pull cassandra@sha256:e3cb7d8eb70db68bf4b70647ab280a660701ebc08c1e62737fb4c7da904639e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127806569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5821d5cebf69335f451d87e871baf287058e2db2cb6249c768ae9bd8cf139afd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:08:22 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 22:08:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:08:32 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 22:08:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 22:08:44 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 16 Oct 2018 22:08:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 22:08:47 GMT
ENV CASSANDRA_VERSION=3.0.17
# Tue, 16 Oct 2018 22:09:21 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 16 Oct 2018 22:09:21 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 16 Oct 2018 22:09:22 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 16 Oct 2018 22:09:22 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Tue, 16 Oct 2018 22:09:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 22:09:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 22:09:24 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 16 Oct 2018 22:09:24 GMT
VOLUME [/var/lib/cassandra]
# Tue, 16 Oct 2018 22:09:24 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 16 Oct 2018 22:09:24 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1d95d8d308ff55099777a809b4d62d1642ded41259c1c37d5604f293712a40`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8a67f3dcb44c81877bd940b950839796be75a1f7a4b8756d1b6fda89c386e5`  
		Last Modified: Tue, 16 Oct 2018 22:12:20 GMT  
		Size: 6.1 MB (6056823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0b7621c780c7fb88d0cce00be9b9893420481d190e484ecfec35bb5a8b9a22`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 937.0 KB (936971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f944e1b94da409cbdf6919953f9690b47530f7da284df45d7bee5b7b644a6a42`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c702dcc7fbfd5bd95c05cd7486f0d9b2a3f6e7a13057fe083b5aa069760751`  
		Last Modified: Tue, 16 Oct 2018 22:12:38 GMT  
		Size: 97.6 MB (97634130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7a8c1bda567bc5941b9e47bc31e34a25d98398df9375e365d386d88827bdc2`  
		Last Modified: Tue, 16 Oct 2018 22:12:17 GMT  
		Size: 4.9 KB (4944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da22ff32d1a6699b960f5f97b2e2a2834983044555b4976cf8976ae1755ed52`  
		Last Modified: Tue, 16 Oct 2018 22:12:16 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44b8099095f18974eb18b14f9c54df9a980d023efd68f62a3ddaa7de5b4d1eb`  
		Last Modified: Tue, 16 Oct 2018 22:12:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5eaf7bcc151e51a918f48addeed7bb186a007cf010fc0f0c75376888b8b25c`  
		Last Modified: Tue, 16 Oct 2018 22:12:17 GMT  
		Size: 25.9 KB (25851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0.17` - linux; ppc64le

```console
$ docker pull cassandra@sha256:cf1bc43a0ec4760f984ac1d779cf9917e8725eef53488fa5915d8dc29c72ae91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120702111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02f37910147ee7f56e33d6dc937b2354ca046c04918b3310277dd6a1a15a3864`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:05:04 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 10:05:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:05:39 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 10:06:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 10:06:09 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 16 Oct 2018 10:06:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 10:06:15 GMT
ENV CASSANDRA_VERSION=3.0.17
# Tue, 16 Oct 2018 10:09:29 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 16 Oct 2018 10:09:30 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 16 Oct 2018 10:09:33 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 16 Oct 2018 10:09:34 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Tue, 16 Oct 2018 10:09:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 10:09:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 10:09:48 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 16 Oct 2018 10:09:50 GMT
VOLUME [/var/lib/cassandra]
# Tue, 16 Oct 2018 10:09:51 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 16 Oct 2018 10:09:51 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f7cca661582cdacaea568b133466bb13dff6411dd38047d00c950a392ece614`  
		Last Modified: Tue, 16 Oct 2018 10:16:35 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2ca19b45a35bc44aa46bd88732a2b960f2916ba429c212f7961045286e3a98`  
		Last Modified: Tue, 16 Oct 2018 10:16:37 GMT  
		Size: 5.5 MB (5537768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9decce5839f08d5c15e7726c9090ef2b54d9195f552f89e7ab222c867b1145`  
		Last Modified: Tue, 16 Oct 2018 10:16:34 GMT  
		Size: 925.8 KB (925820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf4c492f6dbb6f35c6d16c04aa5e07ccdfeea8406901d5d4df0fd392b9ed199`  
		Last Modified: Tue, 16 Oct 2018 10:16:34 GMT  
		Size: 18.2 KB (18222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a93007c9eb3c847dc8225f425c64aaba0a1a212a8cd76cc81d5451177e215a8`  
		Last Modified: Tue, 16 Oct 2018 10:16:59 GMT  
		Size: 91.4 MB (91445887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c49143f6b4e4efec4974a396355c5ce55aacfe34bd6adcd986d55cc9ec1a00d`  
		Last Modified: Tue, 16 Oct 2018 10:16:31 GMT  
		Size: 4.9 KB (4947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c1cf9e6b5da76f27b208f22eda136daa7ba62fa7a847a9d7fe47a6669d314aa`  
		Last Modified: Tue, 16 Oct 2018 10:16:31 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47565c206d27d8c058af57bc9967fb8e18549fb916ec4924227957d5b56ab10b`  
		Last Modified: Tue, 16 Oct 2018 10:16:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1000a2dcd97a849ac083f4d5d053ce5b70e1f8f7d8f65e4d0d8efa0108d1aab4`  
		Last Modified: Tue, 16 Oct 2018 10:16:32 GMT  
		Size: 25.9 KB (25854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.11`

```console
$ docker pull cassandra@sha256:010656c24ec1fccc8166ed4363f487b56a771eb49d3bd3486e97de2026886692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3.11` - linux; amd64

```console
$ docker pull cassandra@sha256:55d754f455307a26d0d54f88c665790e5e392ad292b8f6799bdab4e91aee49e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132536633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a90a86e05ad15bde963493e7a276958e1f58c9ec3857cf8231e0e9d9cb9aacf3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:26:20 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 01:26:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:26:33 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Nov 2018 22:20:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Nov 2018 22:20:51 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Thu, 15 Nov 2018 22:20:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Nov 2018 22:24:43 GMT
ENV CASSANDRA_VERSION=3.11.3
# Thu, 15 Nov 2018 22:25:12 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Nov 2018 22:25:35 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 15 Nov 2018 22:25:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 15 Nov 2018 22:25:36 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Thu, 15 Nov 2018 22:25:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 15 Nov 2018 22:25:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Nov 2018 22:25:38 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 15 Nov 2018 22:25:38 GMT
VOLUME [/var/lib/cassandra]
# Thu, 15 Nov 2018 22:25:38 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 15 Nov 2018 22:25:38 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346e425d7fdcd26171d7dfa401654011040c87a01e7aeb08a83748e2cad52bab`  
		Last Modified: Tue, 16 Oct 2018 01:30:06 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dff060d6d3e2ae9f8476ba972d83e08f079a85685bd2da608739c717eecff4`  
		Last Modified: Tue, 16 Oct 2018 01:30:07 GMT  
		Size: 5.7 MB (5673746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae4e64ec3e1e3a76cd9d314a385f6a09ae7c8de341026769eadcbe663f2037ff`  
		Last Modified: Thu, 15 Nov 2018 22:26:57 GMT  
		Size: 957.3 KB (957317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e62567b3b30554fc13be2ab26ac0f72d968a0217a44245a5b3581464ac2d2e3`  
		Last Modified: Thu, 15 Nov 2018 22:26:57 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457fefc8301368215227475d39c3c6a7b6967b363fed02e9854ff12eb26f1d55`  
		Last Modified: Thu, 15 Nov 2018 22:30:19 GMT  
		Size: 103.4 MB (103363128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513ad3e18d76cd12a51188b8609ba79e1b706103c143c8260075a872acc2dbd9`  
		Last Modified: Thu, 15 Nov 2018 22:30:00 GMT  
		Size: 4.7 KB (4651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655c9155198c74b2590ae26f0424260b90750af95ffc253de8414d6996a2fbde`  
		Last Modified: Thu, 15 Nov 2018 22:30:01 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97127f493ab00ac6049c4904679e6f4eb3e5e9a90d99ffbe5e67d6c54f622e03`  
		Last Modified: Thu, 15 Nov 2018 22:30:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a9987c1ed80c24eab4813e09f6ea41a55a36bac4e0b20203fe8ada003a7004`  
		Last Modified: Thu, 15 Nov 2018 22:30:01 GMT  
		Size: 30.5 KB (30502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:c667d14dcf345a22415405a31709dfeb0d49d4efc7b812c650801228cd572b93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121788686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:312bb66001634ce7388b9268edbec94908f39c63630127a875c969cfb13ba7f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:30:58 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 12:31:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:31:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 12:32:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 12:32:20 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 16 Oct 2018 12:32:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 12:38:16 GMT
ENV CASSANDRA_VERSION=3.11.3
# Tue, 16 Oct 2018 12:40:51 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 16 Oct 2018 12:40:52 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 16 Oct 2018 12:40:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 16 Oct 2018 12:40:57 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:40:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 12:41:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 12:41:04 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 16 Oct 2018 12:41:05 GMT
VOLUME [/var/lib/cassandra]
# Tue, 16 Oct 2018 12:41:06 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 16 Oct 2018 12:41:07 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf303a61394af98a28a10e12b48ffe2110f8650405e1cd09a432c9a7d326295`  
		Last Modified: Tue, 16 Oct 2018 12:41:29 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34604110be2999a331df7a10cb8e17cfa188e432bc097fab53fd1eeb9ba4e0d9`  
		Last Modified: Tue, 16 Oct 2018 12:41:37 GMT  
		Size: 5.1 MB (5143952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a99d48291ebc681d7daf3ace68a3c2feed9db691092dc1f1335c3107b599fe9`  
		Last Modified: Tue, 16 Oct 2018 12:41:30 GMT  
		Size: 924.9 KB (924909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0e80dccd29631a4fc6d7c3d3db303f740e5dbce0df9e85a6c7f0735733936a`  
		Last Modified: Tue, 16 Oct 2018 12:41:32 GMT  
		Size: 18.2 KB (18225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304aeb33d306109e96ff9bbb07c33f3fe7e3859bd7ca2d102754885bbe5925c0`  
		Last Modified: Tue, 16 Oct 2018 12:43:18 GMT  
		Size: 95.3 MB (95331829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abed2c73accf0955fe03b09e241a0806e0b3b4d9bb25ecf26700786c614b63b4`  
		Last Modified: Tue, 16 Oct 2018 12:42:33 GMT  
		Size: 4.7 KB (4655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad09a2d8682651f960e966bf35a1721e334b090e1df3125b333ff6f52d1182ee`  
		Last Modified: Tue, 16 Oct 2018 12:42:34 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9682f4d31ef3f4b7655a99974b12b747cc1dd3c62be31d6f6948a18d530bae1c`  
		Last Modified: Tue, 16 Oct 2018 12:42:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaaad67d174bad5a3a693c6d6ec7adfddcdf143e03113180cd30593cf9e05a24`  
		Last Modified: Tue, 16 Oct 2018 12:42:33 GMT  
		Size: 30.5 KB (30500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11` - linux; 386

```console
$ docker pull cassandra@sha256:a746681b9de6be2d54ba0510199d548219f030386dd96e98ed34afd032c80e2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132606563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0273951f488a7ae55c856341968342ef0ecfd1b2b66edfdef5b3ef08068ed2e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:08:22 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 22:08:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:08:32 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 22:08:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 22:08:44 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 16 Oct 2018 22:08:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 22:09:36 GMT
ENV CASSANDRA_VERSION=3.11.3
# Tue, 16 Oct 2018 22:10:11 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 16 Oct 2018 22:10:11 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 16 Oct 2018 22:10:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 16 Oct 2018 22:10:12 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Tue, 16 Oct 2018 22:10:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 22:10:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 22:10:14 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 16 Oct 2018 22:10:14 GMT
VOLUME [/var/lib/cassandra]
# Tue, 16 Oct 2018 22:10:14 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 16 Oct 2018 22:10:15 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1d95d8d308ff55099777a809b4d62d1642ded41259c1c37d5604f293712a40`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8a67f3dcb44c81877bd940b950839796be75a1f7a4b8756d1b6fda89c386e5`  
		Last Modified: Tue, 16 Oct 2018 22:12:20 GMT  
		Size: 6.1 MB (6056823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0b7621c780c7fb88d0cce00be9b9893420481d190e484ecfec35bb5a8b9a22`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 937.0 KB (936971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f944e1b94da409cbdf6919953f9690b47530f7da284df45d7bee5b7b644a6a42`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab372dd82631c0c4a1d3954cc08a92c11b80f683b8e417a870abc818a678bcd`  
		Last Modified: Tue, 16 Oct 2018 22:13:22 GMT  
		Size: 102.4 MB (102429770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de99162dfc5658ff74c8471a5ec476b76bfc0d9398cfb496ad5c6ab9b5c17b9a`  
		Last Modified: Tue, 16 Oct 2018 22:12:59 GMT  
		Size: 4.7 KB (4651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c866d9d0b5f8b6e39079da0161100153f93476c10ba9ac6d8f7c9050c64278b`  
		Last Modified: Tue, 16 Oct 2018 22:12:59 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57dbce3114d3fafd7b0ea1e719075aa9ac966d6a5737c92902a77ba02fea03f1`  
		Last Modified: Tue, 16 Oct 2018 22:12:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:467ed153bdb450de1c5cfe9be824c7e7a26a8702ca84a4a1d13858c359a84b11`  
		Last Modified: Tue, 16 Oct 2018 22:12:59 GMT  
		Size: 30.5 KB (30501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11` - linux; ppc64le

```console
$ docker pull cassandra@sha256:f7804ac06df9bc8b02b360f66d6ff39c0a25c505d70613c5102ed7daf8c6e308
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.5 MB (125516077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:516f5a0d4a0ae33c83ee98631aafcd6e09eeaefa09e7376a4181f3ec707b0aa0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:05:04 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 10:05:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:05:39 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 10:06:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 10:06:09 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 16 Oct 2018 10:06:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 10:11:36 GMT
ENV CASSANDRA_VERSION=3.11.3
# Tue, 16 Oct 2018 10:14:25 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 16 Oct 2018 10:14:27 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 16 Oct 2018 10:14:31 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 16 Oct 2018 10:14:33 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Tue, 16 Oct 2018 10:14:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 10:14:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 10:14:41 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 16 Oct 2018 10:14:42 GMT
VOLUME [/var/lib/cassandra]
# Tue, 16 Oct 2018 10:14:42 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 16 Oct 2018 10:14:45 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f7cca661582cdacaea568b133466bb13dff6411dd38047d00c950a392ece614`  
		Last Modified: Tue, 16 Oct 2018 10:16:35 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2ca19b45a35bc44aa46bd88732a2b960f2916ba429c212f7961045286e3a98`  
		Last Modified: Tue, 16 Oct 2018 10:16:37 GMT  
		Size: 5.5 MB (5537768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9decce5839f08d5c15e7726c9090ef2b54d9195f552f89e7ab222c867b1145`  
		Last Modified: Tue, 16 Oct 2018 10:16:34 GMT  
		Size: 925.8 KB (925820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf4c492f6dbb6f35c6d16c04aa5e07ccdfeea8406901d5d4df0fd392b9ed199`  
		Last Modified: Tue, 16 Oct 2018 10:16:34 GMT  
		Size: 18.2 KB (18222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e95bd6db73597731d3c87c5f11bc29f3398f7442598753eba04bb200137d22`  
		Last Modified: Tue, 16 Oct 2018 10:17:36 GMT  
		Size: 96.3 MB (96251741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3de7f3a9354762cfc9e40b6b79990d65256ffc57a639ad21cd2dbeece96688`  
		Last Modified: Tue, 16 Oct 2018 10:17:17 GMT  
		Size: 8.4 KB (8412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0094ac1a4a75bd004aa807ab69609592527389b9694357a71109d61cc0487cd8`  
		Last Modified: Tue, 16 Oct 2018 10:17:16 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed6879673c6c2d22e6492afad6292354ff5a72a63515a9bd8f5885aeb10beba`  
		Last Modified: Tue, 16 Oct 2018 10:17:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8088f3343d54f998516d70615062ce6557b0874a2a23c117912e8660ead24c`  
		Last Modified: Tue, 16 Oct 2018 10:17:16 GMT  
		Size: 30.5 KB (30504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.11.3`

```console
$ docker pull cassandra@sha256:010656c24ec1fccc8166ed4363f487b56a771eb49d3bd3486e97de2026886692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3.11.3` - linux; amd64

```console
$ docker pull cassandra@sha256:55d754f455307a26d0d54f88c665790e5e392ad292b8f6799bdab4e91aee49e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132536633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a90a86e05ad15bde963493e7a276958e1f58c9ec3857cf8231e0e9d9cb9aacf3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:26:20 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 01:26:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:26:33 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Nov 2018 22:20:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Nov 2018 22:20:51 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Thu, 15 Nov 2018 22:20:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Nov 2018 22:24:43 GMT
ENV CASSANDRA_VERSION=3.11.3
# Thu, 15 Nov 2018 22:25:12 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Nov 2018 22:25:35 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 15 Nov 2018 22:25:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 15 Nov 2018 22:25:36 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Thu, 15 Nov 2018 22:25:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 15 Nov 2018 22:25:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Nov 2018 22:25:38 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 15 Nov 2018 22:25:38 GMT
VOLUME [/var/lib/cassandra]
# Thu, 15 Nov 2018 22:25:38 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 15 Nov 2018 22:25:38 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346e425d7fdcd26171d7dfa401654011040c87a01e7aeb08a83748e2cad52bab`  
		Last Modified: Tue, 16 Oct 2018 01:30:06 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dff060d6d3e2ae9f8476ba972d83e08f079a85685bd2da608739c717eecff4`  
		Last Modified: Tue, 16 Oct 2018 01:30:07 GMT  
		Size: 5.7 MB (5673746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae4e64ec3e1e3a76cd9d314a385f6a09ae7c8de341026769eadcbe663f2037ff`  
		Last Modified: Thu, 15 Nov 2018 22:26:57 GMT  
		Size: 957.3 KB (957317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e62567b3b30554fc13be2ab26ac0f72d968a0217a44245a5b3581464ac2d2e3`  
		Last Modified: Thu, 15 Nov 2018 22:26:57 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457fefc8301368215227475d39c3c6a7b6967b363fed02e9854ff12eb26f1d55`  
		Last Modified: Thu, 15 Nov 2018 22:30:19 GMT  
		Size: 103.4 MB (103363128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513ad3e18d76cd12a51188b8609ba79e1b706103c143c8260075a872acc2dbd9`  
		Last Modified: Thu, 15 Nov 2018 22:30:00 GMT  
		Size: 4.7 KB (4651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655c9155198c74b2590ae26f0424260b90750af95ffc253de8414d6996a2fbde`  
		Last Modified: Thu, 15 Nov 2018 22:30:01 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97127f493ab00ac6049c4904679e6f4eb3e5e9a90d99ffbe5e67d6c54f622e03`  
		Last Modified: Thu, 15 Nov 2018 22:30:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a9987c1ed80c24eab4813e09f6ea41a55a36bac4e0b20203fe8ada003a7004`  
		Last Modified: Thu, 15 Nov 2018 22:30:01 GMT  
		Size: 30.5 KB (30502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11.3` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:c667d14dcf345a22415405a31709dfeb0d49d4efc7b812c650801228cd572b93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121788686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:312bb66001634ce7388b9268edbec94908f39c63630127a875c969cfb13ba7f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:30:58 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 12:31:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:31:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 12:32:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 12:32:20 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 16 Oct 2018 12:32:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 12:38:16 GMT
ENV CASSANDRA_VERSION=3.11.3
# Tue, 16 Oct 2018 12:40:51 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 16 Oct 2018 12:40:52 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 16 Oct 2018 12:40:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 16 Oct 2018 12:40:57 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:40:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 12:41:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 12:41:04 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 16 Oct 2018 12:41:05 GMT
VOLUME [/var/lib/cassandra]
# Tue, 16 Oct 2018 12:41:06 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 16 Oct 2018 12:41:07 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf303a61394af98a28a10e12b48ffe2110f8650405e1cd09a432c9a7d326295`  
		Last Modified: Tue, 16 Oct 2018 12:41:29 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34604110be2999a331df7a10cb8e17cfa188e432bc097fab53fd1eeb9ba4e0d9`  
		Last Modified: Tue, 16 Oct 2018 12:41:37 GMT  
		Size: 5.1 MB (5143952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a99d48291ebc681d7daf3ace68a3c2feed9db691092dc1f1335c3107b599fe9`  
		Last Modified: Tue, 16 Oct 2018 12:41:30 GMT  
		Size: 924.9 KB (924909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0e80dccd29631a4fc6d7c3d3db303f740e5dbce0df9e85a6c7f0735733936a`  
		Last Modified: Tue, 16 Oct 2018 12:41:32 GMT  
		Size: 18.2 KB (18225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304aeb33d306109e96ff9bbb07c33f3fe7e3859bd7ca2d102754885bbe5925c0`  
		Last Modified: Tue, 16 Oct 2018 12:43:18 GMT  
		Size: 95.3 MB (95331829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abed2c73accf0955fe03b09e241a0806e0b3b4d9bb25ecf26700786c614b63b4`  
		Last Modified: Tue, 16 Oct 2018 12:42:33 GMT  
		Size: 4.7 KB (4655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad09a2d8682651f960e966bf35a1721e334b090e1df3125b333ff6f52d1182ee`  
		Last Modified: Tue, 16 Oct 2018 12:42:34 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9682f4d31ef3f4b7655a99974b12b747cc1dd3c62be31d6f6948a18d530bae1c`  
		Last Modified: Tue, 16 Oct 2018 12:42:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaaad67d174bad5a3a693c6d6ec7adfddcdf143e03113180cd30593cf9e05a24`  
		Last Modified: Tue, 16 Oct 2018 12:42:33 GMT  
		Size: 30.5 KB (30500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11.3` - linux; 386

```console
$ docker pull cassandra@sha256:a746681b9de6be2d54ba0510199d548219f030386dd96e98ed34afd032c80e2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132606563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0273951f488a7ae55c856341968342ef0ecfd1b2b66edfdef5b3ef08068ed2e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:08:22 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 22:08:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:08:32 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 22:08:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 22:08:44 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 16 Oct 2018 22:08:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 22:09:36 GMT
ENV CASSANDRA_VERSION=3.11.3
# Tue, 16 Oct 2018 22:10:11 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 16 Oct 2018 22:10:11 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 16 Oct 2018 22:10:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 16 Oct 2018 22:10:12 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Tue, 16 Oct 2018 22:10:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 22:10:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 22:10:14 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 16 Oct 2018 22:10:14 GMT
VOLUME [/var/lib/cassandra]
# Tue, 16 Oct 2018 22:10:14 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 16 Oct 2018 22:10:15 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1d95d8d308ff55099777a809b4d62d1642ded41259c1c37d5604f293712a40`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8a67f3dcb44c81877bd940b950839796be75a1f7a4b8756d1b6fda89c386e5`  
		Last Modified: Tue, 16 Oct 2018 22:12:20 GMT  
		Size: 6.1 MB (6056823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0b7621c780c7fb88d0cce00be9b9893420481d190e484ecfec35bb5a8b9a22`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 937.0 KB (936971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f944e1b94da409cbdf6919953f9690b47530f7da284df45d7bee5b7b644a6a42`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab372dd82631c0c4a1d3954cc08a92c11b80f683b8e417a870abc818a678bcd`  
		Last Modified: Tue, 16 Oct 2018 22:13:22 GMT  
		Size: 102.4 MB (102429770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de99162dfc5658ff74c8471a5ec476b76bfc0d9398cfb496ad5c6ab9b5c17b9a`  
		Last Modified: Tue, 16 Oct 2018 22:12:59 GMT  
		Size: 4.7 KB (4651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c866d9d0b5f8b6e39079da0161100153f93476c10ba9ac6d8f7c9050c64278b`  
		Last Modified: Tue, 16 Oct 2018 22:12:59 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57dbce3114d3fafd7b0ea1e719075aa9ac966d6a5737c92902a77ba02fea03f1`  
		Last Modified: Tue, 16 Oct 2018 22:12:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:467ed153bdb450de1c5cfe9be824c7e7a26a8702ca84a4a1d13858c359a84b11`  
		Last Modified: Tue, 16 Oct 2018 22:12:59 GMT  
		Size: 30.5 KB (30501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11.3` - linux; ppc64le

```console
$ docker pull cassandra@sha256:f7804ac06df9bc8b02b360f66d6ff39c0a25c505d70613c5102ed7daf8c6e308
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.5 MB (125516077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:516f5a0d4a0ae33c83ee98631aafcd6e09eeaefa09e7376a4181f3ec707b0aa0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:05:04 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 10:05:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:05:39 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 10:06:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 10:06:09 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 16 Oct 2018 10:06:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 10:11:36 GMT
ENV CASSANDRA_VERSION=3.11.3
# Tue, 16 Oct 2018 10:14:25 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 16 Oct 2018 10:14:27 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 16 Oct 2018 10:14:31 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 16 Oct 2018 10:14:33 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Tue, 16 Oct 2018 10:14:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 10:14:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 10:14:41 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 16 Oct 2018 10:14:42 GMT
VOLUME [/var/lib/cassandra]
# Tue, 16 Oct 2018 10:14:42 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 16 Oct 2018 10:14:45 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f7cca661582cdacaea568b133466bb13dff6411dd38047d00c950a392ece614`  
		Last Modified: Tue, 16 Oct 2018 10:16:35 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2ca19b45a35bc44aa46bd88732a2b960f2916ba429c212f7961045286e3a98`  
		Last Modified: Tue, 16 Oct 2018 10:16:37 GMT  
		Size: 5.5 MB (5537768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9decce5839f08d5c15e7726c9090ef2b54d9195f552f89e7ab222c867b1145`  
		Last Modified: Tue, 16 Oct 2018 10:16:34 GMT  
		Size: 925.8 KB (925820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf4c492f6dbb6f35c6d16c04aa5e07ccdfeea8406901d5d4df0fd392b9ed199`  
		Last Modified: Tue, 16 Oct 2018 10:16:34 GMT  
		Size: 18.2 KB (18222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e95bd6db73597731d3c87c5f11bc29f3398f7442598753eba04bb200137d22`  
		Last Modified: Tue, 16 Oct 2018 10:17:36 GMT  
		Size: 96.3 MB (96251741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3de7f3a9354762cfc9e40b6b79990d65256ffc57a639ad21cd2dbeece96688`  
		Last Modified: Tue, 16 Oct 2018 10:17:17 GMT  
		Size: 8.4 KB (8412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0094ac1a4a75bd004aa807ab69609592527389b9694357a71109d61cc0487cd8`  
		Last Modified: Tue, 16 Oct 2018 10:17:16 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed6879673c6c2d22e6492afad6292354ff5a72a63515a9bd8f5885aeb10beba`  
		Last Modified: Tue, 16 Oct 2018 10:17:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8088f3343d54f998516d70615062ce6557b0874a2a23c117912e8660ead24c`  
		Last Modified: Tue, 16 Oct 2018 10:17:16 GMT  
		Size: 30.5 KB (30504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:latest`

```console
$ docker pull cassandra@sha256:010656c24ec1fccc8166ed4363f487b56a771eb49d3bd3486e97de2026886692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:latest` - linux; amd64

```console
$ docker pull cassandra@sha256:55d754f455307a26d0d54f88c665790e5e392ad292b8f6799bdab4e91aee49e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132536633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a90a86e05ad15bde963493e7a276958e1f58c9ec3857cf8231e0e9d9cb9aacf3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:26:20 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 01:26:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:26:33 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Nov 2018 22:20:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Nov 2018 22:20:51 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Thu, 15 Nov 2018 22:20:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Nov 2018 22:24:43 GMT
ENV CASSANDRA_VERSION=3.11.3
# Thu, 15 Nov 2018 22:25:12 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Nov 2018 22:25:35 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 15 Nov 2018 22:25:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 15 Nov 2018 22:25:36 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Thu, 15 Nov 2018 22:25:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 15 Nov 2018 22:25:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Nov 2018 22:25:38 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 15 Nov 2018 22:25:38 GMT
VOLUME [/var/lib/cassandra]
# Thu, 15 Nov 2018 22:25:38 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 15 Nov 2018 22:25:38 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346e425d7fdcd26171d7dfa401654011040c87a01e7aeb08a83748e2cad52bab`  
		Last Modified: Tue, 16 Oct 2018 01:30:06 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dff060d6d3e2ae9f8476ba972d83e08f079a85685bd2da608739c717eecff4`  
		Last Modified: Tue, 16 Oct 2018 01:30:07 GMT  
		Size: 5.7 MB (5673746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae4e64ec3e1e3a76cd9d314a385f6a09ae7c8de341026769eadcbe663f2037ff`  
		Last Modified: Thu, 15 Nov 2018 22:26:57 GMT  
		Size: 957.3 KB (957317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e62567b3b30554fc13be2ab26ac0f72d968a0217a44245a5b3581464ac2d2e3`  
		Last Modified: Thu, 15 Nov 2018 22:26:57 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457fefc8301368215227475d39c3c6a7b6967b363fed02e9854ff12eb26f1d55`  
		Last Modified: Thu, 15 Nov 2018 22:30:19 GMT  
		Size: 103.4 MB (103363128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513ad3e18d76cd12a51188b8609ba79e1b706103c143c8260075a872acc2dbd9`  
		Last Modified: Thu, 15 Nov 2018 22:30:00 GMT  
		Size: 4.7 KB (4651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655c9155198c74b2590ae26f0424260b90750af95ffc253de8414d6996a2fbde`  
		Last Modified: Thu, 15 Nov 2018 22:30:01 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97127f493ab00ac6049c4904679e6f4eb3e5e9a90d99ffbe5e67d6c54f622e03`  
		Last Modified: Thu, 15 Nov 2018 22:30:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a9987c1ed80c24eab4813e09f6ea41a55a36bac4e0b20203fe8ada003a7004`  
		Last Modified: Thu, 15 Nov 2018 22:30:01 GMT  
		Size: 30.5 KB (30502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:latest` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:c667d14dcf345a22415405a31709dfeb0d49d4efc7b812c650801228cd572b93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121788686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:312bb66001634ce7388b9268edbec94908f39c63630127a875c969cfb13ba7f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:30:58 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 12:31:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:31:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 12:32:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 12:32:20 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 16 Oct 2018 12:32:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 12:38:16 GMT
ENV CASSANDRA_VERSION=3.11.3
# Tue, 16 Oct 2018 12:40:51 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 16 Oct 2018 12:40:52 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 16 Oct 2018 12:40:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 16 Oct 2018 12:40:57 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:40:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 12:41:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 12:41:04 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 16 Oct 2018 12:41:05 GMT
VOLUME [/var/lib/cassandra]
# Tue, 16 Oct 2018 12:41:06 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 16 Oct 2018 12:41:07 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf303a61394af98a28a10e12b48ffe2110f8650405e1cd09a432c9a7d326295`  
		Last Modified: Tue, 16 Oct 2018 12:41:29 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34604110be2999a331df7a10cb8e17cfa188e432bc097fab53fd1eeb9ba4e0d9`  
		Last Modified: Tue, 16 Oct 2018 12:41:37 GMT  
		Size: 5.1 MB (5143952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a99d48291ebc681d7daf3ace68a3c2feed9db691092dc1f1335c3107b599fe9`  
		Last Modified: Tue, 16 Oct 2018 12:41:30 GMT  
		Size: 924.9 KB (924909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0e80dccd29631a4fc6d7c3d3db303f740e5dbce0df9e85a6c7f0735733936a`  
		Last Modified: Tue, 16 Oct 2018 12:41:32 GMT  
		Size: 18.2 KB (18225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304aeb33d306109e96ff9bbb07c33f3fe7e3859bd7ca2d102754885bbe5925c0`  
		Last Modified: Tue, 16 Oct 2018 12:43:18 GMT  
		Size: 95.3 MB (95331829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abed2c73accf0955fe03b09e241a0806e0b3b4d9bb25ecf26700786c614b63b4`  
		Last Modified: Tue, 16 Oct 2018 12:42:33 GMT  
		Size: 4.7 KB (4655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad09a2d8682651f960e966bf35a1721e334b090e1df3125b333ff6f52d1182ee`  
		Last Modified: Tue, 16 Oct 2018 12:42:34 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9682f4d31ef3f4b7655a99974b12b747cc1dd3c62be31d6f6948a18d530bae1c`  
		Last Modified: Tue, 16 Oct 2018 12:42:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaaad67d174bad5a3a693c6d6ec7adfddcdf143e03113180cd30593cf9e05a24`  
		Last Modified: Tue, 16 Oct 2018 12:42:33 GMT  
		Size: 30.5 KB (30500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:latest` - linux; 386

```console
$ docker pull cassandra@sha256:a746681b9de6be2d54ba0510199d548219f030386dd96e98ed34afd032c80e2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132606563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0273951f488a7ae55c856341968342ef0ecfd1b2b66edfdef5b3ef08068ed2e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:08:22 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 22:08:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:08:32 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 22:08:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 22:08:44 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 16 Oct 2018 22:08:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 22:09:36 GMT
ENV CASSANDRA_VERSION=3.11.3
# Tue, 16 Oct 2018 22:10:11 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 16 Oct 2018 22:10:11 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 16 Oct 2018 22:10:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 16 Oct 2018 22:10:12 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Tue, 16 Oct 2018 22:10:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 22:10:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 22:10:14 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 16 Oct 2018 22:10:14 GMT
VOLUME [/var/lib/cassandra]
# Tue, 16 Oct 2018 22:10:14 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 16 Oct 2018 22:10:15 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1d95d8d308ff55099777a809b4d62d1642ded41259c1c37d5604f293712a40`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8a67f3dcb44c81877bd940b950839796be75a1f7a4b8756d1b6fda89c386e5`  
		Last Modified: Tue, 16 Oct 2018 22:12:20 GMT  
		Size: 6.1 MB (6056823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0b7621c780c7fb88d0cce00be9b9893420481d190e484ecfec35bb5a8b9a22`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 937.0 KB (936971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f944e1b94da409cbdf6919953f9690b47530f7da284df45d7bee5b7b644a6a42`  
		Last Modified: Tue, 16 Oct 2018 22:12:18 GMT  
		Size: 18.2 KB (18223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab372dd82631c0c4a1d3954cc08a92c11b80f683b8e417a870abc818a678bcd`  
		Last Modified: Tue, 16 Oct 2018 22:13:22 GMT  
		Size: 102.4 MB (102429770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de99162dfc5658ff74c8471a5ec476b76bfc0d9398cfb496ad5c6ab9b5c17b9a`  
		Last Modified: Tue, 16 Oct 2018 22:12:59 GMT  
		Size: 4.7 KB (4651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c866d9d0b5f8b6e39079da0161100153f93476c10ba9ac6d8f7c9050c64278b`  
		Last Modified: Tue, 16 Oct 2018 22:12:59 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57dbce3114d3fafd7b0ea1e719075aa9ac966d6a5737c92902a77ba02fea03f1`  
		Last Modified: Tue, 16 Oct 2018 22:12:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:467ed153bdb450de1c5cfe9be824c7e7a26a8702ca84a4a1d13858c359a84b11`  
		Last Modified: Tue, 16 Oct 2018 22:12:59 GMT  
		Size: 30.5 KB (30501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:latest` - linux; ppc64le

```console
$ docker pull cassandra@sha256:f7804ac06df9bc8b02b360f66d6ff39c0a25c505d70613c5102ed7daf8c6e308
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.5 MB (125516077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:516f5a0d4a0ae33c83ee98631aafcd6e09eeaefa09e7376a4181f3ec707b0aa0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:05:04 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 16 Oct 2018 10:05:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:05:39 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 10:06:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 10:06:09 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 16 Oct 2018 10:06:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 10:11:36 GMT
ENV CASSANDRA_VERSION=3.11.3
# Tue, 16 Oct 2018 10:14:25 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 16 Oct 2018 10:14:27 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 16 Oct 2018 10:14:31 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Tue, 16 Oct 2018 10:14:33 GMT
COPY file:068ef7306440a79bd38ba5cbfba78fe9d21eb2c321ecf71a1a2955994df238d8 in /usr/local/bin/ 
# Tue, 16 Oct 2018 10:14:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 10:14:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 10:14:41 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 16 Oct 2018 10:14:42 GMT
VOLUME [/var/lib/cassandra]
# Tue, 16 Oct 2018 10:14:42 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 16 Oct 2018 10:14:45 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f7cca661582cdacaea568b133466bb13dff6411dd38047d00c950a392ece614`  
		Last Modified: Tue, 16 Oct 2018 10:16:35 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2ca19b45a35bc44aa46bd88732a2b960f2916ba429c212f7961045286e3a98`  
		Last Modified: Tue, 16 Oct 2018 10:16:37 GMT  
		Size: 5.5 MB (5537768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9decce5839f08d5c15e7726c9090ef2b54d9195f552f89e7ab222c867b1145`  
		Last Modified: Tue, 16 Oct 2018 10:16:34 GMT  
		Size: 925.8 KB (925820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf4c492f6dbb6f35c6d16c04aa5e07ccdfeea8406901d5d4df0fd392b9ed199`  
		Last Modified: Tue, 16 Oct 2018 10:16:34 GMT  
		Size: 18.2 KB (18222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e95bd6db73597731d3c87c5f11bc29f3398f7442598753eba04bb200137d22`  
		Last Modified: Tue, 16 Oct 2018 10:17:36 GMT  
		Size: 96.3 MB (96251741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3de7f3a9354762cfc9e40b6b79990d65256ffc57a639ad21cd2dbeece96688`  
		Last Modified: Tue, 16 Oct 2018 10:17:17 GMT  
		Size: 8.4 KB (8412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0094ac1a4a75bd004aa807ab69609592527389b9694357a71109d61cc0487cd8`  
		Last Modified: Tue, 16 Oct 2018 10:17:16 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed6879673c6c2d22e6492afad6292354ff5a72a63515a9bd8f5885aeb10beba`  
		Last Modified: Tue, 16 Oct 2018 10:17:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8088f3343d54f998516d70615062ce6557b0874a2a23c117912e8660ead24c`  
		Last Modified: Tue, 16 Oct 2018 10:17:16 GMT  
		Size: 30.5 KB (30504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
