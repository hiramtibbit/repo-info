## `node:lts-jessie`

```console
$ docker pull node@sha256:2278c7fe02b4e535aca58e1d7e287b6e71fbc094fa5e23d538001284c4d6777b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `node:lts-jessie` - linux; amd64

```console
$ docker pull node@sha256:a6beb1fe865173c648d443baeb9ffa51671f48a13d9a681e83c63be3f3d224a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (268021041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c6c62fac703f6445567a7f62c4637815daf48bc7e98d9614d0732920f0a62c3`
-	Default Command: `["node"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:37 GMT
ADD file:ca3bf06a040bfe3d0d727326698ec36f9578bf9c8f6fe1050b7d85a3dd241112 in / 
# Tue, 26 Mar 2019 22:39:37 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:17:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:17:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:19:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:24:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:24:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 26 Mar 2019 23:28:16 GMT
ENV NODE_VERSION=10.15.3
# Tue, 26 Mar 2019 23:28:21 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     i386) ARCH='x86';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 26 Mar 2019 23:28:21 GMT
ENV YARN_VERSION=1.13.0
# Tue, 26 Mar 2019 23:28:22 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 26 Mar 2019 23:28:23 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:bf295113f40dde5826c75de78b0aaa190302b3b467a3d6a3f222498b0ad1cea3`  
		Last Modified: Tue, 26 Mar 2019 22:43:06 GMT  
		Size: 54.4 MB (54382913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fe5b9a5ae4df86ade5163499bec6552c354611960eabfc7f1391f9e9f57945`  
		Last Modified: Tue, 26 Mar 2019 23:30:21 GMT  
		Size: 17.5 MB (17541227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc848917b0a4c37d6f00a2db476e407c6b36ce371a07e421e1b3b943ed64cba`  
		Last Modified: Tue, 26 Mar 2019 23:30:34 GMT  
		Size: 43.3 MB (43313715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053381643ee38d023c962f8789bb89be21aca864723989f7f69add5f56bd0472`  
		Last Modified: Tue, 26 Mar 2019 23:31:03 GMT  
		Size: 132.2 MB (132184295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b0950c9f6211548713902851f8bd78a395d2ef15973786c732c842f2618c44`  
		Last Modified: Tue, 26 Mar 2019 23:33:18 GMT  
		Size: 4.4 KB (4409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38909538ebc67e65a8576ab84176ce8894ce15b4b70adfbe7b0d5102b32175a`  
		Last Modified: Tue, 26 Mar 2019 23:34:20 GMT  
		Size: 19.3 MB (19273631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8a485c4a0f0d855e614d389f4c23ded2ef345bca6d5edd756ad191f0223407`  
		Last Modified: Tue, 26 Mar 2019 23:34:14 GMT  
		Size: 1.3 MB (1320851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `node:lts-jessie` - linux; arm variant v7

```console
$ docker pull node@sha256:e6671e88b36454a278442295fe9e278dd3f70a34fbe0547d15f29b52189a7880
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.2 MB (241187116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c7a06296c493e0e9c8268cc19b3f2354efb31fb5ef58337e800ddcfc2ab3140`
-	Default Command: `["node"]`

```dockerfile
# Wed, 27 Mar 2019 12:03:57 GMT
ADD file:4757894eb0296869eee5517ee63abdb019c5b02b28e2de6774336869227076ad in / 
# Wed, 27 Mar 2019 12:03:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:04:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:04:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:05:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:08:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 12:41:16 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 03 Apr 2019 12:42:15 GMT
ENV NODE_VERSION=10.15.3
# Wed, 03 Apr 2019 12:42:21 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     i386) ARCH='x86';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 03 Apr 2019 12:42:22 GMT
ENV YARN_VERSION=1.13.0
# Wed, 03 Apr 2019 12:42:25 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 03 Apr 2019 12:42:25 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:9cb2604037f474632362bf2141b9a7472452b696f2b0974eef3c5208260e6d69`  
		Last Modified: Wed, 27 Mar 2019 12:10:48 GMT  
		Size: 50.3 MB (50294640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbade77d5540720db42ecb08c263abf534c719f427db0c1c3d285765ba1fe238`  
		Last Modified: Wed, 27 Mar 2019 13:19:12 GMT  
		Size: 16.7 MB (16717953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:264a4d46bfc19d14756c9c8906b4fad6db8178def3b95df0fdead9ca451cf204`  
		Last Modified: Wed, 27 Mar 2019 13:19:33 GMT  
		Size: 39.8 MB (39765443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee36cf17387fcb1dab53d63d742c69afa1f9ffab928956beaab2b8dc77d3e743`  
		Last Modified: Wed, 27 Mar 2019 13:20:11 GMT  
		Size: 115.0 MB (114968584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4aa348a91668ff7f37c2a476b82180f77493746753caa04110384dfb33c4ef`  
		Last Modified: Wed, 03 Apr 2019 12:43:40 GMT  
		Size: 4.4 KB (4440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a91c429081ab602d2941589fd99b948eb572f902befe532e77540c8d66e7b199`  
		Last Modified: Wed, 03 Apr 2019 12:44:26 GMT  
		Size: 18.1 MB (18115179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fb9ddce4c65eb74298a66bb8559a032db4ef70c230952c9618524f603b7231`  
		Last Modified: Wed, 03 Apr 2019 12:44:19 GMT  
		Size: 1.3 MB (1320877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
