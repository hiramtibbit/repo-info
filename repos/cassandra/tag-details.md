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
$ docker pull cassandra@sha256:87e327b1199586ab173cb1b52351e97288667a6fc2b5375f30569a8e216e1d70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `cassandra:2` - linux; amd64

```console
$ docker pull cassandra@sha256:895bafb00549dd0e69656b7e2a86e7079b86a0cbed18d92c4415b2132aa8b6b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.2 MB (196198436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4bbcd8c484e5ef9d7424d17bd734b2cd2e6e1b75c9fe865f68e2321f2b34c04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:09:07 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 06 Feb 2019 05:09:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:09:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 05:09:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 05:09:39 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 06 Feb 2019 05:09:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 13 Feb 2019 21:20:50 GMT
ENV CASSANDRA_VERSION=2.2.14
# Wed, 13 Feb 2019 21:21:49 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 13 Feb 2019 21:21:49 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 13 Feb 2019 21:21:50 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Wed, 13 Feb 2019 21:21:50 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Wed, 13 Feb 2019 21:21:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Wed, 13 Feb 2019 21:21:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Feb 2019 21:21:54 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 13 Feb 2019 21:21:54 GMT
VOLUME [/var/lib/cassandra]
# Wed, 13 Feb 2019 21:21:54 GMT
EXPOSE 7000 7001 7199 9042 9160
# Wed, 13 Feb 2019 21:21:54 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0fef69a7a19c38ef19a57d048b44403c38b9d915bcec65c669be6b3abc1508d`  
		Last Modified: Wed, 06 Feb 2019 05:14:39 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6849fd6936d9c1b5f71942bb23ce26693f186ab3fbec3030d3e02ffd36125133`  
		Last Modified: Wed, 06 Feb 2019 05:14:40 GMT  
		Size: 5.7 MB (5676014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832b4e4feae8872436f3a98e22685a547d85111b92ed3210bc9fe31d4d856bc5`  
		Last Modified: Wed, 06 Feb 2019 05:14:39 GMT  
		Size: 957.4 KB (957364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e36f0fa0d971a17e67328f23bcb5dc809385212664e9124bef228d89ceff1c`  
		Last Modified: Wed, 06 Feb 2019 05:14:38 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8380a3e858956de742531de9b41650822c2030eb8b56ebf1e1bb29a8539ef89`  
		Last Modified: Wed, 13 Feb 2019 21:24:39 GMT  
		Size: 167.0 MB (167016160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9868694670bb6d9f653269bed2bd92274c220beb1a4a461f0d3833f94b2ca0d8`  
		Last Modified: Wed, 13 Feb 2019 21:24:05 GMT  
		Size: 4.9 KB (4883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e52a8599bc7f5871ab63e91ee0f950c03bc31f270fc55913ddfc0ac7898dc40`  
		Last Modified: Wed, 13 Feb 2019 21:24:05 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d567f51a2dd96fb59c5142b48dc25d77d94094644ffecd8e6a258cff5d67e17`  
		Last Modified: Wed, 13 Feb 2019 21:24:05 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816aee33e2842ec1ca04987fe79235f43f4ad66a21ec62abbdf723ec0b79ac99`  
		Last Modified: Wed, 13 Feb 2019 21:24:05 GMT  
		Size: 22.5 KB (22485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1`

```console
$ docker pull cassandra@sha256:9d1142a17541b929a1655bfa3132860b97d34714efc51a2f55857eeace26c376
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `cassandra:2.1` - linux; amd64

```console
$ docker pull cassandra@sha256:92174cb06e6fa95a02df3ea653d92fb67fbb391e386254763504aca46be88df8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.9 MB (191861502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28aa48258df33328520de7e96a9834236d60f53dec7fb42ea56691dec0d036cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:09:07 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 06 Feb 2019 05:09:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:09:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 05:09:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 05:09:39 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 06 Feb 2019 05:09:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 13 Feb 2019 21:19:22 GMT
ENV CASSANDRA_VERSION=2.1.21
# Wed, 13 Feb 2019 21:20:38 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 13 Feb 2019 21:20:39 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 13 Feb 2019 21:20:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Wed, 13 Feb 2019 21:20:40 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Wed, 13 Feb 2019 21:20:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Wed, 13 Feb 2019 21:20:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Feb 2019 21:20:42 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 13 Feb 2019 21:20:42 GMT
VOLUME [/var/lib/cassandra]
# Wed, 13 Feb 2019 21:20:43 GMT
EXPOSE 7000 7001 7199 9042 9160
# Wed, 13 Feb 2019 21:20:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0fef69a7a19c38ef19a57d048b44403c38b9d915bcec65c669be6b3abc1508d`  
		Last Modified: Wed, 06 Feb 2019 05:14:39 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6849fd6936d9c1b5f71942bb23ce26693f186ab3fbec3030d3e02ffd36125133`  
		Last Modified: Wed, 06 Feb 2019 05:14:40 GMT  
		Size: 5.7 MB (5676014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832b4e4feae8872436f3a98e22685a547d85111b92ed3210bc9fe31d4d856bc5`  
		Last Modified: Wed, 06 Feb 2019 05:14:39 GMT  
		Size: 957.4 KB (957364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e36f0fa0d971a17e67328f23bcb5dc809385212664e9124bef228d89ceff1c`  
		Last Modified: Wed, 06 Feb 2019 05:14:38 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a4ee5712e7befd0e2859df68990638c751d68f108aaeb70583a0f2221a93944`  
		Last Modified: Wed, 13 Feb 2019 21:24:00 GMT  
		Size: 162.7 MB (162681394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b2bd4f9067fcced81fbc3933e25a938b1a6ddd242e9437cffca20434c9d7e2`  
		Last Modified: Wed, 13 Feb 2019 21:23:32 GMT  
		Size: 4.7 KB (4671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b49eb5c843c40427ceedcfe34402298091fadae6891a7e115d56387b764718`  
		Last Modified: Wed, 13 Feb 2019 21:23:32 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e13e69543c0e4d919427df730684d51a759b5f35bab4ea73d202cc13925f83`  
		Last Modified: Wed, 13 Feb 2019 21:23:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0189a702830823fb0da30bb0685513d41cb3888570876967832838666678fe`  
		Last Modified: Wed, 13 Feb 2019 21:23:32 GMT  
		Size: 20.5 KB (20526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1.21`

```console
$ docker pull cassandra@sha256:9d1142a17541b929a1655bfa3132860b97d34714efc51a2f55857eeace26c376
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `cassandra:2.1.21` - linux; amd64

```console
$ docker pull cassandra@sha256:92174cb06e6fa95a02df3ea653d92fb67fbb391e386254763504aca46be88df8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.9 MB (191861502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28aa48258df33328520de7e96a9834236d60f53dec7fb42ea56691dec0d036cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:09:07 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 06 Feb 2019 05:09:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:09:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 05:09:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 05:09:39 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 06 Feb 2019 05:09:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 13 Feb 2019 21:19:22 GMT
ENV CASSANDRA_VERSION=2.1.21
# Wed, 13 Feb 2019 21:20:38 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 13 Feb 2019 21:20:39 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 13 Feb 2019 21:20:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Wed, 13 Feb 2019 21:20:40 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Wed, 13 Feb 2019 21:20:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Wed, 13 Feb 2019 21:20:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Feb 2019 21:20:42 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 13 Feb 2019 21:20:42 GMT
VOLUME [/var/lib/cassandra]
# Wed, 13 Feb 2019 21:20:43 GMT
EXPOSE 7000 7001 7199 9042 9160
# Wed, 13 Feb 2019 21:20:43 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0fef69a7a19c38ef19a57d048b44403c38b9d915bcec65c669be6b3abc1508d`  
		Last Modified: Wed, 06 Feb 2019 05:14:39 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6849fd6936d9c1b5f71942bb23ce26693f186ab3fbec3030d3e02ffd36125133`  
		Last Modified: Wed, 06 Feb 2019 05:14:40 GMT  
		Size: 5.7 MB (5676014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832b4e4feae8872436f3a98e22685a547d85111b92ed3210bc9fe31d4d856bc5`  
		Last Modified: Wed, 06 Feb 2019 05:14:39 GMT  
		Size: 957.4 KB (957364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e36f0fa0d971a17e67328f23bcb5dc809385212664e9124bef228d89ceff1c`  
		Last Modified: Wed, 06 Feb 2019 05:14:38 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a4ee5712e7befd0e2859df68990638c751d68f108aaeb70583a0f2221a93944`  
		Last Modified: Wed, 13 Feb 2019 21:24:00 GMT  
		Size: 162.7 MB (162681394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b2bd4f9067fcced81fbc3933e25a938b1a6ddd242e9437cffca20434c9d7e2`  
		Last Modified: Wed, 13 Feb 2019 21:23:32 GMT  
		Size: 4.7 KB (4671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b49eb5c843c40427ceedcfe34402298091fadae6891a7e115d56387b764718`  
		Last Modified: Wed, 13 Feb 2019 21:23:32 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e13e69543c0e4d919427df730684d51a759b5f35bab4ea73d202cc13925f83`  
		Last Modified: Wed, 13 Feb 2019 21:23:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0189a702830823fb0da30bb0685513d41cb3888570876967832838666678fe`  
		Last Modified: Wed, 13 Feb 2019 21:23:32 GMT  
		Size: 20.5 KB (20526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2`

```console
$ docker pull cassandra@sha256:87e327b1199586ab173cb1b52351e97288667a6fc2b5375f30569a8e216e1d70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `cassandra:2.2` - linux; amd64

```console
$ docker pull cassandra@sha256:895bafb00549dd0e69656b7e2a86e7079b86a0cbed18d92c4415b2132aa8b6b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.2 MB (196198436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4bbcd8c484e5ef9d7424d17bd734b2cd2e6e1b75c9fe865f68e2321f2b34c04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:09:07 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 06 Feb 2019 05:09:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:09:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 05:09:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 05:09:39 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 06 Feb 2019 05:09:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 13 Feb 2019 21:20:50 GMT
ENV CASSANDRA_VERSION=2.2.14
# Wed, 13 Feb 2019 21:21:49 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 13 Feb 2019 21:21:49 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 13 Feb 2019 21:21:50 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Wed, 13 Feb 2019 21:21:50 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Wed, 13 Feb 2019 21:21:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Wed, 13 Feb 2019 21:21:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Feb 2019 21:21:54 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 13 Feb 2019 21:21:54 GMT
VOLUME [/var/lib/cassandra]
# Wed, 13 Feb 2019 21:21:54 GMT
EXPOSE 7000 7001 7199 9042 9160
# Wed, 13 Feb 2019 21:21:54 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0fef69a7a19c38ef19a57d048b44403c38b9d915bcec65c669be6b3abc1508d`  
		Last Modified: Wed, 06 Feb 2019 05:14:39 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6849fd6936d9c1b5f71942bb23ce26693f186ab3fbec3030d3e02ffd36125133`  
		Last Modified: Wed, 06 Feb 2019 05:14:40 GMT  
		Size: 5.7 MB (5676014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832b4e4feae8872436f3a98e22685a547d85111b92ed3210bc9fe31d4d856bc5`  
		Last Modified: Wed, 06 Feb 2019 05:14:39 GMT  
		Size: 957.4 KB (957364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e36f0fa0d971a17e67328f23bcb5dc809385212664e9124bef228d89ceff1c`  
		Last Modified: Wed, 06 Feb 2019 05:14:38 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8380a3e858956de742531de9b41650822c2030eb8b56ebf1e1bb29a8539ef89`  
		Last Modified: Wed, 13 Feb 2019 21:24:39 GMT  
		Size: 167.0 MB (167016160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9868694670bb6d9f653269bed2bd92274c220beb1a4a461f0d3833f94b2ca0d8`  
		Last Modified: Wed, 13 Feb 2019 21:24:05 GMT  
		Size: 4.9 KB (4883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e52a8599bc7f5871ab63e91ee0f950c03bc31f270fc55913ddfc0ac7898dc40`  
		Last Modified: Wed, 13 Feb 2019 21:24:05 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d567f51a2dd96fb59c5142b48dc25d77d94094644ffecd8e6a258cff5d67e17`  
		Last Modified: Wed, 13 Feb 2019 21:24:05 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816aee33e2842ec1ca04987fe79235f43f4ad66a21ec62abbdf723ec0b79ac99`  
		Last Modified: Wed, 13 Feb 2019 21:24:05 GMT  
		Size: 22.5 KB (22485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2.14`

```console
$ docker pull cassandra@sha256:87e327b1199586ab173cb1b52351e97288667a6fc2b5375f30569a8e216e1d70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `cassandra:2.2.14` - linux; amd64

```console
$ docker pull cassandra@sha256:895bafb00549dd0e69656b7e2a86e7079b86a0cbed18d92c4415b2132aa8b6b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.2 MB (196198436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4bbcd8c484e5ef9d7424d17bd734b2cd2e6e1b75c9fe865f68e2321f2b34c04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:09:07 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 06 Feb 2019 05:09:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:09:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 05:09:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 05:09:39 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 06 Feb 2019 05:09:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 13 Feb 2019 21:20:50 GMT
ENV CASSANDRA_VERSION=2.2.14
# Wed, 13 Feb 2019 21:21:49 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 13 Feb 2019 21:21:49 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 13 Feb 2019 21:21:50 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Wed, 13 Feb 2019 21:21:50 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Wed, 13 Feb 2019 21:21:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Wed, 13 Feb 2019 21:21:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Feb 2019 21:21:54 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 13 Feb 2019 21:21:54 GMT
VOLUME [/var/lib/cassandra]
# Wed, 13 Feb 2019 21:21:54 GMT
EXPOSE 7000 7001 7199 9042 9160
# Wed, 13 Feb 2019 21:21:54 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0fef69a7a19c38ef19a57d048b44403c38b9d915bcec65c669be6b3abc1508d`  
		Last Modified: Wed, 06 Feb 2019 05:14:39 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6849fd6936d9c1b5f71942bb23ce26693f186ab3fbec3030d3e02ffd36125133`  
		Last Modified: Wed, 06 Feb 2019 05:14:40 GMT  
		Size: 5.7 MB (5676014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832b4e4feae8872436f3a98e22685a547d85111b92ed3210bc9fe31d4d856bc5`  
		Last Modified: Wed, 06 Feb 2019 05:14:39 GMT  
		Size: 957.4 KB (957364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e36f0fa0d971a17e67328f23bcb5dc809385212664e9124bef228d89ceff1c`  
		Last Modified: Wed, 06 Feb 2019 05:14:38 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8380a3e858956de742531de9b41650822c2030eb8b56ebf1e1bb29a8539ef89`  
		Last Modified: Wed, 13 Feb 2019 21:24:39 GMT  
		Size: 167.0 MB (167016160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9868694670bb6d9f653269bed2bd92274c220beb1a4a461f0d3833f94b2ca0d8`  
		Last Modified: Wed, 13 Feb 2019 21:24:05 GMT  
		Size: 4.9 KB (4883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e52a8599bc7f5871ab63e91ee0f950c03bc31f270fc55913ddfc0ac7898dc40`  
		Last Modified: Wed, 13 Feb 2019 21:24:05 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d567f51a2dd96fb59c5142b48dc25d77d94094644ffecd8e6a258cff5d67e17`  
		Last Modified: Wed, 13 Feb 2019 21:24:05 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816aee33e2842ec1ca04987fe79235f43f4ad66a21ec62abbdf723ec0b79ac99`  
		Last Modified: Wed, 13 Feb 2019 21:24:05 GMT  
		Size: 22.5 KB (22485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3`

```console
$ docker pull cassandra@sha256:f9b5c3c3f92dcd620c09f0c604c6124b0f63e7c30ce541d06970ee7bbe3ada06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `cassandra:3` - linux; amd64

```console
$ docker pull cassandra@sha256:566192a4af26e16c776d22d859bf6bd011d1404b8167e78d5261a4a96c3277d6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132584641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e84421433e90104b18296c7d38207827461b464a3710b9327d14d1b6404d52e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:09:07 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 06 Feb 2019 05:09:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:09:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 05:09:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 05:09:39 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 06 Feb 2019 05:09:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 13 Feb 2019 21:22:48 GMT
ENV CASSANDRA_VERSION=3.11.4
# Wed, 13 Feb 2019 21:23:18 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 13 Feb 2019 21:23:18 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 13 Feb 2019 21:23:19 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Wed, 13 Feb 2019 21:23:19 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Wed, 13 Feb 2019 21:23:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Wed, 13 Feb 2019 21:23:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Feb 2019 21:23:21 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 13 Feb 2019 21:23:21 GMT
VOLUME [/var/lib/cassandra]
# Wed, 13 Feb 2019 21:23:21 GMT
EXPOSE 7000 7001 7199 9042 9160
# Wed, 13 Feb 2019 21:23:21 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0fef69a7a19c38ef19a57d048b44403c38b9d915bcec65c669be6b3abc1508d`  
		Last Modified: Wed, 06 Feb 2019 05:14:39 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6849fd6936d9c1b5f71942bb23ce26693f186ab3fbec3030d3e02ffd36125133`  
		Last Modified: Wed, 06 Feb 2019 05:14:40 GMT  
		Size: 5.7 MB (5676014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832b4e4feae8872436f3a98e22685a547d85111b92ed3210bc9fe31d4d856bc5`  
		Last Modified: Wed, 06 Feb 2019 05:14:39 GMT  
		Size: 957.4 KB (957364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e36f0fa0d971a17e67328f23bcb5dc809385212664e9124bef228d89ceff1c`  
		Last Modified: Wed, 06 Feb 2019 05:14:38 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11ae6dac80db48bf3fafa4f5254814630b9a2ac7da69389d3a75696ef58007a`  
		Last Modified: Wed, 13 Feb 2019 21:25:28 GMT  
		Size: 103.4 MB (103394575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cec93c92c0e9c2f6eb3b2a35b58b35ba4763cb2b16498cf9960b62fb30ea1f1`  
		Last Modified: Wed, 13 Feb 2019 21:25:05 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2176bc298ad1c937e02f4e4073b1d815e12a9fe55378d3be5bc23b373ef32256`  
		Last Modified: Wed, 13 Feb 2019 21:25:05 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8de98164538ef298d6b751eee31731218465a66dee0b7efb2b22c835e8c744`  
		Last Modified: Wed, 13 Feb 2019 21:25:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae32fb991e2fee8028d82396f4291ab5bdfb1880bbf1bf6cb9ef871c46bb8cf`  
		Last Modified: Wed, 13 Feb 2019 21:25:05 GMT  
		Size: 30.5 KB (30503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3` - linux; ppc64le

```console
$ docker pull cassandra@sha256:1148004675dc9407f584e7839c72eb069df563d05d736223c6a7c9078b15488b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125581198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f62e6fd41a05a91310a6dd21e93396220173b9c99a706a01b3d478d97714a63b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 18:09:19 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 06 Feb 2019 18:09:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 18:09:51 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 18:10:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 18:10:25 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 06 Feb 2019 18:10:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 14 Feb 2019 09:22:02 GMT
ENV CASSANDRA_VERSION=3.11.4
# Thu, 14 Feb 2019 09:25:55 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 14 Feb 2019 09:26:05 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 14 Feb 2019 09:26:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 14 Feb 2019 09:26:17 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Thu, 14 Feb 2019 09:26:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 14 Feb 2019 09:26:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Feb 2019 09:26:39 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 14 Feb 2019 09:26:42 GMT
VOLUME [/var/lib/cassandra]
# Thu, 14 Feb 2019 09:26:45 GMT
EXPOSE 7000 7001 7199 9042 9160
# Thu, 14 Feb 2019 09:26:48 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ebd07237e302f34fa9642a0910d405442a99a4a0326af8faf5d85092067ccb`  
		Last Modified: Wed, 06 Feb 2019 18:17:16 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a28355d9fdef637b5d005fef8770ab392c2618be0eb42736370a25a6e52d2a`  
		Last Modified: Wed, 06 Feb 2019 18:17:16 GMT  
		Size: 5.5 MB (5542226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf057c5dcf8f68cb46dae755eca8472b671bfff24df86aa57017b5145e98d86`  
		Last Modified: Wed, 06 Feb 2019 18:17:15 GMT  
		Size: 925.9 KB (925879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273750cbe2674503abb15fbd6324037148a32e8a313deeffd06d1522eb93fa6c`  
		Last Modified: Wed, 06 Feb 2019 18:17:14 GMT  
		Size: 18.2 KB (18222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b77f6a03fbd7dc2adcd0ffb8ad868b9df78a0f19b729db785fb98bdd8c5987`  
		Last Modified: Thu, 14 Feb 2019 09:27:54 GMT  
		Size: 96.3 MB (96297532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470d14956e2e96404165a902e4bb42a3fec43af2976c68dde42629469a10359b`  
		Last Modified: Thu, 14 Feb 2019 09:27:37 GMT  
		Size: 8.4 KB (8413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b7dcd8fafa5e0aedab6ee6bc9c54022b45b999e3084b6b43608db1bd2dccde`  
		Last Modified: Thu, 14 Feb 2019 09:27:37 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875f14e8b0f7763d2c9abcd7fa054366c213550f665d4fc7680ca73cadbf2b64`  
		Last Modified: Thu, 14 Feb 2019 09:27:37 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbfa3742ad5cf8a4f440fb364cb452e74c09a5fc10de826060fbef3861d0bbe`  
		Last Modified: Thu, 14 Feb 2019 09:27:37 GMT  
		Size: 30.5 KB (30507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0`

```console
$ docker pull cassandra@sha256:e710614e7f5667eecabaa1a16e522b4ed34a1801f4eadfe1bc4c52e7889a6a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `cassandra:3.0` - linux; amd64

```console
$ docker pull cassandra@sha256:353aee4be96d1cedd939b7582a7207875c6c92147c2f080f11e0ca40a9ea2885
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127779441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58c4360927b4f1ba530a8ab02b13e1ab2a78f2d66df3ab34cc8ac2ba6da1c859`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:09:07 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 06 Feb 2019 05:09:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:09:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 05:09:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 05:09:39 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 06 Feb 2019 05:09:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 13 Feb 2019 21:22:04 GMT
ENV CASSANDRA_VERSION=3.0.18
# Wed, 13 Feb 2019 21:22:37 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 13 Feb 2019 21:22:37 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 13 Feb 2019 21:22:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Wed, 13 Feb 2019 21:22:38 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Wed, 13 Feb 2019 21:22:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Wed, 13 Feb 2019 21:22:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Feb 2019 21:22:40 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 13 Feb 2019 21:22:40 GMT
VOLUME [/var/lib/cassandra]
# Wed, 13 Feb 2019 21:22:40 GMT
EXPOSE 7000 7001 7199 9042 9160
# Wed, 13 Feb 2019 21:22:40 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0fef69a7a19c38ef19a57d048b44403c38b9d915bcec65c669be6b3abc1508d`  
		Last Modified: Wed, 06 Feb 2019 05:14:39 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6849fd6936d9c1b5f71942bb23ce26693f186ab3fbec3030d3e02ffd36125133`  
		Last Modified: Wed, 06 Feb 2019 05:14:40 GMT  
		Size: 5.7 MB (5676014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832b4e4feae8872436f3a98e22685a547d85111b92ed3210bc9fe31d4d856bc5`  
		Last Modified: Wed, 06 Feb 2019 05:14:39 GMT  
		Size: 957.4 KB (957364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e36f0fa0d971a17e67328f23bcb5dc809385212664e9124bef228d89ceff1c`  
		Last Modified: Wed, 06 Feb 2019 05:14:38 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18ed10b460b6ff8793809379494c0892c1e063d954d5acd8936cd84bed4065f`  
		Last Modified: Wed, 13 Feb 2019 21:25:00 GMT  
		Size: 98.6 MB (98593736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4956e6506c2bfc04d3207b8b7901410f4392aab37f54b190606b4ecbeb60fca2`  
		Last Modified: Wed, 13 Feb 2019 21:24:46 GMT  
		Size: 4.9 KB (4944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07fd821c39ad879fc58349e2a1fdf9ccae03308a8eef578e7caf4a2275d8cff`  
		Last Modified: Wed, 13 Feb 2019 21:24:46 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a8286d260b6744c2b59650a290f53dfcd86007d360e5dd67b40647d696b55c`  
		Last Modified: Wed, 13 Feb 2019 21:24:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffbc50ec586b5ae9be0eb1ba301cbe37af91568e653b58c023f2b42cf3ad232d`  
		Last Modified: Wed, 13 Feb 2019 21:24:46 GMT  
		Size: 25.9 KB (25850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0` - linux; ppc64le

```console
$ docker pull cassandra@sha256:f1a7e1710dc27755a45a1e98a63e2b2b6cc927f26a540e18ec6d08a450120e0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.8 MB (120767019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5f50cb4c4bd87a2cf24cad602e79fb4eb0eef7c2d61289c78228082f8e264cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 18:09:19 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 06 Feb 2019 18:09:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 18:09:51 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 18:10:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 18:10:25 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 06 Feb 2019 18:10:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 14 Feb 2019 09:17:07 GMT
ENV CASSANDRA_VERSION=3.0.18
# Thu, 14 Feb 2019 09:21:24 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 14 Feb 2019 09:21:30 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 14 Feb 2019 09:21:34 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 14 Feb 2019 09:21:35 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Thu, 14 Feb 2019 09:21:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 14 Feb 2019 09:21:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Feb 2019 09:21:49 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 14 Feb 2019 09:21:50 GMT
VOLUME [/var/lib/cassandra]
# Thu, 14 Feb 2019 09:21:53 GMT
EXPOSE 7000 7001 7199 9042 9160
# Thu, 14 Feb 2019 09:21:55 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ebd07237e302f34fa9642a0910d405442a99a4a0326af8faf5d85092067ccb`  
		Last Modified: Wed, 06 Feb 2019 18:17:16 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a28355d9fdef637b5d005fef8770ab392c2618be0eb42736370a25a6e52d2a`  
		Last Modified: Wed, 06 Feb 2019 18:17:16 GMT  
		Size: 5.5 MB (5542226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf057c5dcf8f68cb46dae755eca8472b671bfff24df86aa57017b5145e98d86`  
		Last Modified: Wed, 06 Feb 2019 18:17:15 GMT  
		Size: 925.9 KB (925879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273750cbe2674503abb15fbd6324037148a32e8a313deeffd06d1522eb93fa6c`  
		Last Modified: Wed, 06 Feb 2019 18:17:14 GMT  
		Size: 18.2 KB (18222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c8be9290b42142fd5a7ae62b20ea26c78b35a8c65fad8b7b59fb2eca6fbe2d`  
		Last Modified: Thu, 14 Feb 2019 09:27:22 GMT  
		Size: 91.5 MB (91491472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e14a32fa1b2c25f346d470ce563a83ebed94c37aebd2df3122f5ee959f2c74`  
		Last Modified: Thu, 14 Feb 2019 09:27:06 GMT  
		Size: 4.9 KB (4947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13fd4b5a04989300253934c99a39afcebc523f0d95a3fa4f167364ed8b50321`  
		Last Modified: Thu, 14 Feb 2019 09:27:06 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461d4d7090248065932b464f82d99e904ad523e99b52d1fca09ec3cccf93b3e3`  
		Last Modified: Thu, 14 Feb 2019 09:27:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aef1b4255dd4ccdb0f5357b960f05a7e92fccf5a31bc195d824c0f85d01a9bb`  
		Last Modified: Thu, 14 Feb 2019 09:27:06 GMT  
		Size: 25.9 KB (25850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0.18`

```console
$ docker pull cassandra@sha256:e710614e7f5667eecabaa1a16e522b4ed34a1801f4eadfe1bc4c52e7889a6a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `cassandra:3.0.18` - linux; amd64

```console
$ docker pull cassandra@sha256:353aee4be96d1cedd939b7582a7207875c6c92147c2f080f11e0ca40a9ea2885
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127779441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58c4360927b4f1ba530a8ab02b13e1ab2a78f2d66df3ab34cc8ac2ba6da1c859`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:09:07 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 06 Feb 2019 05:09:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:09:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 05:09:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 05:09:39 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 06 Feb 2019 05:09:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 13 Feb 2019 21:22:04 GMT
ENV CASSANDRA_VERSION=3.0.18
# Wed, 13 Feb 2019 21:22:37 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 13 Feb 2019 21:22:37 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 13 Feb 2019 21:22:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Wed, 13 Feb 2019 21:22:38 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Wed, 13 Feb 2019 21:22:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Wed, 13 Feb 2019 21:22:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Feb 2019 21:22:40 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 13 Feb 2019 21:22:40 GMT
VOLUME [/var/lib/cassandra]
# Wed, 13 Feb 2019 21:22:40 GMT
EXPOSE 7000 7001 7199 9042 9160
# Wed, 13 Feb 2019 21:22:40 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0fef69a7a19c38ef19a57d048b44403c38b9d915bcec65c669be6b3abc1508d`  
		Last Modified: Wed, 06 Feb 2019 05:14:39 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6849fd6936d9c1b5f71942bb23ce26693f186ab3fbec3030d3e02ffd36125133`  
		Last Modified: Wed, 06 Feb 2019 05:14:40 GMT  
		Size: 5.7 MB (5676014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832b4e4feae8872436f3a98e22685a547d85111b92ed3210bc9fe31d4d856bc5`  
		Last Modified: Wed, 06 Feb 2019 05:14:39 GMT  
		Size: 957.4 KB (957364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e36f0fa0d971a17e67328f23bcb5dc809385212664e9124bef228d89ceff1c`  
		Last Modified: Wed, 06 Feb 2019 05:14:38 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18ed10b460b6ff8793809379494c0892c1e063d954d5acd8936cd84bed4065f`  
		Last Modified: Wed, 13 Feb 2019 21:25:00 GMT  
		Size: 98.6 MB (98593736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4956e6506c2bfc04d3207b8b7901410f4392aab37f54b190606b4ecbeb60fca2`  
		Last Modified: Wed, 13 Feb 2019 21:24:46 GMT  
		Size: 4.9 KB (4944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07fd821c39ad879fc58349e2a1fdf9ccae03308a8eef578e7caf4a2275d8cff`  
		Last Modified: Wed, 13 Feb 2019 21:24:46 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a8286d260b6744c2b59650a290f53dfcd86007d360e5dd67b40647d696b55c`  
		Last Modified: Wed, 13 Feb 2019 21:24:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffbc50ec586b5ae9be0eb1ba301cbe37af91568e653b58c023f2b42cf3ad232d`  
		Last Modified: Wed, 13 Feb 2019 21:24:46 GMT  
		Size: 25.9 KB (25850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0.18` - linux; ppc64le

```console
$ docker pull cassandra@sha256:f1a7e1710dc27755a45a1e98a63e2b2b6cc927f26a540e18ec6d08a450120e0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.8 MB (120767019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5f50cb4c4bd87a2cf24cad602e79fb4eb0eef7c2d61289c78228082f8e264cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 18:09:19 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 06 Feb 2019 18:09:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 18:09:51 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 18:10:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 18:10:25 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 06 Feb 2019 18:10:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 14 Feb 2019 09:17:07 GMT
ENV CASSANDRA_VERSION=3.0.18
# Thu, 14 Feb 2019 09:21:24 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 14 Feb 2019 09:21:30 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 14 Feb 2019 09:21:34 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 14 Feb 2019 09:21:35 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Thu, 14 Feb 2019 09:21:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 14 Feb 2019 09:21:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Feb 2019 09:21:49 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 14 Feb 2019 09:21:50 GMT
VOLUME [/var/lib/cassandra]
# Thu, 14 Feb 2019 09:21:53 GMT
EXPOSE 7000 7001 7199 9042 9160
# Thu, 14 Feb 2019 09:21:55 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ebd07237e302f34fa9642a0910d405442a99a4a0326af8faf5d85092067ccb`  
		Last Modified: Wed, 06 Feb 2019 18:17:16 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a28355d9fdef637b5d005fef8770ab392c2618be0eb42736370a25a6e52d2a`  
		Last Modified: Wed, 06 Feb 2019 18:17:16 GMT  
		Size: 5.5 MB (5542226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf057c5dcf8f68cb46dae755eca8472b671bfff24df86aa57017b5145e98d86`  
		Last Modified: Wed, 06 Feb 2019 18:17:15 GMT  
		Size: 925.9 KB (925879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273750cbe2674503abb15fbd6324037148a32e8a313deeffd06d1522eb93fa6c`  
		Last Modified: Wed, 06 Feb 2019 18:17:14 GMT  
		Size: 18.2 KB (18222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c8be9290b42142fd5a7ae62b20ea26c78b35a8c65fad8b7b59fb2eca6fbe2d`  
		Last Modified: Thu, 14 Feb 2019 09:27:22 GMT  
		Size: 91.5 MB (91491472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e14a32fa1b2c25f346d470ce563a83ebed94c37aebd2df3122f5ee959f2c74`  
		Last Modified: Thu, 14 Feb 2019 09:27:06 GMT  
		Size: 4.9 KB (4947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13fd4b5a04989300253934c99a39afcebc523f0d95a3fa4f167364ed8b50321`  
		Last Modified: Thu, 14 Feb 2019 09:27:06 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461d4d7090248065932b464f82d99e904ad523e99b52d1fca09ec3cccf93b3e3`  
		Last Modified: Thu, 14 Feb 2019 09:27:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aef1b4255dd4ccdb0f5357b960f05a7e92fccf5a31bc195d824c0f85d01a9bb`  
		Last Modified: Thu, 14 Feb 2019 09:27:06 GMT  
		Size: 25.9 KB (25850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.11`

```console
$ docker pull cassandra@sha256:f9b5c3c3f92dcd620c09f0c604c6124b0f63e7c30ce541d06970ee7bbe3ada06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `cassandra:3.11` - linux; amd64

```console
$ docker pull cassandra@sha256:566192a4af26e16c776d22d859bf6bd011d1404b8167e78d5261a4a96c3277d6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132584641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e84421433e90104b18296c7d38207827461b464a3710b9327d14d1b6404d52e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:09:07 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 06 Feb 2019 05:09:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:09:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 05:09:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 05:09:39 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 06 Feb 2019 05:09:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 13 Feb 2019 21:22:48 GMT
ENV CASSANDRA_VERSION=3.11.4
# Wed, 13 Feb 2019 21:23:18 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 13 Feb 2019 21:23:18 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 13 Feb 2019 21:23:19 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Wed, 13 Feb 2019 21:23:19 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Wed, 13 Feb 2019 21:23:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Wed, 13 Feb 2019 21:23:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Feb 2019 21:23:21 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 13 Feb 2019 21:23:21 GMT
VOLUME [/var/lib/cassandra]
# Wed, 13 Feb 2019 21:23:21 GMT
EXPOSE 7000 7001 7199 9042 9160
# Wed, 13 Feb 2019 21:23:21 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0fef69a7a19c38ef19a57d048b44403c38b9d915bcec65c669be6b3abc1508d`  
		Last Modified: Wed, 06 Feb 2019 05:14:39 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6849fd6936d9c1b5f71942bb23ce26693f186ab3fbec3030d3e02ffd36125133`  
		Last Modified: Wed, 06 Feb 2019 05:14:40 GMT  
		Size: 5.7 MB (5676014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832b4e4feae8872436f3a98e22685a547d85111b92ed3210bc9fe31d4d856bc5`  
		Last Modified: Wed, 06 Feb 2019 05:14:39 GMT  
		Size: 957.4 KB (957364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e36f0fa0d971a17e67328f23bcb5dc809385212664e9124bef228d89ceff1c`  
		Last Modified: Wed, 06 Feb 2019 05:14:38 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11ae6dac80db48bf3fafa4f5254814630b9a2ac7da69389d3a75696ef58007a`  
		Last Modified: Wed, 13 Feb 2019 21:25:28 GMT  
		Size: 103.4 MB (103394575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cec93c92c0e9c2f6eb3b2a35b58b35ba4763cb2b16498cf9960b62fb30ea1f1`  
		Last Modified: Wed, 13 Feb 2019 21:25:05 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2176bc298ad1c937e02f4e4073b1d815e12a9fe55378d3be5bc23b373ef32256`  
		Last Modified: Wed, 13 Feb 2019 21:25:05 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8de98164538ef298d6b751eee31731218465a66dee0b7efb2b22c835e8c744`  
		Last Modified: Wed, 13 Feb 2019 21:25:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae32fb991e2fee8028d82396f4291ab5bdfb1880bbf1bf6cb9ef871c46bb8cf`  
		Last Modified: Wed, 13 Feb 2019 21:25:05 GMT  
		Size: 30.5 KB (30503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11` - linux; ppc64le

```console
$ docker pull cassandra@sha256:1148004675dc9407f584e7839c72eb069df563d05d736223c6a7c9078b15488b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125581198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f62e6fd41a05a91310a6dd21e93396220173b9c99a706a01b3d478d97714a63b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 18:09:19 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 06 Feb 2019 18:09:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 18:09:51 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 18:10:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 18:10:25 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 06 Feb 2019 18:10:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 14 Feb 2019 09:22:02 GMT
ENV CASSANDRA_VERSION=3.11.4
# Thu, 14 Feb 2019 09:25:55 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 14 Feb 2019 09:26:05 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 14 Feb 2019 09:26:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 14 Feb 2019 09:26:17 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Thu, 14 Feb 2019 09:26:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 14 Feb 2019 09:26:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Feb 2019 09:26:39 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 14 Feb 2019 09:26:42 GMT
VOLUME [/var/lib/cassandra]
# Thu, 14 Feb 2019 09:26:45 GMT
EXPOSE 7000 7001 7199 9042 9160
# Thu, 14 Feb 2019 09:26:48 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ebd07237e302f34fa9642a0910d405442a99a4a0326af8faf5d85092067ccb`  
		Last Modified: Wed, 06 Feb 2019 18:17:16 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a28355d9fdef637b5d005fef8770ab392c2618be0eb42736370a25a6e52d2a`  
		Last Modified: Wed, 06 Feb 2019 18:17:16 GMT  
		Size: 5.5 MB (5542226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf057c5dcf8f68cb46dae755eca8472b671bfff24df86aa57017b5145e98d86`  
		Last Modified: Wed, 06 Feb 2019 18:17:15 GMT  
		Size: 925.9 KB (925879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273750cbe2674503abb15fbd6324037148a32e8a313deeffd06d1522eb93fa6c`  
		Last Modified: Wed, 06 Feb 2019 18:17:14 GMT  
		Size: 18.2 KB (18222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b77f6a03fbd7dc2adcd0ffb8ad868b9df78a0f19b729db785fb98bdd8c5987`  
		Last Modified: Thu, 14 Feb 2019 09:27:54 GMT  
		Size: 96.3 MB (96297532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470d14956e2e96404165a902e4bb42a3fec43af2976c68dde42629469a10359b`  
		Last Modified: Thu, 14 Feb 2019 09:27:37 GMT  
		Size: 8.4 KB (8413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b7dcd8fafa5e0aedab6ee6bc9c54022b45b999e3084b6b43608db1bd2dccde`  
		Last Modified: Thu, 14 Feb 2019 09:27:37 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875f14e8b0f7763d2c9abcd7fa054366c213550f665d4fc7680ca73cadbf2b64`  
		Last Modified: Thu, 14 Feb 2019 09:27:37 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbfa3742ad5cf8a4f440fb364cb452e74c09a5fc10de826060fbef3861d0bbe`  
		Last Modified: Thu, 14 Feb 2019 09:27:37 GMT  
		Size: 30.5 KB (30507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.11.4`

```console
$ docker pull cassandra@sha256:f9b5c3c3f92dcd620c09f0c604c6124b0f63e7c30ce541d06970ee7bbe3ada06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `cassandra:3.11.4` - linux; amd64

```console
$ docker pull cassandra@sha256:566192a4af26e16c776d22d859bf6bd011d1404b8167e78d5261a4a96c3277d6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132584641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e84421433e90104b18296c7d38207827461b464a3710b9327d14d1b6404d52e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:09:07 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 06 Feb 2019 05:09:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:09:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 05:09:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 05:09:39 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 06 Feb 2019 05:09:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 13 Feb 2019 21:22:48 GMT
ENV CASSANDRA_VERSION=3.11.4
# Wed, 13 Feb 2019 21:23:18 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 13 Feb 2019 21:23:18 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 13 Feb 2019 21:23:19 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Wed, 13 Feb 2019 21:23:19 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Wed, 13 Feb 2019 21:23:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Wed, 13 Feb 2019 21:23:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Feb 2019 21:23:21 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 13 Feb 2019 21:23:21 GMT
VOLUME [/var/lib/cassandra]
# Wed, 13 Feb 2019 21:23:21 GMT
EXPOSE 7000 7001 7199 9042 9160
# Wed, 13 Feb 2019 21:23:21 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0fef69a7a19c38ef19a57d048b44403c38b9d915bcec65c669be6b3abc1508d`  
		Last Modified: Wed, 06 Feb 2019 05:14:39 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6849fd6936d9c1b5f71942bb23ce26693f186ab3fbec3030d3e02ffd36125133`  
		Last Modified: Wed, 06 Feb 2019 05:14:40 GMT  
		Size: 5.7 MB (5676014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832b4e4feae8872436f3a98e22685a547d85111b92ed3210bc9fe31d4d856bc5`  
		Last Modified: Wed, 06 Feb 2019 05:14:39 GMT  
		Size: 957.4 KB (957364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e36f0fa0d971a17e67328f23bcb5dc809385212664e9124bef228d89ceff1c`  
		Last Modified: Wed, 06 Feb 2019 05:14:38 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11ae6dac80db48bf3fafa4f5254814630b9a2ac7da69389d3a75696ef58007a`  
		Last Modified: Wed, 13 Feb 2019 21:25:28 GMT  
		Size: 103.4 MB (103394575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cec93c92c0e9c2f6eb3b2a35b58b35ba4763cb2b16498cf9960b62fb30ea1f1`  
		Last Modified: Wed, 13 Feb 2019 21:25:05 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2176bc298ad1c937e02f4e4073b1d815e12a9fe55378d3be5bc23b373ef32256`  
		Last Modified: Wed, 13 Feb 2019 21:25:05 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8de98164538ef298d6b751eee31731218465a66dee0b7efb2b22c835e8c744`  
		Last Modified: Wed, 13 Feb 2019 21:25:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae32fb991e2fee8028d82396f4291ab5bdfb1880bbf1bf6cb9ef871c46bb8cf`  
		Last Modified: Wed, 13 Feb 2019 21:25:05 GMT  
		Size: 30.5 KB (30503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11.4` - linux; ppc64le

```console
$ docker pull cassandra@sha256:1148004675dc9407f584e7839c72eb069df563d05d736223c6a7c9078b15488b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125581198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f62e6fd41a05a91310a6dd21e93396220173b9c99a706a01b3d478d97714a63b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 18:09:19 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 06 Feb 2019 18:09:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 18:09:51 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 18:10:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 18:10:25 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 06 Feb 2019 18:10:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 14 Feb 2019 09:22:02 GMT
ENV CASSANDRA_VERSION=3.11.4
# Thu, 14 Feb 2019 09:25:55 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 14 Feb 2019 09:26:05 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 14 Feb 2019 09:26:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 14 Feb 2019 09:26:17 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Thu, 14 Feb 2019 09:26:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 14 Feb 2019 09:26:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Feb 2019 09:26:39 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 14 Feb 2019 09:26:42 GMT
VOLUME [/var/lib/cassandra]
# Thu, 14 Feb 2019 09:26:45 GMT
EXPOSE 7000 7001 7199 9042 9160
# Thu, 14 Feb 2019 09:26:48 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ebd07237e302f34fa9642a0910d405442a99a4a0326af8faf5d85092067ccb`  
		Last Modified: Wed, 06 Feb 2019 18:17:16 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a28355d9fdef637b5d005fef8770ab392c2618be0eb42736370a25a6e52d2a`  
		Last Modified: Wed, 06 Feb 2019 18:17:16 GMT  
		Size: 5.5 MB (5542226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf057c5dcf8f68cb46dae755eca8472b671bfff24df86aa57017b5145e98d86`  
		Last Modified: Wed, 06 Feb 2019 18:17:15 GMT  
		Size: 925.9 KB (925879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273750cbe2674503abb15fbd6324037148a32e8a313deeffd06d1522eb93fa6c`  
		Last Modified: Wed, 06 Feb 2019 18:17:14 GMT  
		Size: 18.2 KB (18222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b77f6a03fbd7dc2adcd0ffb8ad868b9df78a0f19b729db785fb98bdd8c5987`  
		Last Modified: Thu, 14 Feb 2019 09:27:54 GMT  
		Size: 96.3 MB (96297532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470d14956e2e96404165a902e4bb42a3fec43af2976c68dde42629469a10359b`  
		Last Modified: Thu, 14 Feb 2019 09:27:37 GMT  
		Size: 8.4 KB (8413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b7dcd8fafa5e0aedab6ee6bc9c54022b45b999e3084b6b43608db1bd2dccde`  
		Last Modified: Thu, 14 Feb 2019 09:27:37 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875f14e8b0f7763d2c9abcd7fa054366c213550f665d4fc7680ca73cadbf2b64`  
		Last Modified: Thu, 14 Feb 2019 09:27:37 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbfa3742ad5cf8a4f440fb364cb452e74c09a5fc10de826060fbef3861d0bbe`  
		Last Modified: Thu, 14 Feb 2019 09:27:37 GMT  
		Size: 30.5 KB (30507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:latest`

```console
$ docker pull cassandra@sha256:f9b5c3c3f92dcd620c09f0c604c6124b0f63e7c30ce541d06970ee7bbe3ada06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `cassandra:latest` - linux; amd64

```console
$ docker pull cassandra@sha256:566192a4af26e16c776d22d859bf6bd011d1404b8167e78d5261a4a96c3277d6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132584641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e84421433e90104b18296c7d38207827461b464a3710b9327d14d1b6404d52e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:09:07 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 06 Feb 2019 05:09:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:09:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 05:09:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 05:09:39 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 06 Feb 2019 05:09:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 13 Feb 2019 21:22:48 GMT
ENV CASSANDRA_VERSION=3.11.4
# Wed, 13 Feb 2019 21:23:18 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 13 Feb 2019 21:23:18 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 13 Feb 2019 21:23:19 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Wed, 13 Feb 2019 21:23:19 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Wed, 13 Feb 2019 21:23:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Wed, 13 Feb 2019 21:23:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Feb 2019 21:23:21 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 13 Feb 2019 21:23:21 GMT
VOLUME [/var/lib/cassandra]
# Wed, 13 Feb 2019 21:23:21 GMT
EXPOSE 7000 7001 7199 9042 9160
# Wed, 13 Feb 2019 21:23:21 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0fef69a7a19c38ef19a57d048b44403c38b9d915bcec65c669be6b3abc1508d`  
		Last Modified: Wed, 06 Feb 2019 05:14:39 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6849fd6936d9c1b5f71942bb23ce26693f186ab3fbec3030d3e02ffd36125133`  
		Last Modified: Wed, 06 Feb 2019 05:14:40 GMT  
		Size: 5.7 MB (5676014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832b4e4feae8872436f3a98e22685a547d85111b92ed3210bc9fe31d4d856bc5`  
		Last Modified: Wed, 06 Feb 2019 05:14:39 GMT  
		Size: 957.4 KB (957364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e36f0fa0d971a17e67328f23bcb5dc809385212664e9124bef228d89ceff1c`  
		Last Modified: Wed, 06 Feb 2019 05:14:38 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11ae6dac80db48bf3fafa4f5254814630b9a2ac7da69389d3a75696ef58007a`  
		Last Modified: Wed, 13 Feb 2019 21:25:28 GMT  
		Size: 103.4 MB (103394575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cec93c92c0e9c2f6eb3b2a35b58b35ba4763cb2b16498cf9960b62fb30ea1f1`  
		Last Modified: Wed, 13 Feb 2019 21:25:05 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2176bc298ad1c937e02f4e4073b1d815e12a9fe55378d3be5bc23b373ef32256`  
		Last Modified: Wed, 13 Feb 2019 21:25:05 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8de98164538ef298d6b751eee31731218465a66dee0b7efb2b22c835e8c744`  
		Last Modified: Wed, 13 Feb 2019 21:25:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae32fb991e2fee8028d82396f4291ab5bdfb1880bbf1bf6cb9ef871c46bb8cf`  
		Last Modified: Wed, 13 Feb 2019 21:25:05 GMT  
		Size: 30.5 KB (30503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:latest` - linux; ppc64le

```console
$ docker pull cassandra@sha256:1148004675dc9407f584e7839c72eb069df563d05d736223c6a7c9078b15488b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125581198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f62e6fd41a05a91310a6dd21e93396220173b9c99a706a01b3d478d97714a63b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 18:09:19 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 06 Feb 2019 18:09:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 18:09:51 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 18:10:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 18:10:25 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 06 Feb 2019 18:10:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 14 Feb 2019 09:22:02 GMT
ENV CASSANDRA_VERSION=3.11.4
# Thu, 14 Feb 2019 09:25:55 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 14 Feb 2019 09:26:05 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 14 Feb 2019 09:26:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 14 Feb 2019 09:26:17 GMT
COPY file:32df6d10eaefa72af8b8f14546dffbafa553b673990a6dbbe9870c1909627db8 in /usr/local/bin/ 
# Thu, 14 Feb 2019 09:26:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 14 Feb 2019 09:26:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Feb 2019 09:26:39 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 14 Feb 2019 09:26:42 GMT
VOLUME [/var/lib/cassandra]
# Thu, 14 Feb 2019 09:26:45 GMT
EXPOSE 7000 7001 7199 9042 9160
# Thu, 14 Feb 2019 09:26:48 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ebd07237e302f34fa9642a0910d405442a99a4a0326af8faf5d85092067ccb`  
		Last Modified: Wed, 06 Feb 2019 18:17:16 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a28355d9fdef637b5d005fef8770ab392c2618be0eb42736370a25a6e52d2a`  
		Last Modified: Wed, 06 Feb 2019 18:17:16 GMT  
		Size: 5.5 MB (5542226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf057c5dcf8f68cb46dae755eca8472b671bfff24df86aa57017b5145e98d86`  
		Last Modified: Wed, 06 Feb 2019 18:17:15 GMT  
		Size: 925.9 KB (925879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273750cbe2674503abb15fbd6324037148a32e8a313deeffd06d1522eb93fa6c`  
		Last Modified: Wed, 06 Feb 2019 18:17:14 GMT  
		Size: 18.2 KB (18222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b77f6a03fbd7dc2adcd0ffb8ad868b9df78a0f19b729db785fb98bdd8c5987`  
		Last Modified: Thu, 14 Feb 2019 09:27:54 GMT  
		Size: 96.3 MB (96297532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470d14956e2e96404165a902e4bb42a3fec43af2976c68dde42629469a10359b`  
		Last Modified: Thu, 14 Feb 2019 09:27:37 GMT  
		Size: 8.4 KB (8413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b7dcd8fafa5e0aedab6ee6bc9c54022b45b999e3084b6b43608db1bd2dccde`  
		Last Modified: Thu, 14 Feb 2019 09:27:37 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875f14e8b0f7763d2c9abcd7fa054366c213550f665d4fc7680ca73cadbf2b64`  
		Last Modified: Thu, 14 Feb 2019 09:27:37 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbfa3742ad5cf8a4f440fb364cb452e74c09a5fc10de826060fbef3861d0bbe`  
		Last Modified: Thu, 14 Feb 2019 09:27:37 GMT  
		Size: 30.5 KB (30507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
