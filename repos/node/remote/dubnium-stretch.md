## `node:dubnium-stretch`

```console
$ docker pull node@sha256:ab104e7cd52a2c33fd251c2bafc2fb56d9ba3280ce7340fff7ef8ce0da28cae7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `node:dubnium-stretch` - linux; amd64

```console
$ docker pull node@sha256:9c3f7c49323725f62ab8c7b92354461cb7a4907dba857ddaa7171e3b6c4c88a5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.4 MB (345404258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c481a0ff9f4fe5573635da7c1a71accd863711f606a95c520e393709fbcec285`
-	Default Command: `["node"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 20:06:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:07:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 01:39:54 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 30 Jan 2019 23:58:46 GMT
ENV NODE_VERSION=10.15.1
# Wed, 30 Jan 2019 23:58:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     i386) ARCH='x86';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 30 Jan 2019 23:58:53 GMT
ENV YARN_VERSION=1.13.0
# Wed, 30 Jan 2019 23:58:56 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 30 Jan 2019 23:58:56 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1dd648b5ade2bbdfe77fa94424b0314100b58fb5f6a98486538c2126e08e2f`  
		Last Modified: Tue, 22 Jan 2019 20:13:28 GMT  
		Size: 50.1 MB (50062800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f7a0920ce12498040091232541e5f75306c09564f092b55c539d66b93aee7c`  
		Last Modified: Tue, 22 Jan 2019 20:14:14 GMT  
		Size: 214.3 MB (214278924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d199f738c5f4c2f10961c2a984b3eafb65ab0c27b3687da401df13f9881fe50`  
		Last Modified: Wed, 23 Jan 2019 01:50:36 GMT  
		Size: 4.2 KB (4166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d6b50e5798c3303092cd0867079cdd48c1f1b85486108315cc5647caa2a34`  
		Last Modified: Thu, 31 Jan 2019 00:02:21 GMT  
		Size: 19.3 MB (19269400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9eb23183687e8d3d814e84269e8d3b474fff574c2db726541f273fc46be836c`  
		Last Modified: Thu, 31 Jan 2019 00:02:15 GMT  
		Size: 1.3 MB (1323184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
