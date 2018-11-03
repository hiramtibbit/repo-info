## `node:slim`

```console
$ docker pull node@sha256:6750ca409a9fcbce48e98be46d8b81fb4e227f659183465c84f08515f17178bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `node:slim` - linux; amd64

```console
$ docker pull node@sha256:02dce7942b64089fe35b735abd62140c4a6bc9081820c0f61e9882e8bf58cd18
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.6 MB (53617634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e43d0e35fbfec0ac105bb342b3ee52038ddf6cd14eb4f409c7407b0cfb1f252`
-	Default Command: `["node"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Thu, 01 Nov 2018 22:51:59 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 02 Nov 2018 23:03:43 GMT
ENV NODE_VERSION=11.1.0
# Fri, 02 Nov 2018 23:04:01 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 02 Nov 2018 23:04:01 GMT
ENV YARN_VERSION=1.12.1
# Fri, 02 Nov 2018 23:04:05 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 02 Nov 2018 23:04:05 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6615a478d559bdc6c087ea965f1d20b6ffb21e8372446af4eb95e1fcce47220a`  
		Last Modified: Thu, 01 Nov 2018 23:20:21 GMT  
		Size: 4.1 KB (4144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eac2928b14d661364f58e16636c21988a20104ae23cbcde1d59c8fd0c868a9f`  
		Last Modified: Fri, 02 Nov 2018 23:07:18 GMT  
		Size: 29.8 MB (29841011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86550c1b6eb26f559c6ba124fcf1154fae91005e2c2cfc84af024c1f2d51f998`  
		Last Modified: Fri, 02 Nov 2018 23:07:12 GMT  
		Size: 1.3 MB (1286440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `node:slim` - linux; ppc64le

```console
$ docker pull node@sha256:39baf5427bdf30dba84ae5adf2395d28f3c1e203670fce2e8beffd2b74ed1e4b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.9 MB (52949996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6777eb9561e2dcc1d9695ae06a5586529116795d6a3c37d929da779d1686044e`
-	Default Command: `["node"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Fri, 02 Nov 2018 09:03:45 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 03 Nov 2018 08:48:02 GMT
ENV NODE_VERSION=11.1.0
# Sat, 03 Nov 2018 08:49:00 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && for key in       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8       B9AE9905FFD7803F25714661B63B535A4C206CA9       56730D5401028683275BD23C23EFEFE93C4CFFFE       77984A986EBC2AA786BC0F66B01FBB92821C587A       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     ; do       gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 03 Nov 2018 08:49:01 GMT
ENV YARN_VERSION=1.12.1
# Sat, 03 Nov 2018 08:49:14 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 03 Nov 2018 08:49:20 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13804b00074371cd4ac102a9c275c1dc728ddb3c4bf0610ee4132dddc41c1e15`  
		Last Modified: Fri, 02 Nov 2018 09:20:14 GMT  
		Size: 4.2 KB (4176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63cb8747938b4224a899988860f6fcbdb7c5fddc7eb26b7e110f26572aebe6e5`  
		Last Modified: Sat, 03 Nov 2018 08:52:05 GMT  
		Size: 28.9 MB (28918739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb52f5fa592b69f674578849d770c6ec077e17c01ea9a98a8b973597cfda4ab`  
		Last Modified: Sat, 03 Nov 2018 08:51:57 GMT  
		Size: 1.3 MB (1286498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
