<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo-express`

-	[`mongo-express:0.45`](#mongo-express045)
-	[`mongo-express:0.45.0`](#mongo-express0450)
-	[`mongo-express:latest`](#mongo-expresslatest)

## `mongo-express:0.45`

```console
$ docker pull mongo-express@sha256:893a33c746fd36b8f6e27f2296c2bfe0db1e1287d12df6feb7ff67f6ed0e292a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo-express:0.45` - linux; amd64

```console
$ docker pull mongo-express@sha256:9d1e70f3059e7421a035ad3ae91c77bd41c5c591d95c7c7c0c37c41742c99765
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76286561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1931396fb5aa9b64696c460b425c0dbe795f5adeb2fc2c047bcb642282f4d64f`
-	Default Command: `["tini","--","node","app"]`

```dockerfile
# Tue, 26 Jun 2018 21:21:17 GMT
ADD file:8108708c9ab961c9562c2171f4f594291dbaac0dc81dcb7bcbaf134f251f459e in / 
# Tue, 26 Jun 2018 21:21:18 GMT
CMD ["bash"]
# Fri, 06 Jul 2018 15:51:58 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 06 Jul 2018 15:52:00 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 06 Jul 2018 16:02:49 GMT
ENV NODE_VERSION=8.11.3
# Fri, 06 Jul 2018 16:03:32 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 06 Jul 2018 16:03:33 GMT
ENV YARN_VERSION=1.6.0
# Fri, 06 Jul 2018 16:03:36 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 06 Jul 2018 16:03:36 GMT
CMD ["node"]
# Fri, 06 Jul 2018 20:46:07 GMT
ENV TINI_VERSION=0.9.0
# Fri, 06 Jul 2018 20:46:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y ca-certificates curl 		--no-install-recommends 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini" -o /usr/local/bin/tini 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini.asc" -o /usr/local/bin/tini.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h 	&& apt-get purge --auto-remove -y ca-certificates curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jul 2018 20:46:43 GMT
EXPOSE 8081/tcp
# Fri, 06 Jul 2018 20:46:43 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Fri, 06 Jul 2018 20:46:43 GMT
ENV MONGO_EXPRESS=0.45.0
# Fri, 06 Jul 2018 20:46:56 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Fri, 06 Jul 2018 20:46:56 GMT
WORKDIR /node_modules/mongo-express
# Fri, 06 Jul 2018 20:46:57 GMT
RUN cp config.default.js config.js
# Fri, 06 Jul 2018 20:46:57 GMT
CMD ["tini" "--" "node" "app"]
```

-	Layers:
	-	`sha256:2caa28db99eb312c788669036f0bf3914f73f5a27a30f69d2a7443fce10eb882`  
		Last Modified: Tue, 26 Jun 2018 21:31:00 GMT  
		Size: 30.1 MB (30119838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca239d095aed33aa7ed0f71aa4d7cf2fd3d99eb2a469ee71398aa64b613d0523`  
		Last Modified: Fri, 06 Jul 2018 16:29:00 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266fa22faac18ddcc93c6c348808bbef4171c7947baac28c5202ddc2dbdf68c4`  
		Last Modified: Fri, 06 Jul 2018 16:28:59 GMT  
		Size: 123.6 KB (123619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431f6aa16a485186a91bac760f8e330e2bfe17f5a63fb909e0a239b4c6efab69`  
		Last Modified: Fri, 06 Jul 2018 16:33:55 GMT  
		Size: 35.3 MB (35266894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5be2fa2232a94b95b007c341301ebaa86888630b5aadafb6ff94f2fcd469899`  
		Last Modified: Fri, 06 Jul 2018 16:33:48 GMT  
		Size: 1.1 MB (1072187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109cecce9be580a0f52cfab0f6bd9feef943bc9deb04818adc82bab989e964a9`  
		Last Modified: Fri, 06 Jul 2018 20:47:23 GMT  
		Size: 532.6 KB (532623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550426e874eab5d14a894330766ac0cc9acfc0919d11c2af5f0ff3f31dbcc9ae`  
		Last Modified: Fri, 06 Jul 2018 20:47:27 GMT  
		Size: 9.2 MB (9164240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09172bf7a808f9d2fd20aa49c871c1816d14fc8d6f160e3f19b0dc917af6c25`  
		Last Modified: Fri, 06 Jul 2018 20:47:23 GMT  
		Size: 2.8 KB (2760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo-express:0.45.0`

```console
$ docker pull mongo-express@sha256:893a33c746fd36b8f6e27f2296c2bfe0db1e1287d12df6feb7ff67f6ed0e292a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo-express:0.45.0` - linux; amd64

```console
$ docker pull mongo-express@sha256:9d1e70f3059e7421a035ad3ae91c77bd41c5c591d95c7c7c0c37c41742c99765
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76286561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1931396fb5aa9b64696c460b425c0dbe795f5adeb2fc2c047bcb642282f4d64f`
-	Default Command: `["tini","--","node","app"]`

```dockerfile
# Tue, 26 Jun 2018 21:21:17 GMT
ADD file:8108708c9ab961c9562c2171f4f594291dbaac0dc81dcb7bcbaf134f251f459e in / 
# Tue, 26 Jun 2018 21:21:18 GMT
CMD ["bash"]
# Fri, 06 Jul 2018 15:51:58 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 06 Jul 2018 15:52:00 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 06 Jul 2018 16:02:49 GMT
ENV NODE_VERSION=8.11.3
# Fri, 06 Jul 2018 16:03:32 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 06 Jul 2018 16:03:33 GMT
ENV YARN_VERSION=1.6.0
# Fri, 06 Jul 2018 16:03:36 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 06 Jul 2018 16:03:36 GMT
CMD ["node"]
# Fri, 06 Jul 2018 20:46:07 GMT
ENV TINI_VERSION=0.9.0
# Fri, 06 Jul 2018 20:46:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y ca-certificates curl 		--no-install-recommends 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini" -o /usr/local/bin/tini 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini.asc" -o /usr/local/bin/tini.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h 	&& apt-get purge --auto-remove -y ca-certificates curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jul 2018 20:46:43 GMT
EXPOSE 8081/tcp
# Fri, 06 Jul 2018 20:46:43 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Fri, 06 Jul 2018 20:46:43 GMT
ENV MONGO_EXPRESS=0.45.0
# Fri, 06 Jul 2018 20:46:56 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Fri, 06 Jul 2018 20:46:56 GMT
WORKDIR /node_modules/mongo-express
# Fri, 06 Jul 2018 20:46:57 GMT
RUN cp config.default.js config.js
# Fri, 06 Jul 2018 20:46:57 GMT
CMD ["tini" "--" "node" "app"]
```

-	Layers:
	-	`sha256:2caa28db99eb312c788669036f0bf3914f73f5a27a30f69d2a7443fce10eb882`  
		Last Modified: Tue, 26 Jun 2018 21:31:00 GMT  
		Size: 30.1 MB (30119838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca239d095aed33aa7ed0f71aa4d7cf2fd3d99eb2a469ee71398aa64b613d0523`  
		Last Modified: Fri, 06 Jul 2018 16:29:00 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266fa22faac18ddcc93c6c348808bbef4171c7947baac28c5202ddc2dbdf68c4`  
		Last Modified: Fri, 06 Jul 2018 16:28:59 GMT  
		Size: 123.6 KB (123619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431f6aa16a485186a91bac760f8e330e2bfe17f5a63fb909e0a239b4c6efab69`  
		Last Modified: Fri, 06 Jul 2018 16:33:55 GMT  
		Size: 35.3 MB (35266894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5be2fa2232a94b95b007c341301ebaa86888630b5aadafb6ff94f2fcd469899`  
		Last Modified: Fri, 06 Jul 2018 16:33:48 GMT  
		Size: 1.1 MB (1072187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109cecce9be580a0f52cfab0f6bd9feef943bc9deb04818adc82bab989e964a9`  
		Last Modified: Fri, 06 Jul 2018 20:47:23 GMT  
		Size: 532.6 KB (532623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550426e874eab5d14a894330766ac0cc9acfc0919d11c2af5f0ff3f31dbcc9ae`  
		Last Modified: Fri, 06 Jul 2018 20:47:27 GMT  
		Size: 9.2 MB (9164240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09172bf7a808f9d2fd20aa49c871c1816d14fc8d6f160e3f19b0dc917af6c25`  
		Last Modified: Fri, 06 Jul 2018 20:47:23 GMT  
		Size: 2.8 KB (2760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo-express:latest`

```console
$ docker pull mongo-express@sha256:893a33c746fd36b8f6e27f2296c2bfe0db1e1287d12df6feb7ff67f6ed0e292a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo-express:latest` - linux; amd64

```console
$ docker pull mongo-express@sha256:9d1e70f3059e7421a035ad3ae91c77bd41c5c591d95c7c7c0c37c41742c99765
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76286561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1931396fb5aa9b64696c460b425c0dbe795f5adeb2fc2c047bcb642282f4d64f`
-	Default Command: `["tini","--","node","app"]`

```dockerfile
# Tue, 26 Jun 2018 21:21:17 GMT
ADD file:8108708c9ab961c9562c2171f4f594291dbaac0dc81dcb7bcbaf134f251f459e in / 
# Tue, 26 Jun 2018 21:21:18 GMT
CMD ["bash"]
# Fri, 06 Jul 2018 15:51:58 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 06 Jul 2018 15:52:00 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Fri, 06 Jul 2018 16:02:49 GMT
ENV NODE_VERSION=8.11.3
# Fri, 06 Jul 2018 16:03:32 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 06 Jul 2018 16:03:33 GMT
ENV YARN_VERSION=1.6.0
# Fri, 06 Jul 2018 16:03:36 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 06 Jul 2018 16:03:36 GMT
CMD ["node"]
# Fri, 06 Jul 2018 20:46:07 GMT
ENV TINI_VERSION=0.9.0
# Fri, 06 Jul 2018 20:46:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y ca-certificates curl 		--no-install-recommends 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini" -o /usr/local/bin/tini 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini.asc" -o /usr/local/bin/tini.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h 	&& apt-get purge --auto-remove -y ca-certificates curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jul 2018 20:46:43 GMT
EXPOSE 8081/tcp
# Fri, 06 Jul 2018 20:46:43 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Fri, 06 Jul 2018 20:46:43 GMT
ENV MONGO_EXPRESS=0.45.0
# Fri, 06 Jul 2018 20:46:56 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Fri, 06 Jul 2018 20:46:56 GMT
WORKDIR /node_modules/mongo-express
# Fri, 06 Jul 2018 20:46:57 GMT
RUN cp config.default.js config.js
# Fri, 06 Jul 2018 20:46:57 GMT
CMD ["tini" "--" "node" "app"]
```

-	Layers:
	-	`sha256:2caa28db99eb312c788669036f0bf3914f73f5a27a30f69d2a7443fce10eb882`  
		Last Modified: Tue, 26 Jun 2018 21:31:00 GMT  
		Size: 30.1 MB (30119838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca239d095aed33aa7ed0f71aa4d7cf2fd3d99eb2a469ee71398aa64b613d0523`  
		Last Modified: Fri, 06 Jul 2018 16:29:00 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266fa22faac18ddcc93c6c348808bbef4171c7947baac28c5202ddc2dbdf68c4`  
		Last Modified: Fri, 06 Jul 2018 16:28:59 GMT  
		Size: 123.6 KB (123619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431f6aa16a485186a91bac760f8e330e2bfe17f5a63fb909e0a239b4c6efab69`  
		Last Modified: Fri, 06 Jul 2018 16:33:55 GMT  
		Size: 35.3 MB (35266894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5be2fa2232a94b95b007c341301ebaa86888630b5aadafb6ff94f2fcd469899`  
		Last Modified: Fri, 06 Jul 2018 16:33:48 GMT  
		Size: 1.1 MB (1072187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109cecce9be580a0f52cfab0f6bd9feef943bc9deb04818adc82bab989e964a9`  
		Last Modified: Fri, 06 Jul 2018 20:47:23 GMT  
		Size: 532.6 KB (532623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550426e874eab5d14a894330766ac0cc9acfc0919d11c2af5f0ff3f31dbcc9ae`  
		Last Modified: Fri, 06 Jul 2018 20:47:27 GMT  
		Size: 9.2 MB (9164240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09172bf7a808f9d2fd20aa49c871c1816d14fc8d6f160e3f19b0dc917af6c25`  
		Last Modified: Fri, 06 Jul 2018 20:47:23 GMT  
		Size: 2.8 KB (2760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
