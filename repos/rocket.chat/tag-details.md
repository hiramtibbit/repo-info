<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rocket.chat`

-	[`rocket.chat:1`](#rocketchat1)
-	[`rocket.chat:1.0`](#rocketchat10)
-	[`rocket.chat:1.0.3`](#rocketchat103)
-	[`rocket.chat:latest`](#rocketchatlatest)

## `rocket.chat:1`

```console
$ docker pull rocket.chat@sha256:3c8377a143203ee3536adb86fd3686e3c199d9d9808f854b8b9994b2b503c210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rocket.chat:1` - linux; amd64

```console
$ docker pull rocket.chat@sha256:fc31d9656f3ff84e61bc7b4c2fbce41a062cf9534bc017f4577c9bcd3fa25d8e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.0 MB (218015226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e72ddddad52173635ebb3c446b5be51dfa379a210ccf712ca28e09f3bf26b024`
-	Default Command: `["node","main.js"]`

```dockerfile
# Wed, 08 May 2019 00:30:43 GMT
ADD file:2a97e6ac5eb5fead96f0d2bf3dc1f8732ff2a912450eb7d01a5f81731f66c2b6 in / 
# Wed, 08 May 2019 00:30:43 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:57:26 GMT
RUN gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys DD8F2338BAE7501E3DD5AC78C273792F7D83545D
# Wed, 08 May 2019 04:57:26 GMT
ENV NODE_VERSION=8.11.4
# Wed, 08 May 2019 04:57:26 GMT
ENV NODE_ENV=production
# Wed, 08 May 2019 04:59:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates curl; 	rm -rf /var/lib/apt/lists/*; 	curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz"; 	curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"; 	gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc; 	grep " node-v$NODE_VERSION-linux-x64.tar.gz\$" SHASUMS256.txt | sha256sum -c -; 	tar -xf "node-v$NODE_VERSION-linux-x64.tar.gz" -C /usr/local --strip-components=1 --no-same-owner; 	rm "node-v$NODE_VERSION-linux-x64.tar.gz" SHASUMS256.txt.asc SHASUMS256.txt; 	npm cache clear --force
# Wed, 08 May 2019 04:59:30 GMT
LABEL maintainer=buildmaster@rocket.chat
# Wed, 08 May 2019 04:59:31 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat &&  mkdir -p /app/uploads &&  chown rocketchat.rocketchat /app/uploads
# Wed, 08 May 2019 04:59:31 GMT
VOLUME [/app/uploads]
# Wed, 08 May 2019 04:59:32 GMT
RUN gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Tue, 14 May 2019 00:29:54 GMT
ENV RC_VERSION=1.0.3
# Tue, 14 May 2019 00:29:55 GMT
WORKDIR /app
# Tue, 14 May 2019 00:31:04 GMT
RUN curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install &&  npm cache clear --force &&  chown -R rocketchat:rocketchat /app
# Tue, 14 May 2019 00:31:08 GMT
USER rocketchat
# Tue, 14 May 2019 00:31:09 GMT
WORKDIR /app/bundle
# Tue, 14 May 2019 00:31:09 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Tue, 14 May 2019 00:31:09 GMT
EXPOSE 3000
# Tue, 14 May 2019 00:31:10 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:80e253c906dee8d7b26d7dafa4166149c57cb763d43ba6d483710370c32da5cd`  
		Last Modified: Wed, 08 May 2019 00:36:18 GMT  
		Size: 30.2 MB (30154060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d51cf7d7ee8fd301b14c8548f65b3e5b4b80c46b3372e89f665d84b3abeadafa`  
		Last Modified: Wed, 08 May 2019 05:01:01 GMT  
		Size: 9.8 KB (9807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2247500de751d6a797d7493901c875d22bb80c6bb62baa8e9c60a3cd4d57ee7a`  
		Last Modified: Wed, 08 May 2019 05:01:08 GMT  
		Size: 23.2 MB (23210444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72442fd11cfc8e9c3af58806b7cd807a685134c9a8fe91ffb3634fe4c12e3e1f`  
		Last Modified: Wed, 08 May 2019 05:01:01 GMT  
		Size: 2.1 KB (2135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356026534fc8c5c3a7971e5e5e33bbc4e88f8793b63684422f4025c27bb9879b`  
		Last Modified: Wed, 08 May 2019 05:01:00 GMT  
		Size: 8.1 KB (8122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06612fe77ea261e072145f76ccc4d696bf4b81d80689127ed0207bbb0777c27a`  
		Last Modified: Tue, 14 May 2019 00:32:13 GMT  
		Size: 164.6 MB (164630658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:1.0`

```console
$ docker pull rocket.chat@sha256:3c8377a143203ee3536adb86fd3686e3c199d9d9808f854b8b9994b2b503c210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rocket.chat:1.0` - linux; amd64

```console
$ docker pull rocket.chat@sha256:fc31d9656f3ff84e61bc7b4c2fbce41a062cf9534bc017f4577c9bcd3fa25d8e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.0 MB (218015226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e72ddddad52173635ebb3c446b5be51dfa379a210ccf712ca28e09f3bf26b024`
-	Default Command: `["node","main.js"]`

```dockerfile
# Wed, 08 May 2019 00:30:43 GMT
ADD file:2a97e6ac5eb5fead96f0d2bf3dc1f8732ff2a912450eb7d01a5f81731f66c2b6 in / 
# Wed, 08 May 2019 00:30:43 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:57:26 GMT
RUN gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys DD8F2338BAE7501E3DD5AC78C273792F7D83545D
# Wed, 08 May 2019 04:57:26 GMT
ENV NODE_VERSION=8.11.4
# Wed, 08 May 2019 04:57:26 GMT
ENV NODE_ENV=production
# Wed, 08 May 2019 04:59:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates curl; 	rm -rf /var/lib/apt/lists/*; 	curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz"; 	curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"; 	gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc; 	grep " node-v$NODE_VERSION-linux-x64.tar.gz\$" SHASUMS256.txt | sha256sum -c -; 	tar -xf "node-v$NODE_VERSION-linux-x64.tar.gz" -C /usr/local --strip-components=1 --no-same-owner; 	rm "node-v$NODE_VERSION-linux-x64.tar.gz" SHASUMS256.txt.asc SHASUMS256.txt; 	npm cache clear --force
# Wed, 08 May 2019 04:59:30 GMT
LABEL maintainer=buildmaster@rocket.chat
# Wed, 08 May 2019 04:59:31 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat &&  mkdir -p /app/uploads &&  chown rocketchat.rocketchat /app/uploads
# Wed, 08 May 2019 04:59:31 GMT
VOLUME [/app/uploads]
# Wed, 08 May 2019 04:59:32 GMT
RUN gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Tue, 14 May 2019 00:29:54 GMT
ENV RC_VERSION=1.0.3
# Tue, 14 May 2019 00:29:55 GMT
WORKDIR /app
# Tue, 14 May 2019 00:31:04 GMT
RUN curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install &&  npm cache clear --force &&  chown -R rocketchat:rocketchat /app
# Tue, 14 May 2019 00:31:08 GMT
USER rocketchat
# Tue, 14 May 2019 00:31:09 GMT
WORKDIR /app/bundle
# Tue, 14 May 2019 00:31:09 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Tue, 14 May 2019 00:31:09 GMT
EXPOSE 3000
# Tue, 14 May 2019 00:31:10 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:80e253c906dee8d7b26d7dafa4166149c57cb763d43ba6d483710370c32da5cd`  
		Last Modified: Wed, 08 May 2019 00:36:18 GMT  
		Size: 30.2 MB (30154060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d51cf7d7ee8fd301b14c8548f65b3e5b4b80c46b3372e89f665d84b3abeadafa`  
		Last Modified: Wed, 08 May 2019 05:01:01 GMT  
		Size: 9.8 KB (9807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2247500de751d6a797d7493901c875d22bb80c6bb62baa8e9c60a3cd4d57ee7a`  
		Last Modified: Wed, 08 May 2019 05:01:08 GMT  
		Size: 23.2 MB (23210444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72442fd11cfc8e9c3af58806b7cd807a685134c9a8fe91ffb3634fe4c12e3e1f`  
		Last Modified: Wed, 08 May 2019 05:01:01 GMT  
		Size: 2.1 KB (2135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356026534fc8c5c3a7971e5e5e33bbc4e88f8793b63684422f4025c27bb9879b`  
		Last Modified: Wed, 08 May 2019 05:01:00 GMT  
		Size: 8.1 KB (8122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06612fe77ea261e072145f76ccc4d696bf4b81d80689127ed0207bbb0777c27a`  
		Last Modified: Tue, 14 May 2019 00:32:13 GMT  
		Size: 164.6 MB (164630658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:1.0.3`

```console
$ docker pull rocket.chat@sha256:3c8377a143203ee3536adb86fd3686e3c199d9d9808f854b8b9994b2b503c210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rocket.chat:1.0.3` - linux; amd64

```console
$ docker pull rocket.chat@sha256:fc31d9656f3ff84e61bc7b4c2fbce41a062cf9534bc017f4577c9bcd3fa25d8e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.0 MB (218015226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e72ddddad52173635ebb3c446b5be51dfa379a210ccf712ca28e09f3bf26b024`
-	Default Command: `["node","main.js"]`

```dockerfile
# Wed, 08 May 2019 00:30:43 GMT
ADD file:2a97e6ac5eb5fead96f0d2bf3dc1f8732ff2a912450eb7d01a5f81731f66c2b6 in / 
# Wed, 08 May 2019 00:30:43 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:57:26 GMT
RUN gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys DD8F2338BAE7501E3DD5AC78C273792F7D83545D
# Wed, 08 May 2019 04:57:26 GMT
ENV NODE_VERSION=8.11.4
# Wed, 08 May 2019 04:57:26 GMT
ENV NODE_ENV=production
# Wed, 08 May 2019 04:59:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates curl; 	rm -rf /var/lib/apt/lists/*; 	curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz"; 	curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"; 	gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc; 	grep " node-v$NODE_VERSION-linux-x64.tar.gz\$" SHASUMS256.txt | sha256sum -c -; 	tar -xf "node-v$NODE_VERSION-linux-x64.tar.gz" -C /usr/local --strip-components=1 --no-same-owner; 	rm "node-v$NODE_VERSION-linux-x64.tar.gz" SHASUMS256.txt.asc SHASUMS256.txt; 	npm cache clear --force
# Wed, 08 May 2019 04:59:30 GMT
LABEL maintainer=buildmaster@rocket.chat
# Wed, 08 May 2019 04:59:31 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat &&  mkdir -p /app/uploads &&  chown rocketchat.rocketchat /app/uploads
# Wed, 08 May 2019 04:59:31 GMT
VOLUME [/app/uploads]
# Wed, 08 May 2019 04:59:32 GMT
RUN gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Tue, 14 May 2019 00:29:54 GMT
ENV RC_VERSION=1.0.3
# Tue, 14 May 2019 00:29:55 GMT
WORKDIR /app
# Tue, 14 May 2019 00:31:04 GMT
RUN curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install &&  npm cache clear --force &&  chown -R rocketchat:rocketchat /app
# Tue, 14 May 2019 00:31:08 GMT
USER rocketchat
# Tue, 14 May 2019 00:31:09 GMT
WORKDIR /app/bundle
# Tue, 14 May 2019 00:31:09 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Tue, 14 May 2019 00:31:09 GMT
EXPOSE 3000
# Tue, 14 May 2019 00:31:10 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:80e253c906dee8d7b26d7dafa4166149c57cb763d43ba6d483710370c32da5cd`  
		Last Modified: Wed, 08 May 2019 00:36:18 GMT  
		Size: 30.2 MB (30154060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d51cf7d7ee8fd301b14c8548f65b3e5b4b80c46b3372e89f665d84b3abeadafa`  
		Last Modified: Wed, 08 May 2019 05:01:01 GMT  
		Size: 9.8 KB (9807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2247500de751d6a797d7493901c875d22bb80c6bb62baa8e9c60a3cd4d57ee7a`  
		Last Modified: Wed, 08 May 2019 05:01:08 GMT  
		Size: 23.2 MB (23210444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72442fd11cfc8e9c3af58806b7cd807a685134c9a8fe91ffb3634fe4c12e3e1f`  
		Last Modified: Wed, 08 May 2019 05:01:01 GMT  
		Size: 2.1 KB (2135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356026534fc8c5c3a7971e5e5e33bbc4e88f8793b63684422f4025c27bb9879b`  
		Last Modified: Wed, 08 May 2019 05:01:00 GMT  
		Size: 8.1 KB (8122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06612fe77ea261e072145f76ccc4d696bf4b81d80689127ed0207bbb0777c27a`  
		Last Modified: Tue, 14 May 2019 00:32:13 GMT  
		Size: 164.6 MB (164630658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:latest`

```console
$ docker pull rocket.chat@sha256:3c8377a143203ee3536adb86fd3686e3c199d9d9808f854b8b9994b2b503c210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rocket.chat:latest` - linux; amd64

```console
$ docker pull rocket.chat@sha256:fc31d9656f3ff84e61bc7b4c2fbce41a062cf9534bc017f4577c9bcd3fa25d8e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.0 MB (218015226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e72ddddad52173635ebb3c446b5be51dfa379a210ccf712ca28e09f3bf26b024`
-	Default Command: `["node","main.js"]`

```dockerfile
# Wed, 08 May 2019 00:30:43 GMT
ADD file:2a97e6ac5eb5fead96f0d2bf3dc1f8732ff2a912450eb7d01a5f81731f66c2b6 in / 
# Wed, 08 May 2019 00:30:43 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:57:26 GMT
RUN gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys DD8F2338BAE7501E3DD5AC78C273792F7D83545D
# Wed, 08 May 2019 04:57:26 GMT
ENV NODE_VERSION=8.11.4
# Wed, 08 May 2019 04:57:26 GMT
ENV NODE_ENV=production
# Wed, 08 May 2019 04:59:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates curl; 	rm -rf /var/lib/apt/lists/*; 	curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz"; 	curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"; 	gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc; 	grep " node-v$NODE_VERSION-linux-x64.tar.gz\$" SHASUMS256.txt | sha256sum -c -; 	tar -xf "node-v$NODE_VERSION-linux-x64.tar.gz" -C /usr/local --strip-components=1 --no-same-owner; 	rm "node-v$NODE_VERSION-linux-x64.tar.gz" SHASUMS256.txt.asc SHASUMS256.txt; 	npm cache clear --force
# Wed, 08 May 2019 04:59:30 GMT
LABEL maintainer=buildmaster@rocket.chat
# Wed, 08 May 2019 04:59:31 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat &&  mkdir -p /app/uploads &&  chown rocketchat.rocketchat /app/uploads
# Wed, 08 May 2019 04:59:31 GMT
VOLUME [/app/uploads]
# Wed, 08 May 2019 04:59:32 GMT
RUN gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Tue, 14 May 2019 00:29:54 GMT
ENV RC_VERSION=1.0.3
# Tue, 14 May 2019 00:29:55 GMT
WORKDIR /app
# Tue, 14 May 2019 00:31:04 GMT
RUN curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install &&  npm cache clear --force &&  chown -R rocketchat:rocketchat /app
# Tue, 14 May 2019 00:31:08 GMT
USER rocketchat
# Tue, 14 May 2019 00:31:09 GMT
WORKDIR /app/bundle
# Tue, 14 May 2019 00:31:09 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Tue, 14 May 2019 00:31:09 GMT
EXPOSE 3000
# Tue, 14 May 2019 00:31:10 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:80e253c906dee8d7b26d7dafa4166149c57cb763d43ba6d483710370c32da5cd`  
		Last Modified: Wed, 08 May 2019 00:36:18 GMT  
		Size: 30.2 MB (30154060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d51cf7d7ee8fd301b14c8548f65b3e5b4b80c46b3372e89f665d84b3abeadafa`  
		Last Modified: Wed, 08 May 2019 05:01:01 GMT  
		Size: 9.8 KB (9807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2247500de751d6a797d7493901c875d22bb80c6bb62baa8e9c60a3cd4d57ee7a`  
		Last Modified: Wed, 08 May 2019 05:01:08 GMT  
		Size: 23.2 MB (23210444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72442fd11cfc8e9c3af58806b7cd807a685134c9a8fe91ffb3634fe4c12e3e1f`  
		Last Modified: Wed, 08 May 2019 05:01:01 GMT  
		Size: 2.1 KB (2135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356026534fc8c5c3a7971e5e5e33bbc4e88f8793b63684422f4025c27bb9879b`  
		Last Modified: Wed, 08 May 2019 05:01:00 GMT  
		Size: 8.1 KB (8122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06612fe77ea261e072145f76ccc4d696bf4b81d80689127ed0207bbb0777c27a`  
		Last Modified: Tue, 14 May 2019 00:32:13 GMT  
		Size: 164.6 MB (164630658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
