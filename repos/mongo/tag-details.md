<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo`

-	[`mongo:3`](#mongo3)
-	[`mongo:3.4`](#mongo34)
-	[`mongo:3.4.20`](#mongo3420)
-	[`mongo:3.4.20-windowsservercore`](#mongo3420-windowsservercore)
-	[`mongo:3.4.20-windowsservercore-ltsc2016`](#mongo3420-windowsservercore-ltsc2016)
-	[`mongo:3.4.20-xenial`](#mongo3420-xenial)
-	[`mongo:3.4-windowsservercore`](#mongo34-windowsservercore)
-	[`mongo:3.4-windowsservercore-ltsc2016`](#mongo34-windowsservercore-ltsc2016)
-	[`mongo:3.4-xenial`](#mongo34-xenial)
-	[`mongo:3.6`](#mongo36)
-	[`mongo:3.6.12`](#mongo3612)
-	[`mongo:3.6.12-windowsservercore`](#mongo3612-windowsservercore)
-	[`mongo:3.6.12-windowsservercore-ltsc2016`](#mongo3612-windowsservercore-ltsc2016)
-	[`mongo:3.6.12-xenial`](#mongo3612-xenial)
-	[`mongo:3.6-windowsservercore`](#mongo36-windowsservercore)
-	[`mongo:3.6-windowsservercore-ltsc2016`](#mongo36-windowsservercore-ltsc2016)
-	[`mongo:3.6-xenial`](#mongo36-xenial)
-	[`mongo:3-windowsservercore`](#mongo3-windowsservercore)
-	[`mongo:3-windowsservercore-ltsc2016`](#mongo3-windowsservercore-ltsc2016)
-	[`mongo:3-xenial`](#mongo3-xenial)
-	[`mongo:4`](#mongo4)
-	[`mongo:4.0`](#mongo40)
-	[`mongo:4.0.9`](#mongo409)
-	[`mongo:4.0.9-windowsservercore`](#mongo409-windowsservercore)
-	[`mongo:4.0.9-windowsservercore-1803`](#mongo409-windowsservercore-1803)
-	[`mongo:4.0.9-windowsservercore-ltsc2016`](#mongo409-windowsservercore-ltsc2016)
-	[`mongo:4.0.9-xenial`](#mongo409-xenial)
-	[`mongo:4.0-windowsservercore`](#mongo40-windowsservercore)
-	[`mongo:4.0-windowsservercore-1803`](#mongo40-windowsservercore-1803)
-	[`mongo:4.0-windowsservercore-ltsc2016`](#mongo40-windowsservercore-ltsc2016)
-	[`mongo:4.0-xenial`](#mongo40-xenial)
-	[`mongo:4.1`](#mongo41)
-	[`mongo:4.1.11`](#mongo4111)
-	[`mongo:4.1.11-bionic`](#mongo4111-bionic)
-	[`mongo:4.1.11-windowsservercore`](#mongo4111-windowsservercore)
-	[`mongo:4.1.11-windowsservercore-1803`](#mongo4111-windowsservercore-1803)
-	[`mongo:4.1.11-windowsservercore-ltsc2016`](#mongo4111-windowsservercore-ltsc2016)
-	[`mongo:4.1-bionic`](#mongo41-bionic)
-	[`mongo:4.1-windowsservercore`](#mongo41-windowsservercore)
-	[`mongo:4.1-windowsservercore-1803`](#mongo41-windowsservercore-1803)
-	[`mongo:4.1-windowsservercore-ltsc2016`](#mongo41-windowsservercore-ltsc2016)
-	[`mongo:4-windowsservercore`](#mongo4-windowsservercore)
-	[`mongo:4-windowsservercore-1803`](#mongo4-windowsservercore-1803)
-	[`mongo:4-windowsservercore-ltsc2016`](#mongo4-windowsservercore-ltsc2016)
-	[`mongo:4-xenial`](#mongo4-xenial)
-	[`mongo:latest`](#mongolatest)
-	[`mongo:unstable`](#mongounstable)
-	[`mongo:unstable-bionic`](#mongounstable-bionic)
-	[`mongo:unstable-windowsservercore`](#mongounstable-windowsservercore)
-	[`mongo:unstable-windowsservercore-1803`](#mongounstable-windowsservercore-1803)
-	[`mongo:unstable-windowsservercore-ltsc2016`](#mongounstable-windowsservercore-ltsc2016)
-	[`mongo:windowsservercore`](#mongowindowsservercore)
-	[`mongo:windowsservercore-1803`](#mongowindowsservercore-1803)
-	[`mongo:windowsservercore-ltsc2016`](#mongowindowsservercore-ltsc2016)
-	[`mongo:xenial`](#mongoxenial)

## `mongo:3`

```console
$ docker pull mongo@sha256:255ad354b93a421209a5f410af615f7fba2e53b9f6f353b8aa03c91fcf536674
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2969; amd64

### `mongo:3` - linux; amd64

```console
$ docker pull mongo@sha256:0b0f428ea735a7907b117f3d5883ad48c185b40eaf411288fff1efb1bb67a3dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.8 MB (164808359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09f8dcf185a688e255c4949c0ddeb15d5b9343970b83eb721a61bc21947de759`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:09:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 15 May 2019 23:10:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:10:01 GMT
ENV GOSU_VERSION=1.11
# Wed, 15 May 2019 23:10:01 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 15 May 2019 23:10:09 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 15 May 2019 23:10:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:10:35 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 15 May 2019 23:10:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:10:36 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 15 May 2019 23:10:37 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:10:37 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:10:37 GMT
ENV MONGO_MAJOR=3.6
# Wed, 15 May 2019 23:10:37 GMT
ENV MONGO_VERSION=3.6.12
# Wed, 15 May 2019 23:10:38 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 15 May 2019 23:10:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 15 May 2019 23:10:59 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 15 May 2019 23:11:00 GMT
VOLUME [/data/db /data/configdb]
# Wed, 15 May 2019 23:11:02 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 15 May 2019 23:11:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:11:02 GMT
EXPOSE 27017
# Wed, 15 May 2019 23:11:03 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815c6aedc001b0c406021809f6ddda02eafc2db0af37d82e719a469ff691a5bb`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.0 KB (1984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8566b2594855b4802bf2ec5a3cef61efe1d3ed97cfa6a747f397b7bb08db3c5b`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.9 MB (2945616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c9fe451980007df2a3585e68580ed005adb0a8f2bb3e85af75afa8034e5d75`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 1.2 MB (1151233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9e7bc12ceae7b610677a07d228667d9ec99d24069d391d3bda4a29370ef083`  
		Last Modified: Wed, 15 May 2019 23:13:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78be2e0e12c409c643372a791b726199cf61fab7262ac2d063830974a390c2b`  
		Last Modified: Wed, 15 May 2019 23:14:21 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23296b2003cfbd940c9653b833e8f60a74535d78986d8c2bd8e2bd03d18174d7`  
		Last Modified: Wed, 15 May 2019 23:14:21 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210f884c4fdf1093dc30eea321f33ef0cbfdcb98709bd259fd52208089ad4921`  
		Last Modified: Wed, 15 May 2019 23:14:50 GMT  
		Size: 116.9 MB (116933594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b428d3996691f5b8ccdeb529e0d6a4caf31a7ce3740129c681dc71d6e715702b`  
		Last Modified: Wed, 15 May 2019 23:14:21 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25217186f5f5e72f5e700bb31826f9e78fbb257157c8fe7ef11920561ebfca91`  
		Last Modified: Wed, 15 May 2019 23:14:21 GMT  
		Size: 3.9 KB (3917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:88b71fa3286e12c8c122457f49a536351622ffc172ed5a03ef7befaf5526dd28
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.5 MB (154481360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ee41652fedbb524b8234558620d7a28154b5469bb365a2bfe705c8424e2b9b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 13:48:50 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 13:49:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 13:49:18 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 13:49:19 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 13:49:41 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 13:49:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 13:51:05 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Sat, 27 Apr 2019 13:51:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 13:51:09 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 13:51:10 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:51:11 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:51:13 GMT
ENV MONGO_MAJOR=3.6
# Sat, 27 Apr 2019 13:51:17 GMT
ENV MONGO_VERSION=3.6.12
# Sat, 27 Apr 2019 13:51:22 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 13:52:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 13:52:32 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 13:52:33 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 09:00:20 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 09:00:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 09:00:22 GMT
EXPOSE 27017
# Tue, 07 May 2019 09:00:23 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f37d3b53bef1b38dcc459500630e3628dc2fc703b6027312c9c568de987ce1`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7b04826ecc05bc765e84011434c0505158b030c3503af0e900fcade2b666df`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.5 MB (2474268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe49430b9cce2eab30c50b2c8b16f45d8a81e199001659ae71780af25c3c762`  
		Last Modified: Sat, 27 Apr 2019 13:59:03 GMT  
		Size: 1.1 MB (1085761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0184914fa9f59778cc2d122033fb6f9f30776f21b59ef52a15dab0711cff256d`  
		Last Modified: Sat, 27 Apr 2019 13:59:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5525806419195e9fec059d73efb257280b28f16858c96295d25c6edfa83dba3e`  
		Last Modified: Sat, 27 Apr 2019 14:00:11 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd10c6f1a60e7ffd40b46a5f5191fd134da3f442dc7b9526f17b3d7c63745754`  
		Last Modified: Sat, 27 Apr 2019 14:00:11 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac1de03dd25d514c84272d09234c4391cb479ce609df9464097b9f269f51bec4`  
		Last Modified: Sat, 27 Apr 2019 14:00:54 GMT  
		Size: 111.2 MB (111182055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd7dc104d760e16f5905257ad079b41b84e3dc6dc73b60d351f9428a988c3c5`  
		Last Modified: Sat, 27 Apr 2019 14:00:11 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0404516850c1386142e395aa7003e5344c0bc29bfd40b5c4fa1554fc50c0596b`  
		Last Modified: Tue, 07 May 2019 09:01:17 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:e672ba0c3902223c0340f5dfe6ff574a921dfa235f83cbe23eec52958f0daf5c
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5795310146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01d7d1b7b18e0a766e40d2b91d89da03a367aa4d9044da0d725243fccdf5d30`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 14:48:36 GMT
ENV MONGO_VERSION=3.6.12
# Wed, 15 May 2019 14:48:38 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.12-signed.msi
# Wed, 15 May 2019 14:48:39 GMT
ENV MONGO_DOWNLOAD_SHA256=074261abf106d79e4d42612ce1d22d397c10af7f73cc9947f8e36632683ef3f7
# Wed, 15 May 2019 14:57:40 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 14:57:42 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 14:57:43 GMT
EXPOSE 27017
# Wed, 15 May 2019 14:57:45 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66a1f507a683181d061805e7c63398cc84e2e9ece66f5b1bbeb08d2d1e66eae`  
		Last Modified: Wed, 15 May 2019 15:55:44 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7631d209fa6816037ab52b63f2d5d038da8eceb8bdc5ab23b0ffd33c14d8fc`  
		Last Modified: Wed, 15 May 2019 15:55:44 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b78cb1aa49f3932f4c45afcb011160af2dcc4981d0cada15f367f37991820c`  
		Last Modified: Wed, 15 May 2019 15:55:41 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4202f3a0b63544c95b2a825e97d03d271bcc976c4956ad8248b718ef0c4e9dce`  
		Last Modified: Wed, 15 May 2019 15:56:04 GMT  
		Size: 93.2 MB (93180832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df644b06c76127c738e3e29c0dbe2789acaa96f057b01f067ec3606b191928a0`  
		Last Modified: Wed, 15 May 2019 15:55:41 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1714d6b311e8d64a62fde0de7c394a5b4d245f82fc8faa5c68cc73c89064ca5d`  
		Last Modified: Wed, 15 May 2019 15:55:42 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c0d17f0ec005a3b0b81f1198ae2ff049c5162912154d31ad0122870d417d636`  
		Last Modified: Wed, 15 May 2019 15:55:41 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:8cad962adfb65791203361dd493f6c17bd2a4cb8a0be6d60a9ca5c859efa397a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2969; amd64

### `mongo:3.4` - linux; amd64

```console
$ docker pull mongo@sha256:20e9fea7295fcd1c646b4d55368a60e1ffe32fabc6c5d40d58226a8b1bd28c5c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167485998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e07e22f0dbf3dcd953e42e838460ca76726c5c04a1020d87d82ff18a41ca488`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:09:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 15 May 2019 23:10:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:10:01 GMT
ENV GOSU_VERSION=1.11
# Wed, 15 May 2019 23:10:01 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 15 May 2019 23:10:09 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 15 May 2019 23:10:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:10:10 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 15 May 2019 23:10:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:10:11 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 15 May 2019 23:10:12 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:10:12 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:10:12 GMT
ENV MONGO_MAJOR=3.4
# Wed, 15 May 2019 23:10:12 GMT
ENV MONGO_VERSION=3.4.20
# Wed, 15 May 2019 23:10:13 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 15 May 2019 23:10:30 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 15 May 2019 23:10:31 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 15 May 2019 23:10:31 GMT
VOLUME [/data/db /data/configdb]
# Wed, 15 May 2019 23:10:31 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 15 May 2019 23:10:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat (3.4)
# Wed, 15 May 2019 23:10:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:10:32 GMT
EXPOSE 27017
# Wed, 15 May 2019 23:10:32 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815c6aedc001b0c406021809f6ddda02eafc2db0af37d82e719a469ff691a5bb`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.0 KB (1984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8566b2594855b4802bf2ec5a3cef61efe1d3ed97cfa6a747f397b7bb08db3c5b`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.9 MB (2945616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c9fe451980007df2a3585e68580ed005adb0a8f2bb3e85af75afa8034e5d75`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 1.2 MB (1151233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9e7bc12ceae7b610677a07d228667d9ec99d24069d391d3bda4a29370ef083`  
		Last Modified: Wed, 15 May 2019 23:13:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf515753313f6850ce93164f1160967ecbdb1fdb16d0dd3225475cf505c0806`  
		Last Modified: Wed, 15 May 2019 23:13:42 GMT  
		Size: 2.0 KB (1998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106481e26b7980c2cc564379d7c701304efa5ad2227a6b89eebf3f3f5ca98037`  
		Last Modified: Wed, 15 May 2019 23:13:41 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d18c76895dddf7c8bc9b840b3491c47cbea285840d856b49ca32e580cbd88d`  
		Last Modified: Wed, 15 May 2019 23:14:16 GMT  
		Size: 119.6 MB (119611106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d728162b5d8a69b01ca2cd38b070ea3700038a8ab1b3305ef8857df2404615`  
		Last Modified: Wed, 15 May 2019 23:13:41 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75a38b109f93f3a75f77af3d498be38be2e1d9e5e2a06776522a4c606df74cc`  
		Last Modified: Wed, 15 May 2019 23:13:41 GMT  
		Size: 3.9 KB (3917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d470115d6109817b3f0f11f840c7ca8d62da6f029772dd0cd4ba0349755c9508`  
		Last Modified: Wed, 15 May 2019 23:13:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.4` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:0abe6cedca7db1b3cb45b1401485bbc78d8fa9701697960f6647eaefbcdc952f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.2 MB (156157841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:361cf258f97a0b67fdfe7a0be13825a377d0c94b303fbb7c94538080d549e87f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 13:48:50 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 13:49:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 13:49:18 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 13:49:19 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 13:49:41 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 13:49:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 13:49:45 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Sat, 27 Apr 2019 13:49:48 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 13:49:49 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 13:49:50 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:49:51 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:49:52 GMT
ENV MONGO_MAJOR=3.4
# Sat, 27 Apr 2019 13:49:54 GMT
ENV MONGO_VERSION=3.4.20
# Sat, 27 Apr 2019 13:49:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 13:50:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 13:50:50 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 13:50:51 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 09:00:09 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 09:00:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat (3.4)
# Tue, 07 May 2019 09:00:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 09:00:13 GMT
EXPOSE 27017
# Tue, 07 May 2019 09:00:14 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f37d3b53bef1b38dcc459500630e3628dc2fc703b6027312c9c568de987ce1`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7b04826ecc05bc765e84011434c0505158b030c3503af0e900fcade2b666df`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.5 MB (2474268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe49430b9cce2eab30c50b2c8b16f45d8a81e199001659ae71780af25c3c762`  
		Last Modified: Sat, 27 Apr 2019 13:59:03 GMT  
		Size: 1.1 MB (1085761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0184914fa9f59778cc2d122033fb6f9f30776f21b59ef52a15dab0711cff256d`  
		Last Modified: Sat, 27 Apr 2019 13:59:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342e8b0210c84f812ea04ecb3fccb52970fb99842ddb61ee1ccb45b5067914fb`  
		Last Modified: Sat, 27 Apr 2019 13:59:01 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56505ec54fc364e4b78ca2a532137f20209f49fbac686f44e783ef0ef977cac`  
		Last Modified: Sat, 27 Apr 2019 13:58:59 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d80b25de786ba9fb27e3a06eb1adc6889af5f9610d887286cf502156c8c55bf`  
		Last Modified: Sat, 27 Apr 2019 14:00:01 GMT  
		Size: 112.9 MB (112858414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95038e18d60bf4582c2962d5bc08f5c826833e40438b86d6ab8175b2d61004b1`  
		Last Modified: Sat, 27 Apr 2019 13:58:59 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf01145e86c958ba43bc586dff0ba3dc466009fd6caa6f5efd34b39c40aab87c`  
		Last Modified: Tue, 07 May 2019 09:01:09 GMT  
		Size: 3.9 KB (3917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c010ca77b8a38e08965c3f20999a485a8ad09f3efbe24da00ef2322c1c26512`  
		Last Modified: Tue, 07 May 2019 09:01:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.4` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:267d5ce544f07e76aa30c16dda50252d237617e3a48f3cac6153a97487f654d1
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5794004204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:456e50478c2756ad32348f03211fc1884b5c8d266e043a564c340456eaca7784`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 14:45:24 GMT
ENV MONGO_VERSION=3.4.20
# Wed, 15 May 2019 14:45:25 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.20-signed.msi
# Wed, 15 May 2019 14:45:27 GMT
ENV MONGO_DOWNLOAD_SHA256=a6b27a8ce7ba1d6ebe734e7e5c0f644317ca684a0e4530250b9a2201f331bc59
# Wed, 15 May 2019 14:48:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 14:48:16 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 14:48:18 GMT
EXPOSE 27017
# Wed, 15 May 2019 14:48:20 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82f3fd41ecd8c678df90493fb841633a1ea6c26d9cb355303f16c9594ec6278`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76117aeefa72f25c5b77e590f2b4ad4220c5d1ab5a424a2b6c327d1e5f1c1275`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc34512e2a1ed46ef8dcd47f535b601125aa42eb951ae99c5efc88fdb947899c`  
		Last Modified: Wed, 15 May 2019 15:55:04 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479265a6597f3ab30c65018ca4fb9c87632674b7b9c58a55fc3454242f27a21a`  
		Last Modified: Wed, 15 May 2019 15:55:26 GMT  
		Size: 91.9 MB (91874864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b86d5dcb9bb4481e24f1de9bc717322114d418d79767d24451dbf22f117c51c`  
		Last Modified: Wed, 15 May 2019 15:55:04 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46705c7b11aab3469b22d47cf1e72dc0f7e6573c38cdd740d78d65a1da698994`  
		Last Modified: Wed, 15 May 2019 15:55:04 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:123cd3d1fe08dd880b1931ff7c0400a8d6661e5fd128c75aa0fe97e67a91f53c`  
		Last Modified: Wed, 15 May 2019 15:55:04 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.20`

```console
$ docker pull mongo@sha256:8cad962adfb65791203361dd493f6c17bd2a4cb8a0be6d60a9ca5c859efa397a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2969; amd64

### `mongo:3.4.20` - linux; amd64

```console
$ docker pull mongo@sha256:20e9fea7295fcd1c646b4d55368a60e1ffe32fabc6c5d40d58226a8b1bd28c5c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167485998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e07e22f0dbf3dcd953e42e838460ca76726c5c04a1020d87d82ff18a41ca488`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:09:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 15 May 2019 23:10:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:10:01 GMT
ENV GOSU_VERSION=1.11
# Wed, 15 May 2019 23:10:01 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 15 May 2019 23:10:09 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 15 May 2019 23:10:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:10:10 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 15 May 2019 23:10:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:10:11 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 15 May 2019 23:10:12 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:10:12 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:10:12 GMT
ENV MONGO_MAJOR=3.4
# Wed, 15 May 2019 23:10:12 GMT
ENV MONGO_VERSION=3.4.20
# Wed, 15 May 2019 23:10:13 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 15 May 2019 23:10:30 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 15 May 2019 23:10:31 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 15 May 2019 23:10:31 GMT
VOLUME [/data/db /data/configdb]
# Wed, 15 May 2019 23:10:31 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 15 May 2019 23:10:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat (3.4)
# Wed, 15 May 2019 23:10:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:10:32 GMT
EXPOSE 27017
# Wed, 15 May 2019 23:10:32 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815c6aedc001b0c406021809f6ddda02eafc2db0af37d82e719a469ff691a5bb`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.0 KB (1984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8566b2594855b4802bf2ec5a3cef61efe1d3ed97cfa6a747f397b7bb08db3c5b`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.9 MB (2945616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c9fe451980007df2a3585e68580ed005adb0a8f2bb3e85af75afa8034e5d75`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 1.2 MB (1151233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9e7bc12ceae7b610677a07d228667d9ec99d24069d391d3bda4a29370ef083`  
		Last Modified: Wed, 15 May 2019 23:13:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf515753313f6850ce93164f1160967ecbdb1fdb16d0dd3225475cf505c0806`  
		Last Modified: Wed, 15 May 2019 23:13:42 GMT  
		Size: 2.0 KB (1998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106481e26b7980c2cc564379d7c701304efa5ad2227a6b89eebf3f3f5ca98037`  
		Last Modified: Wed, 15 May 2019 23:13:41 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d18c76895dddf7c8bc9b840b3491c47cbea285840d856b49ca32e580cbd88d`  
		Last Modified: Wed, 15 May 2019 23:14:16 GMT  
		Size: 119.6 MB (119611106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d728162b5d8a69b01ca2cd38b070ea3700038a8ab1b3305ef8857df2404615`  
		Last Modified: Wed, 15 May 2019 23:13:41 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75a38b109f93f3a75f77af3d498be38be2e1d9e5e2a06776522a4c606df74cc`  
		Last Modified: Wed, 15 May 2019 23:13:41 GMT  
		Size: 3.9 KB (3917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d470115d6109817b3f0f11f840c7ca8d62da6f029772dd0cd4ba0349755c9508`  
		Last Modified: Wed, 15 May 2019 23:13:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.4.20` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:0abe6cedca7db1b3cb45b1401485bbc78d8fa9701697960f6647eaefbcdc952f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.2 MB (156157841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:361cf258f97a0b67fdfe7a0be13825a377d0c94b303fbb7c94538080d549e87f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 13:48:50 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 13:49:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 13:49:18 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 13:49:19 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 13:49:41 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 13:49:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 13:49:45 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Sat, 27 Apr 2019 13:49:48 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 13:49:49 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 13:49:50 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:49:51 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:49:52 GMT
ENV MONGO_MAJOR=3.4
# Sat, 27 Apr 2019 13:49:54 GMT
ENV MONGO_VERSION=3.4.20
# Sat, 27 Apr 2019 13:49:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 13:50:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 13:50:50 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 13:50:51 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 09:00:09 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 09:00:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat (3.4)
# Tue, 07 May 2019 09:00:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 09:00:13 GMT
EXPOSE 27017
# Tue, 07 May 2019 09:00:14 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f37d3b53bef1b38dcc459500630e3628dc2fc703b6027312c9c568de987ce1`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7b04826ecc05bc765e84011434c0505158b030c3503af0e900fcade2b666df`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.5 MB (2474268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe49430b9cce2eab30c50b2c8b16f45d8a81e199001659ae71780af25c3c762`  
		Last Modified: Sat, 27 Apr 2019 13:59:03 GMT  
		Size: 1.1 MB (1085761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0184914fa9f59778cc2d122033fb6f9f30776f21b59ef52a15dab0711cff256d`  
		Last Modified: Sat, 27 Apr 2019 13:59:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342e8b0210c84f812ea04ecb3fccb52970fb99842ddb61ee1ccb45b5067914fb`  
		Last Modified: Sat, 27 Apr 2019 13:59:01 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56505ec54fc364e4b78ca2a532137f20209f49fbac686f44e783ef0ef977cac`  
		Last Modified: Sat, 27 Apr 2019 13:58:59 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d80b25de786ba9fb27e3a06eb1adc6889af5f9610d887286cf502156c8c55bf`  
		Last Modified: Sat, 27 Apr 2019 14:00:01 GMT  
		Size: 112.9 MB (112858414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95038e18d60bf4582c2962d5bc08f5c826833e40438b86d6ab8175b2d61004b1`  
		Last Modified: Sat, 27 Apr 2019 13:58:59 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf01145e86c958ba43bc586dff0ba3dc466009fd6caa6f5efd34b39c40aab87c`  
		Last Modified: Tue, 07 May 2019 09:01:09 GMT  
		Size: 3.9 KB (3917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c010ca77b8a38e08965c3f20999a485a8ad09f3efbe24da00ef2322c1c26512`  
		Last Modified: Tue, 07 May 2019 09:01:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.4.20` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:267d5ce544f07e76aa30c16dda50252d237617e3a48f3cac6153a97487f654d1
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5794004204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:456e50478c2756ad32348f03211fc1884b5c8d266e043a564c340456eaca7784`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 14:45:24 GMT
ENV MONGO_VERSION=3.4.20
# Wed, 15 May 2019 14:45:25 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.20-signed.msi
# Wed, 15 May 2019 14:45:27 GMT
ENV MONGO_DOWNLOAD_SHA256=a6b27a8ce7ba1d6ebe734e7e5c0f644317ca684a0e4530250b9a2201f331bc59
# Wed, 15 May 2019 14:48:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 14:48:16 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 14:48:18 GMT
EXPOSE 27017
# Wed, 15 May 2019 14:48:20 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82f3fd41ecd8c678df90493fb841633a1ea6c26d9cb355303f16c9594ec6278`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76117aeefa72f25c5b77e590f2b4ad4220c5d1ab5a424a2b6c327d1e5f1c1275`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc34512e2a1ed46ef8dcd47f535b601125aa42eb951ae99c5efc88fdb947899c`  
		Last Modified: Wed, 15 May 2019 15:55:04 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479265a6597f3ab30c65018ca4fb9c87632674b7b9c58a55fc3454242f27a21a`  
		Last Modified: Wed, 15 May 2019 15:55:26 GMT  
		Size: 91.9 MB (91874864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b86d5dcb9bb4481e24f1de9bc717322114d418d79767d24451dbf22f117c51c`  
		Last Modified: Wed, 15 May 2019 15:55:04 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46705c7b11aab3469b22d47cf1e72dc0f7e6573c38cdd740d78d65a1da698994`  
		Last Modified: Wed, 15 May 2019 15:55:04 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:123cd3d1fe08dd880b1931ff7c0400a8d6661e5fd128c75aa0fe97e67a91f53c`  
		Last Modified: Wed, 15 May 2019 15:55:04 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.20-windowsservercore`

```console
$ docker pull mongo@sha256:06b620e40481edfed52cafc86a669d065bd9fb005439c1bab1620b953c1d4058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64

### `mongo:3.4.20-windowsservercore` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:267d5ce544f07e76aa30c16dda50252d237617e3a48f3cac6153a97487f654d1
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5794004204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:456e50478c2756ad32348f03211fc1884b5c8d266e043a564c340456eaca7784`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 14:45:24 GMT
ENV MONGO_VERSION=3.4.20
# Wed, 15 May 2019 14:45:25 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.20-signed.msi
# Wed, 15 May 2019 14:45:27 GMT
ENV MONGO_DOWNLOAD_SHA256=a6b27a8ce7ba1d6ebe734e7e5c0f644317ca684a0e4530250b9a2201f331bc59
# Wed, 15 May 2019 14:48:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 14:48:16 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 14:48:18 GMT
EXPOSE 27017
# Wed, 15 May 2019 14:48:20 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82f3fd41ecd8c678df90493fb841633a1ea6c26d9cb355303f16c9594ec6278`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76117aeefa72f25c5b77e590f2b4ad4220c5d1ab5a424a2b6c327d1e5f1c1275`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc34512e2a1ed46ef8dcd47f535b601125aa42eb951ae99c5efc88fdb947899c`  
		Last Modified: Wed, 15 May 2019 15:55:04 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479265a6597f3ab30c65018ca4fb9c87632674b7b9c58a55fc3454242f27a21a`  
		Last Modified: Wed, 15 May 2019 15:55:26 GMT  
		Size: 91.9 MB (91874864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b86d5dcb9bb4481e24f1de9bc717322114d418d79767d24451dbf22f117c51c`  
		Last Modified: Wed, 15 May 2019 15:55:04 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46705c7b11aab3469b22d47cf1e72dc0f7e6573c38cdd740d78d65a1da698994`  
		Last Modified: Wed, 15 May 2019 15:55:04 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:123cd3d1fe08dd880b1931ff7c0400a8d6661e5fd128c75aa0fe97e67a91f53c`  
		Last Modified: Wed, 15 May 2019 15:55:04 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.20-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:06b620e40481edfed52cafc86a669d065bd9fb005439c1bab1620b953c1d4058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64

### `mongo:3.4.20-windowsservercore-ltsc2016` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:267d5ce544f07e76aa30c16dda50252d237617e3a48f3cac6153a97487f654d1
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5794004204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:456e50478c2756ad32348f03211fc1884b5c8d266e043a564c340456eaca7784`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 14:45:24 GMT
ENV MONGO_VERSION=3.4.20
# Wed, 15 May 2019 14:45:25 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.20-signed.msi
# Wed, 15 May 2019 14:45:27 GMT
ENV MONGO_DOWNLOAD_SHA256=a6b27a8ce7ba1d6ebe734e7e5c0f644317ca684a0e4530250b9a2201f331bc59
# Wed, 15 May 2019 14:48:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 14:48:16 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 14:48:18 GMT
EXPOSE 27017
# Wed, 15 May 2019 14:48:20 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82f3fd41ecd8c678df90493fb841633a1ea6c26d9cb355303f16c9594ec6278`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76117aeefa72f25c5b77e590f2b4ad4220c5d1ab5a424a2b6c327d1e5f1c1275`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc34512e2a1ed46ef8dcd47f535b601125aa42eb951ae99c5efc88fdb947899c`  
		Last Modified: Wed, 15 May 2019 15:55:04 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479265a6597f3ab30c65018ca4fb9c87632674b7b9c58a55fc3454242f27a21a`  
		Last Modified: Wed, 15 May 2019 15:55:26 GMT  
		Size: 91.9 MB (91874864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b86d5dcb9bb4481e24f1de9bc717322114d418d79767d24451dbf22f117c51c`  
		Last Modified: Wed, 15 May 2019 15:55:04 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46705c7b11aab3469b22d47cf1e72dc0f7e6573c38cdd740d78d65a1da698994`  
		Last Modified: Wed, 15 May 2019 15:55:04 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:123cd3d1fe08dd880b1931ff7c0400a8d6661e5fd128c75aa0fe97e67a91f53c`  
		Last Modified: Wed, 15 May 2019 15:55:04 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.20-xenial`

```console
$ docker pull mongo@sha256:64e6f6d22b38cedd3c0d1f00a4ad14be39b5f147a8bf719d37bf7397b821fd1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:3.4.20-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:20e9fea7295fcd1c646b4d55368a60e1ffe32fabc6c5d40d58226a8b1bd28c5c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167485998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e07e22f0dbf3dcd953e42e838460ca76726c5c04a1020d87d82ff18a41ca488`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:09:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 15 May 2019 23:10:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:10:01 GMT
ENV GOSU_VERSION=1.11
# Wed, 15 May 2019 23:10:01 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 15 May 2019 23:10:09 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 15 May 2019 23:10:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:10:10 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 15 May 2019 23:10:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:10:11 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 15 May 2019 23:10:12 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:10:12 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:10:12 GMT
ENV MONGO_MAJOR=3.4
# Wed, 15 May 2019 23:10:12 GMT
ENV MONGO_VERSION=3.4.20
# Wed, 15 May 2019 23:10:13 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 15 May 2019 23:10:30 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 15 May 2019 23:10:31 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 15 May 2019 23:10:31 GMT
VOLUME [/data/db /data/configdb]
# Wed, 15 May 2019 23:10:31 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 15 May 2019 23:10:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat (3.4)
# Wed, 15 May 2019 23:10:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:10:32 GMT
EXPOSE 27017
# Wed, 15 May 2019 23:10:32 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815c6aedc001b0c406021809f6ddda02eafc2db0af37d82e719a469ff691a5bb`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.0 KB (1984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8566b2594855b4802bf2ec5a3cef61efe1d3ed97cfa6a747f397b7bb08db3c5b`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.9 MB (2945616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c9fe451980007df2a3585e68580ed005adb0a8f2bb3e85af75afa8034e5d75`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 1.2 MB (1151233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9e7bc12ceae7b610677a07d228667d9ec99d24069d391d3bda4a29370ef083`  
		Last Modified: Wed, 15 May 2019 23:13:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf515753313f6850ce93164f1160967ecbdb1fdb16d0dd3225475cf505c0806`  
		Last Modified: Wed, 15 May 2019 23:13:42 GMT  
		Size: 2.0 KB (1998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106481e26b7980c2cc564379d7c701304efa5ad2227a6b89eebf3f3f5ca98037`  
		Last Modified: Wed, 15 May 2019 23:13:41 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d18c76895dddf7c8bc9b840b3491c47cbea285840d856b49ca32e580cbd88d`  
		Last Modified: Wed, 15 May 2019 23:14:16 GMT  
		Size: 119.6 MB (119611106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d728162b5d8a69b01ca2cd38b070ea3700038a8ab1b3305ef8857df2404615`  
		Last Modified: Wed, 15 May 2019 23:13:41 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75a38b109f93f3a75f77af3d498be38be2e1d9e5e2a06776522a4c606df74cc`  
		Last Modified: Wed, 15 May 2019 23:13:41 GMT  
		Size: 3.9 KB (3917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d470115d6109817b3f0f11f840c7ca8d62da6f029772dd0cd4ba0349755c9508`  
		Last Modified: Wed, 15 May 2019 23:13:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.4.20-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:0abe6cedca7db1b3cb45b1401485bbc78d8fa9701697960f6647eaefbcdc952f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.2 MB (156157841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:361cf258f97a0b67fdfe7a0be13825a377d0c94b303fbb7c94538080d549e87f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 13:48:50 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 13:49:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 13:49:18 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 13:49:19 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 13:49:41 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 13:49:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 13:49:45 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Sat, 27 Apr 2019 13:49:48 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 13:49:49 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 13:49:50 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:49:51 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:49:52 GMT
ENV MONGO_MAJOR=3.4
# Sat, 27 Apr 2019 13:49:54 GMT
ENV MONGO_VERSION=3.4.20
# Sat, 27 Apr 2019 13:49:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 13:50:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 13:50:50 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 13:50:51 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 09:00:09 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 09:00:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat (3.4)
# Tue, 07 May 2019 09:00:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 09:00:13 GMT
EXPOSE 27017
# Tue, 07 May 2019 09:00:14 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f37d3b53bef1b38dcc459500630e3628dc2fc703b6027312c9c568de987ce1`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7b04826ecc05bc765e84011434c0505158b030c3503af0e900fcade2b666df`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.5 MB (2474268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe49430b9cce2eab30c50b2c8b16f45d8a81e199001659ae71780af25c3c762`  
		Last Modified: Sat, 27 Apr 2019 13:59:03 GMT  
		Size: 1.1 MB (1085761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0184914fa9f59778cc2d122033fb6f9f30776f21b59ef52a15dab0711cff256d`  
		Last Modified: Sat, 27 Apr 2019 13:59:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342e8b0210c84f812ea04ecb3fccb52970fb99842ddb61ee1ccb45b5067914fb`  
		Last Modified: Sat, 27 Apr 2019 13:59:01 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56505ec54fc364e4b78ca2a532137f20209f49fbac686f44e783ef0ef977cac`  
		Last Modified: Sat, 27 Apr 2019 13:58:59 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d80b25de786ba9fb27e3a06eb1adc6889af5f9610d887286cf502156c8c55bf`  
		Last Modified: Sat, 27 Apr 2019 14:00:01 GMT  
		Size: 112.9 MB (112858414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95038e18d60bf4582c2962d5bc08f5c826833e40438b86d6ab8175b2d61004b1`  
		Last Modified: Sat, 27 Apr 2019 13:58:59 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf01145e86c958ba43bc586dff0ba3dc466009fd6caa6f5efd34b39c40aab87c`  
		Last Modified: Tue, 07 May 2019 09:01:09 GMT  
		Size: 3.9 KB (3917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c010ca77b8a38e08965c3f20999a485a8ad09f3efbe24da00ef2322c1c26512`  
		Last Modified: Tue, 07 May 2019 09:01:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-windowsservercore`

```console
$ docker pull mongo@sha256:06b620e40481edfed52cafc86a669d065bd9fb005439c1bab1620b953c1d4058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64

### `mongo:3.4-windowsservercore` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:267d5ce544f07e76aa30c16dda50252d237617e3a48f3cac6153a97487f654d1
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5794004204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:456e50478c2756ad32348f03211fc1884b5c8d266e043a564c340456eaca7784`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 14:45:24 GMT
ENV MONGO_VERSION=3.4.20
# Wed, 15 May 2019 14:45:25 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.20-signed.msi
# Wed, 15 May 2019 14:45:27 GMT
ENV MONGO_DOWNLOAD_SHA256=a6b27a8ce7ba1d6ebe734e7e5c0f644317ca684a0e4530250b9a2201f331bc59
# Wed, 15 May 2019 14:48:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 14:48:16 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 14:48:18 GMT
EXPOSE 27017
# Wed, 15 May 2019 14:48:20 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82f3fd41ecd8c678df90493fb841633a1ea6c26d9cb355303f16c9594ec6278`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76117aeefa72f25c5b77e590f2b4ad4220c5d1ab5a424a2b6c327d1e5f1c1275`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc34512e2a1ed46ef8dcd47f535b601125aa42eb951ae99c5efc88fdb947899c`  
		Last Modified: Wed, 15 May 2019 15:55:04 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479265a6597f3ab30c65018ca4fb9c87632674b7b9c58a55fc3454242f27a21a`  
		Last Modified: Wed, 15 May 2019 15:55:26 GMT  
		Size: 91.9 MB (91874864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b86d5dcb9bb4481e24f1de9bc717322114d418d79767d24451dbf22f117c51c`  
		Last Modified: Wed, 15 May 2019 15:55:04 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46705c7b11aab3469b22d47cf1e72dc0f7e6573c38cdd740d78d65a1da698994`  
		Last Modified: Wed, 15 May 2019 15:55:04 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:123cd3d1fe08dd880b1931ff7c0400a8d6661e5fd128c75aa0fe97e67a91f53c`  
		Last Modified: Wed, 15 May 2019 15:55:04 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:06b620e40481edfed52cafc86a669d065bd9fb005439c1bab1620b953c1d4058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64

### `mongo:3.4-windowsservercore-ltsc2016` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:267d5ce544f07e76aa30c16dda50252d237617e3a48f3cac6153a97487f654d1
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5794004204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:456e50478c2756ad32348f03211fc1884b5c8d266e043a564c340456eaca7784`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 14:45:24 GMT
ENV MONGO_VERSION=3.4.20
# Wed, 15 May 2019 14:45:25 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.20-signed.msi
# Wed, 15 May 2019 14:45:27 GMT
ENV MONGO_DOWNLOAD_SHA256=a6b27a8ce7ba1d6ebe734e7e5c0f644317ca684a0e4530250b9a2201f331bc59
# Wed, 15 May 2019 14:48:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 14:48:16 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 14:48:18 GMT
EXPOSE 27017
# Wed, 15 May 2019 14:48:20 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82f3fd41ecd8c678df90493fb841633a1ea6c26d9cb355303f16c9594ec6278`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76117aeefa72f25c5b77e590f2b4ad4220c5d1ab5a424a2b6c327d1e5f1c1275`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc34512e2a1ed46ef8dcd47f535b601125aa42eb951ae99c5efc88fdb947899c`  
		Last Modified: Wed, 15 May 2019 15:55:04 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479265a6597f3ab30c65018ca4fb9c87632674b7b9c58a55fc3454242f27a21a`  
		Last Modified: Wed, 15 May 2019 15:55:26 GMT  
		Size: 91.9 MB (91874864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b86d5dcb9bb4481e24f1de9bc717322114d418d79767d24451dbf22f117c51c`  
		Last Modified: Wed, 15 May 2019 15:55:04 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46705c7b11aab3469b22d47cf1e72dc0f7e6573c38cdd740d78d65a1da698994`  
		Last Modified: Wed, 15 May 2019 15:55:04 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:123cd3d1fe08dd880b1931ff7c0400a8d6661e5fd128c75aa0fe97e67a91f53c`  
		Last Modified: Wed, 15 May 2019 15:55:04 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-xenial`

```console
$ docker pull mongo@sha256:64e6f6d22b38cedd3c0d1f00a4ad14be39b5f147a8bf719d37bf7397b821fd1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:3.4-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:20e9fea7295fcd1c646b4d55368a60e1ffe32fabc6c5d40d58226a8b1bd28c5c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167485998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e07e22f0dbf3dcd953e42e838460ca76726c5c04a1020d87d82ff18a41ca488`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:09:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 15 May 2019 23:10:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:10:01 GMT
ENV GOSU_VERSION=1.11
# Wed, 15 May 2019 23:10:01 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 15 May 2019 23:10:09 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 15 May 2019 23:10:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:10:10 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 15 May 2019 23:10:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:10:11 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 15 May 2019 23:10:12 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:10:12 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:10:12 GMT
ENV MONGO_MAJOR=3.4
# Wed, 15 May 2019 23:10:12 GMT
ENV MONGO_VERSION=3.4.20
# Wed, 15 May 2019 23:10:13 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 15 May 2019 23:10:30 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 15 May 2019 23:10:31 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 15 May 2019 23:10:31 GMT
VOLUME [/data/db /data/configdb]
# Wed, 15 May 2019 23:10:31 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 15 May 2019 23:10:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat (3.4)
# Wed, 15 May 2019 23:10:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:10:32 GMT
EXPOSE 27017
# Wed, 15 May 2019 23:10:32 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815c6aedc001b0c406021809f6ddda02eafc2db0af37d82e719a469ff691a5bb`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.0 KB (1984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8566b2594855b4802bf2ec5a3cef61efe1d3ed97cfa6a747f397b7bb08db3c5b`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.9 MB (2945616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c9fe451980007df2a3585e68580ed005adb0a8f2bb3e85af75afa8034e5d75`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 1.2 MB (1151233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9e7bc12ceae7b610677a07d228667d9ec99d24069d391d3bda4a29370ef083`  
		Last Modified: Wed, 15 May 2019 23:13:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf515753313f6850ce93164f1160967ecbdb1fdb16d0dd3225475cf505c0806`  
		Last Modified: Wed, 15 May 2019 23:13:42 GMT  
		Size: 2.0 KB (1998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106481e26b7980c2cc564379d7c701304efa5ad2227a6b89eebf3f3f5ca98037`  
		Last Modified: Wed, 15 May 2019 23:13:41 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d18c76895dddf7c8bc9b840b3491c47cbea285840d856b49ca32e580cbd88d`  
		Last Modified: Wed, 15 May 2019 23:14:16 GMT  
		Size: 119.6 MB (119611106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d728162b5d8a69b01ca2cd38b070ea3700038a8ab1b3305ef8857df2404615`  
		Last Modified: Wed, 15 May 2019 23:13:41 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75a38b109f93f3a75f77af3d498be38be2e1d9e5e2a06776522a4c606df74cc`  
		Last Modified: Wed, 15 May 2019 23:13:41 GMT  
		Size: 3.9 KB (3917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d470115d6109817b3f0f11f840c7ca8d62da6f029772dd0cd4ba0349755c9508`  
		Last Modified: Wed, 15 May 2019 23:13:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.4-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:0abe6cedca7db1b3cb45b1401485bbc78d8fa9701697960f6647eaefbcdc952f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.2 MB (156157841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:361cf258f97a0b67fdfe7a0be13825a377d0c94b303fbb7c94538080d549e87f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 13:48:50 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 13:49:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 13:49:18 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 13:49:19 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 13:49:41 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 13:49:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 13:49:45 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Sat, 27 Apr 2019 13:49:48 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 13:49:49 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 13:49:50 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:49:51 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:49:52 GMT
ENV MONGO_MAJOR=3.4
# Sat, 27 Apr 2019 13:49:54 GMT
ENV MONGO_VERSION=3.4.20
# Sat, 27 Apr 2019 13:49:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 13:50:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 13:50:50 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 13:50:51 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 09:00:09 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 09:00:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat (3.4)
# Tue, 07 May 2019 09:00:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 09:00:13 GMT
EXPOSE 27017
# Tue, 07 May 2019 09:00:14 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f37d3b53bef1b38dcc459500630e3628dc2fc703b6027312c9c568de987ce1`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7b04826ecc05bc765e84011434c0505158b030c3503af0e900fcade2b666df`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.5 MB (2474268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe49430b9cce2eab30c50b2c8b16f45d8a81e199001659ae71780af25c3c762`  
		Last Modified: Sat, 27 Apr 2019 13:59:03 GMT  
		Size: 1.1 MB (1085761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0184914fa9f59778cc2d122033fb6f9f30776f21b59ef52a15dab0711cff256d`  
		Last Modified: Sat, 27 Apr 2019 13:59:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342e8b0210c84f812ea04ecb3fccb52970fb99842ddb61ee1ccb45b5067914fb`  
		Last Modified: Sat, 27 Apr 2019 13:59:01 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56505ec54fc364e4b78ca2a532137f20209f49fbac686f44e783ef0ef977cac`  
		Last Modified: Sat, 27 Apr 2019 13:58:59 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d80b25de786ba9fb27e3a06eb1adc6889af5f9610d887286cf502156c8c55bf`  
		Last Modified: Sat, 27 Apr 2019 14:00:01 GMT  
		Size: 112.9 MB (112858414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95038e18d60bf4582c2962d5bc08f5c826833e40438b86d6ab8175b2d61004b1`  
		Last Modified: Sat, 27 Apr 2019 13:58:59 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf01145e86c958ba43bc586dff0ba3dc466009fd6caa6f5efd34b39c40aab87c`  
		Last Modified: Tue, 07 May 2019 09:01:09 GMT  
		Size: 3.9 KB (3917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c010ca77b8a38e08965c3f20999a485a8ad09f3efbe24da00ef2322c1c26512`  
		Last Modified: Tue, 07 May 2019 09:01:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6`

```console
$ docker pull mongo@sha256:255ad354b93a421209a5f410af615f7fba2e53b9f6f353b8aa03c91fcf536674
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2969; amd64

### `mongo:3.6` - linux; amd64

```console
$ docker pull mongo@sha256:0b0f428ea735a7907b117f3d5883ad48c185b40eaf411288fff1efb1bb67a3dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.8 MB (164808359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09f8dcf185a688e255c4949c0ddeb15d5b9343970b83eb721a61bc21947de759`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:09:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 15 May 2019 23:10:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:10:01 GMT
ENV GOSU_VERSION=1.11
# Wed, 15 May 2019 23:10:01 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 15 May 2019 23:10:09 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 15 May 2019 23:10:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:10:35 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 15 May 2019 23:10:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:10:36 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 15 May 2019 23:10:37 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:10:37 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:10:37 GMT
ENV MONGO_MAJOR=3.6
# Wed, 15 May 2019 23:10:37 GMT
ENV MONGO_VERSION=3.6.12
# Wed, 15 May 2019 23:10:38 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 15 May 2019 23:10:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 15 May 2019 23:10:59 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 15 May 2019 23:11:00 GMT
VOLUME [/data/db /data/configdb]
# Wed, 15 May 2019 23:11:02 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 15 May 2019 23:11:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:11:02 GMT
EXPOSE 27017
# Wed, 15 May 2019 23:11:03 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815c6aedc001b0c406021809f6ddda02eafc2db0af37d82e719a469ff691a5bb`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.0 KB (1984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8566b2594855b4802bf2ec5a3cef61efe1d3ed97cfa6a747f397b7bb08db3c5b`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.9 MB (2945616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c9fe451980007df2a3585e68580ed005adb0a8f2bb3e85af75afa8034e5d75`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 1.2 MB (1151233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9e7bc12ceae7b610677a07d228667d9ec99d24069d391d3bda4a29370ef083`  
		Last Modified: Wed, 15 May 2019 23:13:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78be2e0e12c409c643372a791b726199cf61fab7262ac2d063830974a390c2b`  
		Last Modified: Wed, 15 May 2019 23:14:21 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23296b2003cfbd940c9653b833e8f60a74535d78986d8c2bd8e2bd03d18174d7`  
		Last Modified: Wed, 15 May 2019 23:14:21 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210f884c4fdf1093dc30eea321f33ef0cbfdcb98709bd259fd52208089ad4921`  
		Last Modified: Wed, 15 May 2019 23:14:50 GMT  
		Size: 116.9 MB (116933594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b428d3996691f5b8ccdeb529e0d6a4caf31a7ce3740129c681dc71d6e715702b`  
		Last Modified: Wed, 15 May 2019 23:14:21 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25217186f5f5e72f5e700bb31826f9e78fbb257157c8fe7ef11920561ebfca91`  
		Last Modified: Wed, 15 May 2019 23:14:21 GMT  
		Size: 3.9 KB (3917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.6` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:88b71fa3286e12c8c122457f49a536351622ffc172ed5a03ef7befaf5526dd28
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.5 MB (154481360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ee41652fedbb524b8234558620d7a28154b5469bb365a2bfe705c8424e2b9b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 13:48:50 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 13:49:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 13:49:18 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 13:49:19 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 13:49:41 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 13:49:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 13:51:05 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Sat, 27 Apr 2019 13:51:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 13:51:09 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 13:51:10 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:51:11 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:51:13 GMT
ENV MONGO_MAJOR=3.6
# Sat, 27 Apr 2019 13:51:17 GMT
ENV MONGO_VERSION=3.6.12
# Sat, 27 Apr 2019 13:51:22 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 13:52:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 13:52:32 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 13:52:33 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 09:00:20 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 09:00:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 09:00:22 GMT
EXPOSE 27017
# Tue, 07 May 2019 09:00:23 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f37d3b53bef1b38dcc459500630e3628dc2fc703b6027312c9c568de987ce1`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7b04826ecc05bc765e84011434c0505158b030c3503af0e900fcade2b666df`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.5 MB (2474268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe49430b9cce2eab30c50b2c8b16f45d8a81e199001659ae71780af25c3c762`  
		Last Modified: Sat, 27 Apr 2019 13:59:03 GMT  
		Size: 1.1 MB (1085761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0184914fa9f59778cc2d122033fb6f9f30776f21b59ef52a15dab0711cff256d`  
		Last Modified: Sat, 27 Apr 2019 13:59:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5525806419195e9fec059d73efb257280b28f16858c96295d25c6edfa83dba3e`  
		Last Modified: Sat, 27 Apr 2019 14:00:11 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd10c6f1a60e7ffd40b46a5f5191fd134da3f442dc7b9526f17b3d7c63745754`  
		Last Modified: Sat, 27 Apr 2019 14:00:11 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac1de03dd25d514c84272d09234c4391cb479ce609df9464097b9f269f51bec4`  
		Last Modified: Sat, 27 Apr 2019 14:00:54 GMT  
		Size: 111.2 MB (111182055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd7dc104d760e16f5905257ad079b41b84e3dc6dc73b60d351f9428a988c3c5`  
		Last Modified: Sat, 27 Apr 2019 14:00:11 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0404516850c1386142e395aa7003e5344c0bc29bfd40b5c4fa1554fc50c0596b`  
		Last Modified: Tue, 07 May 2019 09:01:17 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.6` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:e672ba0c3902223c0340f5dfe6ff574a921dfa235f83cbe23eec52958f0daf5c
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5795310146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01d7d1b7b18e0a766e40d2b91d89da03a367aa4d9044da0d725243fccdf5d30`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 14:48:36 GMT
ENV MONGO_VERSION=3.6.12
# Wed, 15 May 2019 14:48:38 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.12-signed.msi
# Wed, 15 May 2019 14:48:39 GMT
ENV MONGO_DOWNLOAD_SHA256=074261abf106d79e4d42612ce1d22d397c10af7f73cc9947f8e36632683ef3f7
# Wed, 15 May 2019 14:57:40 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 14:57:42 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 14:57:43 GMT
EXPOSE 27017
# Wed, 15 May 2019 14:57:45 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66a1f507a683181d061805e7c63398cc84e2e9ece66f5b1bbeb08d2d1e66eae`  
		Last Modified: Wed, 15 May 2019 15:55:44 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7631d209fa6816037ab52b63f2d5d038da8eceb8bdc5ab23b0ffd33c14d8fc`  
		Last Modified: Wed, 15 May 2019 15:55:44 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b78cb1aa49f3932f4c45afcb011160af2dcc4981d0cada15f367f37991820c`  
		Last Modified: Wed, 15 May 2019 15:55:41 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4202f3a0b63544c95b2a825e97d03d271bcc976c4956ad8248b718ef0c4e9dce`  
		Last Modified: Wed, 15 May 2019 15:56:04 GMT  
		Size: 93.2 MB (93180832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df644b06c76127c738e3e29c0dbe2789acaa96f057b01f067ec3606b191928a0`  
		Last Modified: Wed, 15 May 2019 15:55:41 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1714d6b311e8d64a62fde0de7c394a5b4d245f82fc8faa5c68cc73c89064ca5d`  
		Last Modified: Wed, 15 May 2019 15:55:42 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c0d17f0ec005a3b0b81f1198ae2ff049c5162912154d31ad0122870d417d636`  
		Last Modified: Wed, 15 May 2019 15:55:41 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.12`

```console
$ docker pull mongo@sha256:255ad354b93a421209a5f410af615f7fba2e53b9f6f353b8aa03c91fcf536674
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2969; amd64

### `mongo:3.6.12` - linux; amd64

```console
$ docker pull mongo@sha256:0b0f428ea735a7907b117f3d5883ad48c185b40eaf411288fff1efb1bb67a3dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.8 MB (164808359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09f8dcf185a688e255c4949c0ddeb15d5b9343970b83eb721a61bc21947de759`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:09:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 15 May 2019 23:10:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:10:01 GMT
ENV GOSU_VERSION=1.11
# Wed, 15 May 2019 23:10:01 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 15 May 2019 23:10:09 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 15 May 2019 23:10:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:10:35 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 15 May 2019 23:10:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:10:36 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 15 May 2019 23:10:37 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:10:37 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:10:37 GMT
ENV MONGO_MAJOR=3.6
# Wed, 15 May 2019 23:10:37 GMT
ENV MONGO_VERSION=3.6.12
# Wed, 15 May 2019 23:10:38 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 15 May 2019 23:10:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 15 May 2019 23:10:59 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 15 May 2019 23:11:00 GMT
VOLUME [/data/db /data/configdb]
# Wed, 15 May 2019 23:11:02 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 15 May 2019 23:11:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:11:02 GMT
EXPOSE 27017
# Wed, 15 May 2019 23:11:03 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815c6aedc001b0c406021809f6ddda02eafc2db0af37d82e719a469ff691a5bb`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.0 KB (1984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8566b2594855b4802bf2ec5a3cef61efe1d3ed97cfa6a747f397b7bb08db3c5b`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.9 MB (2945616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c9fe451980007df2a3585e68580ed005adb0a8f2bb3e85af75afa8034e5d75`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 1.2 MB (1151233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9e7bc12ceae7b610677a07d228667d9ec99d24069d391d3bda4a29370ef083`  
		Last Modified: Wed, 15 May 2019 23:13:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78be2e0e12c409c643372a791b726199cf61fab7262ac2d063830974a390c2b`  
		Last Modified: Wed, 15 May 2019 23:14:21 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23296b2003cfbd940c9653b833e8f60a74535d78986d8c2bd8e2bd03d18174d7`  
		Last Modified: Wed, 15 May 2019 23:14:21 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210f884c4fdf1093dc30eea321f33ef0cbfdcb98709bd259fd52208089ad4921`  
		Last Modified: Wed, 15 May 2019 23:14:50 GMT  
		Size: 116.9 MB (116933594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b428d3996691f5b8ccdeb529e0d6a4caf31a7ce3740129c681dc71d6e715702b`  
		Last Modified: Wed, 15 May 2019 23:14:21 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25217186f5f5e72f5e700bb31826f9e78fbb257157c8fe7ef11920561ebfca91`  
		Last Modified: Wed, 15 May 2019 23:14:21 GMT  
		Size: 3.9 KB (3917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.6.12` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:88b71fa3286e12c8c122457f49a536351622ffc172ed5a03ef7befaf5526dd28
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.5 MB (154481360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ee41652fedbb524b8234558620d7a28154b5469bb365a2bfe705c8424e2b9b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 13:48:50 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 13:49:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 13:49:18 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 13:49:19 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 13:49:41 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 13:49:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 13:51:05 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Sat, 27 Apr 2019 13:51:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 13:51:09 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 13:51:10 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:51:11 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:51:13 GMT
ENV MONGO_MAJOR=3.6
# Sat, 27 Apr 2019 13:51:17 GMT
ENV MONGO_VERSION=3.6.12
# Sat, 27 Apr 2019 13:51:22 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 13:52:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 13:52:32 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 13:52:33 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 09:00:20 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 09:00:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 09:00:22 GMT
EXPOSE 27017
# Tue, 07 May 2019 09:00:23 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f37d3b53bef1b38dcc459500630e3628dc2fc703b6027312c9c568de987ce1`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7b04826ecc05bc765e84011434c0505158b030c3503af0e900fcade2b666df`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.5 MB (2474268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe49430b9cce2eab30c50b2c8b16f45d8a81e199001659ae71780af25c3c762`  
		Last Modified: Sat, 27 Apr 2019 13:59:03 GMT  
		Size: 1.1 MB (1085761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0184914fa9f59778cc2d122033fb6f9f30776f21b59ef52a15dab0711cff256d`  
		Last Modified: Sat, 27 Apr 2019 13:59:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5525806419195e9fec059d73efb257280b28f16858c96295d25c6edfa83dba3e`  
		Last Modified: Sat, 27 Apr 2019 14:00:11 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd10c6f1a60e7ffd40b46a5f5191fd134da3f442dc7b9526f17b3d7c63745754`  
		Last Modified: Sat, 27 Apr 2019 14:00:11 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac1de03dd25d514c84272d09234c4391cb479ce609df9464097b9f269f51bec4`  
		Last Modified: Sat, 27 Apr 2019 14:00:54 GMT  
		Size: 111.2 MB (111182055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd7dc104d760e16f5905257ad079b41b84e3dc6dc73b60d351f9428a988c3c5`  
		Last Modified: Sat, 27 Apr 2019 14:00:11 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0404516850c1386142e395aa7003e5344c0bc29bfd40b5c4fa1554fc50c0596b`  
		Last Modified: Tue, 07 May 2019 09:01:17 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.6.12` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:e672ba0c3902223c0340f5dfe6ff574a921dfa235f83cbe23eec52958f0daf5c
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5795310146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01d7d1b7b18e0a766e40d2b91d89da03a367aa4d9044da0d725243fccdf5d30`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 14:48:36 GMT
ENV MONGO_VERSION=3.6.12
# Wed, 15 May 2019 14:48:38 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.12-signed.msi
# Wed, 15 May 2019 14:48:39 GMT
ENV MONGO_DOWNLOAD_SHA256=074261abf106d79e4d42612ce1d22d397c10af7f73cc9947f8e36632683ef3f7
# Wed, 15 May 2019 14:57:40 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 14:57:42 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 14:57:43 GMT
EXPOSE 27017
# Wed, 15 May 2019 14:57:45 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66a1f507a683181d061805e7c63398cc84e2e9ece66f5b1bbeb08d2d1e66eae`  
		Last Modified: Wed, 15 May 2019 15:55:44 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7631d209fa6816037ab52b63f2d5d038da8eceb8bdc5ab23b0ffd33c14d8fc`  
		Last Modified: Wed, 15 May 2019 15:55:44 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b78cb1aa49f3932f4c45afcb011160af2dcc4981d0cada15f367f37991820c`  
		Last Modified: Wed, 15 May 2019 15:55:41 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4202f3a0b63544c95b2a825e97d03d271bcc976c4956ad8248b718ef0c4e9dce`  
		Last Modified: Wed, 15 May 2019 15:56:04 GMT  
		Size: 93.2 MB (93180832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df644b06c76127c738e3e29c0dbe2789acaa96f057b01f067ec3606b191928a0`  
		Last Modified: Wed, 15 May 2019 15:55:41 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1714d6b311e8d64a62fde0de7c394a5b4d245f82fc8faa5c68cc73c89064ca5d`  
		Last Modified: Wed, 15 May 2019 15:55:42 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c0d17f0ec005a3b0b81f1198ae2ff049c5162912154d31ad0122870d417d636`  
		Last Modified: Wed, 15 May 2019 15:55:41 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.12-windowsservercore`

```console
$ docker pull mongo@sha256:fd39749d4c0a66903aa1bfbbb2cabefc9c6ac6f5eaf09653a6abc13ee53ac2aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64

### `mongo:3.6.12-windowsservercore` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:e672ba0c3902223c0340f5dfe6ff574a921dfa235f83cbe23eec52958f0daf5c
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5795310146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01d7d1b7b18e0a766e40d2b91d89da03a367aa4d9044da0d725243fccdf5d30`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 14:48:36 GMT
ENV MONGO_VERSION=3.6.12
# Wed, 15 May 2019 14:48:38 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.12-signed.msi
# Wed, 15 May 2019 14:48:39 GMT
ENV MONGO_DOWNLOAD_SHA256=074261abf106d79e4d42612ce1d22d397c10af7f73cc9947f8e36632683ef3f7
# Wed, 15 May 2019 14:57:40 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 14:57:42 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 14:57:43 GMT
EXPOSE 27017
# Wed, 15 May 2019 14:57:45 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66a1f507a683181d061805e7c63398cc84e2e9ece66f5b1bbeb08d2d1e66eae`  
		Last Modified: Wed, 15 May 2019 15:55:44 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7631d209fa6816037ab52b63f2d5d038da8eceb8bdc5ab23b0ffd33c14d8fc`  
		Last Modified: Wed, 15 May 2019 15:55:44 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b78cb1aa49f3932f4c45afcb011160af2dcc4981d0cada15f367f37991820c`  
		Last Modified: Wed, 15 May 2019 15:55:41 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4202f3a0b63544c95b2a825e97d03d271bcc976c4956ad8248b718ef0c4e9dce`  
		Last Modified: Wed, 15 May 2019 15:56:04 GMT  
		Size: 93.2 MB (93180832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df644b06c76127c738e3e29c0dbe2789acaa96f057b01f067ec3606b191928a0`  
		Last Modified: Wed, 15 May 2019 15:55:41 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1714d6b311e8d64a62fde0de7c394a5b4d245f82fc8faa5c68cc73c89064ca5d`  
		Last Modified: Wed, 15 May 2019 15:55:42 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c0d17f0ec005a3b0b81f1198ae2ff049c5162912154d31ad0122870d417d636`  
		Last Modified: Wed, 15 May 2019 15:55:41 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.12-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:fd39749d4c0a66903aa1bfbbb2cabefc9c6ac6f5eaf09653a6abc13ee53ac2aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64

### `mongo:3.6.12-windowsservercore-ltsc2016` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:e672ba0c3902223c0340f5dfe6ff574a921dfa235f83cbe23eec52958f0daf5c
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5795310146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01d7d1b7b18e0a766e40d2b91d89da03a367aa4d9044da0d725243fccdf5d30`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 14:48:36 GMT
ENV MONGO_VERSION=3.6.12
# Wed, 15 May 2019 14:48:38 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.12-signed.msi
# Wed, 15 May 2019 14:48:39 GMT
ENV MONGO_DOWNLOAD_SHA256=074261abf106d79e4d42612ce1d22d397c10af7f73cc9947f8e36632683ef3f7
# Wed, 15 May 2019 14:57:40 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 14:57:42 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 14:57:43 GMT
EXPOSE 27017
# Wed, 15 May 2019 14:57:45 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66a1f507a683181d061805e7c63398cc84e2e9ece66f5b1bbeb08d2d1e66eae`  
		Last Modified: Wed, 15 May 2019 15:55:44 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7631d209fa6816037ab52b63f2d5d038da8eceb8bdc5ab23b0ffd33c14d8fc`  
		Last Modified: Wed, 15 May 2019 15:55:44 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b78cb1aa49f3932f4c45afcb011160af2dcc4981d0cada15f367f37991820c`  
		Last Modified: Wed, 15 May 2019 15:55:41 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4202f3a0b63544c95b2a825e97d03d271bcc976c4956ad8248b718ef0c4e9dce`  
		Last Modified: Wed, 15 May 2019 15:56:04 GMT  
		Size: 93.2 MB (93180832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df644b06c76127c738e3e29c0dbe2789acaa96f057b01f067ec3606b191928a0`  
		Last Modified: Wed, 15 May 2019 15:55:41 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1714d6b311e8d64a62fde0de7c394a5b4d245f82fc8faa5c68cc73c89064ca5d`  
		Last Modified: Wed, 15 May 2019 15:55:42 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c0d17f0ec005a3b0b81f1198ae2ff049c5162912154d31ad0122870d417d636`  
		Last Modified: Wed, 15 May 2019 15:55:41 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.12-xenial`

```console
$ docker pull mongo@sha256:89a68d3e46647ce198b04e838479727e361dcdadb1c945353b081d9c7679521b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:3.6.12-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:0b0f428ea735a7907b117f3d5883ad48c185b40eaf411288fff1efb1bb67a3dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.8 MB (164808359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09f8dcf185a688e255c4949c0ddeb15d5b9343970b83eb721a61bc21947de759`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:09:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 15 May 2019 23:10:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:10:01 GMT
ENV GOSU_VERSION=1.11
# Wed, 15 May 2019 23:10:01 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 15 May 2019 23:10:09 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 15 May 2019 23:10:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:10:35 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 15 May 2019 23:10:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:10:36 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 15 May 2019 23:10:37 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:10:37 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:10:37 GMT
ENV MONGO_MAJOR=3.6
# Wed, 15 May 2019 23:10:37 GMT
ENV MONGO_VERSION=3.6.12
# Wed, 15 May 2019 23:10:38 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 15 May 2019 23:10:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 15 May 2019 23:10:59 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 15 May 2019 23:11:00 GMT
VOLUME [/data/db /data/configdb]
# Wed, 15 May 2019 23:11:02 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 15 May 2019 23:11:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:11:02 GMT
EXPOSE 27017
# Wed, 15 May 2019 23:11:03 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815c6aedc001b0c406021809f6ddda02eafc2db0af37d82e719a469ff691a5bb`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.0 KB (1984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8566b2594855b4802bf2ec5a3cef61efe1d3ed97cfa6a747f397b7bb08db3c5b`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.9 MB (2945616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c9fe451980007df2a3585e68580ed005adb0a8f2bb3e85af75afa8034e5d75`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 1.2 MB (1151233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9e7bc12ceae7b610677a07d228667d9ec99d24069d391d3bda4a29370ef083`  
		Last Modified: Wed, 15 May 2019 23:13:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78be2e0e12c409c643372a791b726199cf61fab7262ac2d063830974a390c2b`  
		Last Modified: Wed, 15 May 2019 23:14:21 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23296b2003cfbd940c9653b833e8f60a74535d78986d8c2bd8e2bd03d18174d7`  
		Last Modified: Wed, 15 May 2019 23:14:21 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210f884c4fdf1093dc30eea321f33ef0cbfdcb98709bd259fd52208089ad4921`  
		Last Modified: Wed, 15 May 2019 23:14:50 GMT  
		Size: 116.9 MB (116933594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b428d3996691f5b8ccdeb529e0d6a4caf31a7ce3740129c681dc71d6e715702b`  
		Last Modified: Wed, 15 May 2019 23:14:21 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25217186f5f5e72f5e700bb31826f9e78fbb257157c8fe7ef11920561ebfca91`  
		Last Modified: Wed, 15 May 2019 23:14:21 GMT  
		Size: 3.9 KB (3917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.6.12-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:88b71fa3286e12c8c122457f49a536351622ffc172ed5a03ef7befaf5526dd28
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.5 MB (154481360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ee41652fedbb524b8234558620d7a28154b5469bb365a2bfe705c8424e2b9b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 13:48:50 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 13:49:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 13:49:18 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 13:49:19 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 13:49:41 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 13:49:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 13:51:05 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Sat, 27 Apr 2019 13:51:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 13:51:09 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 13:51:10 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:51:11 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:51:13 GMT
ENV MONGO_MAJOR=3.6
# Sat, 27 Apr 2019 13:51:17 GMT
ENV MONGO_VERSION=3.6.12
# Sat, 27 Apr 2019 13:51:22 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 13:52:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 13:52:32 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 13:52:33 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 09:00:20 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 09:00:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 09:00:22 GMT
EXPOSE 27017
# Tue, 07 May 2019 09:00:23 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f37d3b53bef1b38dcc459500630e3628dc2fc703b6027312c9c568de987ce1`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7b04826ecc05bc765e84011434c0505158b030c3503af0e900fcade2b666df`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.5 MB (2474268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe49430b9cce2eab30c50b2c8b16f45d8a81e199001659ae71780af25c3c762`  
		Last Modified: Sat, 27 Apr 2019 13:59:03 GMT  
		Size: 1.1 MB (1085761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0184914fa9f59778cc2d122033fb6f9f30776f21b59ef52a15dab0711cff256d`  
		Last Modified: Sat, 27 Apr 2019 13:59:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5525806419195e9fec059d73efb257280b28f16858c96295d25c6edfa83dba3e`  
		Last Modified: Sat, 27 Apr 2019 14:00:11 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd10c6f1a60e7ffd40b46a5f5191fd134da3f442dc7b9526f17b3d7c63745754`  
		Last Modified: Sat, 27 Apr 2019 14:00:11 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac1de03dd25d514c84272d09234c4391cb479ce609df9464097b9f269f51bec4`  
		Last Modified: Sat, 27 Apr 2019 14:00:54 GMT  
		Size: 111.2 MB (111182055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd7dc104d760e16f5905257ad079b41b84e3dc6dc73b60d351f9428a988c3c5`  
		Last Modified: Sat, 27 Apr 2019 14:00:11 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0404516850c1386142e395aa7003e5344c0bc29bfd40b5c4fa1554fc50c0596b`  
		Last Modified: Tue, 07 May 2019 09:01:17 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6-windowsservercore`

```console
$ docker pull mongo@sha256:fd39749d4c0a66903aa1bfbbb2cabefc9c6ac6f5eaf09653a6abc13ee53ac2aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64

### `mongo:3.6-windowsservercore` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:e672ba0c3902223c0340f5dfe6ff574a921dfa235f83cbe23eec52958f0daf5c
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5795310146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01d7d1b7b18e0a766e40d2b91d89da03a367aa4d9044da0d725243fccdf5d30`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 14:48:36 GMT
ENV MONGO_VERSION=3.6.12
# Wed, 15 May 2019 14:48:38 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.12-signed.msi
# Wed, 15 May 2019 14:48:39 GMT
ENV MONGO_DOWNLOAD_SHA256=074261abf106d79e4d42612ce1d22d397c10af7f73cc9947f8e36632683ef3f7
# Wed, 15 May 2019 14:57:40 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 14:57:42 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 14:57:43 GMT
EXPOSE 27017
# Wed, 15 May 2019 14:57:45 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66a1f507a683181d061805e7c63398cc84e2e9ece66f5b1bbeb08d2d1e66eae`  
		Last Modified: Wed, 15 May 2019 15:55:44 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7631d209fa6816037ab52b63f2d5d038da8eceb8bdc5ab23b0ffd33c14d8fc`  
		Last Modified: Wed, 15 May 2019 15:55:44 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b78cb1aa49f3932f4c45afcb011160af2dcc4981d0cada15f367f37991820c`  
		Last Modified: Wed, 15 May 2019 15:55:41 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4202f3a0b63544c95b2a825e97d03d271bcc976c4956ad8248b718ef0c4e9dce`  
		Last Modified: Wed, 15 May 2019 15:56:04 GMT  
		Size: 93.2 MB (93180832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df644b06c76127c738e3e29c0dbe2789acaa96f057b01f067ec3606b191928a0`  
		Last Modified: Wed, 15 May 2019 15:55:41 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1714d6b311e8d64a62fde0de7c394a5b4d245f82fc8faa5c68cc73c89064ca5d`  
		Last Modified: Wed, 15 May 2019 15:55:42 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c0d17f0ec005a3b0b81f1198ae2ff049c5162912154d31ad0122870d417d636`  
		Last Modified: Wed, 15 May 2019 15:55:41 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:fd39749d4c0a66903aa1bfbbb2cabefc9c6ac6f5eaf09653a6abc13ee53ac2aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64

### `mongo:3.6-windowsservercore-ltsc2016` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:e672ba0c3902223c0340f5dfe6ff574a921dfa235f83cbe23eec52958f0daf5c
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5795310146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01d7d1b7b18e0a766e40d2b91d89da03a367aa4d9044da0d725243fccdf5d30`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 14:48:36 GMT
ENV MONGO_VERSION=3.6.12
# Wed, 15 May 2019 14:48:38 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.12-signed.msi
# Wed, 15 May 2019 14:48:39 GMT
ENV MONGO_DOWNLOAD_SHA256=074261abf106d79e4d42612ce1d22d397c10af7f73cc9947f8e36632683ef3f7
# Wed, 15 May 2019 14:57:40 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 14:57:42 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 14:57:43 GMT
EXPOSE 27017
# Wed, 15 May 2019 14:57:45 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66a1f507a683181d061805e7c63398cc84e2e9ece66f5b1bbeb08d2d1e66eae`  
		Last Modified: Wed, 15 May 2019 15:55:44 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7631d209fa6816037ab52b63f2d5d038da8eceb8bdc5ab23b0ffd33c14d8fc`  
		Last Modified: Wed, 15 May 2019 15:55:44 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b78cb1aa49f3932f4c45afcb011160af2dcc4981d0cada15f367f37991820c`  
		Last Modified: Wed, 15 May 2019 15:55:41 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4202f3a0b63544c95b2a825e97d03d271bcc976c4956ad8248b718ef0c4e9dce`  
		Last Modified: Wed, 15 May 2019 15:56:04 GMT  
		Size: 93.2 MB (93180832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df644b06c76127c738e3e29c0dbe2789acaa96f057b01f067ec3606b191928a0`  
		Last Modified: Wed, 15 May 2019 15:55:41 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1714d6b311e8d64a62fde0de7c394a5b4d245f82fc8faa5c68cc73c89064ca5d`  
		Last Modified: Wed, 15 May 2019 15:55:42 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c0d17f0ec005a3b0b81f1198ae2ff049c5162912154d31ad0122870d417d636`  
		Last Modified: Wed, 15 May 2019 15:55:41 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6-xenial`

```console
$ docker pull mongo@sha256:89a68d3e46647ce198b04e838479727e361dcdadb1c945353b081d9c7679521b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:3.6-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:0b0f428ea735a7907b117f3d5883ad48c185b40eaf411288fff1efb1bb67a3dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.8 MB (164808359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09f8dcf185a688e255c4949c0ddeb15d5b9343970b83eb721a61bc21947de759`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:09:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 15 May 2019 23:10:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:10:01 GMT
ENV GOSU_VERSION=1.11
# Wed, 15 May 2019 23:10:01 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 15 May 2019 23:10:09 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 15 May 2019 23:10:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:10:35 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 15 May 2019 23:10:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:10:36 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 15 May 2019 23:10:37 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:10:37 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:10:37 GMT
ENV MONGO_MAJOR=3.6
# Wed, 15 May 2019 23:10:37 GMT
ENV MONGO_VERSION=3.6.12
# Wed, 15 May 2019 23:10:38 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 15 May 2019 23:10:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 15 May 2019 23:10:59 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 15 May 2019 23:11:00 GMT
VOLUME [/data/db /data/configdb]
# Wed, 15 May 2019 23:11:02 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 15 May 2019 23:11:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:11:02 GMT
EXPOSE 27017
# Wed, 15 May 2019 23:11:03 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815c6aedc001b0c406021809f6ddda02eafc2db0af37d82e719a469ff691a5bb`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.0 KB (1984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8566b2594855b4802bf2ec5a3cef61efe1d3ed97cfa6a747f397b7bb08db3c5b`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.9 MB (2945616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c9fe451980007df2a3585e68580ed005adb0a8f2bb3e85af75afa8034e5d75`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 1.2 MB (1151233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9e7bc12ceae7b610677a07d228667d9ec99d24069d391d3bda4a29370ef083`  
		Last Modified: Wed, 15 May 2019 23:13:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78be2e0e12c409c643372a791b726199cf61fab7262ac2d063830974a390c2b`  
		Last Modified: Wed, 15 May 2019 23:14:21 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23296b2003cfbd940c9653b833e8f60a74535d78986d8c2bd8e2bd03d18174d7`  
		Last Modified: Wed, 15 May 2019 23:14:21 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210f884c4fdf1093dc30eea321f33ef0cbfdcb98709bd259fd52208089ad4921`  
		Last Modified: Wed, 15 May 2019 23:14:50 GMT  
		Size: 116.9 MB (116933594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b428d3996691f5b8ccdeb529e0d6a4caf31a7ce3740129c681dc71d6e715702b`  
		Last Modified: Wed, 15 May 2019 23:14:21 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25217186f5f5e72f5e700bb31826f9e78fbb257157c8fe7ef11920561ebfca91`  
		Last Modified: Wed, 15 May 2019 23:14:21 GMT  
		Size: 3.9 KB (3917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.6-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:88b71fa3286e12c8c122457f49a536351622ffc172ed5a03ef7befaf5526dd28
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.5 MB (154481360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ee41652fedbb524b8234558620d7a28154b5469bb365a2bfe705c8424e2b9b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 13:48:50 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 13:49:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 13:49:18 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 13:49:19 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 13:49:41 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 13:49:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 13:51:05 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Sat, 27 Apr 2019 13:51:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 13:51:09 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 13:51:10 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:51:11 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:51:13 GMT
ENV MONGO_MAJOR=3.6
# Sat, 27 Apr 2019 13:51:17 GMT
ENV MONGO_VERSION=3.6.12
# Sat, 27 Apr 2019 13:51:22 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 13:52:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 13:52:32 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 13:52:33 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 09:00:20 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 09:00:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 09:00:22 GMT
EXPOSE 27017
# Tue, 07 May 2019 09:00:23 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f37d3b53bef1b38dcc459500630e3628dc2fc703b6027312c9c568de987ce1`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7b04826ecc05bc765e84011434c0505158b030c3503af0e900fcade2b666df`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.5 MB (2474268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe49430b9cce2eab30c50b2c8b16f45d8a81e199001659ae71780af25c3c762`  
		Last Modified: Sat, 27 Apr 2019 13:59:03 GMT  
		Size: 1.1 MB (1085761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0184914fa9f59778cc2d122033fb6f9f30776f21b59ef52a15dab0711cff256d`  
		Last Modified: Sat, 27 Apr 2019 13:59:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5525806419195e9fec059d73efb257280b28f16858c96295d25c6edfa83dba3e`  
		Last Modified: Sat, 27 Apr 2019 14:00:11 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd10c6f1a60e7ffd40b46a5f5191fd134da3f442dc7b9526f17b3d7c63745754`  
		Last Modified: Sat, 27 Apr 2019 14:00:11 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac1de03dd25d514c84272d09234c4391cb479ce609df9464097b9f269f51bec4`  
		Last Modified: Sat, 27 Apr 2019 14:00:54 GMT  
		Size: 111.2 MB (111182055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd7dc104d760e16f5905257ad079b41b84e3dc6dc73b60d351f9428a988c3c5`  
		Last Modified: Sat, 27 Apr 2019 14:00:11 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0404516850c1386142e395aa7003e5344c0bc29bfd40b5c4fa1554fc50c0596b`  
		Last Modified: Tue, 07 May 2019 09:01:17 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:fd39749d4c0a66903aa1bfbbb2cabefc9c6ac6f5eaf09653a6abc13ee53ac2aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64

### `mongo:3-windowsservercore` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:e672ba0c3902223c0340f5dfe6ff574a921dfa235f83cbe23eec52958f0daf5c
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5795310146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01d7d1b7b18e0a766e40d2b91d89da03a367aa4d9044da0d725243fccdf5d30`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 14:48:36 GMT
ENV MONGO_VERSION=3.6.12
# Wed, 15 May 2019 14:48:38 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.12-signed.msi
# Wed, 15 May 2019 14:48:39 GMT
ENV MONGO_DOWNLOAD_SHA256=074261abf106d79e4d42612ce1d22d397c10af7f73cc9947f8e36632683ef3f7
# Wed, 15 May 2019 14:57:40 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 14:57:42 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 14:57:43 GMT
EXPOSE 27017
# Wed, 15 May 2019 14:57:45 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66a1f507a683181d061805e7c63398cc84e2e9ece66f5b1bbeb08d2d1e66eae`  
		Last Modified: Wed, 15 May 2019 15:55:44 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7631d209fa6816037ab52b63f2d5d038da8eceb8bdc5ab23b0ffd33c14d8fc`  
		Last Modified: Wed, 15 May 2019 15:55:44 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b78cb1aa49f3932f4c45afcb011160af2dcc4981d0cada15f367f37991820c`  
		Last Modified: Wed, 15 May 2019 15:55:41 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4202f3a0b63544c95b2a825e97d03d271bcc976c4956ad8248b718ef0c4e9dce`  
		Last Modified: Wed, 15 May 2019 15:56:04 GMT  
		Size: 93.2 MB (93180832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df644b06c76127c738e3e29c0dbe2789acaa96f057b01f067ec3606b191928a0`  
		Last Modified: Wed, 15 May 2019 15:55:41 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1714d6b311e8d64a62fde0de7c394a5b4d245f82fc8faa5c68cc73c89064ca5d`  
		Last Modified: Wed, 15 May 2019 15:55:42 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c0d17f0ec005a3b0b81f1198ae2ff049c5162912154d31ad0122870d417d636`  
		Last Modified: Wed, 15 May 2019 15:55:41 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:fd39749d4c0a66903aa1bfbbb2cabefc9c6ac6f5eaf09653a6abc13ee53ac2aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64

### `mongo:3-windowsservercore-ltsc2016` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:e672ba0c3902223c0340f5dfe6ff574a921dfa235f83cbe23eec52958f0daf5c
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5795310146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01d7d1b7b18e0a766e40d2b91d89da03a367aa4d9044da0d725243fccdf5d30`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 14:48:36 GMT
ENV MONGO_VERSION=3.6.12
# Wed, 15 May 2019 14:48:38 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.12-signed.msi
# Wed, 15 May 2019 14:48:39 GMT
ENV MONGO_DOWNLOAD_SHA256=074261abf106d79e4d42612ce1d22d397c10af7f73cc9947f8e36632683ef3f7
# Wed, 15 May 2019 14:57:40 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 14:57:42 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 14:57:43 GMT
EXPOSE 27017
# Wed, 15 May 2019 14:57:45 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66a1f507a683181d061805e7c63398cc84e2e9ece66f5b1bbeb08d2d1e66eae`  
		Last Modified: Wed, 15 May 2019 15:55:44 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7631d209fa6816037ab52b63f2d5d038da8eceb8bdc5ab23b0ffd33c14d8fc`  
		Last Modified: Wed, 15 May 2019 15:55:44 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b78cb1aa49f3932f4c45afcb011160af2dcc4981d0cada15f367f37991820c`  
		Last Modified: Wed, 15 May 2019 15:55:41 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4202f3a0b63544c95b2a825e97d03d271bcc976c4956ad8248b718ef0c4e9dce`  
		Last Modified: Wed, 15 May 2019 15:56:04 GMT  
		Size: 93.2 MB (93180832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df644b06c76127c738e3e29c0dbe2789acaa96f057b01f067ec3606b191928a0`  
		Last Modified: Wed, 15 May 2019 15:55:41 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1714d6b311e8d64a62fde0de7c394a5b4d245f82fc8faa5c68cc73c89064ca5d`  
		Last Modified: Wed, 15 May 2019 15:55:42 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c0d17f0ec005a3b0b81f1198ae2ff049c5162912154d31ad0122870d417d636`  
		Last Modified: Wed, 15 May 2019 15:55:41 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-xenial`

```console
$ docker pull mongo@sha256:89a68d3e46647ce198b04e838479727e361dcdadb1c945353b081d9c7679521b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:3-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:0b0f428ea735a7907b117f3d5883ad48c185b40eaf411288fff1efb1bb67a3dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.8 MB (164808359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09f8dcf185a688e255c4949c0ddeb15d5b9343970b83eb721a61bc21947de759`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:09:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 15 May 2019 23:10:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:10:01 GMT
ENV GOSU_VERSION=1.11
# Wed, 15 May 2019 23:10:01 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 15 May 2019 23:10:09 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 15 May 2019 23:10:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:10:35 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 15 May 2019 23:10:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:10:36 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 15 May 2019 23:10:37 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:10:37 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:10:37 GMT
ENV MONGO_MAJOR=3.6
# Wed, 15 May 2019 23:10:37 GMT
ENV MONGO_VERSION=3.6.12
# Wed, 15 May 2019 23:10:38 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 15 May 2019 23:10:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 15 May 2019 23:10:59 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 15 May 2019 23:11:00 GMT
VOLUME [/data/db /data/configdb]
# Wed, 15 May 2019 23:11:02 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 15 May 2019 23:11:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:11:02 GMT
EXPOSE 27017
# Wed, 15 May 2019 23:11:03 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815c6aedc001b0c406021809f6ddda02eafc2db0af37d82e719a469ff691a5bb`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.0 KB (1984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8566b2594855b4802bf2ec5a3cef61efe1d3ed97cfa6a747f397b7bb08db3c5b`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.9 MB (2945616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c9fe451980007df2a3585e68580ed005adb0a8f2bb3e85af75afa8034e5d75`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 1.2 MB (1151233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9e7bc12ceae7b610677a07d228667d9ec99d24069d391d3bda4a29370ef083`  
		Last Modified: Wed, 15 May 2019 23:13:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78be2e0e12c409c643372a791b726199cf61fab7262ac2d063830974a390c2b`  
		Last Modified: Wed, 15 May 2019 23:14:21 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23296b2003cfbd940c9653b833e8f60a74535d78986d8c2bd8e2bd03d18174d7`  
		Last Modified: Wed, 15 May 2019 23:14:21 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210f884c4fdf1093dc30eea321f33ef0cbfdcb98709bd259fd52208089ad4921`  
		Last Modified: Wed, 15 May 2019 23:14:50 GMT  
		Size: 116.9 MB (116933594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b428d3996691f5b8ccdeb529e0d6a4caf31a7ce3740129c681dc71d6e715702b`  
		Last Modified: Wed, 15 May 2019 23:14:21 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25217186f5f5e72f5e700bb31826f9e78fbb257157c8fe7ef11920561ebfca91`  
		Last Modified: Wed, 15 May 2019 23:14:21 GMT  
		Size: 3.9 KB (3917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:88b71fa3286e12c8c122457f49a536351622ffc172ed5a03ef7befaf5526dd28
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.5 MB (154481360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ee41652fedbb524b8234558620d7a28154b5469bb365a2bfe705c8424e2b9b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 13:48:50 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 13:49:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 13:49:18 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 13:49:19 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 13:49:41 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 13:49:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 13:51:05 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Sat, 27 Apr 2019 13:51:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 13:51:09 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 13:51:10 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:51:11 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:51:13 GMT
ENV MONGO_MAJOR=3.6
# Sat, 27 Apr 2019 13:51:17 GMT
ENV MONGO_VERSION=3.6.12
# Sat, 27 Apr 2019 13:51:22 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 13:52:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 13:52:32 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 13:52:33 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 09:00:20 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 09:00:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 09:00:22 GMT
EXPOSE 27017
# Tue, 07 May 2019 09:00:23 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f37d3b53bef1b38dcc459500630e3628dc2fc703b6027312c9c568de987ce1`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7b04826ecc05bc765e84011434c0505158b030c3503af0e900fcade2b666df`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.5 MB (2474268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe49430b9cce2eab30c50b2c8b16f45d8a81e199001659ae71780af25c3c762`  
		Last Modified: Sat, 27 Apr 2019 13:59:03 GMT  
		Size: 1.1 MB (1085761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0184914fa9f59778cc2d122033fb6f9f30776f21b59ef52a15dab0711cff256d`  
		Last Modified: Sat, 27 Apr 2019 13:59:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5525806419195e9fec059d73efb257280b28f16858c96295d25c6edfa83dba3e`  
		Last Modified: Sat, 27 Apr 2019 14:00:11 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd10c6f1a60e7ffd40b46a5f5191fd134da3f442dc7b9526f17b3d7c63745754`  
		Last Modified: Sat, 27 Apr 2019 14:00:11 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac1de03dd25d514c84272d09234c4391cb479ce609df9464097b9f269f51bec4`  
		Last Modified: Sat, 27 Apr 2019 14:00:54 GMT  
		Size: 111.2 MB (111182055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd7dc104d760e16f5905257ad079b41b84e3dc6dc73b60d351f9428a988c3c5`  
		Last Modified: Sat, 27 Apr 2019 14:00:11 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0404516850c1386142e395aa7003e5344c0bc29bfd40b5c4fa1554fc50c0596b`  
		Last Modified: Tue, 07 May 2019 09:01:17 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4`

```console
$ docker pull mongo@sha256:6b8cefbef0e6c4f3d35ffbf546e77e18c9737b393de6f96dbf75e6ba0185d876
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2969; amd64
	-	windows version 10.0.17134.765; amd64

### `mongo:4` - linux; amd64

```console
$ docker pull mongo@sha256:29d7ca01f9b7e3812a831ff143620e93ddf5e34bb9ac672d91140e064158a0fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152598189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5976dac61f4fb85c1a2d1f7c717600f9c78fb02badba6b3c5961a4091ef75905`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:09:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 15 May 2019 23:10:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:10:01 GMT
ENV GOSU_VERSION=1.11
# Wed, 15 May 2019 23:10:01 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 15 May 2019 23:10:09 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 15 May 2019 23:10:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:11:07 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 15 May 2019 23:11:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:11:09 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 15 May 2019 23:11:09 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:11:09 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:11:09 GMT
ENV MONGO_MAJOR=4.0
# Wed, 15 May 2019 23:11:09 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 23:11:10 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 15 May 2019 23:11:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 15 May 2019 23:11:36 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 15 May 2019 23:11:36 GMT
VOLUME [/data/db /data/configdb]
# Wed, 15 May 2019 23:11:37 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 15 May 2019 23:11:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:11:37 GMT
EXPOSE 27017
# Wed, 15 May 2019 23:11:37 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815c6aedc001b0c406021809f6ddda02eafc2db0af37d82e719a469ff691a5bb`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.0 KB (1984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8566b2594855b4802bf2ec5a3cef61efe1d3ed97cfa6a747f397b7bb08db3c5b`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.9 MB (2945616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c9fe451980007df2a3585e68580ed005adb0a8f2bb3e85af75afa8034e5d75`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 1.2 MB (1151233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9e7bc12ceae7b610677a07d228667d9ec99d24069d391d3bda4a29370ef083`  
		Last Modified: Wed, 15 May 2019 23:13:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c64dd2c4159abf20a4d878f39293b51391362fca6a8bcea6286bdaf6a5093fd1`  
		Last Modified: Wed, 15 May 2019 23:14:56 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9522757e8357dfad7a81901a371423c7d8e72982c12a200357efa0ca880279`  
		Last Modified: Wed, 15 May 2019 23:14:55 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cedccbc13a9b7f2593410757e1ff88bcc02dd9a3f31877e7f0584ae2a910a47`  
		Last Modified: Wed, 15 May 2019 23:15:23 GMT  
		Size: 104.7 MB (104723991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29aec2f2353d79a5eb4974d36f71fe03363dac234fe5593398fae924016c4954`  
		Last Modified: Wed, 15 May 2019 23:14:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08bcfe00e50692cfa1e8f869f14935c91fc70f5203c9fc7b0c08d59ae98e6211`  
		Last Modified: Wed, 15 May 2019 23:14:56 GMT  
		Size: 3.9 KB (3916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:322dab4a29447559cf67ae09a9f3f814489775be2a6defeb335539b195439a42
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.5 MB (142495552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5d0c0b0a97ace5105d47e3d4183cc71ccff118c9291ac8be5df562145940b67`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 13:48:50 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 13:49:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 13:49:18 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 13:49:19 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 13:49:41 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 13:49:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 13:52:50 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Sat, 27 Apr 2019 13:52:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 13:52:55 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 13:52:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:52:57 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:52:59 GMT
ENV MONGO_MAJOR=4.0
# Sat, 27 Apr 2019 13:53:00 GMT
ENV MONGO_VERSION=4.0.9
# Sat, 27 Apr 2019 13:53:02 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 13:54:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 13:54:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 13:54:16 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 09:00:29 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 09:00:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 09:00:31 GMT
EXPOSE 27017
# Tue, 07 May 2019 09:00:31 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f37d3b53bef1b38dcc459500630e3628dc2fc703b6027312c9c568de987ce1`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7b04826ecc05bc765e84011434c0505158b030c3503af0e900fcade2b666df`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.5 MB (2474268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe49430b9cce2eab30c50b2c8b16f45d8a81e199001659ae71780af25c3c762`  
		Last Modified: Sat, 27 Apr 2019 13:59:03 GMT  
		Size: 1.1 MB (1085761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0184914fa9f59778cc2d122033fb6f9f30776f21b59ef52a15dab0711cff256d`  
		Last Modified: Sat, 27 Apr 2019 13:59:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a0d07757014768afb66a6bb6a523c6e2816de092be025cfb8dc7470ca25882`  
		Last Modified: Sat, 27 Apr 2019 14:01:06 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bfbee9cb4436a9d761359ea0f0d5989c1256d1fea05f80d85ed4366cda20269`  
		Last Modified: Sat, 27 Apr 2019 14:01:06 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:710b0ee3b1fc456d9d6bc056f1a3fb6df538fdc9c6a241223d0d7d03f0204ffa`  
		Last Modified: Sat, 27 Apr 2019 14:01:40 GMT  
		Size: 99.2 MB (99196811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946c9b461b2a48823966a76a06fc7ab4fd4fde9841d03c5890a6897beb2a1077`  
		Last Modified: Sat, 27 Apr 2019 14:01:06 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33063097112053b82f9e9cd8e6398fd4f40d69d5ea742622d89e3b8bef22ba2`  
		Last Modified: Tue, 07 May 2019 09:01:29 GMT  
		Size: 3.9 KB (3915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:d34f0a7a7d98e5d8607e2d692da63104e2d885a1d0b02a5f11a494030ca4b7e2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5788499816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:367c7724a14a63cd150dd569e092561108496b2691119472d57d67c004614eac`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 14:57:52 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 14:57:53 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Wed, 15 May 2019 14:57:54 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Wed, 15 May 2019 15:08:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:08:21 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:08:23 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:08:24 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b69d2f55150edb540465d6bbd86d60c9e71c0ff946d638bdc1eb514235ed29c`  
		Last Modified: Wed, 15 May 2019 15:56:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b915b8d27dac2a237a2f29f8e117db4ce02546f4cdd65b27e42cd58284e0cb`  
		Last Modified: Wed, 15 May 2019 15:56:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394e2c61d92e53ed3186fb1519066d975864618bc7ebf1bab69ad1c53ab22b8`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06801021b126d52cb42fcdd9627a1df197c6f6df85d5815aa2af66f2c08aeaa5`  
		Last Modified: Wed, 15 May 2019 15:56:44 GMT  
		Size: 86.4 MB (86370500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8390f3fcbb2de1e1670ddc182477f8ac42bc84f4c6be9a0d57c96dfd5b8e72`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf5ba7a1320ba64926f94fcf976ca1d65bfa4caaa3c3f34fbc1021284a57d7e`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6222e753f22635881597fdfff92fb44515e02f2d9834a9f1eab6760a6955aed`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4` - windows version 10.0.17134.765; amd64

```console
$ docker pull mongo@sha256:e13e3438b31085fa3c94d2142d3b09fd00fad305eb43171487ac80bcaf00eb4b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2764910409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490ae85b1f931a048aae063559244203f4fd42d4aaefb8613dc6f18e9ec55252`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 15:08:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 15:08:39 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 15:08:41 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Wed, 15 May 2019 15:08:42 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Wed, 15 May 2019 15:26:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:26:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:26:29 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:26:31 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:95a9480f80fcfc98cb15d244b26f8a6e2fe3795fb66c21e63d7ae2d3dad6f3d2`  
		Last Modified: Wed, 15 May 2019 15:57:12 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b787768375c69ddea0877e94bf23c61929d339fb043d748d697e33fa8c21244a`  
		Last Modified: Wed, 15 May 2019 15:57:11 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68e295cdadfcd55e9a772b892be9d224fcdb90ce3f89951f28bfe6a2dfdbdea`  
		Last Modified: Wed, 15 May 2019 15:57:11 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7296b2ff3ce5cc2dd14618da25d0c85121e5d9df66af56087f2a93f83e1ff50`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ddcbb12286eba2fbf52e90ec927e694198f67af266e80ce6ea7bd0f2dcbc4c`  
		Last Modified: Wed, 15 May 2019 15:58:57 GMT  
		Size: 462.7 MB (462651863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470d7011c30ef091be60d7c20ff07583691f9136c6706fb2cb7a8f4746a1c086`  
		Last Modified: Wed, 15 May 2019 15:57:10 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03112fb652996b1cdd19f20312063f7688bd1c4a37e606600e121ee1dcc6928d`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b86c32c71f5976cff386de09ae210b039089b4b937950699d92bb8557e25ba`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0`

```console
$ docker pull mongo@sha256:6b8cefbef0e6c4f3d35ffbf546e77e18c9737b393de6f96dbf75e6ba0185d876
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2969; amd64
	-	windows version 10.0.17134.765; amd64

### `mongo:4.0` - linux; amd64

```console
$ docker pull mongo@sha256:29d7ca01f9b7e3812a831ff143620e93ddf5e34bb9ac672d91140e064158a0fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152598189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5976dac61f4fb85c1a2d1f7c717600f9c78fb02badba6b3c5961a4091ef75905`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:09:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 15 May 2019 23:10:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:10:01 GMT
ENV GOSU_VERSION=1.11
# Wed, 15 May 2019 23:10:01 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 15 May 2019 23:10:09 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 15 May 2019 23:10:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:11:07 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 15 May 2019 23:11:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:11:09 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 15 May 2019 23:11:09 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:11:09 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:11:09 GMT
ENV MONGO_MAJOR=4.0
# Wed, 15 May 2019 23:11:09 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 23:11:10 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 15 May 2019 23:11:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 15 May 2019 23:11:36 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 15 May 2019 23:11:36 GMT
VOLUME [/data/db /data/configdb]
# Wed, 15 May 2019 23:11:37 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 15 May 2019 23:11:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:11:37 GMT
EXPOSE 27017
# Wed, 15 May 2019 23:11:37 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815c6aedc001b0c406021809f6ddda02eafc2db0af37d82e719a469ff691a5bb`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.0 KB (1984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8566b2594855b4802bf2ec5a3cef61efe1d3ed97cfa6a747f397b7bb08db3c5b`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.9 MB (2945616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c9fe451980007df2a3585e68580ed005adb0a8f2bb3e85af75afa8034e5d75`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 1.2 MB (1151233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9e7bc12ceae7b610677a07d228667d9ec99d24069d391d3bda4a29370ef083`  
		Last Modified: Wed, 15 May 2019 23:13:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c64dd2c4159abf20a4d878f39293b51391362fca6a8bcea6286bdaf6a5093fd1`  
		Last Modified: Wed, 15 May 2019 23:14:56 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9522757e8357dfad7a81901a371423c7d8e72982c12a200357efa0ca880279`  
		Last Modified: Wed, 15 May 2019 23:14:55 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cedccbc13a9b7f2593410757e1ff88bcc02dd9a3f31877e7f0584ae2a910a47`  
		Last Modified: Wed, 15 May 2019 23:15:23 GMT  
		Size: 104.7 MB (104723991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29aec2f2353d79a5eb4974d36f71fe03363dac234fe5593398fae924016c4954`  
		Last Modified: Wed, 15 May 2019 23:14:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08bcfe00e50692cfa1e8f869f14935c91fc70f5203c9fc7b0c08d59ae98e6211`  
		Last Modified: Wed, 15 May 2019 23:14:56 GMT  
		Size: 3.9 KB (3916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:322dab4a29447559cf67ae09a9f3f814489775be2a6defeb335539b195439a42
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.5 MB (142495552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5d0c0b0a97ace5105d47e3d4183cc71ccff118c9291ac8be5df562145940b67`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 13:48:50 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 13:49:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 13:49:18 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 13:49:19 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 13:49:41 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 13:49:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 13:52:50 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Sat, 27 Apr 2019 13:52:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 13:52:55 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 13:52:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:52:57 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:52:59 GMT
ENV MONGO_MAJOR=4.0
# Sat, 27 Apr 2019 13:53:00 GMT
ENV MONGO_VERSION=4.0.9
# Sat, 27 Apr 2019 13:53:02 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 13:54:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 13:54:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 13:54:16 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 09:00:29 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 09:00:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 09:00:31 GMT
EXPOSE 27017
# Tue, 07 May 2019 09:00:31 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f37d3b53bef1b38dcc459500630e3628dc2fc703b6027312c9c568de987ce1`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7b04826ecc05bc765e84011434c0505158b030c3503af0e900fcade2b666df`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.5 MB (2474268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe49430b9cce2eab30c50b2c8b16f45d8a81e199001659ae71780af25c3c762`  
		Last Modified: Sat, 27 Apr 2019 13:59:03 GMT  
		Size: 1.1 MB (1085761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0184914fa9f59778cc2d122033fb6f9f30776f21b59ef52a15dab0711cff256d`  
		Last Modified: Sat, 27 Apr 2019 13:59:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a0d07757014768afb66a6bb6a523c6e2816de092be025cfb8dc7470ca25882`  
		Last Modified: Sat, 27 Apr 2019 14:01:06 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bfbee9cb4436a9d761359ea0f0d5989c1256d1fea05f80d85ed4366cda20269`  
		Last Modified: Sat, 27 Apr 2019 14:01:06 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:710b0ee3b1fc456d9d6bc056f1a3fb6df538fdc9c6a241223d0d7d03f0204ffa`  
		Last Modified: Sat, 27 Apr 2019 14:01:40 GMT  
		Size: 99.2 MB (99196811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946c9b461b2a48823966a76a06fc7ab4fd4fde9841d03c5890a6897beb2a1077`  
		Last Modified: Sat, 27 Apr 2019 14:01:06 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33063097112053b82f9e9cd8e6398fd4f40d69d5ea742622d89e3b8bef22ba2`  
		Last Modified: Tue, 07 May 2019 09:01:29 GMT  
		Size: 3.9 KB (3915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:d34f0a7a7d98e5d8607e2d692da63104e2d885a1d0b02a5f11a494030ca4b7e2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5788499816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:367c7724a14a63cd150dd569e092561108496b2691119472d57d67c004614eac`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 14:57:52 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 14:57:53 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Wed, 15 May 2019 14:57:54 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Wed, 15 May 2019 15:08:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:08:21 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:08:23 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:08:24 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b69d2f55150edb540465d6bbd86d60c9e71c0ff946d638bdc1eb514235ed29c`  
		Last Modified: Wed, 15 May 2019 15:56:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b915b8d27dac2a237a2f29f8e117db4ce02546f4cdd65b27e42cd58284e0cb`  
		Last Modified: Wed, 15 May 2019 15:56:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394e2c61d92e53ed3186fb1519066d975864618bc7ebf1bab69ad1c53ab22b8`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06801021b126d52cb42fcdd9627a1df197c6f6df85d5815aa2af66f2c08aeaa5`  
		Last Modified: Wed, 15 May 2019 15:56:44 GMT  
		Size: 86.4 MB (86370500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8390f3fcbb2de1e1670ddc182477f8ac42bc84f4c6be9a0d57c96dfd5b8e72`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf5ba7a1320ba64926f94fcf976ca1d65bfa4caaa3c3f34fbc1021284a57d7e`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6222e753f22635881597fdfff92fb44515e02f2d9834a9f1eab6760a6955aed`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0` - windows version 10.0.17134.765; amd64

```console
$ docker pull mongo@sha256:e13e3438b31085fa3c94d2142d3b09fd00fad305eb43171487ac80bcaf00eb4b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2764910409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490ae85b1f931a048aae063559244203f4fd42d4aaefb8613dc6f18e9ec55252`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 15:08:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 15:08:39 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 15:08:41 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Wed, 15 May 2019 15:08:42 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Wed, 15 May 2019 15:26:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:26:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:26:29 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:26:31 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:95a9480f80fcfc98cb15d244b26f8a6e2fe3795fb66c21e63d7ae2d3dad6f3d2`  
		Last Modified: Wed, 15 May 2019 15:57:12 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b787768375c69ddea0877e94bf23c61929d339fb043d748d697e33fa8c21244a`  
		Last Modified: Wed, 15 May 2019 15:57:11 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68e295cdadfcd55e9a772b892be9d224fcdb90ce3f89951f28bfe6a2dfdbdea`  
		Last Modified: Wed, 15 May 2019 15:57:11 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7296b2ff3ce5cc2dd14618da25d0c85121e5d9df66af56087f2a93f83e1ff50`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ddcbb12286eba2fbf52e90ec927e694198f67af266e80ce6ea7bd0f2dcbc4c`  
		Last Modified: Wed, 15 May 2019 15:58:57 GMT  
		Size: 462.7 MB (462651863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470d7011c30ef091be60d7c20ff07583691f9136c6706fb2cb7a8f4746a1c086`  
		Last Modified: Wed, 15 May 2019 15:57:10 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03112fb652996b1cdd19f20312063f7688bd1c4a37e606600e121ee1dcc6928d`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b86c32c71f5976cff386de09ae210b039089b4b937950699d92bb8557e25ba`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0.9`

```console
$ docker pull mongo@sha256:6b8cefbef0e6c4f3d35ffbf546e77e18c9737b393de6f96dbf75e6ba0185d876
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2969; amd64
	-	windows version 10.0.17134.765; amd64

### `mongo:4.0.9` - linux; amd64

```console
$ docker pull mongo@sha256:29d7ca01f9b7e3812a831ff143620e93ddf5e34bb9ac672d91140e064158a0fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152598189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5976dac61f4fb85c1a2d1f7c717600f9c78fb02badba6b3c5961a4091ef75905`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:09:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 15 May 2019 23:10:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:10:01 GMT
ENV GOSU_VERSION=1.11
# Wed, 15 May 2019 23:10:01 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 15 May 2019 23:10:09 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 15 May 2019 23:10:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:11:07 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 15 May 2019 23:11:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:11:09 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 15 May 2019 23:11:09 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:11:09 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:11:09 GMT
ENV MONGO_MAJOR=4.0
# Wed, 15 May 2019 23:11:09 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 23:11:10 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 15 May 2019 23:11:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 15 May 2019 23:11:36 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 15 May 2019 23:11:36 GMT
VOLUME [/data/db /data/configdb]
# Wed, 15 May 2019 23:11:37 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 15 May 2019 23:11:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:11:37 GMT
EXPOSE 27017
# Wed, 15 May 2019 23:11:37 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815c6aedc001b0c406021809f6ddda02eafc2db0af37d82e719a469ff691a5bb`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.0 KB (1984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8566b2594855b4802bf2ec5a3cef61efe1d3ed97cfa6a747f397b7bb08db3c5b`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.9 MB (2945616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c9fe451980007df2a3585e68580ed005adb0a8f2bb3e85af75afa8034e5d75`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 1.2 MB (1151233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9e7bc12ceae7b610677a07d228667d9ec99d24069d391d3bda4a29370ef083`  
		Last Modified: Wed, 15 May 2019 23:13:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c64dd2c4159abf20a4d878f39293b51391362fca6a8bcea6286bdaf6a5093fd1`  
		Last Modified: Wed, 15 May 2019 23:14:56 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9522757e8357dfad7a81901a371423c7d8e72982c12a200357efa0ca880279`  
		Last Modified: Wed, 15 May 2019 23:14:55 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cedccbc13a9b7f2593410757e1ff88bcc02dd9a3f31877e7f0584ae2a910a47`  
		Last Modified: Wed, 15 May 2019 23:15:23 GMT  
		Size: 104.7 MB (104723991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29aec2f2353d79a5eb4974d36f71fe03363dac234fe5593398fae924016c4954`  
		Last Modified: Wed, 15 May 2019 23:14:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08bcfe00e50692cfa1e8f869f14935c91fc70f5203c9fc7b0c08d59ae98e6211`  
		Last Modified: Wed, 15 May 2019 23:14:56 GMT  
		Size: 3.9 KB (3916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0.9` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:322dab4a29447559cf67ae09a9f3f814489775be2a6defeb335539b195439a42
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.5 MB (142495552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5d0c0b0a97ace5105d47e3d4183cc71ccff118c9291ac8be5df562145940b67`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 13:48:50 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 13:49:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 13:49:18 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 13:49:19 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 13:49:41 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 13:49:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 13:52:50 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Sat, 27 Apr 2019 13:52:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 13:52:55 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 13:52:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:52:57 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:52:59 GMT
ENV MONGO_MAJOR=4.0
# Sat, 27 Apr 2019 13:53:00 GMT
ENV MONGO_VERSION=4.0.9
# Sat, 27 Apr 2019 13:53:02 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 13:54:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 13:54:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 13:54:16 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 09:00:29 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 09:00:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 09:00:31 GMT
EXPOSE 27017
# Tue, 07 May 2019 09:00:31 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f37d3b53bef1b38dcc459500630e3628dc2fc703b6027312c9c568de987ce1`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7b04826ecc05bc765e84011434c0505158b030c3503af0e900fcade2b666df`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.5 MB (2474268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe49430b9cce2eab30c50b2c8b16f45d8a81e199001659ae71780af25c3c762`  
		Last Modified: Sat, 27 Apr 2019 13:59:03 GMT  
		Size: 1.1 MB (1085761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0184914fa9f59778cc2d122033fb6f9f30776f21b59ef52a15dab0711cff256d`  
		Last Modified: Sat, 27 Apr 2019 13:59:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a0d07757014768afb66a6bb6a523c6e2816de092be025cfb8dc7470ca25882`  
		Last Modified: Sat, 27 Apr 2019 14:01:06 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bfbee9cb4436a9d761359ea0f0d5989c1256d1fea05f80d85ed4366cda20269`  
		Last Modified: Sat, 27 Apr 2019 14:01:06 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:710b0ee3b1fc456d9d6bc056f1a3fb6df538fdc9c6a241223d0d7d03f0204ffa`  
		Last Modified: Sat, 27 Apr 2019 14:01:40 GMT  
		Size: 99.2 MB (99196811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946c9b461b2a48823966a76a06fc7ab4fd4fde9841d03c5890a6897beb2a1077`  
		Last Modified: Sat, 27 Apr 2019 14:01:06 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33063097112053b82f9e9cd8e6398fd4f40d69d5ea742622d89e3b8bef22ba2`  
		Last Modified: Tue, 07 May 2019 09:01:29 GMT  
		Size: 3.9 KB (3915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0.9` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:d34f0a7a7d98e5d8607e2d692da63104e2d885a1d0b02a5f11a494030ca4b7e2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5788499816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:367c7724a14a63cd150dd569e092561108496b2691119472d57d67c004614eac`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 14:57:52 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 14:57:53 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Wed, 15 May 2019 14:57:54 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Wed, 15 May 2019 15:08:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:08:21 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:08:23 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:08:24 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b69d2f55150edb540465d6bbd86d60c9e71c0ff946d638bdc1eb514235ed29c`  
		Last Modified: Wed, 15 May 2019 15:56:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b915b8d27dac2a237a2f29f8e117db4ce02546f4cdd65b27e42cd58284e0cb`  
		Last Modified: Wed, 15 May 2019 15:56:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394e2c61d92e53ed3186fb1519066d975864618bc7ebf1bab69ad1c53ab22b8`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06801021b126d52cb42fcdd9627a1df197c6f6df85d5815aa2af66f2c08aeaa5`  
		Last Modified: Wed, 15 May 2019 15:56:44 GMT  
		Size: 86.4 MB (86370500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8390f3fcbb2de1e1670ddc182477f8ac42bc84f4c6be9a0d57c96dfd5b8e72`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf5ba7a1320ba64926f94fcf976ca1d65bfa4caaa3c3f34fbc1021284a57d7e`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6222e753f22635881597fdfff92fb44515e02f2d9834a9f1eab6760a6955aed`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0.9` - windows version 10.0.17134.765; amd64

```console
$ docker pull mongo@sha256:e13e3438b31085fa3c94d2142d3b09fd00fad305eb43171487ac80bcaf00eb4b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2764910409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490ae85b1f931a048aae063559244203f4fd42d4aaefb8613dc6f18e9ec55252`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 15:08:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 15:08:39 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 15:08:41 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Wed, 15 May 2019 15:08:42 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Wed, 15 May 2019 15:26:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:26:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:26:29 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:26:31 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:95a9480f80fcfc98cb15d244b26f8a6e2fe3795fb66c21e63d7ae2d3dad6f3d2`  
		Last Modified: Wed, 15 May 2019 15:57:12 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b787768375c69ddea0877e94bf23c61929d339fb043d748d697e33fa8c21244a`  
		Last Modified: Wed, 15 May 2019 15:57:11 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68e295cdadfcd55e9a772b892be9d224fcdb90ce3f89951f28bfe6a2dfdbdea`  
		Last Modified: Wed, 15 May 2019 15:57:11 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7296b2ff3ce5cc2dd14618da25d0c85121e5d9df66af56087f2a93f83e1ff50`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ddcbb12286eba2fbf52e90ec927e694198f67af266e80ce6ea7bd0f2dcbc4c`  
		Last Modified: Wed, 15 May 2019 15:58:57 GMT  
		Size: 462.7 MB (462651863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470d7011c30ef091be60d7c20ff07583691f9136c6706fb2cb7a8f4746a1c086`  
		Last Modified: Wed, 15 May 2019 15:57:10 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03112fb652996b1cdd19f20312063f7688bd1c4a37e606600e121ee1dcc6928d`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b86c32c71f5976cff386de09ae210b039089b4b937950699d92bb8557e25ba`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0.9-windowsservercore`

```console
$ docker pull mongo@sha256:8a103f906befbe44fa61a41d60ff947c5bf912962ad5a62253804dff07c52908
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64
	-	windows version 10.0.17134.765; amd64

### `mongo:4.0.9-windowsservercore` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:d34f0a7a7d98e5d8607e2d692da63104e2d885a1d0b02a5f11a494030ca4b7e2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5788499816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:367c7724a14a63cd150dd569e092561108496b2691119472d57d67c004614eac`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 14:57:52 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 14:57:53 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Wed, 15 May 2019 14:57:54 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Wed, 15 May 2019 15:08:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:08:21 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:08:23 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:08:24 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b69d2f55150edb540465d6bbd86d60c9e71c0ff946d638bdc1eb514235ed29c`  
		Last Modified: Wed, 15 May 2019 15:56:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b915b8d27dac2a237a2f29f8e117db4ce02546f4cdd65b27e42cd58284e0cb`  
		Last Modified: Wed, 15 May 2019 15:56:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394e2c61d92e53ed3186fb1519066d975864618bc7ebf1bab69ad1c53ab22b8`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06801021b126d52cb42fcdd9627a1df197c6f6df85d5815aa2af66f2c08aeaa5`  
		Last Modified: Wed, 15 May 2019 15:56:44 GMT  
		Size: 86.4 MB (86370500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8390f3fcbb2de1e1670ddc182477f8ac42bc84f4c6be9a0d57c96dfd5b8e72`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf5ba7a1320ba64926f94fcf976ca1d65bfa4caaa3c3f34fbc1021284a57d7e`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6222e753f22635881597fdfff92fb44515e02f2d9834a9f1eab6760a6955aed`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0.9-windowsservercore` - windows version 10.0.17134.765; amd64

```console
$ docker pull mongo@sha256:e13e3438b31085fa3c94d2142d3b09fd00fad305eb43171487ac80bcaf00eb4b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2764910409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490ae85b1f931a048aae063559244203f4fd42d4aaefb8613dc6f18e9ec55252`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 15:08:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 15:08:39 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 15:08:41 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Wed, 15 May 2019 15:08:42 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Wed, 15 May 2019 15:26:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:26:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:26:29 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:26:31 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:95a9480f80fcfc98cb15d244b26f8a6e2fe3795fb66c21e63d7ae2d3dad6f3d2`  
		Last Modified: Wed, 15 May 2019 15:57:12 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b787768375c69ddea0877e94bf23c61929d339fb043d748d697e33fa8c21244a`  
		Last Modified: Wed, 15 May 2019 15:57:11 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68e295cdadfcd55e9a772b892be9d224fcdb90ce3f89951f28bfe6a2dfdbdea`  
		Last Modified: Wed, 15 May 2019 15:57:11 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7296b2ff3ce5cc2dd14618da25d0c85121e5d9df66af56087f2a93f83e1ff50`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ddcbb12286eba2fbf52e90ec927e694198f67af266e80ce6ea7bd0f2dcbc4c`  
		Last Modified: Wed, 15 May 2019 15:58:57 GMT  
		Size: 462.7 MB (462651863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470d7011c30ef091be60d7c20ff07583691f9136c6706fb2cb7a8f4746a1c086`  
		Last Modified: Wed, 15 May 2019 15:57:10 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03112fb652996b1cdd19f20312063f7688bd1c4a37e606600e121ee1dcc6928d`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b86c32c71f5976cff386de09ae210b039089b4b937950699d92bb8557e25ba`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0.9-windowsservercore-1803`

```console
$ docker pull mongo@sha256:055191412bf0a3fc67881a5fd3441831b8704df04421b2d1ef1f2262e2aa23e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.765; amd64

### `mongo:4.0.9-windowsservercore-1803` - windows version 10.0.17134.765; amd64

```console
$ docker pull mongo@sha256:e13e3438b31085fa3c94d2142d3b09fd00fad305eb43171487ac80bcaf00eb4b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2764910409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490ae85b1f931a048aae063559244203f4fd42d4aaefb8613dc6f18e9ec55252`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 15:08:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 15:08:39 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 15:08:41 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Wed, 15 May 2019 15:08:42 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Wed, 15 May 2019 15:26:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:26:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:26:29 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:26:31 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:95a9480f80fcfc98cb15d244b26f8a6e2fe3795fb66c21e63d7ae2d3dad6f3d2`  
		Last Modified: Wed, 15 May 2019 15:57:12 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b787768375c69ddea0877e94bf23c61929d339fb043d748d697e33fa8c21244a`  
		Last Modified: Wed, 15 May 2019 15:57:11 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68e295cdadfcd55e9a772b892be9d224fcdb90ce3f89951f28bfe6a2dfdbdea`  
		Last Modified: Wed, 15 May 2019 15:57:11 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7296b2ff3ce5cc2dd14618da25d0c85121e5d9df66af56087f2a93f83e1ff50`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ddcbb12286eba2fbf52e90ec927e694198f67af266e80ce6ea7bd0f2dcbc4c`  
		Last Modified: Wed, 15 May 2019 15:58:57 GMT  
		Size: 462.7 MB (462651863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470d7011c30ef091be60d7c20ff07583691f9136c6706fb2cb7a8f4746a1c086`  
		Last Modified: Wed, 15 May 2019 15:57:10 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03112fb652996b1cdd19f20312063f7688bd1c4a37e606600e121ee1dcc6928d`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b86c32c71f5976cff386de09ae210b039089b4b937950699d92bb8557e25ba`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0.9-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:3133a20bcd817bc1c64e3ddd2afe045c9c00545ceaed96a661d87caa766e92a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64

### `mongo:4.0.9-windowsservercore-ltsc2016` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:d34f0a7a7d98e5d8607e2d692da63104e2d885a1d0b02a5f11a494030ca4b7e2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5788499816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:367c7724a14a63cd150dd569e092561108496b2691119472d57d67c004614eac`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 14:57:52 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 14:57:53 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Wed, 15 May 2019 14:57:54 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Wed, 15 May 2019 15:08:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:08:21 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:08:23 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:08:24 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b69d2f55150edb540465d6bbd86d60c9e71c0ff946d638bdc1eb514235ed29c`  
		Last Modified: Wed, 15 May 2019 15:56:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b915b8d27dac2a237a2f29f8e117db4ce02546f4cdd65b27e42cd58284e0cb`  
		Last Modified: Wed, 15 May 2019 15:56:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394e2c61d92e53ed3186fb1519066d975864618bc7ebf1bab69ad1c53ab22b8`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06801021b126d52cb42fcdd9627a1df197c6f6df85d5815aa2af66f2c08aeaa5`  
		Last Modified: Wed, 15 May 2019 15:56:44 GMT  
		Size: 86.4 MB (86370500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8390f3fcbb2de1e1670ddc182477f8ac42bc84f4c6be9a0d57c96dfd5b8e72`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf5ba7a1320ba64926f94fcf976ca1d65bfa4caaa3c3f34fbc1021284a57d7e`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6222e753f22635881597fdfff92fb44515e02f2d9834a9f1eab6760a6955aed`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0.9-xenial`

```console
$ docker pull mongo@sha256:326e702174aef7a714a5fccb034d901ba1bd1b2cf7da841494fba4aaa5744c69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:4.0.9-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:29d7ca01f9b7e3812a831ff143620e93ddf5e34bb9ac672d91140e064158a0fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152598189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5976dac61f4fb85c1a2d1f7c717600f9c78fb02badba6b3c5961a4091ef75905`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:09:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 15 May 2019 23:10:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:10:01 GMT
ENV GOSU_VERSION=1.11
# Wed, 15 May 2019 23:10:01 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 15 May 2019 23:10:09 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 15 May 2019 23:10:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:11:07 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 15 May 2019 23:11:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:11:09 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 15 May 2019 23:11:09 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:11:09 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:11:09 GMT
ENV MONGO_MAJOR=4.0
# Wed, 15 May 2019 23:11:09 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 23:11:10 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 15 May 2019 23:11:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 15 May 2019 23:11:36 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 15 May 2019 23:11:36 GMT
VOLUME [/data/db /data/configdb]
# Wed, 15 May 2019 23:11:37 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 15 May 2019 23:11:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:11:37 GMT
EXPOSE 27017
# Wed, 15 May 2019 23:11:37 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815c6aedc001b0c406021809f6ddda02eafc2db0af37d82e719a469ff691a5bb`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.0 KB (1984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8566b2594855b4802bf2ec5a3cef61efe1d3ed97cfa6a747f397b7bb08db3c5b`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.9 MB (2945616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c9fe451980007df2a3585e68580ed005adb0a8f2bb3e85af75afa8034e5d75`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 1.2 MB (1151233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9e7bc12ceae7b610677a07d228667d9ec99d24069d391d3bda4a29370ef083`  
		Last Modified: Wed, 15 May 2019 23:13:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c64dd2c4159abf20a4d878f39293b51391362fca6a8bcea6286bdaf6a5093fd1`  
		Last Modified: Wed, 15 May 2019 23:14:56 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9522757e8357dfad7a81901a371423c7d8e72982c12a200357efa0ca880279`  
		Last Modified: Wed, 15 May 2019 23:14:55 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cedccbc13a9b7f2593410757e1ff88bcc02dd9a3f31877e7f0584ae2a910a47`  
		Last Modified: Wed, 15 May 2019 23:15:23 GMT  
		Size: 104.7 MB (104723991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29aec2f2353d79a5eb4974d36f71fe03363dac234fe5593398fae924016c4954`  
		Last Modified: Wed, 15 May 2019 23:14:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08bcfe00e50692cfa1e8f869f14935c91fc70f5203c9fc7b0c08d59ae98e6211`  
		Last Modified: Wed, 15 May 2019 23:14:56 GMT  
		Size: 3.9 KB (3916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0.9-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:322dab4a29447559cf67ae09a9f3f814489775be2a6defeb335539b195439a42
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.5 MB (142495552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5d0c0b0a97ace5105d47e3d4183cc71ccff118c9291ac8be5df562145940b67`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 13:48:50 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 13:49:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 13:49:18 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 13:49:19 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 13:49:41 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 13:49:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 13:52:50 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Sat, 27 Apr 2019 13:52:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 13:52:55 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 13:52:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:52:57 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:52:59 GMT
ENV MONGO_MAJOR=4.0
# Sat, 27 Apr 2019 13:53:00 GMT
ENV MONGO_VERSION=4.0.9
# Sat, 27 Apr 2019 13:53:02 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 13:54:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 13:54:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 13:54:16 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 09:00:29 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 09:00:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 09:00:31 GMT
EXPOSE 27017
# Tue, 07 May 2019 09:00:31 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f37d3b53bef1b38dcc459500630e3628dc2fc703b6027312c9c568de987ce1`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7b04826ecc05bc765e84011434c0505158b030c3503af0e900fcade2b666df`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.5 MB (2474268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe49430b9cce2eab30c50b2c8b16f45d8a81e199001659ae71780af25c3c762`  
		Last Modified: Sat, 27 Apr 2019 13:59:03 GMT  
		Size: 1.1 MB (1085761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0184914fa9f59778cc2d122033fb6f9f30776f21b59ef52a15dab0711cff256d`  
		Last Modified: Sat, 27 Apr 2019 13:59:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a0d07757014768afb66a6bb6a523c6e2816de092be025cfb8dc7470ca25882`  
		Last Modified: Sat, 27 Apr 2019 14:01:06 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bfbee9cb4436a9d761359ea0f0d5989c1256d1fea05f80d85ed4366cda20269`  
		Last Modified: Sat, 27 Apr 2019 14:01:06 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:710b0ee3b1fc456d9d6bc056f1a3fb6df538fdc9c6a241223d0d7d03f0204ffa`  
		Last Modified: Sat, 27 Apr 2019 14:01:40 GMT  
		Size: 99.2 MB (99196811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946c9b461b2a48823966a76a06fc7ab4fd4fde9841d03c5890a6897beb2a1077`  
		Last Modified: Sat, 27 Apr 2019 14:01:06 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33063097112053b82f9e9cd8e6398fd4f40d69d5ea742622d89e3b8bef22ba2`  
		Last Modified: Tue, 07 May 2019 09:01:29 GMT  
		Size: 3.9 KB (3915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0-windowsservercore`

```console
$ docker pull mongo@sha256:8a103f906befbe44fa61a41d60ff947c5bf912962ad5a62253804dff07c52908
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64
	-	windows version 10.0.17134.765; amd64

### `mongo:4.0-windowsservercore` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:d34f0a7a7d98e5d8607e2d692da63104e2d885a1d0b02a5f11a494030ca4b7e2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5788499816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:367c7724a14a63cd150dd569e092561108496b2691119472d57d67c004614eac`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 14:57:52 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 14:57:53 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Wed, 15 May 2019 14:57:54 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Wed, 15 May 2019 15:08:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:08:21 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:08:23 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:08:24 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b69d2f55150edb540465d6bbd86d60c9e71c0ff946d638bdc1eb514235ed29c`  
		Last Modified: Wed, 15 May 2019 15:56:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b915b8d27dac2a237a2f29f8e117db4ce02546f4cdd65b27e42cd58284e0cb`  
		Last Modified: Wed, 15 May 2019 15:56:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394e2c61d92e53ed3186fb1519066d975864618bc7ebf1bab69ad1c53ab22b8`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06801021b126d52cb42fcdd9627a1df197c6f6df85d5815aa2af66f2c08aeaa5`  
		Last Modified: Wed, 15 May 2019 15:56:44 GMT  
		Size: 86.4 MB (86370500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8390f3fcbb2de1e1670ddc182477f8ac42bc84f4c6be9a0d57c96dfd5b8e72`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf5ba7a1320ba64926f94fcf976ca1d65bfa4caaa3c3f34fbc1021284a57d7e`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6222e753f22635881597fdfff92fb44515e02f2d9834a9f1eab6760a6955aed`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0-windowsservercore` - windows version 10.0.17134.765; amd64

```console
$ docker pull mongo@sha256:e13e3438b31085fa3c94d2142d3b09fd00fad305eb43171487ac80bcaf00eb4b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2764910409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490ae85b1f931a048aae063559244203f4fd42d4aaefb8613dc6f18e9ec55252`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 15:08:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 15:08:39 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 15:08:41 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Wed, 15 May 2019 15:08:42 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Wed, 15 May 2019 15:26:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:26:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:26:29 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:26:31 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:95a9480f80fcfc98cb15d244b26f8a6e2fe3795fb66c21e63d7ae2d3dad6f3d2`  
		Last Modified: Wed, 15 May 2019 15:57:12 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b787768375c69ddea0877e94bf23c61929d339fb043d748d697e33fa8c21244a`  
		Last Modified: Wed, 15 May 2019 15:57:11 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68e295cdadfcd55e9a772b892be9d224fcdb90ce3f89951f28bfe6a2dfdbdea`  
		Last Modified: Wed, 15 May 2019 15:57:11 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7296b2ff3ce5cc2dd14618da25d0c85121e5d9df66af56087f2a93f83e1ff50`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ddcbb12286eba2fbf52e90ec927e694198f67af266e80ce6ea7bd0f2dcbc4c`  
		Last Modified: Wed, 15 May 2019 15:58:57 GMT  
		Size: 462.7 MB (462651863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470d7011c30ef091be60d7c20ff07583691f9136c6706fb2cb7a8f4746a1c086`  
		Last Modified: Wed, 15 May 2019 15:57:10 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03112fb652996b1cdd19f20312063f7688bd1c4a37e606600e121ee1dcc6928d`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b86c32c71f5976cff386de09ae210b039089b4b937950699d92bb8557e25ba`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0-windowsservercore-1803`

```console
$ docker pull mongo@sha256:055191412bf0a3fc67881a5fd3441831b8704df04421b2d1ef1f2262e2aa23e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.765; amd64

### `mongo:4.0-windowsservercore-1803` - windows version 10.0.17134.765; amd64

```console
$ docker pull mongo@sha256:e13e3438b31085fa3c94d2142d3b09fd00fad305eb43171487ac80bcaf00eb4b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2764910409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490ae85b1f931a048aae063559244203f4fd42d4aaefb8613dc6f18e9ec55252`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 15:08:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 15:08:39 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 15:08:41 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Wed, 15 May 2019 15:08:42 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Wed, 15 May 2019 15:26:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:26:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:26:29 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:26:31 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:95a9480f80fcfc98cb15d244b26f8a6e2fe3795fb66c21e63d7ae2d3dad6f3d2`  
		Last Modified: Wed, 15 May 2019 15:57:12 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b787768375c69ddea0877e94bf23c61929d339fb043d748d697e33fa8c21244a`  
		Last Modified: Wed, 15 May 2019 15:57:11 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68e295cdadfcd55e9a772b892be9d224fcdb90ce3f89951f28bfe6a2dfdbdea`  
		Last Modified: Wed, 15 May 2019 15:57:11 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7296b2ff3ce5cc2dd14618da25d0c85121e5d9df66af56087f2a93f83e1ff50`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ddcbb12286eba2fbf52e90ec927e694198f67af266e80ce6ea7bd0f2dcbc4c`  
		Last Modified: Wed, 15 May 2019 15:58:57 GMT  
		Size: 462.7 MB (462651863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470d7011c30ef091be60d7c20ff07583691f9136c6706fb2cb7a8f4746a1c086`  
		Last Modified: Wed, 15 May 2019 15:57:10 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03112fb652996b1cdd19f20312063f7688bd1c4a37e606600e121ee1dcc6928d`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b86c32c71f5976cff386de09ae210b039089b4b937950699d92bb8557e25ba`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:3133a20bcd817bc1c64e3ddd2afe045c9c00545ceaed96a661d87caa766e92a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64

### `mongo:4.0-windowsservercore-ltsc2016` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:d34f0a7a7d98e5d8607e2d692da63104e2d885a1d0b02a5f11a494030ca4b7e2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5788499816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:367c7724a14a63cd150dd569e092561108496b2691119472d57d67c004614eac`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 14:57:52 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 14:57:53 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Wed, 15 May 2019 14:57:54 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Wed, 15 May 2019 15:08:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:08:21 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:08:23 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:08:24 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b69d2f55150edb540465d6bbd86d60c9e71c0ff946d638bdc1eb514235ed29c`  
		Last Modified: Wed, 15 May 2019 15:56:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b915b8d27dac2a237a2f29f8e117db4ce02546f4cdd65b27e42cd58284e0cb`  
		Last Modified: Wed, 15 May 2019 15:56:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394e2c61d92e53ed3186fb1519066d975864618bc7ebf1bab69ad1c53ab22b8`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06801021b126d52cb42fcdd9627a1df197c6f6df85d5815aa2af66f2c08aeaa5`  
		Last Modified: Wed, 15 May 2019 15:56:44 GMT  
		Size: 86.4 MB (86370500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8390f3fcbb2de1e1670ddc182477f8ac42bc84f4c6be9a0d57c96dfd5b8e72`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf5ba7a1320ba64926f94fcf976ca1d65bfa4caaa3c3f34fbc1021284a57d7e`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6222e753f22635881597fdfff92fb44515e02f2d9834a9f1eab6760a6955aed`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0-xenial`

```console
$ docker pull mongo@sha256:326e702174aef7a714a5fccb034d901ba1bd1b2cf7da841494fba4aaa5744c69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:4.0-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:29d7ca01f9b7e3812a831ff143620e93ddf5e34bb9ac672d91140e064158a0fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152598189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5976dac61f4fb85c1a2d1f7c717600f9c78fb02badba6b3c5961a4091ef75905`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:09:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 15 May 2019 23:10:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:10:01 GMT
ENV GOSU_VERSION=1.11
# Wed, 15 May 2019 23:10:01 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 15 May 2019 23:10:09 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 15 May 2019 23:10:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:11:07 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 15 May 2019 23:11:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:11:09 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 15 May 2019 23:11:09 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:11:09 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:11:09 GMT
ENV MONGO_MAJOR=4.0
# Wed, 15 May 2019 23:11:09 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 23:11:10 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 15 May 2019 23:11:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 15 May 2019 23:11:36 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 15 May 2019 23:11:36 GMT
VOLUME [/data/db /data/configdb]
# Wed, 15 May 2019 23:11:37 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 15 May 2019 23:11:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:11:37 GMT
EXPOSE 27017
# Wed, 15 May 2019 23:11:37 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815c6aedc001b0c406021809f6ddda02eafc2db0af37d82e719a469ff691a5bb`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.0 KB (1984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8566b2594855b4802bf2ec5a3cef61efe1d3ed97cfa6a747f397b7bb08db3c5b`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.9 MB (2945616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c9fe451980007df2a3585e68580ed005adb0a8f2bb3e85af75afa8034e5d75`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 1.2 MB (1151233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9e7bc12ceae7b610677a07d228667d9ec99d24069d391d3bda4a29370ef083`  
		Last Modified: Wed, 15 May 2019 23:13:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c64dd2c4159abf20a4d878f39293b51391362fca6a8bcea6286bdaf6a5093fd1`  
		Last Modified: Wed, 15 May 2019 23:14:56 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9522757e8357dfad7a81901a371423c7d8e72982c12a200357efa0ca880279`  
		Last Modified: Wed, 15 May 2019 23:14:55 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cedccbc13a9b7f2593410757e1ff88bcc02dd9a3f31877e7f0584ae2a910a47`  
		Last Modified: Wed, 15 May 2019 23:15:23 GMT  
		Size: 104.7 MB (104723991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29aec2f2353d79a5eb4974d36f71fe03363dac234fe5593398fae924016c4954`  
		Last Modified: Wed, 15 May 2019 23:14:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08bcfe00e50692cfa1e8f869f14935c91fc70f5203c9fc7b0c08d59ae98e6211`  
		Last Modified: Wed, 15 May 2019 23:14:56 GMT  
		Size: 3.9 KB (3916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:322dab4a29447559cf67ae09a9f3f814489775be2a6defeb335539b195439a42
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.5 MB (142495552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5d0c0b0a97ace5105d47e3d4183cc71ccff118c9291ac8be5df562145940b67`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 13:48:50 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 13:49:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 13:49:18 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 13:49:19 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 13:49:41 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 13:49:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 13:52:50 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Sat, 27 Apr 2019 13:52:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 13:52:55 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 13:52:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:52:57 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:52:59 GMT
ENV MONGO_MAJOR=4.0
# Sat, 27 Apr 2019 13:53:00 GMT
ENV MONGO_VERSION=4.0.9
# Sat, 27 Apr 2019 13:53:02 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 13:54:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 13:54:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 13:54:16 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 09:00:29 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 09:00:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 09:00:31 GMT
EXPOSE 27017
# Tue, 07 May 2019 09:00:31 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f37d3b53bef1b38dcc459500630e3628dc2fc703b6027312c9c568de987ce1`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7b04826ecc05bc765e84011434c0505158b030c3503af0e900fcade2b666df`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.5 MB (2474268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe49430b9cce2eab30c50b2c8b16f45d8a81e199001659ae71780af25c3c762`  
		Last Modified: Sat, 27 Apr 2019 13:59:03 GMT  
		Size: 1.1 MB (1085761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0184914fa9f59778cc2d122033fb6f9f30776f21b59ef52a15dab0711cff256d`  
		Last Modified: Sat, 27 Apr 2019 13:59:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a0d07757014768afb66a6bb6a523c6e2816de092be025cfb8dc7470ca25882`  
		Last Modified: Sat, 27 Apr 2019 14:01:06 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bfbee9cb4436a9d761359ea0f0d5989c1256d1fea05f80d85ed4366cda20269`  
		Last Modified: Sat, 27 Apr 2019 14:01:06 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:710b0ee3b1fc456d9d6bc056f1a3fb6df538fdc9c6a241223d0d7d03f0204ffa`  
		Last Modified: Sat, 27 Apr 2019 14:01:40 GMT  
		Size: 99.2 MB (99196811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946c9b461b2a48823966a76a06fc7ab4fd4fde9841d03c5890a6897beb2a1077`  
		Last Modified: Sat, 27 Apr 2019 14:01:06 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33063097112053b82f9e9cd8e6398fd4f40d69d5ea742622d89e3b8bef22ba2`  
		Last Modified: Tue, 07 May 2019 09:01:29 GMT  
		Size: 3.9 KB (3915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.1`

```console
$ docker pull mongo@sha256:9d6e3fe0db31371250017acb290ca9043bb42391ac02cec664d48a65d377324b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; s390x
	-	windows version 10.0.14393.2969; amd64
	-	windows version 10.0.17134.765; amd64

### `mongo:4.1` - linux; amd64

```console
$ docker pull mongo@sha256:9812619f537062b3eebe6d203190589e3cf0dc5e3e5034be24d4e88567fb75e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142351058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f95d6785a32e28a6682d9a89713e8cac423d2b1997869be57025a02e85c57e76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:11:46 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 15 May 2019 23:11:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:11:56 GMT
ENV GOSU_VERSION=1.11
# Wed, 15 May 2019 23:11:56 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 15 May 2019 23:12:20 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 15 May 2019 23:12:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:12:22 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Wed, 15 May 2019 23:12:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:12:24 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 15 May 2019 23:12:24 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:12:25 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:12:25 GMT
ENV MONGO_MAJOR=4.1
# Wed, 15 May 2019 23:12:25 GMT
ENV MONGO_VERSION=4.1.11
# Wed, 15 May 2019 23:12:27 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 15 May 2019 23:13:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 15 May 2019 23:13:09 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 15 May 2019 23:13:09 GMT
VOLUME [/data/db /data/configdb]
# Wed, 15 May 2019 23:13:09 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 15 May 2019 23:13:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:13:10 GMT
EXPOSE 27017
# Wed, 15 May 2019 23:13:10 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e441ad81a3e0c67c4ca12fc98dd8a6729aac90a9b5018061f7d8ff6ceed8b93`  
		Last Modified: Wed, 15 May 2019 23:15:31 GMT  
		Size: 1.9 KB (1870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51118a13f29c6332a50d8f4c191544ca57566c46dcbc94166a62044fd25cb76b`  
		Last Modified: Wed, 15 May 2019 23:15:32 GMT  
		Size: 2.7 MB (2733006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e96b28381e873078b41fee98b156762ec0559032de40fbe46f36d277f626ff`  
		Last Modified: Wed, 15 May 2019 23:15:34 GMT  
		Size: 5.8 MB (5759311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76c3476ff75959a75091a57ac7609564ebdc2d6a13446307f58db8493c8657e`  
		Last Modified: Wed, 15 May 2019 23:15:31 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7dc10844685978bc792dfb0062c4b610a6d59491144e4518f92889d1265bb75`  
		Last Modified: Wed, 15 May 2019 23:15:29 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b63fa0d37fb3d8cf75fabf999fbd1eec729cdf835f441b3a226cd2d04605c9`  
		Last Modified: Wed, 15 May 2019 23:15:30 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e22773025a935d8de793fd5d2cc076006ce7c18c07bef7caf2de16a1f33d23a4`  
		Last Modified: Wed, 15 May 2019 23:15:54 GMT  
		Size: 105.0 MB (104994956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4403f8a951baa555999d361a7e710d8685b176fbfa708baa85fcc733ac3ccc0e`  
		Last Modified: Wed, 15 May 2019 23:15:30 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f90f6553e90bd8823fb2b472bae9214e94613af137963592278f63e17569472`  
		Last Modified: Wed, 15 May 2019 23:15:30 GMT  
		Size: 3.9 KB (3916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:6d929553bb73f58b1968aaaef9e5e4d35297c24c378ff2f96ff819b9a64f17eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.5 MB (139535080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93167576af25a6eea6a9959e4164924103ac82b7fedabe998c070dace88099cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 27 Apr 2019 09:35:52 GMT
ADD file:f046142405da23f452b26e01729a6fdc5a92b0fa85ec8456a1fee249160217bb in / 
# Sat, 27 Apr 2019 09:35:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:35:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:35:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:36:00 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 13:54:44 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 13:55:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 13:55:39 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 13:55:40 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 13:56:39 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 13:56:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 13:56:43 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Sat, 27 Apr 2019 13:56:46 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 13:56:46 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Sat, 27 Apr 2019 13:56:47 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:56:48 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:56:49 GMT
ENV MONGO_MAJOR=4.1
# Fri, 10 May 2019 09:00:08 GMT
ENV MONGO_VERSION=4.1.11
# Fri, 10 May 2019 09:00:10 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 10 May 2019 09:01:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 10 May 2019 09:01:10 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 10 May 2019 09:01:10 GMT
VOLUME [/data/db /data/configdb]
# Fri, 10 May 2019 09:01:11 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Fri, 10 May 2019 09:01:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:01:13 GMT
EXPOSE 27017
# Fri, 10 May 2019 09:01:14 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:bf7c45c81bd70f13db7f1612a4596418f2c15b48384d2c1d5597b7534e60b3f3`  
		Last Modified: Sat, 27 Apr 2019 09:39:34 GMT  
		Size: 33.3 MB (33343401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5396f07cded369e173bde57fa17c337db371930ea1b2e925d3c04cb407794d5c`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ceb566582d63624b9d3a22ead5cbf0836b8c5bca41b4b7bb777c9c11923ede`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb3982847b2f6cb9353dc95b2dbd7092a92764a1946b9901adf59d886849542`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155ec62d2b44b7c48622d0f609bb4ed4543dfe367709364abf0b2e9499e23930`  
		Last Modified: Sat, 27 Apr 2019 14:01:57 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a395cce62fd6427cfb162512d0f1e49862dfa5ce639af91b12ddde137418c1`  
		Last Modified: Sat, 27 Apr 2019 14:01:58 GMT  
		Size: 2.4 MB (2445700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b59ce0c6c7c522c8c273a74f15924ec5525535b0c9a22eee5333a51f9310d75`  
		Last Modified: Sat, 27 Apr 2019 14:01:58 GMT  
		Size: 5.3 MB (5277949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d8392ab1055bc3e61eb40a018b9d99c1f0925620d9074946752c20c7e251a1`  
		Last Modified: Sat, 27 Apr 2019 14:01:56 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98859e0de9105890f7ab0ac67e850ab5de2d3f1098a62042c800bcfd443c4150`  
		Last Modified: Sat, 27 Apr 2019 14:01:54 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30732854e76b7db2138c1b1b539e6725f1dc5cbb6aa6fdebbec8825f08f0a001`  
		Last Modified: Fri, 10 May 2019 09:01:55 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1916eb3c4fd9b379a4b878bf8a0a3c0193f23198379f56d2099e5b87409965e0`  
		Last Modified: Fri, 10 May 2019 09:02:27 GMT  
		Size: 98.5 MB (98458766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:519d80e98c8df2696107d1b4af10c5078c65769b660620ad758c768b1087dca8`  
		Last Modified: Fri, 10 May 2019 09:01:56 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd284df76aab5166889bf05f2abe2b66ad72efc787b485fd40345932911dd06`  
		Last Modified: Fri, 10 May 2019 09:01:56 GMT  
		Size: 3.9 KB (3913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1` - linux; s390x

```console
$ docker pull mongo@sha256:7fc02f180f9c42ad8b911e02e2ec93808ac916249cdb312ef3154888cae9e177
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.0 MB (138007942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f10594a04420420dde01459c4bf6c2da55ae5b17344497a887c64502f39433`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 21:42:57 GMT
ADD file:099f81542cb8e3e3e4fc2556d8067214392b39f0958e3452312495c98ae25e76 in / 
# Wed, 15 May 2019 21:43:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:43:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:43:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:43:14 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:32:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 15 May 2019 22:32:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:32:56 GMT
ENV GOSU_VERSION=1.11
# Wed, 15 May 2019 22:32:57 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 15 May 2019 22:33:18 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 15 May 2019 22:33:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:33:20 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Wed, 15 May 2019 22:33:22 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:33:23 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 15 May 2019 22:33:23 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 22:33:23 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 22:33:24 GMT
ENV MONGO_MAJOR=4.1
# Wed, 15 May 2019 22:33:24 GMT
ENV MONGO_VERSION=4.1.11
# Wed, 15 May 2019 22:33:27 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 15 May 2019 22:34:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 15 May 2019 22:34:09 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 15 May 2019 22:34:09 GMT
VOLUME [/data/db /data/configdb]
# Wed, 15 May 2019 22:34:10 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 15 May 2019 22:34:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:34:11 GMT
EXPOSE 27017
# Wed, 15 May 2019 22:34:11 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a3ef07dd1fb74710cbd05c9bed2158fa7e005b766ac22ee052c37bc04215d25d`  
		Last Modified: Wed, 15 May 2019 21:46:43 GMT  
		Size: 27.5 MB (27532637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3f8f7d030578ebc1c4656ad55d61c81d712b0b43add1862837acf9d7365d67`  
		Last Modified: Wed, 15 May 2019 21:46:29 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4fa8d15db8edc923fd948fd13c76765471952cf1ac5df39c26f98250ab7944`  
		Last Modified: Wed, 15 May 2019 21:46:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5389f875a4e9d8a209a803440e2bc92aa7808f45367b050d7da2ffe34e8d3d8`  
		Last Modified: Wed, 15 May 2019 22:34:41 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78f9fb2db0b7a86a25e1ec0f0391300ad3f37a623dcb98a784a581287f8b7173`  
		Last Modified: Wed, 15 May 2019 22:34:43 GMT  
		Size: 2.5 MB (2461049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c3406decac38d30321c551aa17349b3335f7b48bfae4ad4f661160a17a10c7`  
		Last Modified: Wed, 15 May 2019 22:34:43 GMT  
		Size: 5.7 MB (5680803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c67004fc42876655b93fdd85255d6f18cb1094964124249a13f0a1372e5093`  
		Last Modified: Wed, 15 May 2019 22:34:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea75256322b9d6c89b4a4916fa8cb3478c116bf54623d038fbcb829428175031`  
		Last Modified: Wed, 15 May 2019 22:34:40 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e208ea70beddbda6cc70cf813f9c0e622a3775dfc665b0b056ffac4948421c`  
		Last Modified: Wed, 15 May 2019 22:34:34 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa83088e47deb859e8dc9df3d15fd2d5867518f0acd95bc06633f16241fde2d`  
		Last Modified: Wed, 15 May 2019 22:34:58 GMT  
		Size: 102.3 MB (102324725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbac88ccb2bec5f4c8dcb000b42b290d07c662b65a898899a61afc2b3021d77`  
		Last Modified: Wed, 15 May 2019 22:34:34 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe54e666a4dd89b83ad23363c04ca3de4792aef4d239210ae26436a89355aa8`  
		Last Modified: Wed, 15 May 2019 22:34:34 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:8f84f6be14c721074dc31f0ec08c769ff9c33dc948121d0ea11152eb26f21c32
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5790127403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:767e9ecfdc1df685b6508c272c00da07bfb2dfa97042ed0665520df68b999285`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 15:26:42 GMT
ENV MONGO_VERSION=4.1.11
# Wed, 15 May 2019 15:26:44 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.11-signed.msi
# Wed, 15 May 2019 15:26:45 GMT
ENV MONGO_DOWNLOAD_SHA256=3fc1513963da414eb4f4329905670a68d6d5a6f9776553686f9747400ff91725
# Wed, 15 May 2019 15:36:00 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:36:03 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:36:05 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:36:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32cd825e6205fd1de6cbc8c8225543d46cf66be25f9e7c3a0b932b954d168fa6`  
		Last Modified: Wed, 15 May 2019 15:59:24 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c03e111541f905c6e01eb3a13367262b7bc3724fcee59e95f67db4e24d65aeb`  
		Last Modified: Wed, 15 May 2019 15:59:27 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0b77d1682be9af19ddc8b132da8e799ea89e36728c21a88b1e80491301e80f7`  
		Last Modified: Wed, 15 May 2019 15:59:21 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec266c6e84ca537db614f7ea79221202d30d176f2c772c78ab64f3ebb5a5abf`  
		Last Modified: Wed, 15 May 2019 15:59:40 GMT  
		Size: 88.0 MB (87998070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224f89597561e958f4731290bbb79dc1164d00274bbe5f5791a9602ec11cdbf4`  
		Last Modified: Wed, 15 May 2019 15:59:22 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3bf2995fa3ed310185ccc29cf8f794c212105c63cfdc4433424e6ce8b74962`  
		Last Modified: Wed, 15 May 2019 15:59:21 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0a7753dc0fc4aaa197d0586142a105b0f94c1cefc220a6d04410d4a4351079`  
		Last Modified: Wed, 15 May 2019 15:59:22 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1` - windows version 10.0.17134.765; amd64

```console
$ docker pull mongo@sha256:8036c3cb49002e2f21371ad1f902ade2556cc1054703e86df6564ed749851756
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2766537673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2235797b2c07de90a021f904764b132fe5a77757f9fc8bdc72d09c668d275b7e`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 15:08:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 15:36:14 GMT
ENV MONGO_VERSION=4.1.11
# Wed, 15 May 2019 15:36:15 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.11-signed.msi
# Wed, 15 May 2019 15:36:16 GMT
ENV MONGO_DOWNLOAD_SHA256=3fc1513963da414eb4f4329905670a68d6d5a6f9776553686f9747400ff91725
# Wed, 15 May 2019 15:54:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:54:19 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:54:21 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:54:23 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:95a9480f80fcfc98cb15d244b26f8a6e2fe3795fb66c21e63d7ae2d3dad6f3d2`  
		Last Modified: Wed, 15 May 2019 15:57:12 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58aaf3c2c1f9463208be48e9a56ceacf50eec65227b78518b2b8450f9d9cc2f8`  
		Last Modified: Wed, 15 May 2019 16:00:00 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc96e4ebbb17290ce5dcdf1933cea1d800cbf00b387d55423e145386a099e92c`  
		Last Modified: Wed, 15 May 2019 16:00:00 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3781df1be54b085f52ab0dc6f618c83b03de19847e4c2557d0998022ec2caca7`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147cdfd38e1ba6c2be4d7f2c8d22fefb61d3b0060340f1aa1d230380e6d0e710`  
		Last Modified: Wed, 15 May 2019 16:01:02 GMT  
		Size: 464.3 MB (464279116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537fad84925869b2f3ce233e50b4eef2cc4c821f88753b396222fc2bfdf3be52`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08aa80c17475b587cabd5d0db5bddab3b840adb77fb88a4733bb488bbffde2b`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6eaa8204c6437ab969d168e593232754e93067db705033efa4c5a833f3c4b9`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.1.11`

```console
$ docker pull mongo@sha256:9d6e3fe0db31371250017acb290ca9043bb42391ac02cec664d48a65d377324b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; s390x
	-	windows version 10.0.14393.2969; amd64
	-	windows version 10.0.17134.765; amd64

### `mongo:4.1.11` - linux; amd64

```console
$ docker pull mongo@sha256:9812619f537062b3eebe6d203190589e3cf0dc5e3e5034be24d4e88567fb75e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142351058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f95d6785a32e28a6682d9a89713e8cac423d2b1997869be57025a02e85c57e76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:11:46 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 15 May 2019 23:11:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:11:56 GMT
ENV GOSU_VERSION=1.11
# Wed, 15 May 2019 23:11:56 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 15 May 2019 23:12:20 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 15 May 2019 23:12:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:12:22 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Wed, 15 May 2019 23:12:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:12:24 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 15 May 2019 23:12:24 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:12:25 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:12:25 GMT
ENV MONGO_MAJOR=4.1
# Wed, 15 May 2019 23:12:25 GMT
ENV MONGO_VERSION=4.1.11
# Wed, 15 May 2019 23:12:27 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 15 May 2019 23:13:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 15 May 2019 23:13:09 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 15 May 2019 23:13:09 GMT
VOLUME [/data/db /data/configdb]
# Wed, 15 May 2019 23:13:09 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 15 May 2019 23:13:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:13:10 GMT
EXPOSE 27017
# Wed, 15 May 2019 23:13:10 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e441ad81a3e0c67c4ca12fc98dd8a6729aac90a9b5018061f7d8ff6ceed8b93`  
		Last Modified: Wed, 15 May 2019 23:15:31 GMT  
		Size: 1.9 KB (1870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51118a13f29c6332a50d8f4c191544ca57566c46dcbc94166a62044fd25cb76b`  
		Last Modified: Wed, 15 May 2019 23:15:32 GMT  
		Size: 2.7 MB (2733006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e96b28381e873078b41fee98b156762ec0559032de40fbe46f36d277f626ff`  
		Last Modified: Wed, 15 May 2019 23:15:34 GMT  
		Size: 5.8 MB (5759311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76c3476ff75959a75091a57ac7609564ebdc2d6a13446307f58db8493c8657e`  
		Last Modified: Wed, 15 May 2019 23:15:31 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7dc10844685978bc792dfb0062c4b610a6d59491144e4518f92889d1265bb75`  
		Last Modified: Wed, 15 May 2019 23:15:29 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b63fa0d37fb3d8cf75fabf999fbd1eec729cdf835f441b3a226cd2d04605c9`  
		Last Modified: Wed, 15 May 2019 23:15:30 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e22773025a935d8de793fd5d2cc076006ce7c18c07bef7caf2de16a1f33d23a4`  
		Last Modified: Wed, 15 May 2019 23:15:54 GMT  
		Size: 105.0 MB (104994956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4403f8a951baa555999d361a7e710d8685b176fbfa708baa85fcc733ac3ccc0e`  
		Last Modified: Wed, 15 May 2019 23:15:30 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f90f6553e90bd8823fb2b472bae9214e94613af137963592278f63e17569472`  
		Last Modified: Wed, 15 May 2019 23:15:30 GMT  
		Size: 3.9 KB (3916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1.11` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:6d929553bb73f58b1968aaaef9e5e4d35297c24c378ff2f96ff819b9a64f17eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.5 MB (139535080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93167576af25a6eea6a9959e4164924103ac82b7fedabe998c070dace88099cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 27 Apr 2019 09:35:52 GMT
ADD file:f046142405da23f452b26e01729a6fdc5a92b0fa85ec8456a1fee249160217bb in / 
# Sat, 27 Apr 2019 09:35:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:35:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:35:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:36:00 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 13:54:44 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 13:55:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 13:55:39 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 13:55:40 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 13:56:39 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 13:56:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 13:56:43 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Sat, 27 Apr 2019 13:56:46 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 13:56:46 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Sat, 27 Apr 2019 13:56:47 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:56:48 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:56:49 GMT
ENV MONGO_MAJOR=4.1
# Fri, 10 May 2019 09:00:08 GMT
ENV MONGO_VERSION=4.1.11
# Fri, 10 May 2019 09:00:10 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 10 May 2019 09:01:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 10 May 2019 09:01:10 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 10 May 2019 09:01:10 GMT
VOLUME [/data/db /data/configdb]
# Fri, 10 May 2019 09:01:11 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Fri, 10 May 2019 09:01:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:01:13 GMT
EXPOSE 27017
# Fri, 10 May 2019 09:01:14 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:bf7c45c81bd70f13db7f1612a4596418f2c15b48384d2c1d5597b7534e60b3f3`  
		Last Modified: Sat, 27 Apr 2019 09:39:34 GMT  
		Size: 33.3 MB (33343401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5396f07cded369e173bde57fa17c337db371930ea1b2e925d3c04cb407794d5c`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ceb566582d63624b9d3a22ead5cbf0836b8c5bca41b4b7bb777c9c11923ede`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb3982847b2f6cb9353dc95b2dbd7092a92764a1946b9901adf59d886849542`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155ec62d2b44b7c48622d0f609bb4ed4543dfe367709364abf0b2e9499e23930`  
		Last Modified: Sat, 27 Apr 2019 14:01:57 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a395cce62fd6427cfb162512d0f1e49862dfa5ce639af91b12ddde137418c1`  
		Last Modified: Sat, 27 Apr 2019 14:01:58 GMT  
		Size: 2.4 MB (2445700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b59ce0c6c7c522c8c273a74f15924ec5525535b0c9a22eee5333a51f9310d75`  
		Last Modified: Sat, 27 Apr 2019 14:01:58 GMT  
		Size: 5.3 MB (5277949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d8392ab1055bc3e61eb40a018b9d99c1f0925620d9074946752c20c7e251a1`  
		Last Modified: Sat, 27 Apr 2019 14:01:56 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98859e0de9105890f7ab0ac67e850ab5de2d3f1098a62042c800bcfd443c4150`  
		Last Modified: Sat, 27 Apr 2019 14:01:54 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30732854e76b7db2138c1b1b539e6725f1dc5cbb6aa6fdebbec8825f08f0a001`  
		Last Modified: Fri, 10 May 2019 09:01:55 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1916eb3c4fd9b379a4b878bf8a0a3c0193f23198379f56d2099e5b87409965e0`  
		Last Modified: Fri, 10 May 2019 09:02:27 GMT  
		Size: 98.5 MB (98458766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:519d80e98c8df2696107d1b4af10c5078c65769b660620ad758c768b1087dca8`  
		Last Modified: Fri, 10 May 2019 09:01:56 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd284df76aab5166889bf05f2abe2b66ad72efc787b485fd40345932911dd06`  
		Last Modified: Fri, 10 May 2019 09:01:56 GMT  
		Size: 3.9 KB (3913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1.11` - linux; s390x

```console
$ docker pull mongo@sha256:7fc02f180f9c42ad8b911e02e2ec93808ac916249cdb312ef3154888cae9e177
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.0 MB (138007942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f10594a04420420dde01459c4bf6c2da55ae5b17344497a887c64502f39433`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 21:42:57 GMT
ADD file:099f81542cb8e3e3e4fc2556d8067214392b39f0958e3452312495c98ae25e76 in / 
# Wed, 15 May 2019 21:43:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:43:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:43:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:43:14 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:32:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 15 May 2019 22:32:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:32:56 GMT
ENV GOSU_VERSION=1.11
# Wed, 15 May 2019 22:32:57 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 15 May 2019 22:33:18 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 15 May 2019 22:33:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:33:20 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Wed, 15 May 2019 22:33:22 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:33:23 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 15 May 2019 22:33:23 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 22:33:23 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 22:33:24 GMT
ENV MONGO_MAJOR=4.1
# Wed, 15 May 2019 22:33:24 GMT
ENV MONGO_VERSION=4.1.11
# Wed, 15 May 2019 22:33:27 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 15 May 2019 22:34:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 15 May 2019 22:34:09 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 15 May 2019 22:34:09 GMT
VOLUME [/data/db /data/configdb]
# Wed, 15 May 2019 22:34:10 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 15 May 2019 22:34:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:34:11 GMT
EXPOSE 27017
# Wed, 15 May 2019 22:34:11 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a3ef07dd1fb74710cbd05c9bed2158fa7e005b766ac22ee052c37bc04215d25d`  
		Last Modified: Wed, 15 May 2019 21:46:43 GMT  
		Size: 27.5 MB (27532637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3f8f7d030578ebc1c4656ad55d61c81d712b0b43add1862837acf9d7365d67`  
		Last Modified: Wed, 15 May 2019 21:46:29 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4fa8d15db8edc923fd948fd13c76765471952cf1ac5df39c26f98250ab7944`  
		Last Modified: Wed, 15 May 2019 21:46:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5389f875a4e9d8a209a803440e2bc92aa7808f45367b050d7da2ffe34e8d3d8`  
		Last Modified: Wed, 15 May 2019 22:34:41 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78f9fb2db0b7a86a25e1ec0f0391300ad3f37a623dcb98a784a581287f8b7173`  
		Last Modified: Wed, 15 May 2019 22:34:43 GMT  
		Size: 2.5 MB (2461049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c3406decac38d30321c551aa17349b3335f7b48bfae4ad4f661160a17a10c7`  
		Last Modified: Wed, 15 May 2019 22:34:43 GMT  
		Size: 5.7 MB (5680803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c67004fc42876655b93fdd85255d6f18cb1094964124249a13f0a1372e5093`  
		Last Modified: Wed, 15 May 2019 22:34:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea75256322b9d6c89b4a4916fa8cb3478c116bf54623d038fbcb829428175031`  
		Last Modified: Wed, 15 May 2019 22:34:40 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e208ea70beddbda6cc70cf813f9c0e622a3775dfc665b0b056ffac4948421c`  
		Last Modified: Wed, 15 May 2019 22:34:34 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa83088e47deb859e8dc9df3d15fd2d5867518f0acd95bc06633f16241fde2d`  
		Last Modified: Wed, 15 May 2019 22:34:58 GMT  
		Size: 102.3 MB (102324725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbac88ccb2bec5f4c8dcb000b42b290d07c662b65a898899a61afc2b3021d77`  
		Last Modified: Wed, 15 May 2019 22:34:34 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe54e666a4dd89b83ad23363c04ca3de4792aef4d239210ae26436a89355aa8`  
		Last Modified: Wed, 15 May 2019 22:34:34 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1.11` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:8f84f6be14c721074dc31f0ec08c769ff9c33dc948121d0ea11152eb26f21c32
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5790127403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:767e9ecfdc1df685b6508c272c00da07bfb2dfa97042ed0665520df68b999285`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 15:26:42 GMT
ENV MONGO_VERSION=4.1.11
# Wed, 15 May 2019 15:26:44 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.11-signed.msi
# Wed, 15 May 2019 15:26:45 GMT
ENV MONGO_DOWNLOAD_SHA256=3fc1513963da414eb4f4329905670a68d6d5a6f9776553686f9747400ff91725
# Wed, 15 May 2019 15:36:00 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:36:03 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:36:05 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:36:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32cd825e6205fd1de6cbc8c8225543d46cf66be25f9e7c3a0b932b954d168fa6`  
		Last Modified: Wed, 15 May 2019 15:59:24 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c03e111541f905c6e01eb3a13367262b7bc3724fcee59e95f67db4e24d65aeb`  
		Last Modified: Wed, 15 May 2019 15:59:27 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0b77d1682be9af19ddc8b132da8e799ea89e36728c21a88b1e80491301e80f7`  
		Last Modified: Wed, 15 May 2019 15:59:21 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec266c6e84ca537db614f7ea79221202d30d176f2c772c78ab64f3ebb5a5abf`  
		Last Modified: Wed, 15 May 2019 15:59:40 GMT  
		Size: 88.0 MB (87998070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224f89597561e958f4731290bbb79dc1164d00274bbe5f5791a9602ec11cdbf4`  
		Last Modified: Wed, 15 May 2019 15:59:22 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3bf2995fa3ed310185ccc29cf8f794c212105c63cfdc4433424e6ce8b74962`  
		Last Modified: Wed, 15 May 2019 15:59:21 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0a7753dc0fc4aaa197d0586142a105b0f94c1cefc220a6d04410d4a4351079`  
		Last Modified: Wed, 15 May 2019 15:59:22 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1.11` - windows version 10.0.17134.765; amd64

```console
$ docker pull mongo@sha256:8036c3cb49002e2f21371ad1f902ade2556cc1054703e86df6564ed749851756
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2766537673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2235797b2c07de90a021f904764b132fe5a77757f9fc8bdc72d09c668d275b7e`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 15:08:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 15:36:14 GMT
ENV MONGO_VERSION=4.1.11
# Wed, 15 May 2019 15:36:15 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.11-signed.msi
# Wed, 15 May 2019 15:36:16 GMT
ENV MONGO_DOWNLOAD_SHA256=3fc1513963da414eb4f4329905670a68d6d5a6f9776553686f9747400ff91725
# Wed, 15 May 2019 15:54:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:54:19 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:54:21 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:54:23 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:95a9480f80fcfc98cb15d244b26f8a6e2fe3795fb66c21e63d7ae2d3dad6f3d2`  
		Last Modified: Wed, 15 May 2019 15:57:12 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58aaf3c2c1f9463208be48e9a56ceacf50eec65227b78518b2b8450f9d9cc2f8`  
		Last Modified: Wed, 15 May 2019 16:00:00 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc96e4ebbb17290ce5dcdf1933cea1d800cbf00b387d55423e145386a099e92c`  
		Last Modified: Wed, 15 May 2019 16:00:00 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3781df1be54b085f52ab0dc6f618c83b03de19847e4c2557d0998022ec2caca7`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147cdfd38e1ba6c2be4d7f2c8d22fefb61d3b0060340f1aa1d230380e6d0e710`  
		Last Modified: Wed, 15 May 2019 16:01:02 GMT  
		Size: 464.3 MB (464279116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537fad84925869b2f3ce233e50b4eef2cc4c821f88753b396222fc2bfdf3be52`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08aa80c17475b587cabd5d0db5bddab3b840adb77fb88a4733bb488bbffde2b`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6eaa8204c6437ab969d168e593232754e93067db705033efa4c5a833f3c4b9`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.1.11-bionic`

```console
$ docker pull mongo@sha256:18f09d425430535bb21628aa7af93d46f21062af486c538ce4a6acb34e6dd72e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; s390x

### `mongo:4.1.11-bionic` - linux; amd64

```console
$ docker pull mongo@sha256:9812619f537062b3eebe6d203190589e3cf0dc5e3e5034be24d4e88567fb75e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142351058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f95d6785a32e28a6682d9a89713e8cac423d2b1997869be57025a02e85c57e76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:11:46 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 15 May 2019 23:11:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:11:56 GMT
ENV GOSU_VERSION=1.11
# Wed, 15 May 2019 23:11:56 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 15 May 2019 23:12:20 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 15 May 2019 23:12:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:12:22 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Wed, 15 May 2019 23:12:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:12:24 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 15 May 2019 23:12:24 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:12:25 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:12:25 GMT
ENV MONGO_MAJOR=4.1
# Wed, 15 May 2019 23:12:25 GMT
ENV MONGO_VERSION=4.1.11
# Wed, 15 May 2019 23:12:27 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 15 May 2019 23:13:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 15 May 2019 23:13:09 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 15 May 2019 23:13:09 GMT
VOLUME [/data/db /data/configdb]
# Wed, 15 May 2019 23:13:09 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 15 May 2019 23:13:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:13:10 GMT
EXPOSE 27017
# Wed, 15 May 2019 23:13:10 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e441ad81a3e0c67c4ca12fc98dd8a6729aac90a9b5018061f7d8ff6ceed8b93`  
		Last Modified: Wed, 15 May 2019 23:15:31 GMT  
		Size: 1.9 KB (1870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51118a13f29c6332a50d8f4c191544ca57566c46dcbc94166a62044fd25cb76b`  
		Last Modified: Wed, 15 May 2019 23:15:32 GMT  
		Size: 2.7 MB (2733006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e96b28381e873078b41fee98b156762ec0559032de40fbe46f36d277f626ff`  
		Last Modified: Wed, 15 May 2019 23:15:34 GMT  
		Size: 5.8 MB (5759311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76c3476ff75959a75091a57ac7609564ebdc2d6a13446307f58db8493c8657e`  
		Last Modified: Wed, 15 May 2019 23:15:31 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7dc10844685978bc792dfb0062c4b610a6d59491144e4518f92889d1265bb75`  
		Last Modified: Wed, 15 May 2019 23:15:29 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b63fa0d37fb3d8cf75fabf999fbd1eec729cdf835f441b3a226cd2d04605c9`  
		Last Modified: Wed, 15 May 2019 23:15:30 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e22773025a935d8de793fd5d2cc076006ce7c18c07bef7caf2de16a1f33d23a4`  
		Last Modified: Wed, 15 May 2019 23:15:54 GMT  
		Size: 105.0 MB (104994956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4403f8a951baa555999d361a7e710d8685b176fbfa708baa85fcc733ac3ccc0e`  
		Last Modified: Wed, 15 May 2019 23:15:30 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f90f6553e90bd8823fb2b472bae9214e94613af137963592278f63e17569472`  
		Last Modified: Wed, 15 May 2019 23:15:30 GMT  
		Size: 3.9 KB (3916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1.11-bionic` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:6d929553bb73f58b1968aaaef9e5e4d35297c24c378ff2f96ff819b9a64f17eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.5 MB (139535080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93167576af25a6eea6a9959e4164924103ac82b7fedabe998c070dace88099cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 27 Apr 2019 09:35:52 GMT
ADD file:f046142405da23f452b26e01729a6fdc5a92b0fa85ec8456a1fee249160217bb in / 
# Sat, 27 Apr 2019 09:35:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:35:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:35:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:36:00 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 13:54:44 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 13:55:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 13:55:39 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 13:55:40 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 13:56:39 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 13:56:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 13:56:43 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Sat, 27 Apr 2019 13:56:46 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 13:56:46 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Sat, 27 Apr 2019 13:56:47 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:56:48 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:56:49 GMT
ENV MONGO_MAJOR=4.1
# Fri, 10 May 2019 09:00:08 GMT
ENV MONGO_VERSION=4.1.11
# Fri, 10 May 2019 09:00:10 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 10 May 2019 09:01:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 10 May 2019 09:01:10 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 10 May 2019 09:01:10 GMT
VOLUME [/data/db /data/configdb]
# Fri, 10 May 2019 09:01:11 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Fri, 10 May 2019 09:01:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:01:13 GMT
EXPOSE 27017
# Fri, 10 May 2019 09:01:14 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:bf7c45c81bd70f13db7f1612a4596418f2c15b48384d2c1d5597b7534e60b3f3`  
		Last Modified: Sat, 27 Apr 2019 09:39:34 GMT  
		Size: 33.3 MB (33343401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5396f07cded369e173bde57fa17c337db371930ea1b2e925d3c04cb407794d5c`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ceb566582d63624b9d3a22ead5cbf0836b8c5bca41b4b7bb777c9c11923ede`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb3982847b2f6cb9353dc95b2dbd7092a92764a1946b9901adf59d886849542`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155ec62d2b44b7c48622d0f609bb4ed4543dfe367709364abf0b2e9499e23930`  
		Last Modified: Sat, 27 Apr 2019 14:01:57 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a395cce62fd6427cfb162512d0f1e49862dfa5ce639af91b12ddde137418c1`  
		Last Modified: Sat, 27 Apr 2019 14:01:58 GMT  
		Size: 2.4 MB (2445700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b59ce0c6c7c522c8c273a74f15924ec5525535b0c9a22eee5333a51f9310d75`  
		Last Modified: Sat, 27 Apr 2019 14:01:58 GMT  
		Size: 5.3 MB (5277949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d8392ab1055bc3e61eb40a018b9d99c1f0925620d9074946752c20c7e251a1`  
		Last Modified: Sat, 27 Apr 2019 14:01:56 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98859e0de9105890f7ab0ac67e850ab5de2d3f1098a62042c800bcfd443c4150`  
		Last Modified: Sat, 27 Apr 2019 14:01:54 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30732854e76b7db2138c1b1b539e6725f1dc5cbb6aa6fdebbec8825f08f0a001`  
		Last Modified: Fri, 10 May 2019 09:01:55 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1916eb3c4fd9b379a4b878bf8a0a3c0193f23198379f56d2099e5b87409965e0`  
		Last Modified: Fri, 10 May 2019 09:02:27 GMT  
		Size: 98.5 MB (98458766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:519d80e98c8df2696107d1b4af10c5078c65769b660620ad758c768b1087dca8`  
		Last Modified: Fri, 10 May 2019 09:01:56 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd284df76aab5166889bf05f2abe2b66ad72efc787b485fd40345932911dd06`  
		Last Modified: Fri, 10 May 2019 09:01:56 GMT  
		Size: 3.9 KB (3913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1.11-bionic` - linux; s390x

```console
$ docker pull mongo@sha256:7fc02f180f9c42ad8b911e02e2ec93808ac916249cdb312ef3154888cae9e177
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.0 MB (138007942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f10594a04420420dde01459c4bf6c2da55ae5b17344497a887c64502f39433`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 21:42:57 GMT
ADD file:099f81542cb8e3e3e4fc2556d8067214392b39f0958e3452312495c98ae25e76 in / 
# Wed, 15 May 2019 21:43:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:43:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:43:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:43:14 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:32:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 15 May 2019 22:32:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:32:56 GMT
ENV GOSU_VERSION=1.11
# Wed, 15 May 2019 22:32:57 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 15 May 2019 22:33:18 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 15 May 2019 22:33:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:33:20 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Wed, 15 May 2019 22:33:22 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:33:23 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 15 May 2019 22:33:23 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 22:33:23 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 22:33:24 GMT
ENV MONGO_MAJOR=4.1
# Wed, 15 May 2019 22:33:24 GMT
ENV MONGO_VERSION=4.1.11
# Wed, 15 May 2019 22:33:27 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 15 May 2019 22:34:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 15 May 2019 22:34:09 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 15 May 2019 22:34:09 GMT
VOLUME [/data/db /data/configdb]
# Wed, 15 May 2019 22:34:10 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 15 May 2019 22:34:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:34:11 GMT
EXPOSE 27017
# Wed, 15 May 2019 22:34:11 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a3ef07dd1fb74710cbd05c9bed2158fa7e005b766ac22ee052c37bc04215d25d`  
		Last Modified: Wed, 15 May 2019 21:46:43 GMT  
		Size: 27.5 MB (27532637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3f8f7d030578ebc1c4656ad55d61c81d712b0b43add1862837acf9d7365d67`  
		Last Modified: Wed, 15 May 2019 21:46:29 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4fa8d15db8edc923fd948fd13c76765471952cf1ac5df39c26f98250ab7944`  
		Last Modified: Wed, 15 May 2019 21:46:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5389f875a4e9d8a209a803440e2bc92aa7808f45367b050d7da2ffe34e8d3d8`  
		Last Modified: Wed, 15 May 2019 22:34:41 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78f9fb2db0b7a86a25e1ec0f0391300ad3f37a623dcb98a784a581287f8b7173`  
		Last Modified: Wed, 15 May 2019 22:34:43 GMT  
		Size: 2.5 MB (2461049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c3406decac38d30321c551aa17349b3335f7b48bfae4ad4f661160a17a10c7`  
		Last Modified: Wed, 15 May 2019 22:34:43 GMT  
		Size: 5.7 MB (5680803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c67004fc42876655b93fdd85255d6f18cb1094964124249a13f0a1372e5093`  
		Last Modified: Wed, 15 May 2019 22:34:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea75256322b9d6c89b4a4916fa8cb3478c116bf54623d038fbcb829428175031`  
		Last Modified: Wed, 15 May 2019 22:34:40 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e208ea70beddbda6cc70cf813f9c0e622a3775dfc665b0b056ffac4948421c`  
		Last Modified: Wed, 15 May 2019 22:34:34 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa83088e47deb859e8dc9df3d15fd2d5867518f0acd95bc06633f16241fde2d`  
		Last Modified: Wed, 15 May 2019 22:34:58 GMT  
		Size: 102.3 MB (102324725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbac88ccb2bec5f4c8dcb000b42b290d07c662b65a898899a61afc2b3021d77`  
		Last Modified: Wed, 15 May 2019 22:34:34 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe54e666a4dd89b83ad23363c04ca3de4792aef4d239210ae26436a89355aa8`  
		Last Modified: Wed, 15 May 2019 22:34:34 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.1.11-windowsservercore`

```console
$ docker pull mongo@sha256:cdec296bad098d7b8c390701c44e60628af1efa4bfe5303537fe761327e82b57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64
	-	windows version 10.0.17134.765; amd64

### `mongo:4.1.11-windowsservercore` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:8f84f6be14c721074dc31f0ec08c769ff9c33dc948121d0ea11152eb26f21c32
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5790127403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:767e9ecfdc1df685b6508c272c00da07bfb2dfa97042ed0665520df68b999285`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 15:26:42 GMT
ENV MONGO_VERSION=4.1.11
# Wed, 15 May 2019 15:26:44 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.11-signed.msi
# Wed, 15 May 2019 15:26:45 GMT
ENV MONGO_DOWNLOAD_SHA256=3fc1513963da414eb4f4329905670a68d6d5a6f9776553686f9747400ff91725
# Wed, 15 May 2019 15:36:00 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:36:03 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:36:05 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:36:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32cd825e6205fd1de6cbc8c8225543d46cf66be25f9e7c3a0b932b954d168fa6`  
		Last Modified: Wed, 15 May 2019 15:59:24 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c03e111541f905c6e01eb3a13367262b7bc3724fcee59e95f67db4e24d65aeb`  
		Last Modified: Wed, 15 May 2019 15:59:27 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0b77d1682be9af19ddc8b132da8e799ea89e36728c21a88b1e80491301e80f7`  
		Last Modified: Wed, 15 May 2019 15:59:21 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec266c6e84ca537db614f7ea79221202d30d176f2c772c78ab64f3ebb5a5abf`  
		Last Modified: Wed, 15 May 2019 15:59:40 GMT  
		Size: 88.0 MB (87998070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224f89597561e958f4731290bbb79dc1164d00274bbe5f5791a9602ec11cdbf4`  
		Last Modified: Wed, 15 May 2019 15:59:22 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3bf2995fa3ed310185ccc29cf8f794c212105c63cfdc4433424e6ce8b74962`  
		Last Modified: Wed, 15 May 2019 15:59:21 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0a7753dc0fc4aaa197d0586142a105b0f94c1cefc220a6d04410d4a4351079`  
		Last Modified: Wed, 15 May 2019 15:59:22 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1.11-windowsservercore` - windows version 10.0.17134.765; amd64

```console
$ docker pull mongo@sha256:8036c3cb49002e2f21371ad1f902ade2556cc1054703e86df6564ed749851756
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2766537673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2235797b2c07de90a021f904764b132fe5a77757f9fc8bdc72d09c668d275b7e`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 15:08:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 15:36:14 GMT
ENV MONGO_VERSION=4.1.11
# Wed, 15 May 2019 15:36:15 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.11-signed.msi
# Wed, 15 May 2019 15:36:16 GMT
ENV MONGO_DOWNLOAD_SHA256=3fc1513963da414eb4f4329905670a68d6d5a6f9776553686f9747400ff91725
# Wed, 15 May 2019 15:54:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:54:19 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:54:21 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:54:23 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:95a9480f80fcfc98cb15d244b26f8a6e2fe3795fb66c21e63d7ae2d3dad6f3d2`  
		Last Modified: Wed, 15 May 2019 15:57:12 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58aaf3c2c1f9463208be48e9a56ceacf50eec65227b78518b2b8450f9d9cc2f8`  
		Last Modified: Wed, 15 May 2019 16:00:00 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc96e4ebbb17290ce5dcdf1933cea1d800cbf00b387d55423e145386a099e92c`  
		Last Modified: Wed, 15 May 2019 16:00:00 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3781df1be54b085f52ab0dc6f618c83b03de19847e4c2557d0998022ec2caca7`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147cdfd38e1ba6c2be4d7f2c8d22fefb61d3b0060340f1aa1d230380e6d0e710`  
		Last Modified: Wed, 15 May 2019 16:01:02 GMT  
		Size: 464.3 MB (464279116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537fad84925869b2f3ce233e50b4eef2cc4c821f88753b396222fc2bfdf3be52`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08aa80c17475b587cabd5d0db5bddab3b840adb77fb88a4733bb488bbffde2b`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6eaa8204c6437ab969d168e593232754e93067db705033efa4c5a833f3c4b9`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.1.11-windowsservercore-1803`

```console
$ docker pull mongo@sha256:2b47f806098546f567d03e0144187874eac9e01145e4b4b6ddaf2c68da92c12b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.765; amd64

### `mongo:4.1.11-windowsservercore-1803` - windows version 10.0.17134.765; amd64

```console
$ docker pull mongo@sha256:8036c3cb49002e2f21371ad1f902ade2556cc1054703e86df6564ed749851756
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2766537673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2235797b2c07de90a021f904764b132fe5a77757f9fc8bdc72d09c668d275b7e`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 15:08:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 15:36:14 GMT
ENV MONGO_VERSION=4.1.11
# Wed, 15 May 2019 15:36:15 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.11-signed.msi
# Wed, 15 May 2019 15:36:16 GMT
ENV MONGO_DOWNLOAD_SHA256=3fc1513963da414eb4f4329905670a68d6d5a6f9776553686f9747400ff91725
# Wed, 15 May 2019 15:54:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:54:19 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:54:21 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:54:23 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:95a9480f80fcfc98cb15d244b26f8a6e2fe3795fb66c21e63d7ae2d3dad6f3d2`  
		Last Modified: Wed, 15 May 2019 15:57:12 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58aaf3c2c1f9463208be48e9a56ceacf50eec65227b78518b2b8450f9d9cc2f8`  
		Last Modified: Wed, 15 May 2019 16:00:00 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc96e4ebbb17290ce5dcdf1933cea1d800cbf00b387d55423e145386a099e92c`  
		Last Modified: Wed, 15 May 2019 16:00:00 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3781df1be54b085f52ab0dc6f618c83b03de19847e4c2557d0998022ec2caca7`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147cdfd38e1ba6c2be4d7f2c8d22fefb61d3b0060340f1aa1d230380e6d0e710`  
		Last Modified: Wed, 15 May 2019 16:01:02 GMT  
		Size: 464.3 MB (464279116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537fad84925869b2f3ce233e50b4eef2cc4c821f88753b396222fc2bfdf3be52`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08aa80c17475b587cabd5d0db5bddab3b840adb77fb88a4733bb488bbffde2b`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6eaa8204c6437ab969d168e593232754e93067db705033efa4c5a833f3c4b9`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.1.11-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:5c538e2df1045c8c94730d0004d0d0976e290dfdfcb31d0c0a1f4b51144d6002
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64

### `mongo:4.1.11-windowsservercore-ltsc2016` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:8f84f6be14c721074dc31f0ec08c769ff9c33dc948121d0ea11152eb26f21c32
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5790127403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:767e9ecfdc1df685b6508c272c00da07bfb2dfa97042ed0665520df68b999285`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 15:26:42 GMT
ENV MONGO_VERSION=4.1.11
# Wed, 15 May 2019 15:26:44 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.11-signed.msi
# Wed, 15 May 2019 15:26:45 GMT
ENV MONGO_DOWNLOAD_SHA256=3fc1513963da414eb4f4329905670a68d6d5a6f9776553686f9747400ff91725
# Wed, 15 May 2019 15:36:00 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:36:03 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:36:05 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:36:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32cd825e6205fd1de6cbc8c8225543d46cf66be25f9e7c3a0b932b954d168fa6`  
		Last Modified: Wed, 15 May 2019 15:59:24 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c03e111541f905c6e01eb3a13367262b7bc3724fcee59e95f67db4e24d65aeb`  
		Last Modified: Wed, 15 May 2019 15:59:27 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0b77d1682be9af19ddc8b132da8e799ea89e36728c21a88b1e80491301e80f7`  
		Last Modified: Wed, 15 May 2019 15:59:21 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec266c6e84ca537db614f7ea79221202d30d176f2c772c78ab64f3ebb5a5abf`  
		Last Modified: Wed, 15 May 2019 15:59:40 GMT  
		Size: 88.0 MB (87998070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224f89597561e958f4731290bbb79dc1164d00274bbe5f5791a9602ec11cdbf4`  
		Last Modified: Wed, 15 May 2019 15:59:22 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3bf2995fa3ed310185ccc29cf8f794c212105c63cfdc4433424e6ce8b74962`  
		Last Modified: Wed, 15 May 2019 15:59:21 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0a7753dc0fc4aaa197d0586142a105b0f94c1cefc220a6d04410d4a4351079`  
		Last Modified: Wed, 15 May 2019 15:59:22 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.1-bionic`

```console
$ docker pull mongo@sha256:18f09d425430535bb21628aa7af93d46f21062af486c538ce4a6acb34e6dd72e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; s390x

### `mongo:4.1-bionic` - linux; amd64

```console
$ docker pull mongo@sha256:9812619f537062b3eebe6d203190589e3cf0dc5e3e5034be24d4e88567fb75e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142351058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f95d6785a32e28a6682d9a89713e8cac423d2b1997869be57025a02e85c57e76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:11:46 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 15 May 2019 23:11:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:11:56 GMT
ENV GOSU_VERSION=1.11
# Wed, 15 May 2019 23:11:56 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 15 May 2019 23:12:20 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 15 May 2019 23:12:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:12:22 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Wed, 15 May 2019 23:12:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:12:24 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 15 May 2019 23:12:24 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:12:25 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:12:25 GMT
ENV MONGO_MAJOR=4.1
# Wed, 15 May 2019 23:12:25 GMT
ENV MONGO_VERSION=4.1.11
# Wed, 15 May 2019 23:12:27 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 15 May 2019 23:13:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 15 May 2019 23:13:09 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 15 May 2019 23:13:09 GMT
VOLUME [/data/db /data/configdb]
# Wed, 15 May 2019 23:13:09 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 15 May 2019 23:13:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:13:10 GMT
EXPOSE 27017
# Wed, 15 May 2019 23:13:10 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e441ad81a3e0c67c4ca12fc98dd8a6729aac90a9b5018061f7d8ff6ceed8b93`  
		Last Modified: Wed, 15 May 2019 23:15:31 GMT  
		Size: 1.9 KB (1870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51118a13f29c6332a50d8f4c191544ca57566c46dcbc94166a62044fd25cb76b`  
		Last Modified: Wed, 15 May 2019 23:15:32 GMT  
		Size: 2.7 MB (2733006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e96b28381e873078b41fee98b156762ec0559032de40fbe46f36d277f626ff`  
		Last Modified: Wed, 15 May 2019 23:15:34 GMT  
		Size: 5.8 MB (5759311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76c3476ff75959a75091a57ac7609564ebdc2d6a13446307f58db8493c8657e`  
		Last Modified: Wed, 15 May 2019 23:15:31 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7dc10844685978bc792dfb0062c4b610a6d59491144e4518f92889d1265bb75`  
		Last Modified: Wed, 15 May 2019 23:15:29 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b63fa0d37fb3d8cf75fabf999fbd1eec729cdf835f441b3a226cd2d04605c9`  
		Last Modified: Wed, 15 May 2019 23:15:30 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e22773025a935d8de793fd5d2cc076006ce7c18c07bef7caf2de16a1f33d23a4`  
		Last Modified: Wed, 15 May 2019 23:15:54 GMT  
		Size: 105.0 MB (104994956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4403f8a951baa555999d361a7e710d8685b176fbfa708baa85fcc733ac3ccc0e`  
		Last Modified: Wed, 15 May 2019 23:15:30 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f90f6553e90bd8823fb2b472bae9214e94613af137963592278f63e17569472`  
		Last Modified: Wed, 15 May 2019 23:15:30 GMT  
		Size: 3.9 KB (3916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1-bionic` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:6d929553bb73f58b1968aaaef9e5e4d35297c24c378ff2f96ff819b9a64f17eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.5 MB (139535080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93167576af25a6eea6a9959e4164924103ac82b7fedabe998c070dace88099cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 27 Apr 2019 09:35:52 GMT
ADD file:f046142405da23f452b26e01729a6fdc5a92b0fa85ec8456a1fee249160217bb in / 
# Sat, 27 Apr 2019 09:35:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:35:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:35:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:36:00 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 13:54:44 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 13:55:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 13:55:39 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 13:55:40 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 13:56:39 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 13:56:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 13:56:43 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Sat, 27 Apr 2019 13:56:46 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 13:56:46 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Sat, 27 Apr 2019 13:56:47 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:56:48 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:56:49 GMT
ENV MONGO_MAJOR=4.1
# Fri, 10 May 2019 09:00:08 GMT
ENV MONGO_VERSION=4.1.11
# Fri, 10 May 2019 09:00:10 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 10 May 2019 09:01:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 10 May 2019 09:01:10 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 10 May 2019 09:01:10 GMT
VOLUME [/data/db /data/configdb]
# Fri, 10 May 2019 09:01:11 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Fri, 10 May 2019 09:01:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:01:13 GMT
EXPOSE 27017
# Fri, 10 May 2019 09:01:14 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:bf7c45c81bd70f13db7f1612a4596418f2c15b48384d2c1d5597b7534e60b3f3`  
		Last Modified: Sat, 27 Apr 2019 09:39:34 GMT  
		Size: 33.3 MB (33343401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5396f07cded369e173bde57fa17c337db371930ea1b2e925d3c04cb407794d5c`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ceb566582d63624b9d3a22ead5cbf0836b8c5bca41b4b7bb777c9c11923ede`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb3982847b2f6cb9353dc95b2dbd7092a92764a1946b9901adf59d886849542`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155ec62d2b44b7c48622d0f609bb4ed4543dfe367709364abf0b2e9499e23930`  
		Last Modified: Sat, 27 Apr 2019 14:01:57 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a395cce62fd6427cfb162512d0f1e49862dfa5ce639af91b12ddde137418c1`  
		Last Modified: Sat, 27 Apr 2019 14:01:58 GMT  
		Size: 2.4 MB (2445700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b59ce0c6c7c522c8c273a74f15924ec5525535b0c9a22eee5333a51f9310d75`  
		Last Modified: Sat, 27 Apr 2019 14:01:58 GMT  
		Size: 5.3 MB (5277949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d8392ab1055bc3e61eb40a018b9d99c1f0925620d9074946752c20c7e251a1`  
		Last Modified: Sat, 27 Apr 2019 14:01:56 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98859e0de9105890f7ab0ac67e850ab5de2d3f1098a62042c800bcfd443c4150`  
		Last Modified: Sat, 27 Apr 2019 14:01:54 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30732854e76b7db2138c1b1b539e6725f1dc5cbb6aa6fdebbec8825f08f0a001`  
		Last Modified: Fri, 10 May 2019 09:01:55 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1916eb3c4fd9b379a4b878bf8a0a3c0193f23198379f56d2099e5b87409965e0`  
		Last Modified: Fri, 10 May 2019 09:02:27 GMT  
		Size: 98.5 MB (98458766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:519d80e98c8df2696107d1b4af10c5078c65769b660620ad758c768b1087dca8`  
		Last Modified: Fri, 10 May 2019 09:01:56 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd284df76aab5166889bf05f2abe2b66ad72efc787b485fd40345932911dd06`  
		Last Modified: Fri, 10 May 2019 09:01:56 GMT  
		Size: 3.9 KB (3913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1-bionic` - linux; s390x

```console
$ docker pull mongo@sha256:7fc02f180f9c42ad8b911e02e2ec93808ac916249cdb312ef3154888cae9e177
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.0 MB (138007942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f10594a04420420dde01459c4bf6c2da55ae5b17344497a887c64502f39433`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 21:42:57 GMT
ADD file:099f81542cb8e3e3e4fc2556d8067214392b39f0958e3452312495c98ae25e76 in / 
# Wed, 15 May 2019 21:43:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:43:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:43:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:43:14 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:32:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 15 May 2019 22:32:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:32:56 GMT
ENV GOSU_VERSION=1.11
# Wed, 15 May 2019 22:32:57 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 15 May 2019 22:33:18 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 15 May 2019 22:33:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:33:20 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Wed, 15 May 2019 22:33:22 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:33:23 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 15 May 2019 22:33:23 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 22:33:23 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 22:33:24 GMT
ENV MONGO_MAJOR=4.1
# Wed, 15 May 2019 22:33:24 GMT
ENV MONGO_VERSION=4.1.11
# Wed, 15 May 2019 22:33:27 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 15 May 2019 22:34:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 15 May 2019 22:34:09 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 15 May 2019 22:34:09 GMT
VOLUME [/data/db /data/configdb]
# Wed, 15 May 2019 22:34:10 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 15 May 2019 22:34:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:34:11 GMT
EXPOSE 27017
# Wed, 15 May 2019 22:34:11 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a3ef07dd1fb74710cbd05c9bed2158fa7e005b766ac22ee052c37bc04215d25d`  
		Last Modified: Wed, 15 May 2019 21:46:43 GMT  
		Size: 27.5 MB (27532637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3f8f7d030578ebc1c4656ad55d61c81d712b0b43add1862837acf9d7365d67`  
		Last Modified: Wed, 15 May 2019 21:46:29 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4fa8d15db8edc923fd948fd13c76765471952cf1ac5df39c26f98250ab7944`  
		Last Modified: Wed, 15 May 2019 21:46:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5389f875a4e9d8a209a803440e2bc92aa7808f45367b050d7da2ffe34e8d3d8`  
		Last Modified: Wed, 15 May 2019 22:34:41 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78f9fb2db0b7a86a25e1ec0f0391300ad3f37a623dcb98a784a581287f8b7173`  
		Last Modified: Wed, 15 May 2019 22:34:43 GMT  
		Size: 2.5 MB (2461049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c3406decac38d30321c551aa17349b3335f7b48bfae4ad4f661160a17a10c7`  
		Last Modified: Wed, 15 May 2019 22:34:43 GMT  
		Size: 5.7 MB (5680803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c67004fc42876655b93fdd85255d6f18cb1094964124249a13f0a1372e5093`  
		Last Modified: Wed, 15 May 2019 22:34:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea75256322b9d6c89b4a4916fa8cb3478c116bf54623d038fbcb829428175031`  
		Last Modified: Wed, 15 May 2019 22:34:40 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e208ea70beddbda6cc70cf813f9c0e622a3775dfc665b0b056ffac4948421c`  
		Last Modified: Wed, 15 May 2019 22:34:34 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa83088e47deb859e8dc9df3d15fd2d5867518f0acd95bc06633f16241fde2d`  
		Last Modified: Wed, 15 May 2019 22:34:58 GMT  
		Size: 102.3 MB (102324725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbac88ccb2bec5f4c8dcb000b42b290d07c662b65a898899a61afc2b3021d77`  
		Last Modified: Wed, 15 May 2019 22:34:34 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe54e666a4dd89b83ad23363c04ca3de4792aef4d239210ae26436a89355aa8`  
		Last Modified: Wed, 15 May 2019 22:34:34 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.1-windowsservercore`

```console
$ docker pull mongo@sha256:cdec296bad098d7b8c390701c44e60628af1efa4bfe5303537fe761327e82b57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64
	-	windows version 10.0.17134.765; amd64

### `mongo:4.1-windowsservercore` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:8f84f6be14c721074dc31f0ec08c769ff9c33dc948121d0ea11152eb26f21c32
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5790127403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:767e9ecfdc1df685b6508c272c00da07bfb2dfa97042ed0665520df68b999285`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 15:26:42 GMT
ENV MONGO_VERSION=4.1.11
# Wed, 15 May 2019 15:26:44 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.11-signed.msi
# Wed, 15 May 2019 15:26:45 GMT
ENV MONGO_DOWNLOAD_SHA256=3fc1513963da414eb4f4329905670a68d6d5a6f9776553686f9747400ff91725
# Wed, 15 May 2019 15:36:00 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:36:03 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:36:05 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:36:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32cd825e6205fd1de6cbc8c8225543d46cf66be25f9e7c3a0b932b954d168fa6`  
		Last Modified: Wed, 15 May 2019 15:59:24 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c03e111541f905c6e01eb3a13367262b7bc3724fcee59e95f67db4e24d65aeb`  
		Last Modified: Wed, 15 May 2019 15:59:27 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0b77d1682be9af19ddc8b132da8e799ea89e36728c21a88b1e80491301e80f7`  
		Last Modified: Wed, 15 May 2019 15:59:21 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec266c6e84ca537db614f7ea79221202d30d176f2c772c78ab64f3ebb5a5abf`  
		Last Modified: Wed, 15 May 2019 15:59:40 GMT  
		Size: 88.0 MB (87998070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224f89597561e958f4731290bbb79dc1164d00274bbe5f5791a9602ec11cdbf4`  
		Last Modified: Wed, 15 May 2019 15:59:22 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3bf2995fa3ed310185ccc29cf8f794c212105c63cfdc4433424e6ce8b74962`  
		Last Modified: Wed, 15 May 2019 15:59:21 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0a7753dc0fc4aaa197d0586142a105b0f94c1cefc220a6d04410d4a4351079`  
		Last Modified: Wed, 15 May 2019 15:59:22 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1-windowsservercore` - windows version 10.0.17134.765; amd64

```console
$ docker pull mongo@sha256:8036c3cb49002e2f21371ad1f902ade2556cc1054703e86df6564ed749851756
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2766537673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2235797b2c07de90a021f904764b132fe5a77757f9fc8bdc72d09c668d275b7e`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 15:08:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 15:36:14 GMT
ENV MONGO_VERSION=4.1.11
# Wed, 15 May 2019 15:36:15 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.11-signed.msi
# Wed, 15 May 2019 15:36:16 GMT
ENV MONGO_DOWNLOAD_SHA256=3fc1513963da414eb4f4329905670a68d6d5a6f9776553686f9747400ff91725
# Wed, 15 May 2019 15:54:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:54:19 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:54:21 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:54:23 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:95a9480f80fcfc98cb15d244b26f8a6e2fe3795fb66c21e63d7ae2d3dad6f3d2`  
		Last Modified: Wed, 15 May 2019 15:57:12 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58aaf3c2c1f9463208be48e9a56ceacf50eec65227b78518b2b8450f9d9cc2f8`  
		Last Modified: Wed, 15 May 2019 16:00:00 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc96e4ebbb17290ce5dcdf1933cea1d800cbf00b387d55423e145386a099e92c`  
		Last Modified: Wed, 15 May 2019 16:00:00 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3781df1be54b085f52ab0dc6f618c83b03de19847e4c2557d0998022ec2caca7`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147cdfd38e1ba6c2be4d7f2c8d22fefb61d3b0060340f1aa1d230380e6d0e710`  
		Last Modified: Wed, 15 May 2019 16:01:02 GMT  
		Size: 464.3 MB (464279116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537fad84925869b2f3ce233e50b4eef2cc4c821f88753b396222fc2bfdf3be52`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08aa80c17475b587cabd5d0db5bddab3b840adb77fb88a4733bb488bbffde2b`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6eaa8204c6437ab969d168e593232754e93067db705033efa4c5a833f3c4b9`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.1-windowsservercore-1803`

```console
$ docker pull mongo@sha256:2b47f806098546f567d03e0144187874eac9e01145e4b4b6ddaf2c68da92c12b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.765; amd64

### `mongo:4.1-windowsservercore-1803` - windows version 10.0.17134.765; amd64

```console
$ docker pull mongo@sha256:8036c3cb49002e2f21371ad1f902ade2556cc1054703e86df6564ed749851756
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2766537673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2235797b2c07de90a021f904764b132fe5a77757f9fc8bdc72d09c668d275b7e`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 15:08:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 15:36:14 GMT
ENV MONGO_VERSION=4.1.11
# Wed, 15 May 2019 15:36:15 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.11-signed.msi
# Wed, 15 May 2019 15:36:16 GMT
ENV MONGO_DOWNLOAD_SHA256=3fc1513963da414eb4f4329905670a68d6d5a6f9776553686f9747400ff91725
# Wed, 15 May 2019 15:54:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:54:19 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:54:21 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:54:23 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:95a9480f80fcfc98cb15d244b26f8a6e2fe3795fb66c21e63d7ae2d3dad6f3d2`  
		Last Modified: Wed, 15 May 2019 15:57:12 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58aaf3c2c1f9463208be48e9a56ceacf50eec65227b78518b2b8450f9d9cc2f8`  
		Last Modified: Wed, 15 May 2019 16:00:00 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc96e4ebbb17290ce5dcdf1933cea1d800cbf00b387d55423e145386a099e92c`  
		Last Modified: Wed, 15 May 2019 16:00:00 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3781df1be54b085f52ab0dc6f618c83b03de19847e4c2557d0998022ec2caca7`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147cdfd38e1ba6c2be4d7f2c8d22fefb61d3b0060340f1aa1d230380e6d0e710`  
		Last Modified: Wed, 15 May 2019 16:01:02 GMT  
		Size: 464.3 MB (464279116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537fad84925869b2f3ce233e50b4eef2cc4c821f88753b396222fc2bfdf3be52`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08aa80c17475b587cabd5d0db5bddab3b840adb77fb88a4733bb488bbffde2b`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6eaa8204c6437ab969d168e593232754e93067db705033efa4c5a833f3c4b9`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.1-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:5c538e2df1045c8c94730d0004d0d0976e290dfdfcb31d0c0a1f4b51144d6002
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64

### `mongo:4.1-windowsservercore-ltsc2016` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:8f84f6be14c721074dc31f0ec08c769ff9c33dc948121d0ea11152eb26f21c32
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5790127403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:767e9ecfdc1df685b6508c272c00da07bfb2dfa97042ed0665520df68b999285`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 15:26:42 GMT
ENV MONGO_VERSION=4.1.11
# Wed, 15 May 2019 15:26:44 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.11-signed.msi
# Wed, 15 May 2019 15:26:45 GMT
ENV MONGO_DOWNLOAD_SHA256=3fc1513963da414eb4f4329905670a68d6d5a6f9776553686f9747400ff91725
# Wed, 15 May 2019 15:36:00 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:36:03 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:36:05 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:36:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32cd825e6205fd1de6cbc8c8225543d46cf66be25f9e7c3a0b932b954d168fa6`  
		Last Modified: Wed, 15 May 2019 15:59:24 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c03e111541f905c6e01eb3a13367262b7bc3724fcee59e95f67db4e24d65aeb`  
		Last Modified: Wed, 15 May 2019 15:59:27 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0b77d1682be9af19ddc8b132da8e799ea89e36728c21a88b1e80491301e80f7`  
		Last Modified: Wed, 15 May 2019 15:59:21 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec266c6e84ca537db614f7ea79221202d30d176f2c772c78ab64f3ebb5a5abf`  
		Last Modified: Wed, 15 May 2019 15:59:40 GMT  
		Size: 88.0 MB (87998070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224f89597561e958f4731290bbb79dc1164d00274bbe5f5791a9602ec11cdbf4`  
		Last Modified: Wed, 15 May 2019 15:59:22 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3bf2995fa3ed310185ccc29cf8f794c212105c63cfdc4433424e6ce8b74962`  
		Last Modified: Wed, 15 May 2019 15:59:21 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0a7753dc0fc4aaa197d0586142a105b0f94c1cefc220a6d04410d4a4351079`  
		Last Modified: Wed, 15 May 2019 15:59:22 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4-windowsservercore`

```console
$ docker pull mongo@sha256:8a103f906befbe44fa61a41d60ff947c5bf912962ad5a62253804dff07c52908
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64
	-	windows version 10.0.17134.765; amd64

### `mongo:4-windowsservercore` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:d34f0a7a7d98e5d8607e2d692da63104e2d885a1d0b02a5f11a494030ca4b7e2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5788499816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:367c7724a14a63cd150dd569e092561108496b2691119472d57d67c004614eac`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 14:57:52 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 14:57:53 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Wed, 15 May 2019 14:57:54 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Wed, 15 May 2019 15:08:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:08:21 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:08:23 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:08:24 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b69d2f55150edb540465d6bbd86d60c9e71c0ff946d638bdc1eb514235ed29c`  
		Last Modified: Wed, 15 May 2019 15:56:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b915b8d27dac2a237a2f29f8e117db4ce02546f4cdd65b27e42cd58284e0cb`  
		Last Modified: Wed, 15 May 2019 15:56:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394e2c61d92e53ed3186fb1519066d975864618bc7ebf1bab69ad1c53ab22b8`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06801021b126d52cb42fcdd9627a1df197c6f6df85d5815aa2af66f2c08aeaa5`  
		Last Modified: Wed, 15 May 2019 15:56:44 GMT  
		Size: 86.4 MB (86370500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8390f3fcbb2de1e1670ddc182477f8ac42bc84f4c6be9a0d57c96dfd5b8e72`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf5ba7a1320ba64926f94fcf976ca1d65bfa4caaa3c3f34fbc1021284a57d7e`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6222e753f22635881597fdfff92fb44515e02f2d9834a9f1eab6760a6955aed`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4-windowsservercore` - windows version 10.0.17134.765; amd64

```console
$ docker pull mongo@sha256:e13e3438b31085fa3c94d2142d3b09fd00fad305eb43171487ac80bcaf00eb4b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2764910409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490ae85b1f931a048aae063559244203f4fd42d4aaefb8613dc6f18e9ec55252`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 15:08:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 15:08:39 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 15:08:41 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Wed, 15 May 2019 15:08:42 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Wed, 15 May 2019 15:26:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:26:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:26:29 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:26:31 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:95a9480f80fcfc98cb15d244b26f8a6e2fe3795fb66c21e63d7ae2d3dad6f3d2`  
		Last Modified: Wed, 15 May 2019 15:57:12 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b787768375c69ddea0877e94bf23c61929d339fb043d748d697e33fa8c21244a`  
		Last Modified: Wed, 15 May 2019 15:57:11 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68e295cdadfcd55e9a772b892be9d224fcdb90ce3f89951f28bfe6a2dfdbdea`  
		Last Modified: Wed, 15 May 2019 15:57:11 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7296b2ff3ce5cc2dd14618da25d0c85121e5d9df66af56087f2a93f83e1ff50`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ddcbb12286eba2fbf52e90ec927e694198f67af266e80ce6ea7bd0f2dcbc4c`  
		Last Modified: Wed, 15 May 2019 15:58:57 GMT  
		Size: 462.7 MB (462651863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470d7011c30ef091be60d7c20ff07583691f9136c6706fb2cb7a8f4746a1c086`  
		Last Modified: Wed, 15 May 2019 15:57:10 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03112fb652996b1cdd19f20312063f7688bd1c4a37e606600e121ee1dcc6928d`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b86c32c71f5976cff386de09ae210b039089b4b937950699d92bb8557e25ba`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4-windowsservercore-1803`

```console
$ docker pull mongo@sha256:055191412bf0a3fc67881a5fd3441831b8704df04421b2d1ef1f2262e2aa23e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.765; amd64

### `mongo:4-windowsservercore-1803` - windows version 10.0.17134.765; amd64

```console
$ docker pull mongo@sha256:e13e3438b31085fa3c94d2142d3b09fd00fad305eb43171487ac80bcaf00eb4b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2764910409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490ae85b1f931a048aae063559244203f4fd42d4aaefb8613dc6f18e9ec55252`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 15:08:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 15:08:39 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 15:08:41 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Wed, 15 May 2019 15:08:42 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Wed, 15 May 2019 15:26:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:26:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:26:29 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:26:31 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:95a9480f80fcfc98cb15d244b26f8a6e2fe3795fb66c21e63d7ae2d3dad6f3d2`  
		Last Modified: Wed, 15 May 2019 15:57:12 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b787768375c69ddea0877e94bf23c61929d339fb043d748d697e33fa8c21244a`  
		Last Modified: Wed, 15 May 2019 15:57:11 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68e295cdadfcd55e9a772b892be9d224fcdb90ce3f89951f28bfe6a2dfdbdea`  
		Last Modified: Wed, 15 May 2019 15:57:11 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7296b2ff3ce5cc2dd14618da25d0c85121e5d9df66af56087f2a93f83e1ff50`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ddcbb12286eba2fbf52e90ec927e694198f67af266e80ce6ea7bd0f2dcbc4c`  
		Last Modified: Wed, 15 May 2019 15:58:57 GMT  
		Size: 462.7 MB (462651863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470d7011c30ef091be60d7c20ff07583691f9136c6706fb2cb7a8f4746a1c086`  
		Last Modified: Wed, 15 May 2019 15:57:10 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03112fb652996b1cdd19f20312063f7688bd1c4a37e606600e121ee1dcc6928d`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b86c32c71f5976cff386de09ae210b039089b4b937950699d92bb8557e25ba`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:3133a20bcd817bc1c64e3ddd2afe045c9c00545ceaed96a661d87caa766e92a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64

### `mongo:4-windowsservercore-ltsc2016` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:d34f0a7a7d98e5d8607e2d692da63104e2d885a1d0b02a5f11a494030ca4b7e2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5788499816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:367c7724a14a63cd150dd569e092561108496b2691119472d57d67c004614eac`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 14:57:52 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 14:57:53 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Wed, 15 May 2019 14:57:54 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Wed, 15 May 2019 15:08:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:08:21 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:08:23 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:08:24 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b69d2f55150edb540465d6bbd86d60c9e71c0ff946d638bdc1eb514235ed29c`  
		Last Modified: Wed, 15 May 2019 15:56:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b915b8d27dac2a237a2f29f8e117db4ce02546f4cdd65b27e42cd58284e0cb`  
		Last Modified: Wed, 15 May 2019 15:56:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394e2c61d92e53ed3186fb1519066d975864618bc7ebf1bab69ad1c53ab22b8`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06801021b126d52cb42fcdd9627a1df197c6f6df85d5815aa2af66f2c08aeaa5`  
		Last Modified: Wed, 15 May 2019 15:56:44 GMT  
		Size: 86.4 MB (86370500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8390f3fcbb2de1e1670ddc182477f8ac42bc84f4c6be9a0d57c96dfd5b8e72`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf5ba7a1320ba64926f94fcf976ca1d65bfa4caaa3c3f34fbc1021284a57d7e`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6222e753f22635881597fdfff92fb44515e02f2d9834a9f1eab6760a6955aed`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4-xenial`

```console
$ docker pull mongo@sha256:326e702174aef7a714a5fccb034d901ba1bd1b2cf7da841494fba4aaa5744c69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:4-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:29d7ca01f9b7e3812a831ff143620e93ddf5e34bb9ac672d91140e064158a0fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152598189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5976dac61f4fb85c1a2d1f7c717600f9c78fb02badba6b3c5961a4091ef75905`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:09:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 15 May 2019 23:10:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:10:01 GMT
ENV GOSU_VERSION=1.11
# Wed, 15 May 2019 23:10:01 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 15 May 2019 23:10:09 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 15 May 2019 23:10:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:11:07 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 15 May 2019 23:11:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:11:09 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 15 May 2019 23:11:09 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:11:09 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:11:09 GMT
ENV MONGO_MAJOR=4.0
# Wed, 15 May 2019 23:11:09 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 23:11:10 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 15 May 2019 23:11:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 15 May 2019 23:11:36 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 15 May 2019 23:11:36 GMT
VOLUME [/data/db /data/configdb]
# Wed, 15 May 2019 23:11:37 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 15 May 2019 23:11:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:11:37 GMT
EXPOSE 27017
# Wed, 15 May 2019 23:11:37 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815c6aedc001b0c406021809f6ddda02eafc2db0af37d82e719a469ff691a5bb`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.0 KB (1984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8566b2594855b4802bf2ec5a3cef61efe1d3ed97cfa6a747f397b7bb08db3c5b`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.9 MB (2945616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c9fe451980007df2a3585e68580ed005adb0a8f2bb3e85af75afa8034e5d75`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 1.2 MB (1151233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9e7bc12ceae7b610677a07d228667d9ec99d24069d391d3bda4a29370ef083`  
		Last Modified: Wed, 15 May 2019 23:13:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c64dd2c4159abf20a4d878f39293b51391362fca6a8bcea6286bdaf6a5093fd1`  
		Last Modified: Wed, 15 May 2019 23:14:56 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9522757e8357dfad7a81901a371423c7d8e72982c12a200357efa0ca880279`  
		Last Modified: Wed, 15 May 2019 23:14:55 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cedccbc13a9b7f2593410757e1ff88bcc02dd9a3f31877e7f0584ae2a910a47`  
		Last Modified: Wed, 15 May 2019 23:15:23 GMT  
		Size: 104.7 MB (104723991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29aec2f2353d79a5eb4974d36f71fe03363dac234fe5593398fae924016c4954`  
		Last Modified: Wed, 15 May 2019 23:14:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08bcfe00e50692cfa1e8f869f14935c91fc70f5203c9fc7b0c08d59ae98e6211`  
		Last Modified: Wed, 15 May 2019 23:14:56 GMT  
		Size: 3.9 KB (3916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:322dab4a29447559cf67ae09a9f3f814489775be2a6defeb335539b195439a42
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.5 MB (142495552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5d0c0b0a97ace5105d47e3d4183cc71ccff118c9291ac8be5df562145940b67`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 13:48:50 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 13:49:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 13:49:18 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 13:49:19 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 13:49:41 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 13:49:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 13:52:50 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Sat, 27 Apr 2019 13:52:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 13:52:55 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 13:52:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:52:57 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:52:59 GMT
ENV MONGO_MAJOR=4.0
# Sat, 27 Apr 2019 13:53:00 GMT
ENV MONGO_VERSION=4.0.9
# Sat, 27 Apr 2019 13:53:02 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 13:54:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 13:54:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 13:54:16 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 09:00:29 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 09:00:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 09:00:31 GMT
EXPOSE 27017
# Tue, 07 May 2019 09:00:31 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f37d3b53bef1b38dcc459500630e3628dc2fc703b6027312c9c568de987ce1`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7b04826ecc05bc765e84011434c0505158b030c3503af0e900fcade2b666df`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.5 MB (2474268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe49430b9cce2eab30c50b2c8b16f45d8a81e199001659ae71780af25c3c762`  
		Last Modified: Sat, 27 Apr 2019 13:59:03 GMT  
		Size: 1.1 MB (1085761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0184914fa9f59778cc2d122033fb6f9f30776f21b59ef52a15dab0711cff256d`  
		Last Modified: Sat, 27 Apr 2019 13:59:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a0d07757014768afb66a6bb6a523c6e2816de092be025cfb8dc7470ca25882`  
		Last Modified: Sat, 27 Apr 2019 14:01:06 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bfbee9cb4436a9d761359ea0f0d5989c1256d1fea05f80d85ed4366cda20269`  
		Last Modified: Sat, 27 Apr 2019 14:01:06 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:710b0ee3b1fc456d9d6bc056f1a3fb6df538fdc9c6a241223d0d7d03f0204ffa`  
		Last Modified: Sat, 27 Apr 2019 14:01:40 GMT  
		Size: 99.2 MB (99196811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946c9b461b2a48823966a76a06fc7ab4fd4fde9841d03c5890a6897beb2a1077`  
		Last Modified: Sat, 27 Apr 2019 14:01:06 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33063097112053b82f9e9cd8e6398fd4f40d69d5ea742622d89e3b8bef22ba2`  
		Last Modified: Tue, 07 May 2019 09:01:29 GMT  
		Size: 3.9 KB (3915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:6b8cefbef0e6c4f3d35ffbf546e77e18c9737b393de6f96dbf75e6ba0185d876
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2969; amd64
	-	windows version 10.0.17134.765; amd64

### `mongo:latest` - linux; amd64

```console
$ docker pull mongo@sha256:29d7ca01f9b7e3812a831ff143620e93ddf5e34bb9ac672d91140e064158a0fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152598189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5976dac61f4fb85c1a2d1f7c717600f9c78fb02badba6b3c5961a4091ef75905`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:09:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 15 May 2019 23:10:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:10:01 GMT
ENV GOSU_VERSION=1.11
# Wed, 15 May 2019 23:10:01 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 15 May 2019 23:10:09 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 15 May 2019 23:10:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:11:07 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 15 May 2019 23:11:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:11:09 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 15 May 2019 23:11:09 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:11:09 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:11:09 GMT
ENV MONGO_MAJOR=4.0
# Wed, 15 May 2019 23:11:09 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 23:11:10 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 15 May 2019 23:11:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 15 May 2019 23:11:36 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 15 May 2019 23:11:36 GMT
VOLUME [/data/db /data/configdb]
# Wed, 15 May 2019 23:11:37 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 15 May 2019 23:11:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:11:37 GMT
EXPOSE 27017
# Wed, 15 May 2019 23:11:37 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815c6aedc001b0c406021809f6ddda02eafc2db0af37d82e719a469ff691a5bb`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.0 KB (1984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8566b2594855b4802bf2ec5a3cef61efe1d3ed97cfa6a747f397b7bb08db3c5b`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.9 MB (2945616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c9fe451980007df2a3585e68580ed005adb0a8f2bb3e85af75afa8034e5d75`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 1.2 MB (1151233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9e7bc12ceae7b610677a07d228667d9ec99d24069d391d3bda4a29370ef083`  
		Last Modified: Wed, 15 May 2019 23:13:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c64dd2c4159abf20a4d878f39293b51391362fca6a8bcea6286bdaf6a5093fd1`  
		Last Modified: Wed, 15 May 2019 23:14:56 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9522757e8357dfad7a81901a371423c7d8e72982c12a200357efa0ca880279`  
		Last Modified: Wed, 15 May 2019 23:14:55 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cedccbc13a9b7f2593410757e1ff88bcc02dd9a3f31877e7f0584ae2a910a47`  
		Last Modified: Wed, 15 May 2019 23:15:23 GMT  
		Size: 104.7 MB (104723991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29aec2f2353d79a5eb4974d36f71fe03363dac234fe5593398fae924016c4954`  
		Last Modified: Wed, 15 May 2019 23:14:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08bcfe00e50692cfa1e8f869f14935c91fc70f5203c9fc7b0c08d59ae98e6211`  
		Last Modified: Wed, 15 May 2019 23:14:56 GMT  
		Size: 3.9 KB (3916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:322dab4a29447559cf67ae09a9f3f814489775be2a6defeb335539b195439a42
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.5 MB (142495552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5d0c0b0a97ace5105d47e3d4183cc71ccff118c9291ac8be5df562145940b67`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 13:48:50 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 13:49:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 13:49:18 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 13:49:19 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 13:49:41 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 13:49:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 13:52:50 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Sat, 27 Apr 2019 13:52:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 13:52:55 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 13:52:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:52:57 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:52:59 GMT
ENV MONGO_MAJOR=4.0
# Sat, 27 Apr 2019 13:53:00 GMT
ENV MONGO_VERSION=4.0.9
# Sat, 27 Apr 2019 13:53:02 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 13:54:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 13:54:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 13:54:16 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 09:00:29 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 09:00:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 09:00:31 GMT
EXPOSE 27017
# Tue, 07 May 2019 09:00:31 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f37d3b53bef1b38dcc459500630e3628dc2fc703b6027312c9c568de987ce1`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7b04826ecc05bc765e84011434c0505158b030c3503af0e900fcade2b666df`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.5 MB (2474268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe49430b9cce2eab30c50b2c8b16f45d8a81e199001659ae71780af25c3c762`  
		Last Modified: Sat, 27 Apr 2019 13:59:03 GMT  
		Size: 1.1 MB (1085761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0184914fa9f59778cc2d122033fb6f9f30776f21b59ef52a15dab0711cff256d`  
		Last Modified: Sat, 27 Apr 2019 13:59:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a0d07757014768afb66a6bb6a523c6e2816de092be025cfb8dc7470ca25882`  
		Last Modified: Sat, 27 Apr 2019 14:01:06 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bfbee9cb4436a9d761359ea0f0d5989c1256d1fea05f80d85ed4366cda20269`  
		Last Modified: Sat, 27 Apr 2019 14:01:06 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:710b0ee3b1fc456d9d6bc056f1a3fb6df538fdc9c6a241223d0d7d03f0204ffa`  
		Last Modified: Sat, 27 Apr 2019 14:01:40 GMT  
		Size: 99.2 MB (99196811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946c9b461b2a48823966a76a06fc7ab4fd4fde9841d03c5890a6897beb2a1077`  
		Last Modified: Sat, 27 Apr 2019 14:01:06 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33063097112053b82f9e9cd8e6398fd4f40d69d5ea742622d89e3b8bef22ba2`  
		Last Modified: Tue, 07 May 2019 09:01:29 GMT  
		Size: 3.9 KB (3915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:d34f0a7a7d98e5d8607e2d692da63104e2d885a1d0b02a5f11a494030ca4b7e2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5788499816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:367c7724a14a63cd150dd569e092561108496b2691119472d57d67c004614eac`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 14:57:52 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 14:57:53 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Wed, 15 May 2019 14:57:54 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Wed, 15 May 2019 15:08:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:08:21 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:08:23 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:08:24 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b69d2f55150edb540465d6bbd86d60c9e71c0ff946d638bdc1eb514235ed29c`  
		Last Modified: Wed, 15 May 2019 15:56:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b915b8d27dac2a237a2f29f8e117db4ce02546f4cdd65b27e42cd58284e0cb`  
		Last Modified: Wed, 15 May 2019 15:56:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394e2c61d92e53ed3186fb1519066d975864618bc7ebf1bab69ad1c53ab22b8`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06801021b126d52cb42fcdd9627a1df197c6f6df85d5815aa2af66f2c08aeaa5`  
		Last Modified: Wed, 15 May 2019 15:56:44 GMT  
		Size: 86.4 MB (86370500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8390f3fcbb2de1e1670ddc182477f8ac42bc84f4c6be9a0d57c96dfd5b8e72`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf5ba7a1320ba64926f94fcf976ca1d65bfa4caaa3c3f34fbc1021284a57d7e`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6222e753f22635881597fdfff92fb44515e02f2d9834a9f1eab6760a6955aed`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - windows version 10.0.17134.765; amd64

```console
$ docker pull mongo@sha256:e13e3438b31085fa3c94d2142d3b09fd00fad305eb43171487ac80bcaf00eb4b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2764910409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490ae85b1f931a048aae063559244203f4fd42d4aaefb8613dc6f18e9ec55252`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 15:08:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 15:08:39 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 15:08:41 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Wed, 15 May 2019 15:08:42 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Wed, 15 May 2019 15:26:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:26:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:26:29 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:26:31 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:95a9480f80fcfc98cb15d244b26f8a6e2fe3795fb66c21e63d7ae2d3dad6f3d2`  
		Last Modified: Wed, 15 May 2019 15:57:12 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b787768375c69ddea0877e94bf23c61929d339fb043d748d697e33fa8c21244a`  
		Last Modified: Wed, 15 May 2019 15:57:11 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68e295cdadfcd55e9a772b892be9d224fcdb90ce3f89951f28bfe6a2dfdbdea`  
		Last Modified: Wed, 15 May 2019 15:57:11 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7296b2ff3ce5cc2dd14618da25d0c85121e5d9df66af56087f2a93f83e1ff50`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ddcbb12286eba2fbf52e90ec927e694198f67af266e80ce6ea7bd0f2dcbc4c`  
		Last Modified: Wed, 15 May 2019 15:58:57 GMT  
		Size: 462.7 MB (462651863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470d7011c30ef091be60d7c20ff07583691f9136c6706fb2cb7a8f4746a1c086`  
		Last Modified: Wed, 15 May 2019 15:57:10 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03112fb652996b1cdd19f20312063f7688bd1c4a37e606600e121ee1dcc6928d`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b86c32c71f5976cff386de09ae210b039089b4b937950699d92bb8557e25ba`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable`

```console
$ docker pull mongo@sha256:9d6e3fe0db31371250017acb290ca9043bb42391ac02cec664d48a65d377324b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; s390x
	-	windows version 10.0.14393.2969; amd64
	-	windows version 10.0.17134.765; amd64

### `mongo:unstable` - linux; amd64

```console
$ docker pull mongo@sha256:9812619f537062b3eebe6d203190589e3cf0dc5e3e5034be24d4e88567fb75e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142351058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f95d6785a32e28a6682d9a89713e8cac423d2b1997869be57025a02e85c57e76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:11:46 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 15 May 2019 23:11:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:11:56 GMT
ENV GOSU_VERSION=1.11
# Wed, 15 May 2019 23:11:56 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 15 May 2019 23:12:20 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 15 May 2019 23:12:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:12:22 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Wed, 15 May 2019 23:12:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:12:24 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 15 May 2019 23:12:24 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:12:25 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:12:25 GMT
ENV MONGO_MAJOR=4.1
# Wed, 15 May 2019 23:12:25 GMT
ENV MONGO_VERSION=4.1.11
# Wed, 15 May 2019 23:12:27 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 15 May 2019 23:13:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 15 May 2019 23:13:09 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 15 May 2019 23:13:09 GMT
VOLUME [/data/db /data/configdb]
# Wed, 15 May 2019 23:13:09 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 15 May 2019 23:13:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:13:10 GMT
EXPOSE 27017
# Wed, 15 May 2019 23:13:10 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e441ad81a3e0c67c4ca12fc98dd8a6729aac90a9b5018061f7d8ff6ceed8b93`  
		Last Modified: Wed, 15 May 2019 23:15:31 GMT  
		Size: 1.9 KB (1870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51118a13f29c6332a50d8f4c191544ca57566c46dcbc94166a62044fd25cb76b`  
		Last Modified: Wed, 15 May 2019 23:15:32 GMT  
		Size: 2.7 MB (2733006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e96b28381e873078b41fee98b156762ec0559032de40fbe46f36d277f626ff`  
		Last Modified: Wed, 15 May 2019 23:15:34 GMT  
		Size: 5.8 MB (5759311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76c3476ff75959a75091a57ac7609564ebdc2d6a13446307f58db8493c8657e`  
		Last Modified: Wed, 15 May 2019 23:15:31 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7dc10844685978bc792dfb0062c4b610a6d59491144e4518f92889d1265bb75`  
		Last Modified: Wed, 15 May 2019 23:15:29 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b63fa0d37fb3d8cf75fabf999fbd1eec729cdf835f441b3a226cd2d04605c9`  
		Last Modified: Wed, 15 May 2019 23:15:30 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e22773025a935d8de793fd5d2cc076006ce7c18c07bef7caf2de16a1f33d23a4`  
		Last Modified: Wed, 15 May 2019 23:15:54 GMT  
		Size: 105.0 MB (104994956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4403f8a951baa555999d361a7e710d8685b176fbfa708baa85fcc733ac3ccc0e`  
		Last Modified: Wed, 15 May 2019 23:15:30 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f90f6553e90bd8823fb2b472bae9214e94613af137963592278f63e17569472`  
		Last Modified: Wed, 15 May 2019 23:15:30 GMT  
		Size: 3.9 KB (3916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:6d929553bb73f58b1968aaaef9e5e4d35297c24c378ff2f96ff819b9a64f17eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.5 MB (139535080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93167576af25a6eea6a9959e4164924103ac82b7fedabe998c070dace88099cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 27 Apr 2019 09:35:52 GMT
ADD file:f046142405da23f452b26e01729a6fdc5a92b0fa85ec8456a1fee249160217bb in / 
# Sat, 27 Apr 2019 09:35:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:35:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:35:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:36:00 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 13:54:44 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 13:55:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 13:55:39 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 13:55:40 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 13:56:39 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 13:56:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 13:56:43 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Sat, 27 Apr 2019 13:56:46 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 13:56:46 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Sat, 27 Apr 2019 13:56:47 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:56:48 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:56:49 GMT
ENV MONGO_MAJOR=4.1
# Fri, 10 May 2019 09:00:08 GMT
ENV MONGO_VERSION=4.1.11
# Fri, 10 May 2019 09:00:10 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 10 May 2019 09:01:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 10 May 2019 09:01:10 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 10 May 2019 09:01:10 GMT
VOLUME [/data/db /data/configdb]
# Fri, 10 May 2019 09:01:11 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Fri, 10 May 2019 09:01:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:01:13 GMT
EXPOSE 27017
# Fri, 10 May 2019 09:01:14 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:bf7c45c81bd70f13db7f1612a4596418f2c15b48384d2c1d5597b7534e60b3f3`  
		Last Modified: Sat, 27 Apr 2019 09:39:34 GMT  
		Size: 33.3 MB (33343401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5396f07cded369e173bde57fa17c337db371930ea1b2e925d3c04cb407794d5c`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ceb566582d63624b9d3a22ead5cbf0836b8c5bca41b4b7bb777c9c11923ede`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb3982847b2f6cb9353dc95b2dbd7092a92764a1946b9901adf59d886849542`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155ec62d2b44b7c48622d0f609bb4ed4543dfe367709364abf0b2e9499e23930`  
		Last Modified: Sat, 27 Apr 2019 14:01:57 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a395cce62fd6427cfb162512d0f1e49862dfa5ce639af91b12ddde137418c1`  
		Last Modified: Sat, 27 Apr 2019 14:01:58 GMT  
		Size: 2.4 MB (2445700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b59ce0c6c7c522c8c273a74f15924ec5525535b0c9a22eee5333a51f9310d75`  
		Last Modified: Sat, 27 Apr 2019 14:01:58 GMT  
		Size: 5.3 MB (5277949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d8392ab1055bc3e61eb40a018b9d99c1f0925620d9074946752c20c7e251a1`  
		Last Modified: Sat, 27 Apr 2019 14:01:56 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98859e0de9105890f7ab0ac67e850ab5de2d3f1098a62042c800bcfd443c4150`  
		Last Modified: Sat, 27 Apr 2019 14:01:54 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30732854e76b7db2138c1b1b539e6725f1dc5cbb6aa6fdebbec8825f08f0a001`  
		Last Modified: Fri, 10 May 2019 09:01:55 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1916eb3c4fd9b379a4b878bf8a0a3c0193f23198379f56d2099e5b87409965e0`  
		Last Modified: Fri, 10 May 2019 09:02:27 GMT  
		Size: 98.5 MB (98458766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:519d80e98c8df2696107d1b4af10c5078c65769b660620ad758c768b1087dca8`  
		Last Modified: Fri, 10 May 2019 09:01:56 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd284df76aab5166889bf05f2abe2b66ad72efc787b485fd40345932911dd06`  
		Last Modified: Fri, 10 May 2019 09:01:56 GMT  
		Size: 3.9 KB (3913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - linux; s390x

```console
$ docker pull mongo@sha256:7fc02f180f9c42ad8b911e02e2ec93808ac916249cdb312ef3154888cae9e177
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.0 MB (138007942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f10594a04420420dde01459c4bf6c2da55ae5b17344497a887c64502f39433`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 21:42:57 GMT
ADD file:099f81542cb8e3e3e4fc2556d8067214392b39f0958e3452312495c98ae25e76 in / 
# Wed, 15 May 2019 21:43:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:43:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:43:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:43:14 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:32:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 15 May 2019 22:32:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:32:56 GMT
ENV GOSU_VERSION=1.11
# Wed, 15 May 2019 22:32:57 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 15 May 2019 22:33:18 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 15 May 2019 22:33:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:33:20 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Wed, 15 May 2019 22:33:22 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:33:23 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 15 May 2019 22:33:23 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 22:33:23 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 22:33:24 GMT
ENV MONGO_MAJOR=4.1
# Wed, 15 May 2019 22:33:24 GMT
ENV MONGO_VERSION=4.1.11
# Wed, 15 May 2019 22:33:27 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 15 May 2019 22:34:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 15 May 2019 22:34:09 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 15 May 2019 22:34:09 GMT
VOLUME [/data/db /data/configdb]
# Wed, 15 May 2019 22:34:10 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 15 May 2019 22:34:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:34:11 GMT
EXPOSE 27017
# Wed, 15 May 2019 22:34:11 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a3ef07dd1fb74710cbd05c9bed2158fa7e005b766ac22ee052c37bc04215d25d`  
		Last Modified: Wed, 15 May 2019 21:46:43 GMT  
		Size: 27.5 MB (27532637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3f8f7d030578ebc1c4656ad55d61c81d712b0b43add1862837acf9d7365d67`  
		Last Modified: Wed, 15 May 2019 21:46:29 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4fa8d15db8edc923fd948fd13c76765471952cf1ac5df39c26f98250ab7944`  
		Last Modified: Wed, 15 May 2019 21:46:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5389f875a4e9d8a209a803440e2bc92aa7808f45367b050d7da2ffe34e8d3d8`  
		Last Modified: Wed, 15 May 2019 22:34:41 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78f9fb2db0b7a86a25e1ec0f0391300ad3f37a623dcb98a784a581287f8b7173`  
		Last Modified: Wed, 15 May 2019 22:34:43 GMT  
		Size: 2.5 MB (2461049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c3406decac38d30321c551aa17349b3335f7b48bfae4ad4f661160a17a10c7`  
		Last Modified: Wed, 15 May 2019 22:34:43 GMT  
		Size: 5.7 MB (5680803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c67004fc42876655b93fdd85255d6f18cb1094964124249a13f0a1372e5093`  
		Last Modified: Wed, 15 May 2019 22:34:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea75256322b9d6c89b4a4916fa8cb3478c116bf54623d038fbcb829428175031`  
		Last Modified: Wed, 15 May 2019 22:34:40 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e208ea70beddbda6cc70cf813f9c0e622a3775dfc665b0b056ffac4948421c`  
		Last Modified: Wed, 15 May 2019 22:34:34 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa83088e47deb859e8dc9df3d15fd2d5867518f0acd95bc06633f16241fde2d`  
		Last Modified: Wed, 15 May 2019 22:34:58 GMT  
		Size: 102.3 MB (102324725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbac88ccb2bec5f4c8dcb000b42b290d07c662b65a898899a61afc2b3021d77`  
		Last Modified: Wed, 15 May 2019 22:34:34 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe54e666a4dd89b83ad23363c04ca3de4792aef4d239210ae26436a89355aa8`  
		Last Modified: Wed, 15 May 2019 22:34:34 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:8f84f6be14c721074dc31f0ec08c769ff9c33dc948121d0ea11152eb26f21c32
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5790127403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:767e9ecfdc1df685b6508c272c00da07bfb2dfa97042ed0665520df68b999285`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 15:26:42 GMT
ENV MONGO_VERSION=4.1.11
# Wed, 15 May 2019 15:26:44 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.11-signed.msi
# Wed, 15 May 2019 15:26:45 GMT
ENV MONGO_DOWNLOAD_SHA256=3fc1513963da414eb4f4329905670a68d6d5a6f9776553686f9747400ff91725
# Wed, 15 May 2019 15:36:00 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:36:03 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:36:05 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:36:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32cd825e6205fd1de6cbc8c8225543d46cf66be25f9e7c3a0b932b954d168fa6`  
		Last Modified: Wed, 15 May 2019 15:59:24 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c03e111541f905c6e01eb3a13367262b7bc3724fcee59e95f67db4e24d65aeb`  
		Last Modified: Wed, 15 May 2019 15:59:27 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0b77d1682be9af19ddc8b132da8e799ea89e36728c21a88b1e80491301e80f7`  
		Last Modified: Wed, 15 May 2019 15:59:21 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec266c6e84ca537db614f7ea79221202d30d176f2c772c78ab64f3ebb5a5abf`  
		Last Modified: Wed, 15 May 2019 15:59:40 GMT  
		Size: 88.0 MB (87998070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224f89597561e958f4731290bbb79dc1164d00274bbe5f5791a9602ec11cdbf4`  
		Last Modified: Wed, 15 May 2019 15:59:22 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3bf2995fa3ed310185ccc29cf8f794c212105c63cfdc4433424e6ce8b74962`  
		Last Modified: Wed, 15 May 2019 15:59:21 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0a7753dc0fc4aaa197d0586142a105b0f94c1cefc220a6d04410d4a4351079`  
		Last Modified: Wed, 15 May 2019 15:59:22 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - windows version 10.0.17134.765; amd64

```console
$ docker pull mongo@sha256:8036c3cb49002e2f21371ad1f902ade2556cc1054703e86df6564ed749851756
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2766537673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2235797b2c07de90a021f904764b132fe5a77757f9fc8bdc72d09c668d275b7e`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 15:08:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 15:36:14 GMT
ENV MONGO_VERSION=4.1.11
# Wed, 15 May 2019 15:36:15 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.11-signed.msi
# Wed, 15 May 2019 15:36:16 GMT
ENV MONGO_DOWNLOAD_SHA256=3fc1513963da414eb4f4329905670a68d6d5a6f9776553686f9747400ff91725
# Wed, 15 May 2019 15:54:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:54:19 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:54:21 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:54:23 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:95a9480f80fcfc98cb15d244b26f8a6e2fe3795fb66c21e63d7ae2d3dad6f3d2`  
		Last Modified: Wed, 15 May 2019 15:57:12 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58aaf3c2c1f9463208be48e9a56ceacf50eec65227b78518b2b8450f9d9cc2f8`  
		Last Modified: Wed, 15 May 2019 16:00:00 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc96e4ebbb17290ce5dcdf1933cea1d800cbf00b387d55423e145386a099e92c`  
		Last Modified: Wed, 15 May 2019 16:00:00 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3781df1be54b085f52ab0dc6f618c83b03de19847e4c2557d0998022ec2caca7`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147cdfd38e1ba6c2be4d7f2c8d22fefb61d3b0060340f1aa1d230380e6d0e710`  
		Last Modified: Wed, 15 May 2019 16:01:02 GMT  
		Size: 464.3 MB (464279116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537fad84925869b2f3ce233e50b4eef2cc4c821f88753b396222fc2bfdf3be52`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08aa80c17475b587cabd5d0db5bddab3b840adb77fb88a4733bb488bbffde2b`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6eaa8204c6437ab969d168e593232754e93067db705033efa4c5a833f3c4b9`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-bionic`

```console
$ docker pull mongo@sha256:18f09d425430535bb21628aa7af93d46f21062af486c538ce4a6acb34e6dd72e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; s390x

### `mongo:unstable-bionic` - linux; amd64

```console
$ docker pull mongo@sha256:9812619f537062b3eebe6d203190589e3cf0dc5e3e5034be24d4e88567fb75e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142351058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f95d6785a32e28a6682d9a89713e8cac423d2b1997869be57025a02e85c57e76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:11:46 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 15 May 2019 23:11:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:11:56 GMT
ENV GOSU_VERSION=1.11
# Wed, 15 May 2019 23:11:56 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 15 May 2019 23:12:20 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 15 May 2019 23:12:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:12:22 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Wed, 15 May 2019 23:12:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:12:24 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 15 May 2019 23:12:24 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:12:25 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:12:25 GMT
ENV MONGO_MAJOR=4.1
# Wed, 15 May 2019 23:12:25 GMT
ENV MONGO_VERSION=4.1.11
# Wed, 15 May 2019 23:12:27 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 15 May 2019 23:13:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 15 May 2019 23:13:09 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 15 May 2019 23:13:09 GMT
VOLUME [/data/db /data/configdb]
# Wed, 15 May 2019 23:13:09 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 15 May 2019 23:13:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:13:10 GMT
EXPOSE 27017
# Wed, 15 May 2019 23:13:10 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e441ad81a3e0c67c4ca12fc98dd8a6729aac90a9b5018061f7d8ff6ceed8b93`  
		Last Modified: Wed, 15 May 2019 23:15:31 GMT  
		Size: 1.9 KB (1870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51118a13f29c6332a50d8f4c191544ca57566c46dcbc94166a62044fd25cb76b`  
		Last Modified: Wed, 15 May 2019 23:15:32 GMT  
		Size: 2.7 MB (2733006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e96b28381e873078b41fee98b156762ec0559032de40fbe46f36d277f626ff`  
		Last Modified: Wed, 15 May 2019 23:15:34 GMT  
		Size: 5.8 MB (5759311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76c3476ff75959a75091a57ac7609564ebdc2d6a13446307f58db8493c8657e`  
		Last Modified: Wed, 15 May 2019 23:15:31 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7dc10844685978bc792dfb0062c4b610a6d59491144e4518f92889d1265bb75`  
		Last Modified: Wed, 15 May 2019 23:15:29 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b63fa0d37fb3d8cf75fabf999fbd1eec729cdf835f441b3a226cd2d04605c9`  
		Last Modified: Wed, 15 May 2019 23:15:30 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e22773025a935d8de793fd5d2cc076006ce7c18c07bef7caf2de16a1f33d23a4`  
		Last Modified: Wed, 15 May 2019 23:15:54 GMT  
		Size: 105.0 MB (104994956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4403f8a951baa555999d361a7e710d8685b176fbfa708baa85fcc733ac3ccc0e`  
		Last Modified: Wed, 15 May 2019 23:15:30 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f90f6553e90bd8823fb2b472bae9214e94613af137963592278f63e17569472`  
		Last Modified: Wed, 15 May 2019 23:15:30 GMT  
		Size: 3.9 KB (3916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable-bionic` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:6d929553bb73f58b1968aaaef9e5e4d35297c24c378ff2f96ff819b9a64f17eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.5 MB (139535080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93167576af25a6eea6a9959e4164924103ac82b7fedabe998c070dace88099cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 27 Apr 2019 09:35:52 GMT
ADD file:f046142405da23f452b26e01729a6fdc5a92b0fa85ec8456a1fee249160217bb in / 
# Sat, 27 Apr 2019 09:35:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:35:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:35:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:36:00 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 13:54:44 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 13:55:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 13:55:39 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 13:55:40 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 13:56:39 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 13:56:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 13:56:43 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Sat, 27 Apr 2019 13:56:46 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 13:56:46 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Sat, 27 Apr 2019 13:56:47 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:56:48 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:56:49 GMT
ENV MONGO_MAJOR=4.1
# Fri, 10 May 2019 09:00:08 GMT
ENV MONGO_VERSION=4.1.11
# Fri, 10 May 2019 09:00:10 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 10 May 2019 09:01:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 10 May 2019 09:01:10 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 10 May 2019 09:01:10 GMT
VOLUME [/data/db /data/configdb]
# Fri, 10 May 2019 09:01:11 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Fri, 10 May 2019 09:01:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:01:13 GMT
EXPOSE 27017
# Fri, 10 May 2019 09:01:14 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:bf7c45c81bd70f13db7f1612a4596418f2c15b48384d2c1d5597b7534e60b3f3`  
		Last Modified: Sat, 27 Apr 2019 09:39:34 GMT  
		Size: 33.3 MB (33343401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5396f07cded369e173bde57fa17c337db371930ea1b2e925d3c04cb407794d5c`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ceb566582d63624b9d3a22ead5cbf0836b8c5bca41b4b7bb777c9c11923ede`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb3982847b2f6cb9353dc95b2dbd7092a92764a1946b9901adf59d886849542`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155ec62d2b44b7c48622d0f609bb4ed4543dfe367709364abf0b2e9499e23930`  
		Last Modified: Sat, 27 Apr 2019 14:01:57 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a395cce62fd6427cfb162512d0f1e49862dfa5ce639af91b12ddde137418c1`  
		Last Modified: Sat, 27 Apr 2019 14:01:58 GMT  
		Size: 2.4 MB (2445700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b59ce0c6c7c522c8c273a74f15924ec5525535b0c9a22eee5333a51f9310d75`  
		Last Modified: Sat, 27 Apr 2019 14:01:58 GMT  
		Size: 5.3 MB (5277949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d8392ab1055bc3e61eb40a018b9d99c1f0925620d9074946752c20c7e251a1`  
		Last Modified: Sat, 27 Apr 2019 14:01:56 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98859e0de9105890f7ab0ac67e850ab5de2d3f1098a62042c800bcfd443c4150`  
		Last Modified: Sat, 27 Apr 2019 14:01:54 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30732854e76b7db2138c1b1b539e6725f1dc5cbb6aa6fdebbec8825f08f0a001`  
		Last Modified: Fri, 10 May 2019 09:01:55 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1916eb3c4fd9b379a4b878bf8a0a3c0193f23198379f56d2099e5b87409965e0`  
		Last Modified: Fri, 10 May 2019 09:02:27 GMT  
		Size: 98.5 MB (98458766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:519d80e98c8df2696107d1b4af10c5078c65769b660620ad758c768b1087dca8`  
		Last Modified: Fri, 10 May 2019 09:01:56 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd284df76aab5166889bf05f2abe2b66ad72efc787b485fd40345932911dd06`  
		Last Modified: Fri, 10 May 2019 09:01:56 GMT  
		Size: 3.9 KB (3913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable-bionic` - linux; s390x

```console
$ docker pull mongo@sha256:7fc02f180f9c42ad8b911e02e2ec93808ac916249cdb312ef3154888cae9e177
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.0 MB (138007942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f10594a04420420dde01459c4bf6c2da55ae5b17344497a887c64502f39433`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 21:42:57 GMT
ADD file:099f81542cb8e3e3e4fc2556d8067214392b39f0958e3452312495c98ae25e76 in / 
# Wed, 15 May 2019 21:43:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:43:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:43:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:43:14 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:32:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 15 May 2019 22:32:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:32:56 GMT
ENV GOSU_VERSION=1.11
# Wed, 15 May 2019 22:32:57 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 15 May 2019 22:33:18 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 15 May 2019 22:33:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:33:20 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Wed, 15 May 2019 22:33:22 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:33:23 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 15 May 2019 22:33:23 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 22:33:23 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 22:33:24 GMT
ENV MONGO_MAJOR=4.1
# Wed, 15 May 2019 22:33:24 GMT
ENV MONGO_VERSION=4.1.11
# Wed, 15 May 2019 22:33:27 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 15 May 2019 22:34:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 15 May 2019 22:34:09 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 15 May 2019 22:34:09 GMT
VOLUME [/data/db /data/configdb]
# Wed, 15 May 2019 22:34:10 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 15 May 2019 22:34:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:34:11 GMT
EXPOSE 27017
# Wed, 15 May 2019 22:34:11 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a3ef07dd1fb74710cbd05c9bed2158fa7e005b766ac22ee052c37bc04215d25d`  
		Last Modified: Wed, 15 May 2019 21:46:43 GMT  
		Size: 27.5 MB (27532637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3f8f7d030578ebc1c4656ad55d61c81d712b0b43add1862837acf9d7365d67`  
		Last Modified: Wed, 15 May 2019 21:46:29 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4fa8d15db8edc923fd948fd13c76765471952cf1ac5df39c26f98250ab7944`  
		Last Modified: Wed, 15 May 2019 21:46:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5389f875a4e9d8a209a803440e2bc92aa7808f45367b050d7da2ffe34e8d3d8`  
		Last Modified: Wed, 15 May 2019 22:34:41 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78f9fb2db0b7a86a25e1ec0f0391300ad3f37a623dcb98a784a581287f8b7173`  
		Last Modified: Wed, 15 May 2019 22:34:43 GMT  
		Size: 2.5 MB (2461049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c3406decac38d30321c551aa17349b3335f7b48bfae4ad4f661160a17a10c7`  
		Last Modified: Wed, 15 May 2019 22:34:43 GMT  
		Size: 5.7 MB (5680803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c67004fc42876655b93fdd85255d6f18cb1094964124249a13f0a1372e5093`  
		Last Modified: Wed, 15 May 2019 22:34:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea75256322b9d6c89b4a4916fa8cb3478c116bf54623d038fbcb829428175031`  
		Last Modified: Wed, 15 May 2019 22:34:40 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e208ea70beddbda6cc70cf813f9c0e622a3775dfc665b0b056ffac4948421c`  
		Last Modified: Wed, 15 May 2019 22:34:34 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa83088e47deb859e8dc9df3d15fd2d5867518f0acd95bc06633f16241fde2d`  
		Last Modified: Wed, 15 May 2019 22:34:58 GMT  
		Size: 102.3 MB (102324725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbac88ccb2bec5f4c8dcb000b42b290d07c662b65a898899a61afc2b3021d77`  
		Last Modified: Wed, 15 May 2019 22:34:34 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe54e666a4dd89b83ad23363c04ca3de4792aef4d239210ae26436a89355aa8`  
		Last Modified: Wed, 15 May 2019 22:34:34 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:cdec296bad098d7b8c390701c44e60628af1efa4bfe5303537fe761327e82b57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64
	-	windows version 10.0.17134.765; amd64

### `mongo:unstable-windowsservercore` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:8f84f6be14c721074dc31f0ec08c769ff9c33dc948121d0ea11152eb26f21c32
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5790127403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:767e9ecfdc1df685b6508c272c00da07bfb2dfa97042ed0665520df68b999285`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 15:26:42 GMT
ENV MONGO_VERSION=4.1.11
# Wed, 15 May 2019 15:26:44 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.11-signed.msi
# Wed, 15 May 2019 15:26:45 GMT
ENV MONGO_DOWNLOAD_SHA256=3fc1513963da414eb4f4329905670a68d6d5a6f9776553686f9747400ff91725
# Wed, 15 May 2019 15:36:00 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:36:03 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:36:05 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:36:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32cd825e6205fd1de6cbc8c8225543d46cf66be25f9e7c3a0b932b954d168fa6`  
		Last Modified: Wed, 15 May 2019 15:59:24 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c03e111541f905c6e01eb3a13367262b7bc3724fcee59e95f67db4e24d65aeb`  
		Last Modified: Wed, 15 May 2019 15:59:27 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0b77d1682be9af19ddc8b132da8e799ea89e36728c21a88b1e80491301e80f7`  
		Last Modified: Wed, 15 May 2019 15:59:21 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec266c6e84ca537db614f7ea79221202d30d176f2c772c78ab64f3ebb5a5abf`  
		Last Modified: Wed, 15 May 2019 15:59:40 GMT  
		Size: 88.0 MB (87998070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224f89597561e958f4731290bbb79dc1164d00274bbe5f5791a9602ec11cdbf4`  
		Last Modified: Wed, 15 May 2019 15:59:22 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3bf2995fa3ed310185ccc29cf8f794c212105c63cfdc4433424e6ce8b74962`  
		Last Modified: Wed, 15 May 2019 15:59:21 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0a7753dc0fc4aaa197d0586142a105b0f94c1cefc220a6d04410d4a4351079`  
		Last Modified: Wed, 15 May 2019 15:59:22 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable-windowsservercore` - windows version 10.0.17134.765; amd64

```console
$ docker pull mongo@sha256:8036c3cb49002e2f21371ad1f902ade2556cc1054703e86df6564ed749851756
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2766537673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2235797b2c07de90a021f904764b132fe5a77757f9fc8bdc72d09c668d275b7e`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 15:08:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 15:36:14 GMT
ENV MONGO_VERSION=4.1.11
# Wed, 15 May 2019 15:36:15 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.11-signed.msi
# Wed, 15 May 2019 15:36:16 GMT
ENV MONGO_DOWNLOAD_SHA256=3fc1513963da414eb4f4329905670a68d6d5a6f9776553686f9747400ff91725
# Wed, 15 May 2019 15:54:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:54:19 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:54:21 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:54:23 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:95a9480f80fcfc98cb15d244b26f8a6e2fe3795fb66c21e63d7ae2d3dad6f3d2`  
		Last Modified: Wed, 15 May 2019 15:57:12 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58aaf3c2c1f9463208be48e9a56ceacf50eec65227b78518b2b8450f9d9cc2f8`  
		Last Modified: Wed, 15 May 2019 16:00:00 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc96e4ebbb17290ce5dcdf1933cea1d800cbf00b387d55423e145386a099e92c`  
		Last Modified: Wed, 15 May 2019 16:00:00 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3781df1be54b085f52ab0dc6f618c83b03de19847e4c2557d0998022ec2caca7`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147cdfd38e1ba6c2be4d7f2c8d22fefb61d3b0060340f1aa1d230380e6d0e710`  
		Last Modified: Wed, 15 May 2019 16:01:02 GMT  
		Size: 464.3 MB (464279116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537fad84925869b2f3ce233e50b4eef2cc4c821f88753b396222fc2bfdf3be52`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08aa80c17475b587cabd5d0db5bddab3b840adb77fb88a4733bb488bbffde2b`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6eaa8204c6437ab969d168e593232754e93067db705033efa4c5a833f3c4b9`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-windowsservercore-1803`

```console
$ docker pull mongo@sha256:2b47f806098546f567d03e0144187874eac9e01145e4b4b6ddaf2c68da92c12b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.765; amd64

### `mongo:unstable-windowsservercore-1803` - windows version 10.0.17134.765; amd64

```console
$ docker pull mongo@sha256:8036c3cb49002e2f21371ad1f902ade2556cc1054703e86df6564ed749851756
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2766537673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2235797b2c07de90a021f904764b132fe5a77757f9fc8bdc72d09c668d275b7e`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 15:08:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 15:36:14 GMT
ENV MONGO_VERSION=4.1.11
# Wed, 15 May 2019 15:36:15 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.11-signed.msi
# Wed, 15 May 2019 15:36:16 GMT
ENV MONGO_DOWNLOAD_SHA256=3fc1513963da414eb4f4329905670a68d6d5a6f9776553686f9747400ff91725
# Wed, 15 May 2019 15:54:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:54:19 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:54:21 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:54:23 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:95a9480f80fcfc98cb15d244b26f8a6e2fe3795fb66c21e63d7ae2d3dad6f3d2`  
		Last Modified: Wed, 15 May 2019 15:57:12 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58aaf3c2c1f9463208be48e9a56ceacf50eec65227b78518b2b8450f9d9cc2f8`  
		Last Modified: Wed, 15 May 2019 16:00:00 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc96e4ebbb17290ce5dcdf1933cea1d800cbf00b387d55423e145386a099e92c`  
		Last Modified: Wed, 15 May 2019 16:00:00 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3781df1be54b085f52ab0dc6f618c83b03de19847e4c2557d0998022ec2caca7`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147cdfd38e1ba6c2be4d7f2c8d22fefb61d3b0060340f1aa1d230380e6d0e710`  
		Last Modified: Wed, 15 May 2019 16:01:02 GMT  
		Size: 464.3 MB (464279116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537fad84925869b2f3ce233e50b4eef2cc4c821f88753b396222fc2bfdf3be52`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08aa80c17475b587cabd5d0db5bddab3b840adb77fb88a4733bb488bbffde2b`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6eaa8204c6437ab969d168e593232754e93067db705033efa4c5a833f3c4b9`  
		Last Modified: Wed, 15 May 2019 15:59:58 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:5c538e2df1045c8c94730d0004d0d0976e290dfdfcb31d0c0a1f4b51144d6002
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64

### `mongo:unstable-windowsservercore-ltsc2016` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:8f84f6be14c721074dc31f0ec08c769ff9c33dc948121d0ea11152eb26f21c32
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5790127403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:767e9ecfdc1df685b6508c272c00da07bfb2dfa97042ed0665520df68b999285`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 15:26:42 GMT
ENV MONGO_VERSION=4.1.11
# Wed, 15 May 2019 15:26:44 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.11-signed.msi
# Wed, 15 May 2019 15:26:45 GMT
ENV MONGO_DOWNLOAD_SHA256=3fc1513963da414eb4f4329905670a68d6d5a6f9776553686f9747400ff91725
# Wed, 15 May 2019 15:36:00 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:36:03 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:36:05 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:36:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32cd825e6205fd1de6cbc8c8225543d46cf66be25f9e7c3a0b932b954d168fa6`  
		Last Modified: Wed, 15 May 2019 15:59:24 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c03e111541f905c6e01eb3a13367262b7bc3724fcee59e95f67db4e24d65aeb`  
		Last Modified: Wed, 15 May 2019 15:59:27 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0b77d1682be9af19ddc8b132da8e799ea89e36728c21a88b1e80491301e80f7`  
		Last Modified: Wed, 15 May 2019 15:59:21 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec266c6e84ca537db614f7ea79221202d30d176f2c772c78ab64f3ebb5a5abf`  
		Last Modified: Wed, 15 May 2019 15:59:40 GMT  
		Size: 88.0 MB (87998070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224f89597561e958f4731290bbb79dc1164d00274bbe5f5791a9602ec11cdbf4`  
		Last Modified: Wed, 15 May 2019 15:59:22 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3bf2995fa3ed310185ccc29cf8f794c212105c63cfdc4433424e6ce8b74962`  
		Last Modified: Wed, 15 May 2019 15:59:21 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0a7753dc0fc4aaa197d0586142a105b0f94c1cefc220a6d04410d4a4351079`  
		Last Modified: Wed, 15 May 2019 15:59:22 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:8a103f906befbe44fa61a41d60ff947c5bf912962ad5a62253804dff07c52908
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64
	-	windows version 10.0.17134.765; amd64

### `mongo:windowsservercore` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:d34f0a7a7d98e5d8607e2d692da63104e2d885a1d0b02a5f11a494030ca4b7e2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5788499816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:367c7724a14a63cd150dd569e092561108496b2691119472d57d67c004614eac`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 14:57:52 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 14:57:53 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Wed, 15 May 2019 14:57:54 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Wed, 15 May 2019 15:08:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:08:21 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:08:23 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:08:24 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b69d2f55150edb540465d6bbd86d60c9e71c0ff946d638bdc1eb514235ed29c`  
		Last Modified: Wed, 15 May 2019 15:56:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b915b8d27dac2a237a2f29f8e117db4ce02546f4cdd65b27e42cd58284e0cb`  
		Last Modified: Wed, 15 May 2019 15:56:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394e2c61d92e53ed3186fb1519066d975864618bc7ebf1bab69ad1c53ab22b8`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06801021b126d52cb42fcdd9627a1df197c6f6df85d5815aa2af66f2c08aeaa5`  
		Last Modified: Wed, 15 May 2019 15:56:44 GMT  
		Size: 86.4 MB (86370500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8390f3fcbb2de1e1670ddc182477f8ac42bc84f4c6be9a0d57c96dfd5b8e72`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf5ba7a1320ba64926f94fcf976ca1d65bfa4caaa3c3f34fbc1021284a57d7e`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6222e753f22635881597fdfff92fb44515e02f2d9834a9f1eab6760a6955aed`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.17134.765; amd64

```console
$ docker pull mongo@sha256:e13e3438b31085fa3c94d2142d3b09fd00fad305eb43171487ac80bcaf00eb4b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2764910409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490ae85b1f931a048aae063559244203f4fd42d4aaefb8613dc6f18e9ec55252`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 15:08:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 15:08:39 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 15:08:41 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Wed, 15 May 2019 15:08:42 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Wed, 15 May 2019 15:26:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:26:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:26:29 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:26:31 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:95a9480f80fcfc98cb15d244b26f8a6e2fe3795fb66c21e63d7ae2d3dad6f3d2`  
		Last Modified: Wed, 15 May 2019 15:57:12 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b787768375c69ddea0877e94bf23c61929d339fb043d748d697e33fa8c21244a`  
		Last Modified: Wed, 15 May 2019 15:57:11 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68e295cdadfcd55e9a772b892be9d224fcdb90ce3f89951f28bfe6a2dfdbdea`  
		Last Modified: Wed, 15 May 2019 15:57:11 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7296b2ff3ce5cc2dd14618da25d0c85121e5d9df66af56087f2a93f83e1ff50`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ddcbb12286eba2fbf52e90ec927e694198f67af266e80ce6ea7bd0f2dcbc4c`  
		Last Modified: Wed, 15 May 2019 15:58:57 GMT  
		Size: 462.7 MB (462651863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470d7011c30ef091be60d7c20ff07583691f9136c6706fb2cb7a8f4746a1c086`  
		Last Modified: Wed, 15 May 2019 15:57:10 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03112fb652996b1cdd19f20312063f7688bd1c4a37e606600e121ee1dcc6928d`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b86c32c71f5976cff386de09ae210b039089b4b937950699d92bb8557e25ba`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore-1803`

```console
$ docker pull mongo@sha256:055191412bf0a3fc67881a5fd3441831b8704df04421b2d1ef1f2262e2aa23e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.765; amd64

### `mongo:windowsservercore-1803` - windows version 10.0.17134.765; amd64

```console
$ docker pull mongo@sha256:e13e3438b31085fa3c94d2142d3b09fd00fad305eb43171487ac80bcaf00eb4b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2764910409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490ae85b1f931a048aae063559244203f4fd42d4aaefb8613dc6f18e9ec55252`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 15:08:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 15:08:39 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 15:08:41 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Wed, 15 May 2019 15:08:42 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Wed, 15 May 2019 15:26:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:26:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:26:29 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:26:31 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:95a9480f80fcfc98cb15d244b26f8a6e2fe3795fb66c21e63d7ae2d3dad6f3d2`  
		Last Modified: Wed, 15 May 2019 15:57:12 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b787768375c69ddea0877e94bf23c61929d339fb043d748d697e33fa8c21244a`  
		Last Modified: Wed, 15 May 2019 15:57:11 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68e295cdadfcd55e9a772b892be9d224fcdb90ce3f89951f28bfe6a2dfdbdea`  
		Last Modified: Wed, 15 May 2019 15:57:11 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7296b2ff3ce5cc2dd14618da25d0c85121e5d9df66af56087f2a93f83e1ff50`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ddcbb12286eba2fbf52e90ec927e694198f67af266e80ce6ea7bd0f2dcbc4c`  
		Last Modified: Wed, 15 May 2019 15:58:57 GMT  
		Size: 462.7 MB (462651863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470d7011c30ef091be60d7c20ff07583691f9136c6706fb2cb7a8f4746a1c086`  
		Last Modified: Wed, 15 May 2019 15:57:10 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03112fb652996b1cdd19f20312063f7688bd1c4a37e606600e121ee1dcc6928d`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b86c32c71f5976cff386de09ae210b039089b4b937950699d92bb8557e25ba`  
		Last Modified: Wed, 15 May 2019 15:57:09 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:3133a20bcd817bc1c64e3ddd2afe045c9c00545ceaed96a661d87caa766e92a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64

### `mongo:windowsservercore-ltsc2016` - windows version 10.0.14393.2969; amd64

```console
$ docker pull mongo@sha256:d34f0a7a7d98e5d8607e2d692da63104e2d885a1d0b02a5f11a494030ca4b7e2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5788499816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:367c7724a14a63cd150dd569e092561108496b2691119472d57d67c004614eac`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 14:45:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 May 2019 14:57:52 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 14:57:53 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Wed, 15 May 2019 14:57:54 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Wed, 15 May 2019 15:08:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 15:08:21 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 May 2019 15:08:23 GMT
EXPOSE 27017
# Wed, 15 May 2019 15:08:24 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34f0dd255d19718f81ae9c0a6d8e9fdf9aba7d8a7f7039097c148b5bd2103468`  
		Last Modified: Wed, 15 May 2019 15:55:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b69d2f55150edb540465d6bbd86d60c9e71c0ff946d638bdc1eb514235ed29c`  
		Last Modified: Wed, 15 May 2019 15:56:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b915b8d27dac2a237a2f29f8e117db4ce02546f4cdd65b27e42cd58284e0cb`  
		Last Modified: Wed, 15 May 2019 15:56:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394e2c61d92e53ed3186fb1519066d975864618bc7ebf1bab69ad1c53ab22b8`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06801021b126d52cb42fcdd9627a1df197c6f6df85d5815aa2af66f2c08aeaa5`  
		Last Modified: Wed, 15 May 2019 15:56:44 GMT  
		Size: 86.4 MB (86370500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8390f3fcbb2de1e1670ddc182477f8ac42bc84f4c6be9a0d57c96dfd5b8e72`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf5ba7a1320ba64926f94fcf976ca1d65bfa4caaa3c3f34fbc1021284a57d7e`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6222e753f22635881597fdfff92fb44515e02f2d9834a9f1eab6760a6955aed`  
		Last Modified: Wed, 15 May 2019 15:56:22 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:xenial`

```console
$ docker pull mongo@sha256:326e702174aef7a714a5fccb034d901ba1bd1b2cf7da841494fba4aaa5744c69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:xenial` - linux; amd64

```console
$ docker pull mongo@sha256:29d7ca01f9b7e3812a831ff143620e93ddf5e34bb9ac672d91140e064158a0fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152598189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5976dac61f4fb85c1a2d1f7c717600f9c78fb02badba6b3c5961a4091ef75905`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:09:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 15 May 2019 23:10:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:10:01 GMT
ENV GOSU_VERSION=1.11
# Wed, 15 May 2019 23:10:01 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 15 May 2019 23:10:09 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 15 May 2019 23:10:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:11:07 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 15 May 2019 23:11:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:11:09 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 15 May 2019 23:11:09 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:11:09 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 15 May 2019 23:11:09 GMT
ENV MONGO_MAJOR=4.0
# Wed, 15 May 2019 23:11:09 GMT
ENV MONGO_VERSION=4.0.9
# Wed, 15 May 2019 23:11:10 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 15 May 2019 23:11:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 15 May 2019 23:11:36 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 15 May 2019 23:11:36 GMT
VOLUME [/data/db /data/configdb]
# Wed, 15 May 2019 23:11:37 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 15 May 2019 23:11:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:11:37 GMT
EXPOSE 27017
# Wed, 15 May 2019 23:11:37 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815c6aedc001b0c406021809f6ddda02eafc2db0af37d82e719a469ff691a5bb`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.0 KB (1984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8566b2594855b4802bf2ec5a3cef61efe1d3ed97cfa6a747f397b7bb08db3c5b`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 2.9 MB (2945616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c9fe451980007df2a3585e68580ed005adb0a8f2bb3e85af75afa8034e5d75`  
		Last Modified: Wed, 15 May 2019 23:13:43 GMT  
		Size: 1.2 MB (1151233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9e7bc12ceae7b610677a07d228667d9ec99d24069d391d3bda4a29370ef083`  
		Last Modified: Wed, 15 May 2019 23:13:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c64dd2c4159abf20a4d878f39293b51391362fca6a8bcea6286bdaf6a5093fd1`  
		Last Modified: Wed, 15 May 2019 23:14:56 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9522757e8357dfad7a81901a371423c7d8e72982c12a200357efa0ca880279`  
		Last Modified: Wed, 15 May 2019 23:14:55 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cedccbc13a9b7f2593410757e1ff88bcc02dd9a3f31877e7f0584ae2a910a47`  
		Last Modified: Wed, 15 May 2019 23:15:23 GMT  
		Size: 104.7 MB (104723991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29aec2f2353d79a5eb4974d36f71fe03363dac234fe5593398fae924016c4954`  
		Last Modified: Wed, 15 May 2019 23:14:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08bcfe00e50692cfa1e8f869f14935c91fc70f5203c9fc7b0c08d59ae98e6211`  
		Last Modified: Wed, 15 May 2019 23:14:56 GMT  
		Size: 3.9 KB (3916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:322dab4a29447559cf67ae09a9f3f814489775be2a6defeb335539b195439a42
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.5 MB (142495552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5d0c0b0a97ace5105d47e3d4183cc71ccff118c9291ac8be5df562145940b67`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 13:48:50 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 13:49:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 13:49:18 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 13:49:19 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 13:49:41 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 13:49:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 13:52:50 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Sat, 27 Apr 2019 13:52:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 13:52:55 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 13:52:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:52:57 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 13:52:59 GMT
ENV MONGO_MAJOR=4.0
# Sat, 27 Apr 2019 13:53:00 GMT
ENV MONGO_VERSION=4.0.9
# Sat, 27 Apr 2019 13:53:02 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 13:54:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 13:54:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 13:54:16 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 09:00:29 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 09:00:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 09:00:31 GMT
EXPOSE 27017
# Tue, 07 May 2019 09:00:31 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f37d3b53bef1b38dcc459500630e3628dc2fc703b6027312c9c568de987ce1`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7b04826ecc05bc765e84011434c0505158b030c3503af0e900fcade2b666df`  
		Last Modified: Sat, 27 Apr 2019 13:59:04 GMT  
		Size: 2.5 MB (2474268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe49430b9cce2eab30c50b2c8b16f45d8a81e199001659ae71780af25c3c762`  
		Last Modified: Sat, 27 Apr 2019 13:59:03 GMT  
		Size: 1.1 MB (1085761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0184914fa9f59778cc2d122033fb6f9f30776f21b59ef52a15dab0711cff256d`  
		Last Modified: Sat, 27 Apr 2019 13:59:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a0d07757014768afb66a6bb6a523c6e2816de092be025cfb8dc7470ca25882`  
		Last Modified: Sat, 27 Apr 2019 14:01:06 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bfbee9cb4436a9d761359ea0f0d5989c1256d1fea05f80d85ed4366cda20269`  
		Last Modified: Sat, 27 Apr 2019 14:01:06 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:710b0ee3b1fc456d9d6bc056f1a3fb6df538fdc9c6a241223d0d7d03f0204ffa`  
		Last Modified: Sat, 27 Apr 2019 14:01:40 GMT  
		Size: 99.2 MB (99196811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946c9b461b2a48823966a76a06fc7ab4fd4fde9841d03c5890a6897beb2a1077`  
		Last Modified: Sat, 27 Apr 2019 14:01:06 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33063097112053b82f9e9cd8e6398fd4f40d69d5ea742622d89e3b8bef22ba2`  
		Last Modified: Tue, 07 May 2019 09:01:29 GMT  
		Size: 3.9 KB (3915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
