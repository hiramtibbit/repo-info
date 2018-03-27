## `node:8-onbuild`

```console
$ docker pull node@sha256:9b7f191b2bedb2da8d6c8382d4d23bed520b230ff2eea3950c1779e493d80012
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `node:8-onbuild` - linux; amd64

```console
$ docker pull node@sha256:f0c54633bd417695ea3ef150b3ddf409d045073807b506a3e55d5d8e5f3c5a96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265823994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcd5640e6f76d2b0656616ae558095e04c3dfd571acb61bd06b0be2e6ef74922`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:39:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:39:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:41:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:02:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 15 Mar 2018 05:02:57 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Thu, 15 Mar 2018 05:05:55 GMT
ENV NODE_VERSION=8.10.0
# Thu, 15 Mar 2018 05:05:59 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     i386) ARCH='x86';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 15 Mar 2018 05:06:00 GMT
ENV YARN_VERSION=1.5.1
# Fri, 16 Mar 2018 17:41:12 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 16 Mar 2018 17:41:12 GMT
CMD ["node"]
# Fri, 16 Mar 2018 17:42:00 GMT
RUN mkdir -p /usr/src/app
# Fri, 16 Mar 2018 17:42:01 GMT
WORKDIR /usr/src/app
# Fri, 16 Mar 2018 17:42:01 GMT
ONBUILD ARG NODE_ENV
# Fri, 16 Mar 2018 17:42:01 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Fri, 16 Mar 2018 17:42:02 GMT
ONBUILD COPY package.json /usr/src/app/
# Fri, 16 Mar 2018 17:42:02 GMT
ONBUILD RUN npm install && npm cache clean --force
# Fri, 16 Mar 2018 17:42:02 GMT
ONBUILD COPY . /usr/src/app
# Fri, 16 Mar 2018 17:42:02 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb899b4df216ab398fb05547f86dc371db944cf53dea7913d2f4261ed09e2be`  
		Last Modified: Wed, 14 Mar 2018 00:34:40 GMT  
		Size: 19.3 MB (19266189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74eaa8be7221e87fae8804464be5f691955f582b6b4efe703095a2c9b041696a`  
		Last Modified: Wed, 14 Mar 2018 00:37:48 GMT  
		Size: 43.3 MB (43254408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6e98fe4040daf34ac9d37d57abf4bb71644014dd4c27ca80c89198849cb242`  
		Last Modified: Wed, 14 Mar 2018 00:38:33 GMT  
		Size: 131.1 MB (131077114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:452c06dec5fa07ba72df430a77ef5ce1864e989791bfb5fca3d5d872e968d1d3`  
		Last Modified: Thu, 15 Mar 2018 05:13:51 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3c215894deda1b991c6cfca5391918fbee70039d85e25f8ad0961cb65469af`  
		Last Modified: Thu, 15 Mar 2018 05:13:51 GMT  
		Size: 117.6 KB (117621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c62e8e1f22ef284112cc90756d698c1808327c6478b1bdd0fa0719fac98dafde`  
		Last Modified: Thu, 15 Mar 2018 05:20:08 GMT  
		Size: 18.4 MB (18434557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93263a0b6217e7490233edbd41c9f76b5c23bfe403ff6858c9d252d97cc7ba6f`  
		Last Modified: Fri, 16 Mar 2018 17:56:37 GMT  
		Size: 1.1 MB (1061035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f6c02290be75c1d6d967a3d169170db42a17ab6b034b90e68ab4f86d61a76cb`  
		Last Modified: Fri, 16 Mar 2018 17:59:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `node:8-onbuild` - linux; arm variant v7

```console
$ docker pull node@sha256:764000ebe62bbec360d6dd48d43694ec7a1344ba5585440077d7f648e828e3d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.5 MB (310483699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91fb331869ee9b522aaa05f81ba52c5c21179357091900b55f6b1f20eae83697`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 14 Mar 2018 12:25:46 GMT
ADD file:6208a77a3fff4a68790f06b1b3a3e0fcb563724a9d1485d8e10592e2cf32b190 in / 
# Wed, 14 Mar 2018 12:25:46 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:08:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:08:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 27 Mar 2018 00:14:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 27 Mar 2018 00:16:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 27 Mar 2018 00:51:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 27 Mar 2018 00:51:47 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 27 Mar 2018 00:54:34 GMT
ENV NODE_VERSION=8.10.0
# Tue, 27 Mar 2018 00:54:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     i386) ARCH='x86';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 27 Mar 2018 00:54:40 GMT
ENV YARN_VERSION=1.5.1
# Tue, 27 Mar 2018 00:54:43 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 27 Mar 2018 00:54:43 GMT
CMD ["node"]
# Tue, 27 Mar 2018 00:55:01 GMT
RUN mkdir -p /usr/src/app
# Tue, 27 Mar 2018 00:55:01 GMT
WORKDIR /usr/src/app
# Tue, 27 Mar 2018 00:55:02 GMT
ONBUILD ARG NODE_ENV
# Tue, 27 Mar 2018 00:55:02 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Tue, 27 Mar 2018 00:55:03 GMT
ONBUILD COPY package.json /usr/src/app/
# Tue, 27 Mar 2018 00:55:03 GMT
ONBUILD RUN npm install && npm cache clean --force
# Tue, 27 Mar 2018 00:55:03 GMT
ONBUILD COPY . /usr/src/app
# Tue, 27 Mar 2018 00:55:04 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:8c1aa76b118f0b6f588a119501660e6c6984f1c8af222f2b04be33b64cada0c2`  
		Last Modified: Wed, 14 Mar 2018 12:37:22 GMT  
		Size: 44.1 MB (44078135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e9ef25c18e0f09d74347d03f695e4b2ca6892d40380d17d5e72a7990176d9ca`  
		Last Modified: Wed, 14 Mar 2018 13:25:25 GMT  
		Size: 7.5 MB (7530275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0a23b0574822c6b7f8d5086f3f20914e914e7cc95644c971f578832516698c`  
		Last Modified: Wed, 14 Mar 2018 13:25:25 GMT  
		Size: 8.6 MB (8563686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b1b2b316ad29c16af3de22ea510be85733bf23dd4501f5d829fd40b2ef0239`  
		Last Modified: Tue, 27 Mar 2018 00:27:26 GMT  
		Size: 49.6 MB (49609682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566e79cba5cdd6465927d36541e21c618b1e18f1bbe14af7a74c0400b670fb33`  
		Last Modified: Tue, 27 Mar 2018 00:28:26 GMT  
		Size: 181.9 MB (181909761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9312429abc8763c02d72e0586e114407f4a28e3f14425096179a008b83adde0`  
		Last Modified: Tue, 27 Mar 2018 01:01:01 GMT  
		Size: 4.3 KB (4349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:842e8d85a8d995321a0ea90fca4dec342a83560e747ac02c6458a9d27495f0d4`  
		Last Modified: Tue, 27 Mar 2018 01:01:00 GMT  
		Size: 115.0 KB (115021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e623b108c2a3155fdac1aebade7e0dcedbcfe35aa4477371d6cdb355371810`  
		Last Modified: Tue, 27 Mar 2018 01:04:22 GMT  
		Size: 17.6 MB (17609328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca44bbac6fe3567f6ed5fd5ce63fd5ac1cda0a42abd4dd10436af5a788766e1`  
		Last Modified: Tue, 27 Mar 2018 01:04:15 GMT  
		Size: 1.1 MB (1063299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecca77d52aa9ce845147d3c9867c44da78fc71045727533a285e2423c10e64b0`  
		Last Modified: Tue, 27 Mar 2018 01:05:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `node:8-onbuild` - linux; arm64 variant v8

```console
$ docker pull node@sha256:2c2e15646f767d1a8545a1f3ba9cbb877f04217e60ce5b7604c3ec22e5527859
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.2 MB (245183289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c533b038c6843a5bc19f4e287838877503e8d9c379dd983c4e42b7c74a99bf76`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:23:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:23:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:25:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:35:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 09:57:00 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 16 Mar 2018 09:57:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 16 Mar 2018 10:00:18 GMT
ENV NODE_VERSION=8.10.0
# Fri, 16 Mar 2018 10:00:32 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     i386) ARCH='x86';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 16 Mar 2018 10:00:33 GMT
ENV YARN_VERSION=1.5.1
# Fri, 16 Mar 2018 17:06:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 16 Mar 2018 17:06:41 GMT
CMD ["node"]
# Fri, 16 Mar 2018 17:07:35 GMT
RUN mkdir -p /usr/src/app
# Fri, 16 Mar 2018 17:07:35 GMT
WORKDIR /usr/src/app
# Fri, 16 Mar 2018 17:07:36 GMT
ONBUILD ARG NODE_ENV
# Fri, 16 Mar 2018 17:07:37 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Fri, 16 Mar 2018 17:07:37 GMT
ONBUILD COPY package.json /usr/src/app/
# Fri, 16 Mar 2018 17:07:38 GMT
ONBUILD RUN npm install && npm cache clean --force
# Fri, 16 Mar 2018 17:07:38 GMT
ONBUILD COPY . /usr/src/app
# Fri, 16 Mar 2018 17:07:39 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c0a429742ffe0333a0070020d4aa3cfeaa1d0f87e652544b8b823ab168f1bd`  
		Last Modified: Wed, 14 Mar 2018 19:01:35 GMT  
		Size: 18.7 MB (18739890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0143ab4c445a576c0bf58f4eee3c9dac1bbf68c311dc22f8a0ad7397a257c25e`  
		Last Modified: Wed, 14 Mar 2018 19:02:34 GMT  
		Size: 41.0 MB (41022023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8bca71e1cff640c27c0a50f07fc661849fb44652d0b77316b43dd92ac39640`  
		Last Modified: Fri, 16 Mar 2018 09:34:07 GMT  
		Size: 115.9 MB (115892924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d011bba34641a7335c238a9833a1258b22d3409c0389e6334f2803e10e1600c`  
		Last Modified: Fri, 16 Mar 2018 10:12:51 GMT  
		Size: 4.4 KB (4427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60e5af7d50e45c23257c456e2d0126aef967cfe38bb289035c10d03a693076a`  
		Last Modified: Fri, 16 Mar 2018 10:12:52 GMT  
		Size: 117.6 KB (117625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6bbd055e660553ce39ea5f2ab977ee39b59d264db51b6e6e6d310b572d4613c`  
		Last Modified: Fri, 16 Mar 2018 10:21:46 GMT  
		Size: 18.4 MB (18411771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd68c266d5bc90746b266d623c49233b00fba6c78db660c3153045c67b37612`  
		Last Modified: Fri, 16 Mar 2018 17:19:07 GMT  
		Size: 1.1 MB (1061033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac455b27592b1d59e049599f76e8392a262ac8c345ed45ce767e64bc64a064c7`  
		Last Modified: Fri, 16 Mar 2018 17:21:40 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `node:8-onbuild` - linux; 386

```console
$ docker pull node@sha256:55c563de01b2f4fa15a6cfb79d2d6dde747c45f55a95fb8986ee860978ac93c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.3 MB (273262202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a080f85a976a06cb6a59dd77d5f66cbd733a2c3ad87a0625764c8a1ba9199d79`
-	Default Command: `["npm","start"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 03:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 03:00:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 21 Feb 2018 03:16:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 03:27:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 18:51:26 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 23 Feb 2018 17:48:16 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Thu, 08 Mar 2018 17:20:54 GMT
ENV NODE_VERSION=8.10.0
# Thu, 08 Mar 2018 17:21:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     i386) ARCH='x86';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 08 Mar 2018 17:21:04 GMT
ENV YARN_VERSION=1.5.1
# Thu, 08 Mar 2018 17:21:09 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 08 Mar 2018 17:21:09 GMT
CMD ["node"]
# Thu, 08 Mar 2018 18:07:52 GMT
RUN mkdir -p /usr/src/app
# Thu, 08 Mar 2018 18:07:52 GMT
WORKDIR /usr/src/app
# Thu, 08 Mar 2018 18:07:52 GMT
ONBUILD ARG NODE_ENV
# Thu, 08 Mar 2018 18:07:53 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Thu, 08 Mar 2018 18:07:53 GMT
ONBUILD COPY package.json /usr/src/app/
# Thu, 08 Mar 2018 18:07:53 GMT
ONBUILD RUN npm install && npm cache clean --force
# Thu, 08 Mar 2018 18:07:54 GMT
ONBUILD COPY . /usr/src/app
# Thu, 08 Mar 2018 18:07:54 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe088a75e7978249fc7a95a7cf2ca376d731a0d2111f1d3916d26cb1927c6e9`  
		Last Modified: Wed, 21 Feb 2018 03:40:19 GMT  
		Size: 21.6 MB (21596403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd70dd1a7c6239809d32e4f2882d0e41d01b88b5806c3e12165c5739c407b146`  
		Last Modified: Wed, 21 Feb 2018 03:48:18 GMT  
		Size: 43.9 MB (43918382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1518141bb083cd4da04a36a73324ae5d8ee4013c93e2d6381d322d3dfb95d5`  
		Last Modified: Wed, 21 Feb 2018 03:56:56 GMT  
		Size: 135.8 MB (135766235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dca875e253f77eb370958de9ab0f08a2a6d0f7347eb781094b21123a113c0a`  
		Last Modified: Wed, 21 Feb 2018 20:26:42 GMT  
		Size: 4.4 KB (4406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d247aff2e868841dd39fd04c5cb43d5d934168197561bfccadf276297d1723`  
		Last Modified: Fri, 23 Feb 2018 21:45:47 GMT  
		Size: 117.6 KB (117627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b971e01f1afd33814ef423d7f1cde7e3fa63a75116645cdc8b99f67b3640bbd`  
		Last Modified: Thu, 08 Mar 2018 20:12:46 GMT  
		Size: 18.0 MB (18010294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea6324151f58ef6bf3f320d41168ae7e9a2166cdd89e1cae3d0c5b99c3cc46c`  
		Last Modified: Thu, 08 Mar 2018 20:12:37 GMT  
		Size: 1.1 MB (1061010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e46969e3dae9c5fb46db7f0ba689c0df8993f392fe05007af485cd455225b37`  
		Last Modified: Thu, 08 Mar 2018 20:47:22 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `node:8-onbuild` - linux; ppc64le

```console
$ docker pull node@sha256:b8181c710416c04938b691eb9619e7ff6961d121763ce7adfd0e755c68bd2b47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.2 MB (256174066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd88c4d5432276bf5bbafa47dae5079858142d565ce8510345875c67e2335b4b`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 01:36:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 01:36:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 01:39:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 01:52:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 09:01:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 15 Mar 2018 09:01:47 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Thu, 15 Mar 2018 09:06:00 GMT
ENV NODE_VERSION=8.10.0
# Thu, 15 Mar 2018 09:06:17 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     i386) ARCH='x86';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 15 Mar 2018 09:06:23 GMT
ENV YARN_VERSION=1.5.1
# Fri, 16 Mar 2018 17:04:38 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 16 Mar 2018 17:04:39 GMT
CMD ["node"]
# Fri, 16 Mar 2018 17:05:18 GMT
RUN mkdir -p /usr/src/app
# Fri, 16 Mar 2018 17:05:19 GMT
WORKDIR /usr/src/app
# Fri, 16 Mar 2018 17:05:21 GMT
ONBUILD ARG NODE_ENV
# Fri, 16 Mar 2018 17:05:22 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Fri, 16 Mar 2018 17:05:24 GMT
ONBUILD COPY package.json /usr/src/app/
# Fri, 16 Mar 2018 17:05:25 GMT
ONBUILD RUN npm install && npm cache clean --force
# Fri, 16 Mar 2018 17:05:27 GMT
ONBUILD COPY . /usr/src/app
# Fri, 16 Mar 2018 17:05:28 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d86648639f69004413e64c4fcb6ad3ffd98348d0c786a9efc5722c3ce5732e7c`  
		Last Modified: Thu, 15 Mar 2018 02:29:25 GMT  
		Size: 19.2 MB (19203303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb8f3b52990756515e29d9ee1dbf0cb2ba787aae0a952609c385d2f1d11f6ec`  
		Last Modified: Thu, 15 Mar 2018 02:29:50 GMT  
		Size: 42.8 MB (42759015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ccd17099e146a16a2416364e25ca4372b4e9441420483bd5d15724dbe067e03`  
		Last Modified: Thu, 15 Mar 2018 02:30:27 GMT  
		Size: 123.0 MB (123005658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdcb6a3e5747b49c8e06039b0392ccf1125ce219bcdbfb00e440bc1369ef230`  
		Last Modified: Thu, 15 Mar 2018 09:17:14 GMT  
		Size: 4.5 KB (4451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7418d444949b37422fcb8bbf3c159f050963710968548645aa2e4e3a8b870ae`  
		Last Modified: Thu, 15 Mar 2018 09:17:14 GMT  
		Size: 117.7 KB (117654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbab6357c2d5a5547378dd8bf0e5bfbad7d514ced0fda2d90a5378ff56e06b24`  
		Last Modified: Thu, 15 Mar 2018 09:19:47 GMT  
		Size: 18.2 MB (18205594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c31cfe9be90e0d937792b03c26751579ddd2f798323deae8d093d32bb6ac105`  
		Last Modified: Fri, 16 Mar 2018 17:12:32 GMT  
		Size: 1.1 MB (1061061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:020eb70c7bdb02998e6bc91b8f89b1fccdf28afd51906d582a48e7905cfc3311`  
		Last Modified: Fri, 16 Mar 2018 17:13:34 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `node:8-onbuild` - linux; s390x

```console
$ docker pull node@sha256:4da4376a32a507517411535209d2d8315f0a0229d017dffa986dd81ea976af65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.7 MB (251734172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49a40edb226d6ba3e4c140732cbde4d0e73a5aec03b24cc96d8ab4b7e6579a47`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:50:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:50:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:50:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:52:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 08:19:59 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Mar 2018 08:20:01 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Wed, 14 Mar 2018 09:17:42 GMT
ENV NODE_VERSION=8.10.0
# Wed, 14 Mar 2018 09:17:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     i386) ARCH='x86';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 14 Mar 2018 09:17:46 GMT
ENV YARN_VERSION=1.5.1
# Fri, 16 Mar 2018 17:31:17 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 16 Mar 2018 17:31:17 GMT
CMD ["node"]
# Fri, 16 Mar 2018 17:58:46 GMT
RUN mkdir -p /usr/src/app
# Fri, 16 Mar 2018 17:58:46 GMT
WORKDIR /usr/src/app
# Fri, 16 Mar 2018 17:58:46 GMT
ONBUILD ARG NODE_ENV
# Fri, 16 Mar 2018 17:58:46 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Fri, 16 Mar 2018 17:58:46 GMT
ONBUILD COPY package.json /usr/src/app/
# Fri, 16 Mar 2018 17:58:47 GMT
ONBUILD RUN npm install && npm cache clean --force
# Fri, 16 Mar 2018 17:58:47 GMT
ONBUILD COPY . /usr/src/app
# Fri, 16 Mar 2018 17:58:47 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a685ac71022aa1adebd3c61832ae0c6225f8634316998ccff12b61e2db87b964`  
		Last Modified: Wed, 14 Mar 2018 05:58:56 GMT  
		Size: 19.5 MB (19472068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb8d238930b380a590123e7f02135ce37730c646dfedf9f689dee9182c7735c`  
		Last Modified: Wed, 14 Mar 2018 05:59:11 GMT  
		Size: 43.4 MB (43388484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d90e9e9dbb410cd23200d77c54e748d28ac4516ae3339c2c579f48cabd6ac2`  
		Last Modified: Wed, 14 Mar 2018 05:59:34 GMT  
		Size: 116.2 MB (116206950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef31e1cd847bf5f5663f781d44bac26dde9a8b4d14a1f6e6dd25bc9ffd2b566b`  
		Last Modified: Wed, 14 Mar 2018 10:12:14 GMT  
		Size: 4.4 KB (4422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6736385dc4bb24938b938b1cb19ece6f2a52418bad0f8b3b6b22bdb65503ceb0`  
		Last Modified: Wed, 14 Mar 2018 10:12:15 GMT  
		Size: 117.6 KB (117625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2449e368dfc34ca46e1f54efdb7657b00b454c9cc8e5512c570f5364d0071b55`  
		Last Modified: Wed, 14 Mar 2018 10:13:53 GMT  
		Size: 18.7 MB (18687986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e574c80ab0bc5ce354758fb85005d139cb00d62c03655b143bf3dd4a1e6efcc`  
		Last Modified: Fri, 16 Mar 2018 18:01:13 GMT  
		Size: 1.1 MB (1061033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d3f29c42ee7332dbb10dd07da97f126bace6b017e1b3b0fedbfbbb8bf9702b1`  
		Last Modified: Fri, 16 Mar 2018 18:01:32 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
