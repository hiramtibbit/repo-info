<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `cassandra`

-	[`cassandra:2`](#cassandra2)
-	[`cassandra:2.1`](#cassandra21)
-	[`cassandra:2.1.20`](#cassandra2120)
-	[`cassandra:2.2`](#cassandra22)
-	[`cassandra:2.2.12`](#cassandra2212)
-	[`cassandra:3`](#cassandra3)
-	[`cassandra:3.0`](#cassandra30)
-	[`cassandra:3.0.15`](#cassandra3015)
-	[`cassandra:3.11`](#cassandra311)
-	[`cassandra:3.11.1`](#cassandra3111)
-	[`cassandra:latest`](#cassandralatest)

## `cassandra:2`

```console
$ docker pull cassandra@sha256:ea7b57c4d572e1661ac43516dd772f8137f759c2983c87abdfb60eefcf80c2a8
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
$ docker pull cassandra@sha256:8315b811f4be81b2b0eda8a4be473c517bda3cccc8c250bfc7bb39f9a9109253
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150310346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a07436152d0687a45ec74fa476cf15dc885e7bd97f0d78c5d4095cde31cac9bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Tue, 13 Feb 2018 08:46:29 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sun, 18 Feb 2018 14:07:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 14:15:42 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 14:16:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 14:17:45 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sun, 18 Feb 2018 14:17:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sun, 18 Feb 2018 14:32:14 GMT
ENV CASSANDRA_VERSION=2.2.12
# Sun, 18 Feb 2018 14:33:52 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sun, 18 Feb 2018 14:34:36 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sun, 18 Feb 2018 14:34:37 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sun, 18 Feb 2018 14:34:37 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Sun, 18 Feb 2018 14:34:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sun, 18 Feb 2018 14:34:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 14:34:39 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sun, 18 Feb 2018 14:44:29 GMT
VOLUME [/var/lib/cassandra]
# Sun, 18 Feb 2018 14:44:29 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sun, 18 Feb 2018 14:44:29 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f78e4062fa43bcd0d3d18d30422ebae996c55bde9abe0292cf1c51ccf569ac`  
		Last Modified: Tue, 13 Feb 2018 10:07:37 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ec646356dfae7102e93ecae61ea0b81df3157b1ebb816d8f5ca7bf273ff520`  
		Last Modified: Sun, 18 Feb 2018 16:42:15 GMT  
		Size: 844.4 KB (844442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944d86b9c90c54ff6e930b2fe00ad7e2e94d4d77e1df08aa7c284b846581ffee`  
		Last Modified: Sun, 18 Feb 2018 16:42:16 GMT  
		Size: 962.9 KB (962858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e82e9edf326612713377c9c9dd1d8684b38e3b20cfc2c21e3bcc56dd43fe36`  
		Last Modified: Sun, 18 Feb 2018 16:42:15 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb8067b47d39e84751b598a36a9d77a600d62f1bbe06c164e4b2ba41e1dfbe9`  
		Last Modified: Sun, 18 Feb 2018 17:10:55 GMT  
		Size: 118.2 MB (118188108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd0e5d75c626b26258a293b601fc19f3d38e57a296c09864fa30deee5938391`  
		Last Modified: Sun, 18 Feb 2018 17:10:25 GMT  
		Size: 4.9 KB (4884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90055cb4a2fef30b089a462bc19a2136ce65073ba470972150025c32a3df27fc`  
		Last Modified: Sun, 18 Feb 2018 17:10:25 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d705ae935f4abfcc57b5997b04fa95942b433c88bb52228f9d9f4b436083a71`  
		Last Modified: Sun, 18 Feb 2018 17:10:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15dd4ff9440e645261ecda09bf7c9c5a5421529f97ef67652b2e2f8e0ea935d8`  
		Last Modified: Sun, 18 Feb 2018 17:10:25 GMT  
		Size: 22.5 KB (22516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1`

```console
$ docker pull cassandra@sha256:cfdd54a0abc275828c1862a3214766049dc0fda94d1d0b013dea9db60c07c97c
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
$ docker pull cassandra@sha256:fd59c58eca13966dbf610e744c4840e0fc0e64c26eed4823be2a693766a405f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.0 MB (145979985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ea0bd3a3bf55af2d4800cde6f915735a373b06c007c4e62e528b21e304c8a3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Tue, 13 Feb 2018 08:46:29 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sun, 18 Feb 2018 14:07:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 14:15:42 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 14:16:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 14:17:45 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sun, 18 Feb 2018 14:17:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sun, 18 Feb 2018 14:17:52 GMT
ENV CASSANDRA_VERSION=2.1.20
# Sun, 18 Feb 2018 14:19:26 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sun, 18 Feb 2018 14:30:06 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sun, 18 Feb 2018 14:30:07 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sun, 18 Feb 2018 14:30:08 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Sun, 18 Feb 2018 14:30:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sun, 18 Feb 2018 14:30:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 14:30:10 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sun, 18 Feb 2018 14:31:36 GMT
VOLUME [/var/lib/cassandra]
# Sun, 18 Feb 2018 14:31:36 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sun, 18 Feb 2018 14:31:37 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f78e4062fa43bcd0d3d18d30422ebae996c55bde9abe0292cf1c51ccf569ac`  
		Last Modified: Tue, 13 Feb 2018 10:07:37 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ec646356dfae7102e93ecae61ea0b81df3157b1ebb816d8f5ca7bf273ff520`  
		Last Modified: Sun, 18 Feb 2018 16:42:15 GMT  
		Size: 844.4 KB (844442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944d86b9c90c54ff6e930b2fe00ad7e2e94d4d77e1df08aa7c284b846581ffee`  
		Last Modified: Sun, 18 Feb 2018 16:42:16 GMT  
		Size: 962.9 KB (962858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e82e9edf326612713377c9c9dd1d8684b38e3b20cfc2c21e3bcc56dd43fe36`  
		Last Modified: Sun, 18 Feb 2018 16:42:15 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb91ddb314fef736fec952cc02e4bc0a721e6eb4c90faf948ff97cff8478cd3`  
		Last Modified: Sun, 18 Feb 2018 16:42:47 GMT  
		Size: 113.9 MB (113859918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5656b991595dc36adcec65d1df8c0fc0ccfb8ac7380dcb44f5ec440a297a53e`  
		Last Modified: Sun, 18 Feb 2018 16:42:15 GMT  
		Size: 4.7 KB (4673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0fccda8b3fa2a709f5e38aace9b04fa987f7cab16176b52e34856453e13be1`  
		Last Modified: Sun, 18 Feb 2018 16:42:15 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a178a12565bb6045c5e26375f5597975044a8141f2db7725ab377d5aa19b60f`  
		Last Modified: Sun, 18 Feb 2018 16:42:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45dcf4f24cafdf73f274aa4f2c05eab6b8404a53813196651f4237401237958`  
		Last Modified: Sun, 18 Feb 2018 16:42:15 GMT  
		Size: 20.6 KB (20555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1.20`

```console
$ docker pull cassandra@sha256:cfdd54a0abc275828c1862a3214766049dc0fda94d1d0b013dea9db60c07c97c
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
$ docker pull cassandra@sha256:fd59c58eca13966dbf610e744c4840e0fc0e64c26eed4823be2a693766a405f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.0 MB (145979985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ea0bd3a3bf55af2d4800cde6f915735a373b06c007c4e62e528b21e304c8a3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Tue, 13 Feb 2018 08:46:29 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sun, 18 Feb 2018 14:07:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 14:15:42 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 14:16:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 14:17:45 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sun, 18 Feb 2018 14:17:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sun, 18 Feb 2018 14:17:52 GMT
ENV CASSANDRA_VERSION=2.1.20
# Sun, 18 Feb 2018 14:19:26 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sun, 18 Feb 2018 14:30:06 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sun, 18 Feb 2018 14:30:07 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sun, 18 Feb 2018 14:30:08 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Sun, 18 Feb 2018 14:30:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sun, 18 Feb 2018 14:30:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 14:30:10 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sun, 18 Feb 2018 14:31:36 GMT
VOLUME [/var/lib/cassandra]
# Sun, 18 Feb 2018 14:31:36 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sun, 18 Feb 2018 14:31:37 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f78e4062fa43bcd0d3d18d30422ebae996c55bde9abe0292cf1c51ccf569ac`  
		Last Modified: Tue, 13 Feb 2018 10:07:37 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ec646356dfae7102e93ecae61ea0b81df3157b1ebb816d8f5ca7bf273ff520`  
		Last Modified: Sun, 18 Feb 2018 16:42:15 GMT  
		Size: 844.4 KB (844442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944d86b9c90c54ff6e930b2fe00ad7e2e94d4d77e1df08aa7c284b846581ffee`  
		Last Modified: Sun, 18 Feb 2018 16:42:16 GMT  
		Size: 962.9 KB (962858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e82e9edf326612713377c9c9dd1d8684b38e3b20cfc2c21e3bcc56dd43fe36`  
		Last Modified: Sun, 18 Feb 2018 16:42:15 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb91ddb314fef736fec952cc02e4bc0a721e6eb4c90faf948ff97cff8478cd3`  
		Last Modified: Sun, 18 Feb 2018 16:42:47 GMT  
		Size: 113.9 MB (113859918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5656b991595dc36adcec65d1df8c0fc0ccfb8ac7380dcb44f5ec440a297a53e`  
		Last Modified: Sun, 18 Feb 2018 16:42:15 GMT  
		Size: 4.7 KB (4673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0fccda8b3fa2a709f5e38aace9b04fa987f7cab16176b52e34856453e13be1`  
		Last Modified: Sun, 18 Feb 2018 16:42:15 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a178a12565bb6045c5e26375f5597975044a8141f2db7725ab377d5aa19b60f`  
		Last Modified: Sun, 18 Feb 2018 16:42:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45dcf4f24cafdf73f274aa4f2c05eab6b8404a53813196651f4237401237958`  
		Last Modified: Sun, 18 Feb 2018 16:42:15 GMT  
		Size: 20.6 KB (20555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2`

```console
$ docker pull cassandra@sha256:ea7b57c4d572e1661ac43516dd772f8137f759c2983c87abdfb60eefcf80c2a8
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
$ docker pull cassandra@sha256:8315b811f4be81b2b0eda8a4be473c517bda3cccc8c250bfc7bb39f9a9109253
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150310346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a07436152d0687a45ec74fa476cf15dc885e7bd97f0d78c5d4095cde31cac9bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Tue, 13 Feb 2018 08:46:29 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sun, 18 Feb 2018 14:07:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 14:15:42 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 14:16:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 14:17:45 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sun, 18 Feb 2018 14:17:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sun, 18 Feb 2018 14:32:14 GMT
ENV CASSANDRA_VERSION=2.2.12
# Sun, 18 Feb 2018 14:33:52 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sun, 18 Feb 2018 14:34:36 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sun, 18 Feb 2018 14:34:37 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sun, 18 Feb 2018 14:34:37 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Sun, 18 Feb 2018 14:34:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sun, 18 Feb 2018 14:34:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 14:34:39 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sun, 18 Feb 2018 14:44:29 GMT
VOLUME [/var/lib/cassandra]
# Sun, 18 Feb 2018 14:44:29 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sun, 18 Feb 2018 14:44:29 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f78e4062fa43bcd0d3d18d30422ebae996c55bde9abe0292cf1c51ccf569ac`  
		Last Modified: Tue, 13 Feb 2018 10:07:37 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ec646356dfae7102e93ecae61ea0b81df3157b1ebb816d8f5ca7bf273ff520`  
		Last Modified: Sun, 18 Feb 2018 16:42:15 GMT  
		Size: 844.4 KB (844442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944d86b9c90c54ff6e930b2fe00ad7e2e94d4d77e1df08aa7c284b846581ffee`  
		Last Modified: Sun, 18 Feb 2018 16:42:16 GMT  
		Size: 962.9 KB (962858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e82e9edf326612713377c9c9dd1d8684b38e3b20cfc2c21e3bcc56dd43fe36`  
		Last Modified: Sun, 18 Feb 2018 16:42:15 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb8067b47d39e84751b598a36a9d77a600d62f1bbe06c164e4b2ba41e1dfbe9`  
		Last Modified: Sun, 18 Feb 2018 17:10:55 GMT  
		Size: 118.2 MB (118188108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd0e5d75c626b26258a293b601fc19f3d38e57a296c09864fa30deee5938391`  
		Last Modified: Sun, 18 Feb 2018 17:10:25 GMT  
		Size: 4.9 KB (4884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90055cb4a2fef30b089a462bc19a2136ce65073ba470972150025c32a3df27fc`  
		Last Modified: Sun, 18 Feb 2018 17:10:25 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d705ae935f4abfcc57b5997b04fa95942b433c88bb52228f9d9f4b436083a71`  
		Last Modified: Sun, 18 Feb 2018 17:10:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15dd4ff9440e645261ecda09bf7c9c5a5421529f97ef67652b2e2f8e0ea935d8`  
		Last Modified: Sun, 18 Feb 2018 17:10:25 GMT  
		Size: 22.5 KB (22516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2.12`

```console
$ docker pull cassandra@sha256:ea7b57c4d572e1661ac43516dd772f8137f759c2983c87abdfb60eefcf80c2a8
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
$ docker pull cassandra@sha256:8315b811f4be81b2b0eda8a4be473c517bda3cccc8c250bfc7bb39f9a9109253
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150310346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a07436152d0687a45ec74fa476cf15dc885e7bd97f0d78c5d4095cde31cac9bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Tue, 13 Feb 2018 08:46:29 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Sun, 18 Feb 2018 14:07:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 		iproute2 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 14:15:42 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 14:16:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 14:17:45 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sun, 18 Feb 2018 14:17:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sun, 18 Feb 2018 14:32:14 GMT
ENV CASSANDRA_VERSION=2.2.12
# Sun, 18 Feb 2018 14:33:52 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sun, 18 Feb 2018 14:34:36 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sun, 18 Feb 2018 14:34:37 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sun, 18 Feb 2018 14:34:37 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Sun, 18 Feb 2018 14:34:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sun, 18 Feb 2018 14:34:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 14:34:39 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sun, 18 Feb 2018 14:44:29 GMT
VOLUME [/var/lib/cassandra]
# Sun, 18 Feb 2018 14:44:29 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sun, 18 Feb 2018 14:44:29 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f78e4062fa43bcd0d3d18d30422ebae996c55bde9abe0292cf1c51ccf569ac`  
		Last Modified: Tue, 13 Feb 2018 10:07:37 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ec646356dfae7102e93ecae61ea0b81df3157b1ebb816d8f5ca7bf273ff520`  
		Last Modified: Sun, 18 Feb 2018 16:42:15 GMT  
		Size: 844.4 KB (844442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944d86b9c90c54ff6e930b2fe00ad7e2e94d4d77e1df08aa7c284b846581ffee`  
		Last Modified: Sun, 18 Feb 2018 16:42:16 GMT  
		Size: 962.9 KB (962858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e82e9edf326612713377c9c9dd1d8684b38e3b20cfc2c21e3bcc56dd43fe36`  
		Last Modified: Sun, 18 Feb 2018 16:42:15 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb8067b47d39e84751b598a36a9d77a600d62f1bbe06c164e4b2ba41e1dfbe9`  
		Last Modified: Sun, 18 Feb 2018 17:10:55 GMT  
		Size: 118.2 MB (118188108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd0e5d75c626b26258a293b601fc19f3d38e57a296c09864fa30deee5938391`  
		Last Modified: Sun, 18 Feb 2018 17:10:25 GMT  
		Size: 4.9 KB (4884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90055cb4a2fef30b089a462bc19a2136ce65073ba470972150025c32a3df27fc`  
		Last Modified: Sun, 18 Feb 2018 17:10:25 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d705ae935f4abfcc57b5997b04fa95942b433c88bb52228f9d9f4b436083a71`  
		Last Modified: Sun, 18 Feb 2018 17:10:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15dd4ff9440e645261ecda09bf7c9c5a5421529f97ef67652b2e2f8e0ea935d8`  
		Last Modified: Sun, 18 Feb 2018 17:10:25 GMT  
		Size: 22.5 KB (22516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3`

```console
$ docker pull cassandra@sha256:edab14406f41ac6786bba3b3a18866cd42c9b54c51e94f2f01f613c5a2b4cf87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3` - linux; amd64

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

### `cassandra:3` - linux; arm64 variant v8

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

### `cassandra:3` - linux; 386

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

### `cassandra:3` - linux; ppc64le

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

## `cassandra:3.0`

```console
$ docker pull cassandra@sha256:9bf8a24cf4eb7b7654405d9d522b860e6958114e8b8e550d90b818f4b43b8cc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3.0` - linux; amd64

```console
$ docker pull cassandra@sha256:4468875831ea6ae752276fd73ed23255898ff19e98fcb09ca222ca8d57b6fbe3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127732215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7867ac537c2b56993ae1467d436f5827b62e8578d22aa701c5271ba9e1ab5f7`
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
# Sun, 18 Feb 2018 02:52:00 GMT
ENV CASSANDRA_VERSION=3.0.15
# Sun, 18 Feb 2018 02:52:24 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sun, 18 Feb 2018 02:57:09 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sun, 18 Feb 2018 02:57:10 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sun, 18 Feb 2018 02:57:10 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Sun, 18 Feb 2018 02:57:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sun, 18 Feb 2018 02:57:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 02:57:12 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sun, 18 Feb 2018 02:57:12 GMT
VOLUME [/var/lib/cassandra]
# Sun, 18 Feb 2018 02:57:13 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sun, 18 Feb 2018 02:57:13 GMT
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
	-	`sha256:078eb1a3fcd0ead8cc9bb62025d641937c1a7e9a3266d803e91c988392cef19f`  
		Last Modified: Sun, 18 Feb 2018 03:13:48 GMT  
		Size: 98.6 MB (98554139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bb49bf6feea2a77c140388d199bc34627f1fc646d507e7e34f9f18ee80d4da8`  
		Last Modified: Sun, 18 Feb 2018 03:13:22 GMT  
		Size: 4.7 KB (4707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e0fc88a23af1d4de994a31aace133d925ecc4b579b1ef692f09598fe261d08`  
		Last Modified: Sun, 18 Feb 2018 03:13:22 GMT  
		Size: 840.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f5a39703100c68f056ddf8c5586766ac4ca9db0eb6ebf4f0c3dad17f5616afd`  
		Last Modified: Sun, 18 Feb 2018 03:13:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a038fe6e094e812bc2a01c5ca117d730450dff6d42a88fa1a29f62bf0aee88b`  
		Last Modified: Sun, 18 Feb 2018 03:13:22 GMT  
		Size: 25.4 KB (25357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:128d66f87bcc3b58d49d1df127a8b2b7712d4fd40549e146a2c1c61487db5cef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116987445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:436fbc01f0be84e55db2de76fad26a62a2b689fb5e365180ea17018119d88196`
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
# Sun, 18 Feb 2018 01:43:10 GMT
ENV CASSANDRA_VERSION=3.0.15
# Sun, 18 Feb 2018 01:45:55 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sun, 18 Feb 2018 01:45:56 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sun, 18 Feb 2018 01:45:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sun, 18 Feb 2018 01:45:58 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Sun, 18 Feb 2018 01:46:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sun, 18 Feb 2018 01:46:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 01:46:03 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sun, 18 Feb 2018 01:46:04 GMT
VOLUME [/var/lib/cassandra]
# Sun, 18 Feb 2018 01:46:05 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sun, 18 Feb 2018 01:46:05 GMT
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
	-	`sha256:1b67afeb0a42310df384bbf606a999ee931d9175806626eee87b76218b0c2411`  
		Last Modified: Sun, 18 Feb 2018 01:49:45 GMT  
		Size: 90.5 MB (90520770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b16f1f87f8f0d9deebffcb4b98ed741ac6ebc34a0b0da331ca5ca942045d29a`  
		Last Modified: Sun, 18 Feb 2018 01:49:18 GMT  
		Size: 4.7 KB (4709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80e113c4b52c356ea2cfbfb31c3c62dfb0678ff3b67a90966570dc01f7409898`  
		Last Modified: Sun, 18 Feb 2018 01:49:18 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65a47f08055823025ebf098be452ec7866e0071faaf57b38921288f35b22c45`  
		Last Modified: Sun, 18 Feb 2018 01:49:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d737d8e4f592f56cc8be6d92042181dd4eb98e95ae006258349528d6345a33c`  
		Last Modified: Sun, 18 Feb 2018 01:49:51 GMT  
		Size: 25.4 KB (25359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0` - linux; 386

```console
$ docker pull cassandra@sha256:d57376d96c99e5d9bec8af1d7887c2e2c2a57712da0a39c1d099b4e402d5a6fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127774536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00ea734a387267d527b5e1afcba21a6b40a924bf74214312b9a7293494a71239`
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
# Sun, 18 Feb 2018 15:40:09 GMT
ENV CASSANDRA_VERSION=3.0.15
# Sun, 18 Feb 2018 15:40:49 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sun, 18 Feb 2018 15:51:07 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sun, 18 Feb 2018 15:51:08 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sun, 18 Feb 2018 15:51:09 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Sun, 18 Feb 2018 15:51:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sun, 18 Feb 2018 15:51:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 15:51:11 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sun, 18 Feb 2018 15:58:57 GMT
VOLUME [/var/lib/cassandra]
# Sun, 18 Feb 2018 15:58:57 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sun, 18 Feb 2018 15:58:57 GMT
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
	-	`sha256:1e7ff5e4d5a68377b2fd0bc0509f116b3de79b51104b1e7b9b2c0bdffb129f8b`  
		Last Modified: Sun, 18 Feb 2018 17:46:20 GMT  
		Size: 97.6 MB (97608241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71dcb49f670821e777fa939bbe3ca199875202b54a707c1f04f82e6fb3645c93`  
		Last Modified: Sun, 18 Feb 2018 17:45:52 GMT  
		Size: 4.7 KB (4709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d74e7a39f3c7db7397f9dcc5f16d8e2bef32cf5bb0c348b719dc12cb364f268`  
		Last Modified: Sun, 18 Feb 2018 17:45:53 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee805c139f328e2e2133bf2430a83e4de9e74229feee9ed5ab5dfd27493d1bb9`  
		Last Modified: Sun, 18 Feb 2018 17:45:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425730d1a04e1525e49974f01383e3b45dbf70d2e8e8fc55d4ba0930bb9e366d`  
		Last Modified: Sun, 18 Feb 2018 17:45:53 GMT  
		Size: 25.4 KB (25358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0` - linux; ppc64le

```console
$ docker pull cassandra@sha256:7b83020527e71fbd4ea722b185e9c41404516180bfdd20a9e9bc628a388aec82
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.0 MB (119998756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d0be093465dcb607896727542c41bc078b47a17efc9b2a5282f95f2a6fed43c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 02:27:58 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Thu, 15 Feb 2018 02:29:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 02:29:26 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 02:32:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 02:32:59 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 17 Feb 2018 11:05:28 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 17 Feb 2018 11:05:29 GMT
ENV CASSANDRA_VERSION=3.0.15
# Sat, 17 Feb 2018 11:08:46 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 17 Feb 2018 11:08:48 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 17 Feb 2018 11:08:51 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 17 Feb 2018 11:08:52 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Sat, 17 Feb 2018 11:08:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 17 Feb 2018 11:08:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 11:08:59 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 17 Feb 2018 11:09:01 GMT
VOLUME [/var/lib/cassandra]
# Sat, 17 Feb 2018 11:09:02 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sat, 17 Feb 2018 11:09:03 GMT
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
	-	`sha256:494563355bb93dbd0d6ba22fc0c018121752da4832c910fb2d7fa55d5f0c18f9`  
		Last Modified: Sat, 17 Feb 2018 11:13:17 GMT  
		Size: 4.8 MB (4821096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af41db3fead31a31e269d55b4322206aa69cd8cf114c4727b1b4c10451c0487`  
		Last Modified: Sat, 17 Feb 2018 11:13:15 GMT  
		Size: 923.4 KB (923375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2dfb170524920f14ffca2d34f9fc36d3f54e06fee478e7ad1386c290444b7f`  
		Last Modified: Sat, 17 Feb 2018 11:13:14 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffbc25c8599c681653fc037c5a6e1d90c4615523566008f2a7e9351410ea0cff`  
		Last Modified: Sat, 17 Feb 2018 11:13:30 GMT  
		Size: 91.5 MB (91450186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a28b0b8353610debf35981bb7896d97552a8dcf1bc444afa968bb2c09123d05`  
		Last Modified: Sat, 17 Feb 2018 11:13:13 GMT  
		Size: 4.7 KB (4708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d581e85e506de703bb89fca633b0775780de98c6c09a9af0d28180b0bf697c53`  
		Last Modified: Sat, 17 Feb 2018 11:13:12 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d11e2a08a637a307206aa3f042ed7c14a1aa031165062b95660874ab327896`  
		Last Modified: Sat, 17 Feb 2018 11:13:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e42bc3567e28587975fbdb04bddb0467c22c71a1c15b6be3f7a99a27f9d673`  
		Last Modified: Sat, 17 Feb 2018 11:13:11 GMT  
		Size: 25.4 KB (25357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0.15`

```console
$ docker pull cassandra@sha256:9bf8a24cf4eb7b7654405d9d522b860e6958114e8b8e550d90b818f4b43b8cc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3.0.15` - linux; amd64

```console
$ docker pull cassandra@sha256:4468875831ea6ae752276fd73ed23255898ff19e98fcb09ca222ca8d57b6fbe3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127732215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7867ac537c2b56993ae1467d436f5827b62e8578d22aa701c5271ba9e1ab5f7`
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
# Sun, 18 Feb 2018 02:52:00 GMT
ENV CASSANDRA_VERSION=3.0.15
# Sun, 18 Feb 2018 02:52:24 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sun, 18 Feb 2018 02:57:09 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sun, 18 Feb 2018 02:57:10 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sun, 18 Feb 2018 02:57:10 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Sun, 18 Feb 2018 02:57:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sun, 18 Feb 2018 02:57:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 02:57:12 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sun, 18 Feb 2018 02:57:12 GMT
VOLUME [/var/lib/cassandra]
# Sun, 18 Feb 2018 02:57:13 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sun, 18 Feb 2018 02:57:13 GMT
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
	-	`sha256:078eb1a3fcd0ead8cc9bb62025d641937c1a7e9a3266d803e91c988392cef19f`  
		Last Modified: Sun, 18 Feb 2018 03:13:48 GMT  
		Size: 98.6 MB (98554139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bb49bf6feea2a77c140388d199bc34627f1fc646d507e7e34f9f18ee80d4da8`  
		Last Modified: Sun, 18 Feb 2018 03:13:22 GMT  
		Size: 4.7 KB (4707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e0fc88a23af1d4de994a31aace133d925ecc4b579b1ef692f09598fe261d08`  
		Last Modified: Sun, 18 Feb 2018 03:13:22 GMT  
		Size: 840.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f5a39703100c68f056ddf8c5586766ac4ca9db0eb6ebf4f0c3dad17f5616afd`  
		Last Modified: Sun, 18 Feb 2018 03:13:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a038fe6e094e812bc2a01c5ca117d730450dff6d42a88fa1a29f62bf0aee88b`  
		Last Modified: Sun, 18 Feb 2018 03:13:22 GMT  
		Size: 25.4 KB (25357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0.15` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:128d66f87bcc3b58d49d1df127a8b2b7712d4fd40549e146a2c1c61487db5cef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116987445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:436fbc01f0be84e55db2de76fad26a62a2b689fb5e365180ea17018119d88196`
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
# Sun, 18 Feb 2018 01:43:10 GMT
ENV CASSANDRA_VERSION=3.0.15
# Sun, 18 Feb 2018 01:45:55 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sun, 18 Feb 2018 01:45:56 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sun, 18 Feb 2018 01:45:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sun, 18 Feb 2018 01:45:58 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Sun, 18 Feb 2018 01:46:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sun, 18 Feb 2018 01:46:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 01:46:03 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sun, 18 Feb 2018 01:46:04 GMT
VOLUME [/var/lib/cassandra]
# Sun, 18 Feb 2018 01:46:05 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sun, 18 Feb 2018 01:46:05 GMT
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
	-	`sha256:1b67afeb0a42310df384bbf606a999ee931d9175806626eee87b76218b0c2411`  
		Last Modified: Sun, 18 Feb 2018 01:49:45 GMT  
		Size: 90.5 MB (90520770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b16f1f87f8f0d9deebffcb4b98ed741ac6ebc34a0b0da331ca5ca942045d29a`  
		Last Modified: Sun, 18 Feb 2018 01:49:18 GMT  
		Size: 4.7 KB (4709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80e113c4b52c356ea2cfbfb31c3c62dfb0678ff3b67a90966570dc01f7409898`  
		Last Modified: Sun, 18 Feb 2018 01:49:18 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65a47f08055823025ebf098be452ec7866e0071faaf57b38921288f35b22c45`  
		Last Modified: Sun, 18 Feb 2018 01:49:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d737d8e4f592f56cc8be6d92042181dd4eb98e95ae006258349528d6345a33c`  
		Last Modified: Sun, 18 Feb 2018 01:49:51 GMT  
		Size: 25.4 KB (25359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0.15` - linux; 386

```console
$ docker pull cassandra@sha256:d57376d96c99e5d9bec8af1d7887c2e2c2a57712da0a39c1d099b4e402d5a6fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127774536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00ea734a387267d527b5e1afcba21a6b40a924bf74214312b9a7293494a71239`
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
# Sun, 18 Feb 2018 15:40:09 GMT
ENV CASSANDRA_VERSION=3.0.15
# Sun, 18 Feb 2018 15:40:49 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sun, 18 Feb 2018 15:51:07 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sun, 18 Feb 2018 15:51:08 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sun, 18 Feb 2018 15:51:09 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Sun, 18 Feb 2018 15:51:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sun, 18 Feb 2018 15:51:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 15:51:11 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sun, 18 Feb 2018 15:58:57 GMT
VOLUME [/var/lib/cassandra]
# Sun, 18 Feb 2018 15:58:57 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sun, 18 Feb 2018 15:58:57 GMT
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
	-	`sha256:1e7ff5e4d5a68377b2fd0bc0509f116b3de79b51104b1e7b9b2c0bdffb129f8b`  
		Last Modified: Sun, 18 Feb 2018 17:46:20 GMT  
		Size: 97.6 MB (97608241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71dcb49f670821e777fa939bbe3ca199875202b54a707c1f04f82e6fb3645c93`  
		Last Modified: Sun, 18 Feb 2018 17:45:52 GMT  
		Size: 4.7 KB (4709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d74e7a39f3c7db7397f9dcc5f16d8e2bef32cf5bb0c348b719dc12cb364f268`  
		Last Modified: Sun, 18 Feb 2018 17:45:53 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee805c139f328e2e2133bf2430a83e4de9e74229feee9ed5ab5dfd27493d1bb9`  
		Last Modified: Sun, 18 Feb 2018 17:45:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425730d1a04e1525e49974f01383e3b45dbf70d2e8e8fc55d4ba0930bb9e366d`  
		Last Modified: Sun, 18 Feb 2018 17:45:53 GMT  
		Size: 25.4 KB (25358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0.15` - linux; ppc64le

```console
$ docker pull cassandra@sha256:7b83020527e71fbd4ea722b185e9c41404516180bfdd20a9e9bc628a388aec82
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.0 MB (119998756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d0be093465dcb607896727542c41bc078b47a17efc9b2a5282f95f2a6fed43c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 02:27:58 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Thu, 15 Feb 2018 02:29:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		libjemalloc1 		procps 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends 			dirmngr 			gnupg 		; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 02:29:26 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 02:32:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 02:32:59 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Sat, 17 Feb 2018 11:05:28 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 17 Feb 2018 11:05:29 GMT
ENV CASSANDRA_VERSION=3.0.15
# Sat, 17 Feb 2018 11:08:46 GMT
RUN set -ex; 		mkdir -p /usr/share/man/man1/; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "https://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 17 Feb 2018 11:08:48 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Sat, 17 Feb 2018 11:08:51 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Sat, 17 Feb 2018 11:08:52 GMT
COPY file:0e8f6e0d1c70f726f3f25d130df1b8254287df9f9775a268744e0b2045621c81 in /usr/local/bin/ 
# Sat, 17 Feb 2018 11:08:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Sat, 17 Feb 2018 11:08:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 11:08:59 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Sat, 17 Feb 2018 11:09:01 GMT
VOLUME [/var/lib/cassandra]
# Sat, 17 Feb 2018 11:09:02 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Sat, 17 Feb 2018 11:09:03 GMT
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
	-	`sha256:494563355bb93dbd0d6ba22fc0c018121752da4832c910fb2d7fa55d5f0c18f9`  
		Last Modified: Sat, 17 Feb 2018 11:13:17 GMT  
		Size: 4.8 MB (4821096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af41db3fead31a31e269d55b4322206aa69cd8cf114c4727b1b4c10451c0487`  
		Last Modified: Sat, 17 Feb 2018 11:13:15 GMT  
		Size: 923.4 KB (923375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2dfb170524920f14ffca2d34f9fc36d3f54e06fee478e7ad1386c290444b7f`  
		Last Modified: Sat, 17 Feb 2018 11:13:14 GMT  
		Size: 18.2 KB (18219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffbc25c8599c681653fc037c5a6e1d90c4615523566008f2a7e9351410ea0cff`  
		Last Modified: Sat, 17 Feb 2018 11:13:30 GMT  
		Size: 91.5 MB (91450186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a28b0b8353610debf35981bb7896d97552a8dcf1bc444afa968bb2c09123d05`  
		Last Modified: Sat, 17 Feb 2018 11:13:13 GMT  
		Size: 4.7 KB (4708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d581e85e506de703bb89fca633b0775780de98c6c09a9af0d28180b0bf697c53`  
		Last Modified: Sat, 17 Feb 2018 11:13:12 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d11e2a08a637a307206aa3f042ed7c14a1aa031165062b95660874ab327896`  
		Last Modified: Sat, 17 Feb 2018 11:13:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e42bc3567e28587975fbdb04bddb0467c22c71a1c15b6be3f7a99a27f9d673`  
		Last Modified: Sat, 17 Feb 2018 11:13:11 GMT  
		Size: 25.4 KB (25357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.11`

```console
$ docker pull cassandra@sha256:edab14406f41ac6786bba3b3a18866cd42c9b54c51e94f2f01f613c5a2b4cf87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3.11` - linux; amd64

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

### `cassandra:3.11` - linux; arm64 variant v8

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

### `cassandra:3.11` - linux; 386

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

### `cassandra:3.11` - linux; ppc64le

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

## `cassandra:3.11.1`

```console
$ docker pull cassandra@sha256:edab14406f41ac6786bba3b3a18866cd42c9b54c51e94f2f01f613c5a2b4cf87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3.11.1` - linux; amd64

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

### `cassandra:3.11.1` - linux; arm64 variant v8

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

### `cassandra:3.11.1` - linux; 386

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

### `cassandra:3.11.1` - linux; ppc64le

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
