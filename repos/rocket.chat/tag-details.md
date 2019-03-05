<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rocket.chat`

-	[`rocket.chat:0`](#rocketchat0)
-	[`rocket.chat:0.74`](#rocketchat074)
-	[`rocket.chat:0.74.3`](#rocketchat0743)
-	[`rocket.chat:latest`](#rocketchatlatest)

## `rocket.chat:0`

```console
$ docker pull rocket.chat@sha256:85d9b7bc57a8b10ddbfaa45bef6776c9c2f2b1bbd4968450b7df8645b53c15a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rocket.chat:0` - linux; amd64

```console
$ docker pull rocket.chat@sha256:7b73e7cbc7b64f9bc233363a05d2241fd0bdc98588c988b28ad0cf9eebf172d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.0 MB (212037651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2528b1010825b882d97e7a8d2a078d32dfc0f0867c83940d53ac4165e4e48dcb`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 04 Mar 2019 23:20:30 GMT
ADD file:9c83a686342b9918902182a223021336d3fba9b5e540dcdb130ad47a22033781 in / 
# Mon, 04 Mar 2019 23:20:30 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 04:49:51 GMT
RUN gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys DD8F2338BAE7501E3DD5AC78C273792F7D83545D
# Tue, 05 Mar 2019 04:49:51 GMT
ENV NODE_VERSION=8.11.4
# Tue, 05 Mar 2019 04:49:52 GMT
ENV NODE_ENV=production
# Tue, 05 Mar 2019 04:51:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates curl; 	rm -rf /var/lib/apt/lists/*; 	curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz"; 	curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"; 	gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc; 	grep " node-v$NODE_VERSION-linux-x64.tar.gz\$" SHASUMS256.txt | sha256sum -c -; 	tar -xf "node-v$NODE_VERSION-linux-x64.tar.gz" -C /usr/local --strip-components=1 --no-same-owner; 	rm "node-v$NODE_VERSION-linux-x64.tar.gz" SHASUMS256.txt.asc SHASUMS256.txt; 	npm cache clear --force
# Tue, 05 Mar 2019 04:51:52 GMT
MAINTAINER buildmaster@rocket.chat
# Tue, 05 Mar 2019 04:51:53 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat &&  mkdir -p /app/uploads &&  chown rocketchat.rocketchat /app/uploads
# Tue, 05 Mar 2019 04:51:53 GMT
VOLUME [/app/uploads]
# Tue, 05 Mar 2019 04:51:54 GMT
RUN gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Tue, 05 Mar 2019 04:51:55 GMT
ENV RC_VERSION=0.74.3
# Tue, 05 Mar 2019 04:51:55 GMT
WORKDIR /app
# Tue, 05 Mar 2019 04:52:37 GMT
RUN curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install &&  npm cache clear --force &&  chown -R rocketchat:rocketchat /app
# Tue, 05 Mar 2019 04:52:39 GMT
USER rocketchat
# Tue, 05 Mar 2019 04:52:40 GMT
WORKDIR /app/bundle
# Tue, 05 Mar 2019 04:52:40 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Tue, 05 Mar 2019 04:52:40 GMT
EXPOSE 3000
# Tue, 05 Mar 2019 04:52:40 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:9fa17f107b7e9d91511082fc06c45340c4ab2b0820dc0974a963b137b3434e01`  
		Last Modified: Mon, 04 Mar 2019 23:24:38 GMT  
		Size: 30.2 MB (30154842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653cf56705541f7531ac84beaeb8e6ffba4ca17983d8bd72190e692d13e019ae`  
		Last Modified: Tue, 05 Mar 2019 04:52:56 GMT  
		Size: 9.8 KB (9815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c22265238530b84376cb85f5269fda1eeee93cb8b77804f8c2bf5db3a17c80cc`  
		Last Modified: Tue, 05 Mar 2019 04:53:04 GMT  
		Size: 23.2 MB (23208317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338cdc555fcb77e08401b883127559262eee0bbc392c7eed4c17557a0ec74fbd`  
		Last Modified: Tue, 05 Mar 2019 04:52:56 GMT  
		Size: 2.1 KB (2137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61772cd5cf32f2fdd8f86d4904c681869492fdf4a58b540e0b06dc261d97f3a5`  
		Last Modified: Tue, 05 Mar 2019 04:52:56 GMT  
		Size: 8.1 KB (8121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09e905bf6edbb68e072629831cec83b84608d1068f3809a648682de0ad2e1c4`  
		Last Modified: Tue, 05 Mar 2019 04:53:55 GMT  
		Size: 158.7 MB (158654419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:0.74`

```console
$ docker pull rocket.chat@sha256:85d9b7bc57a8b10ddbfaa45bef6776c9c2f2b1bbd4968450b7df8645b53c15a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rocket.chat:0.74` - linux; amd64

```console
$ docker pull rocket.chat@sha256:7b73e7cbc7b64f9bc233363a05d2241fd0bdc98588c988b28ad0cf9eebf172d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.0 MB (212037651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2528b1010825b882d97e7a8d2a078d32dfc0f0867c83940d53ac4165e4e48dcb`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 04 Mar 2019 23:20:30 GMT
ADD file:9c83a686342b9918902182a223021336d3fba9b5e540dcdb130ad47a22033781 in / 
# Mon, 04 Mar 2019 23:20:30 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 04:49:51 GMT
RUN gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys DD8F2338BAE7501E3DD5AC78C273792F7D83545D
# Tue, 05 Mar 2019 04:49:51 GMT
ENV NODE_VERSION=8.11.4
# Tue, 05 Mar 2019 04:49:52 GMT
ENV NODE_ENV=production
# Tue, 05 Mar 2019 04:51:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates curl; 	rm -rf /var/lib/apt/lists/*; 	curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz"; 	curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"; 	gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc; 	grep " node-v$NODE_VERSION-linux-x64.tar.gz\$" SHASUMS256.txt | sha256sum -c -; 	tar -xf "node-v$NODE_VERSION-linux-x64.tar.gz" -C /usr/local --strip-components=1 --no-same-owner; 	rm "node-v$NODE_VERSION-linux-x64.tar.gz" SHASUMS256.txt.asc SHASUMS256.txt; 	npm cache clear --force
# Tue, 05 Mar 2019 04:51:52 GMT
MAINTAINER buildmaster@rocket.chat
# Tue, 05 Mar 2019 04:51:53 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat &&  mkdir -p /app/uploads &&  chown rocketchat.rocketchat /app/uploads
# Tue, 05 Mar 2019 04:51:53 GMT
VOLUME [/app/uploads]
# Tue, 05 Mar 2019 04:51:54 GMT
RUN gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Tue, 05 Mar 2019 04:51:55 GMT
ENV RC_VERSION=0.74.3
# Tue, 05 Mar 2019 04:51:55 GMT
WORKDIR /app
# Tue, 05 Mar 2019 04:52:37 GMT
RUN curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install &&  npm cache clear --force &&  chown -R rocketchat:rocketchat /app
# Tue, 05 Mar 2019 04:52:39 GMT
USER rocketchat
# Tue, 05 Mar 2019 04:52:40 GMT
WORKDIR /app/bundle
# Tue, 05 Mar 2019 04:52:40 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Tue, 05 Mar 2019 04:52:40 GMT
EXPOSE 3000
# Tue, 05 Mar 2019 04:52:40 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:9fa17f107b7e9d91511082fc06c45340c4ab2b0820dc0974a963b137b3434e01`  
		Last Modified: Mon, 04 Mar 2019 23:24:38 GMT  
		Size: 30.2 MB (30154842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653cf56705541f7531ac84beaeb8e6ffba4ca17983d8bd72190e692d13e019ae`  
		Last Modified: Tue, 05 Mar 2019 04:52:56 GMT  
		Size: 9.8 KB (9815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c22265238530b84376cb85f5269fda1eeee93cb8b77804f8c2bf5db3a17c80cc`  
		Last Modified: Tue, 05 Mar 2019 04:53:04 GMT  
		Size: 23.2 MB (23208317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338cdc555fcb77e08401b883127559262eee0bbc392c7eed4c17557a0ec74fbd`  
		Last Modified: Tue, 05 Mar 2019 04:52:56 GMT  
		Size: 2.1 KB (2137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61772cd5cf32f2fdd8f86d4904c681869492fdf4a58b540e0b06dc261d97f3a5`  
		Last Modified: Tue, 05 Mar 2019 04:52:56 GMT  
		Size: 8.1 KB (8121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09e905bf6edbb68e072629831cec83b84608d1068f3809a648682de0ad2e1c4`  
		Last Modified: Tue, 05 Mar 2019 04:53:55 GMT  
		Size: 158.7 MB (158654419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:0.74.3`

```console
$ docker pull rocket.chat@sha256:85d9b7bc57a8b10ddbfaa45bef6776c9c2f2b1bbd4968450b7df8645b53c15a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rocket.chat:0.74.3` - linux; amd64

```console
$ docker pull rocket.chat@sha256:7b73e7cbc7b64f9bc233363a05d2241fd0bdc98588c988b28ad0cf9eebf172d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.0 MB (212037651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2528b1010825b882d97e7a8d2a078d32dfc0f0867c83940d53ac4165e4e48dcb`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 04 Mar 2019 23:20:30 GMT
ADD file:9c83a686342b9918902182a223021336d3fba9b5e540dcdb130ad47a22033781 in / 
# Mon, 04 Mar 2019 23:20:30 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 04:49:51 GMT
RUN gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys DD8F2338BAE7501E3DD5AC78C273792F7D83545D
# Tue, 05 Mar 2019 04:49:51 GMT
ENV NODE_VERSION=8.11.4
# Tue, 05 Mar 2019 04:49:52 GMT
ENV NODE_ENV=production
# Tue, 05 Mar 2019 04:51:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates curl; 	rm -rf /var/lib/apt/lists/*; 	curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz"; 	curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"; 	gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc; 	grep " node-v$NODE_VERSION-linux-x64.tar.gz\$" SHASUMS256.txt | sha256sum -c -; 	tar -xf "node-v$NODE_VERSION-linux-x64.tar.gz" -C /usr/local --strip-components=1 --no-same-owner; 	rm "node-v$NODE_VERSION-linux-x64.tar.gz" SHASUMS256.txt.asc SHASUMS256.txt; 	npm cache clear --force
# Tue, 05 Mar 2019 04:51:52 GMT
MAINTAINER buildmaster@rocket.chat
# Tue, 05 Mar 2019 04:51:53 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat &&  mkdir -p /app/uploads &&  chown rocketchat.rocketchat /app/uploads
# Tue, 05 Mar 2019 04:51:53 GMT
VOLUME [/app/uploads]
# Tue, 05 Mar 2019 04:51:54 GMT
RUN gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Tue, 05 Mar 2019 04:51:55 GMT
ENV RC_VERSION=0.74.3
# Tue, 05 Mar 2019 04:51:55 GMT
WORKDIR /app
# Tue, 05 Mar 2019 04:52:37 GMT
RUN curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install &&  npm cache clear --force &&  chown -R rocketchat:rocketchat /app
# Tue, 05 Mar 2019 04:52:39 GMT
USER rocketchat
# Tue, 05 Mar 2019 04:52:40 GMT
WORKDIR /app/bundle
# Tue, 05 Mar 2019 04:52:40 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Tue, 05 Mar 2019 04:52:40 GMT
EXPOSE 3000
# Tue, 05 Mar 2019 04:52:40 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:9fa17f107b7e9d91511082fc06c45340c4ab2b0820dc0974a963b137b3434e01`  
		Last Modified: Mon, 04 Mar 2019 23:24:38 GMT  
		Size: 30.2 MB (30154842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653cf56705541f7531ac84beaeb8e6ffba4ca17983d8bd72190e692d13e019ae`  
		Last Modified: Tue, 05 Mar 2019 04:52:56 GMT  
		Size: 9.8 KB (9815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c22265238530b84376cb85f5269fda1eeee93cb8b77804f8c2bf5db3a17c80cc`  
		Last Modified: Tue, 05 Mar 2019 04:53:04 GMT  
		Size: 23.2 MB (23208317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338cdc555fcb77e08401b883127559262eee0bbc392c7eed4c17557a0ec74fbd`  
		Last Modified: Tue, 05 Mar 2019 04:52:56 GMT  
		Size: 2.1 KB (2137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61772cd5cf32f2fdd8f86d4904c681869492fdf4a58b540e0b06dc261d97f3a5`  
		Last Modified: Tue, 05 Mar 2019 04:52:56 GMT  
		Size: 8.1 KB (8121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09e905bf6edbb68e072629831cec83b84608d1068f3809a648682de0ad2e1c4`  
		Last Modified: Tue, 05 Mar 2019 04:53:55 GMT  
		Size: 158.7 MB (158654419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:latest`

```console
$ docker pull rocket.chat@sha256:e5ae4abd3017e96498a8f271ccf8e92dae73c45cd45af18a9a4fd8fbb393b7ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rocket.chat:latest` - linux; amd64

```console
$ docker pull rocket.chat@sha256:7cb49f2e4ae4a9c4a6945dcb6ec63e04edd5309ca12a6adb273b8c35fe06beb8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.0 MB (212034561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e42d839f6de33f3d33e300f1f090c304c720f3478023bc609156002dca95df42`
-	Default Command: `["node","main.js"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:43 GMT
ADD file:5ac7d2fc09752a0bae6b0b631692b7ae99220c3957a18be70338e3a63a279c11 in / 
# Wed, 06 Feb 2019 03:27:44 GMT
CMD ["bash"]
# Fri, 01 Mar 2019 22:21:33 GMT
RUN gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys DD8F2338BAE7501E3DD5AC78C273792F7D83545D
# Fri, 01 Mar 2019 22:21:33 GMT
ENV NODE_VERSION=8.11.4
# Fri, 01 Mar 2019 22:21:33 GMT
ENV NODE_ENV=production
# Fri, 01 Mar 2019 22:23:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates curl; 	rm -rf /var/lib/apt/lists/*; 	curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz"; 	curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"; 	gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc; 	grep " node-v$NODE_VERSION-linux-x64.tar.gz\$" SHASUMS256.txt | sha256sum -c -; 	tar -xf "node-v$NODE_VERSION-linux-x64.tar.gz" -C /usr/local --strip-components=1 --no-same-owner; 	rm "node-v$NODE_VERSION-linux-x64.tar.gz" SHASUMS256.txt.asc SHASUMS256.txt; 	npm cache clear --force
# Fri, 01 Mar 2019 22:23:25 GMT
MAINTAINER buildmaster@rocket.chat
# Fri, 01 Mar 2019 22:23:26 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat &&  mkdir -p /app/uploads &&  chown rocketchat.rocketchat /app/uploads
# Fri, 01 Mar 2019 22:23:26 GMT
VOLUME [/app/uploads]
# Fri, 01 Mar 2019 22:23:27 GMT
RUN gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Fri, 01 Mar 2019 22:23:27 GMT
ENV RC_VERSION=0.74.3
# Fri, 01 Mar 2019 22:23:27 GMT
WORKDIR /app
# Fri, 01 Mar 2019 22:24:07 GMT
RUN curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install &&  npm cache clear --force &&  chown -R rocketchat:rocketchat /app
# Fri, 01 Mar 2019 22:24:09 GMT
USER rocketchat
# Fri, 01 Mar 2019 22:24:09 GMT
WORKDIR /app/bundle
# Fri, 01 Mar 2019 22:24:09 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Fri, 01 Mar 2019 22:24:09 GMT
EXPOSE 3000
# Fri, 01 Mar 2019 22:24:10 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:9a6b35880e8b6f720a2563dacfd85c994ea017630d1bd1e8ba8c0706cd0bdf9e`  
		Last Modified: Wed, 06 Feb 2019 03:33:38 GMT  
		Size: 30.2 MB (30151859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be40ddaedf71e4fa9db7468077122800496ee6d7ee0623099c4d9684567087d`  
		Last Modified: Fri, 01 Mar 2019 22:24:19 GMT  
		Size: 9.8 KB (9808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3d37d882b306c60a95564d9aa0bf129cf65acd9337ca88fa79562416280f28`  
		Last Modified: Fri, 01 Mar 2019 22:24:25 GMT  
		Size: 23.2 MB (23208257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46bb7dfd05405b42ec8a75c32e127d2dba69208c8006302619d857752c17409`  
		Last Modified: Fri, 01 Mar 2019 22:24:19 GMT  
		Size: 2.1 KB (2146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db54c66d5baa6658afbda268e0e76db7ed6a017a5bf9529bc0bd1db9d06fd9e1`  
		Last Modified: Fri, 01 Mar 2019 22:24:19 GMT  
		Size: 8.1 KB (8122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781f600ba4ee56f6f8870aeff997f2c9355a4d85832e52d7acd2742ef8ffa7f6`  
		Last Modified: Fri, 01 Mar 2019 22:24:56 GMT  
		Size: 158.7 MB (158654369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
