## `node:chakracore-10`

```console
$ docker pull node@sha256:a4fd2be754a2fc81b1992be76a73b15c6f8a8f320eed3321788a59e6be3dad79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `node:chakracore-10` - linux; amd64

```console
$ docker pull node@sha256:32df0238b3134de0be45384af9146973d44c8c35c8a017693f21482c97f7169a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.8 MB (264766541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c71705e630af22787fb9d297bc51c3eff70129cb54c3f1ccafe33621dd09bc1`
-	Default Command: `["node"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 16:12:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:12:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 16:22:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:24:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 22:14:46 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 02 May 2018 22:31:02 GMT
ENV NODE_VERSION=10.0.0
# Wed, 02 May 2018 22:31:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && curl -SLO "https://nodejs.org/download/chakracore-release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -SLO --compressed "https://nodejs.org/download/chakracore-release/v$NODE_VERSION/SHASUMS256.txt"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 02 May 2018 22:31:09 GMT
ENV YARN_VERSION=1.6.0
# Wed, 02 May 2018 22:31:19 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 02 May 2018 22:31:19 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d9ca1153eba1cbf763dbc8fc4cbb886420e713077c1d125c684605e239828a`  
		Last Modified: Sat, 28 Apr 2018 20:23:15 GMT  
		Size: 17.6 MB (17564359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d024d87fd1575e704886f4e70af4ece1d2d9c757f61f27e2af4488c228b0b41`  
		Last Modified: Sat, 28 Apr 2018 20:24:13 GMT  
		Size: 43.3 MB (43253845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a13018a3aff59008b3f3c97087e6ea1511ef033b98deec2e4b2704afa85fe6`  
		Last Modified: Sat, 28 Apr 2018 20:25:27 GMT  
		Size: 131.1 MB (131069905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a0a45c8d5abdeedff89299a124e0256f9ac27d9d7af283aa3bd83ab629de075`  
		Last Modified: Wed, 02 May 2018 22:42:46 GMT  
		Size: 4.4 KB (4426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ecd317440bd86f2cf35ebe85f8d7b9165e5ad350a715c7efc07788878d3ec00`  
		Last Modified: Wed, 02 May 2018 23:42:09 GMT  
		Size: 17.7 MB (17656694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20531e01aa0384ad9972fc06d535c6d59cb99b5058c384348b5a5d5f1e0535ba`  
		Last Modified: Wed, 02 May 2018 23:42:00 GMT  
		Size: 954.7 KB (954746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
