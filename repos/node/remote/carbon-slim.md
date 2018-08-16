## `node:carbon-slim`

```console
$ docker pull node@sha256:29da3f8477b1c11bcc4544d8cde4d6f2a4671a55fec1b6aeac445c917c0da1d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm variant v7

### `node:carbon-slim` - linux; arm variant v7

```console
$ docker pull node@sha256:be82a50db0389236225741ce3c21fe6bfc5c2debae2a2521f540ebfc306617a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.9 MB (60884010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42bcc48052b5f2480e8af83bc0f4da5eaca8ae0eccacb6de60a0c6c77c52fab5`
-	Default Command: `["node"]`

```dockerfile
# Tue, 17 Jul 2018 12:00:33 GMT
ADD file:32d146255a9263416cb50a32e6079a40852e3ae1db6b0e30134cde4d24917309 in / 
# Tue, 17 Jul 2018 12:00:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:53:54 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 17 Jul 2018 14:53:56 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Thu, 16 Aug 2018 06:05:34 GMT
ENV NODE_VERSION=8.11.4
# Thu, 16 Aug 2018 06:08:28 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 16 Aug 2018 06:08:28 GMT
ENV YARN_VERSION=1.6.0
# Thu, 16 Aug 2018 06:08:30 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 16 Aug 2018 06:08:30 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:093a70fc20ffe401f4cf25ac9cf7d08c8d511df67aba90ee8c4eec4f8cb2c67e`  
		Last Modified: Tue, 17 Jul 2018 12:12:07 GMT  
		Size: 26.3 MB (26286960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9759706edab4e64c1541568dcbbe2167366201b5e6622535c7f8eb289b2153f3`  
		Last Modified: Tue, 17 Jul 2018 15:03:26 GMT  
		Size: 4.4 KB (4408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b0e55ef516c5e9a51fb4b4e1b4d216104dec629ee2f15dca3668e557aeb4cef`  
		Last Modified: Tue, 17 Jul 2018 15:03:24 GMT  
		Size: 123.6 KB (123644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2489a5fb3b82a0396ef8bcc312ba3b73e31dc44b7e76bf138f9ef8a14537f5`  
		Last Modified: Thu, 16 Aug 2018 06:13:38 GMT  
		Size: 33.4 MB (33396798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7dbe6841c05f6061bd6076908ade255e8571b87c1ffe48fae248b5b3c6c7905`  
		Last Modified: Thu, 16 Aug 2018 06:13:28 GMT  
		Size: 1.1 MB (1072200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
