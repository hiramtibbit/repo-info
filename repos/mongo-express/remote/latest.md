## `mongo-express:latest`

```console
$ docker pull mongo-express@sha256:a6028f29374dbba58991b1357c653a158fe9e5d5eb4071b2434f4919c90fb83e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo-express:latest` - linux; amd64

```console
$ docker pull mongo-express@sha256:49172cb445c1ba92c9d8e66e5f0a6e69f1dc3a79f3ebb1964f7e09933fb42ac0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.2 MB (76222719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c2549a2ec2898dfdac8b840b9f63994ebdcc64f0ca07d266a49ea9bbeca7fe8`
-	Default Command: `["tini","--","node","app"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Thu, 24 May 2018 19:43:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 24 May 2018 19:43:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Thu, 24 May 2018 20:07:05 GMT
ENV NODE_VERSION=8.11.2
# Thu, 24 May 2018 20:07:35 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y ca-certificates curl wget $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 24 May 2018 20:07:35 GMT
ENV YARN_VERSION=1.6.0
# Thu, 24 May 2018 20:07:38 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 24 May 2018 20:07:38 GMT
CMD ["node"]
# Thu, 24 May 2018 22:45:54 GMT
ENV TINI_VERSION=0.9.0
# Thu, 24 May 2018 22:46:14 GMT
RUN set -x 	&& apt-get update && apt-get install -y ca-certificates curl 		--no-install-recommends 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini" -o /usr/local/bin/tini 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini.asc" -o /usr/local/bin/tini.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h 	&& apt-get purge --auto-remove -y ca-certificates curl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 May 2018 22:46:15 GMT
EXPOSE 8081/tcp
# Thu, 24 May 2018 22:46:15 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Thu, 24 May 2018 22:46:15 GMT
ENV MONGO_EXPRESS=0.45.0
# Thu, 24 May 2018 22:46:25 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Thu, 24 May 2018 22:46:25 GMT
WORKDIR /node_modules/mongo-express
# Thu, 24 May 2018 22:46:26 GMT
RUN cp config.default.js config.js
# Thu, 24 May 2018 22:46:26 GMT
CMD ["tini" "--" "node" "app"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db908151ac093a2ced2707e30d84874d4d162594ee84613e477f739f682410f1`  
		Last Modified: Thu, 24 May 2018 20:54:10 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d5faee7ece1ef1c5a46dfc27a19508ea42ca466e7909668e1329ff33cad5ac`  
		Last Modified: Thu, 24 May 2018 20:54:10 GMT  
		Size: 117.6 KB (117612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db798f758e3b4fcf941ba981d42d4c4ab4e22320d5f8562db51100bc291bf8e7`  
		Last Modified: Thu, 24 May 2018 20:57:29 GMT  
		Size: 35.3 MB (35267752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57563b1019740dd38ba525957a7cad6508dd185a83c82e62f0d55029d5aee440`  
		Last Modified: Thu, 24 May 2018 20:57:21 GMT  
		Size: 1.1 MB (1066208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd8b1f41fce87432e4a435abc13a5048af65cf6c08cd3f1f58a3f3c43ffe51a`  
		Last Modified: Thu, 24 May 2018 22:46:44 GMT  
		Size: 532.4 KB (532395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820d64a830285e00f24e29d373ea69fef3870d9c3f12436c5bcbbb1d57945fca`  
		Last Modified: Thu, 24 May 2018 22:46:45 GMT  
		Size: 9.1 MB (9104295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7519fdcdb8002fa89257c72f9d09044f55acf627a9e876e4187c988e89ca14`  
		Last Modified: Thu, 24 May 2018 22:46:44 GMT  
		Size: 2.8 KB (2760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
