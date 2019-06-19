## `node:chakracore-8.11`

```console
$ docker pull node@sha256:4f490a8b4a9f93ea2e6c10138a281e88a2304d7dff5f0d30f4db54f1b0f73093
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `node:chakracore-8.11` - linux; amd64

```console
$ docker pull node@sha256:f1f117b253b9bbe39d080c373450d80c7f77c69ef32389eb40f5c813d7590974
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265739266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de2a870aaa310395d9b0e83a3b9bac9840c1b1945ed303298b86e167b5a46f1a`
-	Default Command: `["node"]`

```dockerfile
# Mon, 10 Jun 2019 23:22:09 GMT
ADD file:6f4dbeacd2c7a48941d1b7aacc0e881df9cd6e3c2bcc54665038e0f2e29c7ac1 in / 
# Mon, 10 Jun 2019 23:22:14 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:19:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:19:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:22:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:26:31 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 01:54:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 19 Jun 2019 01:55:46 GMT
ENV NODE_VERSION=8.11.1
# Wed, 19 Jun 2019 01:55:53 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && curl -fsSLO --compressed "https://nodejs.org/download/chakracore-release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/download/chakracore-release/v$NODE_VERSION/SHASUMS256.txt"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 19 Jun 2019 01:55:54 GMT
ENV YARN_VERSION=1.6.0
# Wed, 19 Jun 2019 01:55:56 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 19 Jun 2019 01:55:56 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:9811207f4ebad5e666eddf6e1684e4eabe16efc94008f77fc6fd17f02c583d17`  
		Last Modified: Mon, 10 Jun 2019 23:26:18 GMT  
		Size: 54.4 MB (54385835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8f4d0494dc910e90a45519fd46ead7a76c43073a36a726ddcedbdfafbd80cf`  
		Last Modified: Tue, 11 Jun 2019 00:35:12 GMT  
		Size: 17.6 MB (17572182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1954412987c0e1cf159da814c1b3207d08c9251c518b5d44e06e79e9c9cde7cd`  
		Last Modified: Tue, 11 Jun 2019 00:35:34 GMT  
		Size: 43.3 MB (43336512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1801b5eaa295cbf3bf82923331e3cc54cb72528fb005dbb2f561613c835a737e`  
		Last Modified: Tue, 11 Jun 2019 00:36:15 GMT  
		Size: 132.2 MB (132228368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2205ab396efeedbf58811f558a9f4c758aaffb632017aed22499b1a98a9a1211`  
		Last Modified: Wed, 19 Jun 2019 01:57:25 GMT  
		Size: 4.4 KB (4424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7406a024803ea995399bf13fd93f245bc8c6fb379e02f692f2f84eaaf02d4e21`  
		Last Modified: Wed, 19 Jun 2019 01:58:30 GMT  
		Size: 17.3 MB (17253589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de2df751e79acf17b33807e9ff55391b91133a0c05a56c80a2e5ea031ad624db`  
		Last Modified: Wed, 19 Jun 2019 01:58:22 GMT  
		Size: 958.4 KB (958356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
