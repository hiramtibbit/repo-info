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
-	[`mongo:4.0.10`](#mongo4010)
-	[`mongo:4.0.10-windowsservercore`](#mongo4010-windowsservercore)
-	[`mongo:4.0.10-windowsservercore-1803`](#mongo4010-windowsservercore-1803)
-	[`mongo:4.0.10-windowsservercore-ltsc2016`](#mongo4010-windowsservercore-ltsc2016)
-	[`mongo:4.0.10-xenial`](#mongo4010-xenial)
-	[`mongo:4.0-windowsservercore`](#mongo40-windowsservercore)
-	[`mongo:4.0-windowsservercore-1803`](#mongo40-windowsservercore-1803)
-	[`mongo:4.0-windowsservercore-ltsc2016`](#mongo40-windowsservercore-ltsc2016)
-	[`mongo:4.0-xenial`](#mongo40-xenial)
-	[`mongo:4.1`](#mongo41)
-	[`mongo:4.1.12`](#mongo4112)
-	[`mongo:4.1.12-bionic`](#mongo4112-bionic)
-	[`mongo:4.1.12-windowsservercore`](#mongo4112-windowsservercore)
-	[`mongo:4.1.12-windowsservercore-1803`](#mongo4112-windowsservercore-1803)
-	[`mongo:4.1.12-windowsservercore-ltsc2016`](#mongo4112-windowsservercore-ltsc2016)
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
$ docker pull mongo@sha256:a49f4b2eebd8eabb71833df3aa626b8f6cf49c9d05e5ab622a726b245e82424d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2972; amd64

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
$ docker pull mongo@sha256:89247b2234cd72fcc1f82ae25ba2181617b8b376014389f2812b4c7688694425
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.5 MB (154487227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6948c144c8544b835d971dbd067163183e6a6ab05d082a33c7c750531ae1673`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Wed, 29 May 2019 20:39:48 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 29 May 2019 20:40:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:40:06 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 20:40:07 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 29 May 2019 20:40:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 29 May 2019 20:40:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 29 May 2019 20:41:16 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 29 May 2019 20:41:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 29 May 2019 20:41:18 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 29 May 2019 20:41:18 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:41:19 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:41:19 GMT
ENV MONGO_MAJOR=3.6
# Wed, 29 May 2019 20:41:19 GMT
ENV MONGO_VERSION=3.6.12
# Wed, 29 May 2019 20:41:21 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:41:44 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:41:47 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:41:47 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:41:48 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:41:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:41:48 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:41:49 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a346b0eb8a11391dc1dd6341c9b26ea38f0266bece6362d360404a77296690ef`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1323ba5612ca90211af761826c4c0eb260925570bf5c80d973cf8c41be34fa9`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.5 MB (2474290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1a762317d33e68dd1d27a4363c30ba13ff044adfadb40afadaaae5d3affee9`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 1.1 MB (1085490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cd1cf117b296bd3a88deb6aef7b4732fde8f77bc1c4d28d7c82b1284ff72f4`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d1685331a036769b68da11105b1c2b8e0f6a142242dbf9b1a2d0dfeffb7037`  
		Last Modified: Wed, 29 May 2019 20:44:56 GMT  
		Size: 2.0 KB (1998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b494423e855ada8fdd8e228e3f61e7982a932158ce1069a7a651c4a12dbdacd`  
		Last Modified: Wed, 29 May 2019 20:44:56 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8453bc26ad23f143fbc593391aa5fc559bd1ea2506e42ae60e768f2e46b94f`  
		Last Modified: Wed, 29 May 2019 20:45:27 GMT  
		Size: 111.2 MB (111181890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4711e753272d32aa893db5187ff8158af2d6c001feafe5e4c699f48cb94cfc`  
		Last Modified: Wed, 29 May 2019 20:44:56 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6732a9e9ae752b8455e3b34fb34d1ee393e219cafd2cac32086c86f52326a30b`  
		Last Modified: Wed, 29 May 2019 20:44:56 GMT  
		Size: 3.9 KB (3916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:8cf2ed7dce3b0c5128072f4366ca5c11d6f6e67066cc66c5cad7f06342692be5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5791777908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddf7b917707472c755fa930f4fef033fa4093670fade744450d4d1bb35bbf92`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 May 2019 16:24:25 GMT
ENV MONGO_VERSION=3.6.12
# Wed, 22 May 2019 16:24:27 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.12-signed.msi
# Wed, 22 May 2019 16:24:28 GMT
ENV MONGO_DOWNLOAD_SHA256=074261abf106d79e4d42612ce1d22d397c10af7f73cc9947f8e36632683ef3f7
# Wed, 22 May 2019 16:27:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 16:27:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 May 2019 16:27:32 GMT
EXPOSE 27017
# Wed, 22 May 2019 16:27:33 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6348f0f076ebd97ecfb69e9a2cd6eddcba54b9fcafb764807332e2e3e8c968e2`  
		Last Modified: Wed, 22 May 2019 16:51:36 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9f4ddadcfc658a2748dadde51dd9a714cceb68c6299df138ff30ccb9962db3`  
		Last Modified: Wed, 22 May 2019 16:51:36 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d3b1879c7585bc25fa6faab02f5d3585728cbfccfbf885cec05e3ed9824ec5c`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36b73840013bded1bcb26cdb73625eaf86f5483941a72b29928429b8280ec8e`  
		Last Modified: Wed, 22 May 2019 16:51:56 GMT  
		Size: 92.0 MB (91981334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8154043bac5e7e0dbfb3e1e3e2649c266c05ce96b2dc858ec2b1bd1e8bd3b722`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f6cfae40107bde4326f512721cf3ff759a4c8569752fb411698d0d67e66963`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3311c695a96a7acf9b012272544d2f074e9e3359d9ab749b7d3d621a0ec8a937`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:1da55f0c45d8cf15825901f929e24f6012ef55c66d9d7d6080a2d5e13cb3f1f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2972; amd64

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
$ docker pull mongo@sha256:9844be6c6df0089700f9b5af1316d6a33edbb216a73e1305c49378c14e2bdb08
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.2 MB (156163667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7be71ee06ce3bc8980fdac3e3d9ffc4eb9b8ff595af4c973744b196d4ec85269`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Wed, 29 May 2019 20:39:48 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 29 May 2019 20:40:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:40:06 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 20:40:07 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 29 May 2019 20:40:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 29 May 2019 20:40:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 29 May 2019 20:40:23 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 29 May 2019 20:40:25 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 29 May 2019 20:40:25 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 29 May 2019 20:40:25 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:40:26 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:40:26 GMT
ENV MONGO_MAJOR=3.4
# Wed, 29 May 2019 20:40:27 GMT
ENV MONGO_VERSION=3.4.20
# Wed, 29 May 2019 20:40:28 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:40:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:40:57 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:40:57 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:40:58 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:40:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat (3.4)
# Wed, 29 May 2019 20:41:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:41:04 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:41:04 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a346b0eb8a11391dc1dd6341c9b26ea38f0266bece6362d360404a77296690ef`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1323ba5612ca90211af761826c4c0eb260925570bf5c80d973cf8c41be34fa9`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.5 MB (2474290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1a762317d33e68dd1d27a4363c30ba13ff044adfadb40afadaaae5d3affee9`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 1.1 MB (1085490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cd1cf117b296bd3a88deb6aef7b4732fde8f77bc1c4d28d7c82b1284ff72f4`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337d9e472f9a4753f20271870b996c2ca0b16bdfb5b92e0064053c6605c6f31c`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 2.0 KB (1999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5abaad0d718fe735e1bd430466fc330e552574c61a270cbd8f0eb74cb02f493`  
		Last Modified: Wed, 29 May 2019 20:44:16 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbc4dbc06a3cbd625b971c40740e759ccc2298bac2bd8001fcf8a29e64b5a85`  
		Last Modified: Wed, 29 May 2019 20:44:47 GMT  
		Size: 112.9 MB (112858207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0092dd65c7040e8a676308e3bb4b679955c2640922abab1557fef8d975a535`  
		Last Modified: Wed, 29 May 2019 20:44:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8302176c8e59db1b45345effa8ae5ba445e76a4a4b84a71f6412f6c55369388b`  
		Last Modified: Wed, 29 May 2019 20:44:16 GMT  
		Size: 3.9 KB (3918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4736f9978096c7a5c04b3bd6e342e7099401a19e27afbdf15f53fed03fc16833`  
		Last Modified: Wed, 29 May 2019 20:44:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.4` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:c5b4b97f3ec3e4e7e160e370c7efb12f20d79c9983eea615b7123b854674ab60
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5791645321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:597143375c07884e3796d331e5d887b6daf4c07fdcadd37ba227d97b908f46f3`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 May 2019 16:21:28 GMT
ENV MONGO_VERSION=3.4.20
# Wed, 22 May 2019 16:21:29 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.20-signed.msi
# Wed, 22 May 2019 16:21:30 GMT
ENV MONGO_DOWNLOAD_SHA256=a6b27a8ce7ba1d6ebe734e7e5c0f644317ca684a0e4530250b9a2201f331bc59
# Wed, 22 May 2019 16:24:11 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 16:24:14 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 May 2019 16:24:16 GMT
EXPOSE 27017
# Wed, 22 May 2019 16:24:18 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76b4a07d1e9a5d4f3c02ae5b4c3f4bc0ee1a2df7a4dd154cd9eddd7ae27c06e`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e866cdabb45fe7047d69724cac62c43f062fa696fbae1768cb1842e9a9df3b2`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea12539e779b7d45fc657e5d582a08926dcb4e8d0017b1f824f95b50c06d06d`  
		Last Modified: Wed, 22 May 2019 16:50:55 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7023b2ed2f74f828ced3dc86b4c34474d5c833e6f36c9780cdb4ab35971628b`  
		Last Modified: Wed, 22 May 2019 16:51:17 GMT  
		Size: 91.8 MB (91848733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b61f9d7f64f15a683cdd71a2f3824f36cfbbcbe96a0b1b8e55e86551d1484f9`  
		Last Modified: Wed, 22 May 2019 16:50:55 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e3d9b0e7b9283def46bae58e5225cae302cbbfb36428c17c8f7ad1c135a2d8`  
		Last Modified: Wed, 22 May 2019 16:50:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ac378ec740c59e348c456b54a031b866ff00950efc54fbb33f012692e5564e`  
		Last Modified: Wed, 22 May 2019 16:50:55 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.20`

```console
$ docker pull mongo@sha256:1da55f0c45d8cf15825901f929e24f6012ef55c66d9d7d6080a2d5e13cb3f1f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2972; amd64

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
$ docker pull mongo@sha256:9844be6c6df0089700f9b5af1316d6a33edbb216a73e1305c49378c14e2bdb08
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.2 MB (156163667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7be71ee06ce3bc8980fdac3e3d9ffc4eb9b8ff595af4c973744b196d4ec85269`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Wed, 29 May 2019 20:39:48 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 29 May 2019 20:40:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:40:06 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 20:40:07 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 29 May 2019 20:40:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 29 May 2019 20:40:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 29 May 2019 20:40:23 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 29 May 2019 20:40:25 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 29 May 2019 20:40:25 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 29 May 2019 20:40:25 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:40:26 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:40:26 GMT
ENV MONGO_MAJOR=3.4
# Wed, 29 May 2019 20:40:27 GMT
ENV MONGO_VERSION=3.4.20
# Wed, 29 May 2019 20:40:28 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:40:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:40:57 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:40:57 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:40:58 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:40:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat (3.4)
# Wed, 29 May 2019 20:41:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:41:04 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:41:04 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a346b0eb8a11391dc1dd6341c9b26ea38f0266bece6362d360404a77296690ef`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1323ba5612ca90211af761826c4c0eb260925570bf5c80d973cf8c41be34fa9`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.5 MB (2474290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1a762317d33e68dd1d27a4363c30ba13ff044adfadb40afadaaae5d3affee9`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 1.1 MB (1085490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cd1cf117b296bd3a88deb6aef7b4732fde8f77bc1c4d28d7c82b1284ff72f4`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337d9e472f9a4753f20271870b996c2ca0b16bdfb5b92e0064053c6605c6f31c`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 2.0 KB (1999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5abaad0d718fe735e1bd430466fc330e552574c61a270cbd8f0eb74cb02f493`  
		Last Modified: Wed, 29 May 2019 20:44:16 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbc4dbc06a3cbd625b971c40740e759ccc2298bac2bd8001fcf8a29e64b5a85`  
		Last Modified: Wed, 29 May 2019 20:44:47 GMT  
		Size: 112.9 MB (112858207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0092dd65c7040e8a676308e3bb4b679955c2640922abab1557fef8d975a535`  
		Last Modified: Wed, 29 May 2019 20:44:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8302176c8e59db1b45345effa8ae5ba445e76a4a4b84a71f6412f6c55369388b`  
		Last Modified: Wed, 29 May 2019 20:44:16 GMT  
		Size: 3.9 KB (3918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4736f9978096c7a5c04b3bd6e342e7099401a19e27afbdf15f53fed03fc16833`  
		Last Modified: Wed, 29 May 2019 20:44:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.4.20` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:c5b4b97f3ec3e4e7e160e370c7efb12f20d79c9983eea615b7123b854674ab60
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5791645321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:597143375c07884e3796d331e5d887b6daf4c07fdcadd37ba227d97b908f46f3`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 May 2019 16:21:28 GMT
ENV MONGO_VERSION=3.4.20
# Wed, 22 May 2019 16:21:29 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.20-signed.msi
# Wed, 22 May 2019 16:21:30 GMT
ENV MONGO_DOWNLOAD_SHA256=a6b27a8ce7ba1d6ebe734e7e5c0f644317ca684a0e4530250b9a2201f331bc59
# Wed, 22 May 2019 16:24:11 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 16:24:14 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 May 2019 16:24:16 GMT
EXPOSE 27017
# Wed, 22 May 2019 16:24:18 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76b4a07d1e9a5d4f3c02ae5b4c3f4bc0ee1a2df7a4dd154cd9eddd7ae27c06e`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e866cdabb45fe7047d69724cac62c43f062fa696fbae1768cb1842e9a9df3b2`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea12539e779b7d45fc657e5d582a08926dcb4e8d0017b1f824f95b50c06d06d`  
		Last Modified: Wed, 22 May 2019 16:50:55 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7023b2ed2f74f828ced3dc86b4c34474d5c833e6f36c9780cdb4ab35971628b`  
		Last Modified: Wed, 22 May 2019 16:51:17 GMT  
		Size: 91.8 MB (91848733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b61f9d7f64f15a683cdd71a2f3824f36cfbbcbe96a0b1b8e55e86551d1484f9`  
		Last Modified: Wed, 22 May 2019 16:50:55 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e3d9b0e7b9283def46bae58e5225cae302cbbfb36428c17c8f7ad1c135a2d8`  
		Last Modified: Wed, 22 May 2019 16:50:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ac378ec740c59e348c456b54a031b866ff00950efc54fbb33f012692e5564e`  
		Last Modified: Wed, 22 May 2019 16:50:55 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.20-windowsservercore`

```console
$ docker pull mongo@sha256:4127a2736bee6146183005cc729fb644d66336dbf7156ac5a117acc0c01c3d79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64

### `mongo:3.4.20-windowsservercore` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:c5b4b97f3ec3e4e7e160e370c7efb12f20d79c9983eea615b7123b854674ab60
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5791645321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:597143375c07884e3796d331e5d887b6daf4c07fdcadd37ba227d97b908f46f3`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 May 2019 16:21:28 GMT
ENV MONGO_VERSION=3.4.20
# Wed, 22 May 2019 16:21:29 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.20-signed.msi
# Wed, 22 May 2019 16:21:30 GMT
ENV MONGO_DOWNLOAD_SHA256=a6b27a8ce7ba1d6ebe734e7e5c0f644317ca684a0e4530250b9a2201f331bc59
# Wed, 22 May 2019 16:24:11 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 16:24:14 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 May 2019 16:24:16 GMT
EXPOSE 27017
# Wed, 22 May 2019 16:24:18 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76b4a07d1e9a5d4f3c02ae5b4c3f4bc0ee1a2df7a4dd154cd9eddd7ae27c06e`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e866cdabb45fe7047d69724cac62c43f062fa696fbae1768cb1842e9a9df3b2`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea12539e779b7d45fc657e5d582a08926dcb4e8d0017b1f824f95b50c06d06d`  
		Last Modified: Wed, 22 May 2019 16:50:55 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7023b2ed2f74f828ced3dc86b4c34474d5c833e6f36c9780cdb4ab35971628b`  
		Last Modified: Wed, 22 May 2019 16:51:17 GMT  
		Size: 91.8 MB (91848733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b61f9d7f64f15a683cdd71a2f3824f36cfbbcbe96a0b1b8e55e86551d1484f9`  
		Last Modified: Wed, 22 May 2019 16:50:55 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e3d9b0e7b9283def46bae58e5225cae302cbbfb36428c17c8f7ad1c135a2d8`  
		Last Modified: Wed, 22 May 2019 16:50:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ac378ec740c59e348c456b54a031b866ff00950efc54fbb33f012692e5564e`  
		Last Modified: Wed, 22 May 2019 16:50:55 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.20-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:4127a2736bee6146183005cc729fb644d66336dbf7156ac5a117acc0c01c3d79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64

### `mongo:3.4.20-windowsservercore-ltsc2016` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:c5b4b97f3ec3e4e7e160e370c7efb12f20d79c9983eea615b7123b854674ab60
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5791645321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:597143375c07884e3796d331e5d887b6daf4c07fdcadd37ba227d97b908f46f3`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 May 2019 16:21:28 GMT
ENV MONGO_VERSION=3.4.20
# Wed, 22 May 2019 16:21:29 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.20-signed.msi
# Wed, 22 May 2019 16:21:30 GMT
ENV MONGO_DOWNLOAD_SHA256=a6b27a8ce7ba1d6ebe734e7e5c0f644317ca684a0e4530250b9a2201f331bc59
# Wed, 22 May 2019 16:24:11 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 16:24:14 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 May 2019 16:24:16 GMT
EXPOSE 27017
# Wed, 22 May 2019 16:24:18 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76b4a07d1e9a5d4f3c02ae5b4c3f4bc0ee1a2df7a4dd154cd9eddd7ae27c06e`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e866cdabb45fe7047d69724cac62c43f062fa696fbae1768cb1842e9a9df3b2`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea12539e779b7d45fc657e5d582a08926dcb4e8d0017b1f824f95b50c06d06d`  
		Last Modified: Wed, 22 May 2019 16:50:55 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7023b2ed2f74f828ced3dc86b4c34474d5c833e6f36c9780cdb4ab35971628b`  
		Last Modified: Wed, 22 May 2019 16:51:17 GMT  
		Size: 91.8 MB (91848733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b61f9d7f64f15a683cdd71a2f3824f36cfbbcbe96a0b1b8e55e86551d1484f9`  
		Last Modified: Wed, 22 May 2019 16:50:55 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e3d9b0e7b9283def46bae58e5225cae302cbbfb36428c17c8f7ad1c135a2d8`  
		Last Modified: Wed, 22 May 2019 16:50:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ac378ec740c59e348c456b54a031b866ff00950efc54fbb33f012692e5564e`  
		Last Modified: Wed, 22 May 2019 16:50:55 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.20-xenial`

```console
$ docker pull mongo@sha256:b6b82d980a2f0e98a9e2b5527708225a28e882a3a4750deb054d171ac54b88e7
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
$ docker pull mongo@sha256:9844be6c6df0089700f9b5af1316d6a33edbb216a73e1305c49378c14e2bdb08
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.2 MB (156163667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7be71ee06ce3bc8980fdac3e3d9ffc4eb9b8ff595af4c973744b196d4ec85269`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Wed, 29 May 2019 20:39:48 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 29 May 2019 20:40:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:40:06 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 20:40:07 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 29 May 2019 20:40:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 29 May 2019 20:40:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 29 May 2019 20:40:23 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 29 May 2019 20:40:25 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 29 May 2019 20:40:25 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 29 May 2019 20:40:25 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:40:26 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:40:26 GMT
ENV MONGO_MAJOR=3.4
# Wed, 29 May 2019 20:40:27 GMT
ENV MONGO_VERSION=3.4.20
# Wed, 29 May 2019 20:40:28 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:40:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:40:57 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:40:57 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:40:58 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:40:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat (3.4)
# Wed, 29 May 2019 20:41:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:41:04 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:41:04 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a346b0eb8a11391dc1dd6341c9b26ea38f0266bece6362d360404a77296690ef`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1323ba5612ca90211af761826c4c0eb260925570bf5c80d973cf8c41be34fa9`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.5 MB (2474290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1a762317d33e68dd1d27a4363c30ba13ff044adfadb40afadaaae5d3affee9`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 1.1 MB (1085490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cd1cf117b296bd3a88deb6aef7b4732fde8f77bc1c4d28d7c82b1284ff72f4`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337d9e472f9a4753f20271870b996c2ca0b16bdfb5b92e0064053c6605c6f31c`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 2.0 KB (1999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5abaad0d718fe735e1bd430466fc330e552574c61a270cbd8f0eb74cb02f493`  
		Last Modified: Wed, 29 May 2019 20:44:16 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbc4dbc06a3cbd625b971c40740e759ccc2298bac2bd8001fcf8a29e64b5a85`  
		Last Modified: Wed, 29 May 2019 20:44:47 GMT  
		Size: 112.9 MB (112858207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0092dd65c7040e8a676308e3bb4b679955c2640922abab1557fef8d975a535`  
		Last Modified: Wed, 29 May 2019 20:44:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8302176c8e59db1b45345effa8ae5ba445e76a4a4b84a71f6412f6c55369388b`  
		Last Modified: Wed, 29 May 2019 20:44:16 GMT  
		Size: 3.9 KB (3918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4736f9978096c7a5c04b3bd6e342e7099401a19e27afbdf15f53fed03fc16833`  
		Last Modified: Wed, 29 May 2019 20:44:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-windowsservercore`

```console
$ docker pull mongo@sha256:4127a2736bee6146183005cc729fb644d66336dbf7156ac5a117acc0c01c3d79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64

### `mongo:3.4-windowsservercore` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:c5b4b97f3ec3e4e7e160e370c7efb12f20d79c9983eea615b7123b854674ab60
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5791645321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:597143375c07884e3796d331e5d887b6daf4c07fdcadd37ba227d97b908f46f3`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 May 2019 16:21:28 GMT
ENV MONGO_VERSION=3.4.20
# Wed, 22 May 2019 16:21:29 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.20-signed.msi
# Wed, 22 May 2019 16:21:30 GMT
ENV MONGO_DOWNLOAD_SHA256=a6b27a8ce7ba1d6ebe734e7e5c0f644317ca684a0e4530250b9a2201f331bc59
# Wed, 22 May 2019 16:24:11 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 16:24:14 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 May 2019 16:24:16 GMT
EXPOSE 27017
# Wed, 22 May 2019 16:24:18 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76b4a07d1e9a5d4f3c02ae5b4c3f4bc0ee1a2df7a4dd154cd9eddd7ae27c06e`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e866cdabb45fe7047d69724cac62c43f062fa696fbae1768cb1842e9a9df3b2`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea12539e779b7d45fc657e5d582a08926dcb4e8d0017b1f824f95b50c06d06d`  
		Last Modified: Wed, 22 May 2019 16:50:55 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7023b2ed2f74f828ced3dc86b4c34474d5c833e6f36c9780cdb4ab35971628b`  
		Last Modified: Wed, 22 May 2019 16:51:17 GMT  
		Size: 91.8 MB (91848733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b61f9d7f64f15a683cdd71a2f3824f36cfbbcbe96a0b1b8e55e86551d1484f9`  
		Last Modified: Wed, 22 May 2019 16:50:55 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e3d9b0e7b9283def46bae58e5225cae302cbbfb36428c17c8f7ad1c135a2d8`  
		Last Modified: Wed, 22 May 2019 16:50:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ac378ec740c59e348c456b54a031b866ff00950efc54fbb33f012692e5564e`  
		Last Modified: Wed, 22 May 2019 16:50:55 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:4127a2736bee6146183005cc729fb644d66336dbf7156ac5a117acc0c01c3d79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64

### `mongo:3.4-windowsservercore-ltsc2016` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:c5b4b97f3ec3e4e7e160e370c7efb12f20d79c9983eea615b7123b854674ab60
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5791645321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:597143375c07884e3796d331e5d887b6daf4c07fdcadd37ba227d97b908f46f3`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 May 2019 16:21:28 GMT
ENV MONGO_VERSION=3.4.20
# Wed, 22 May 2019 16:21:29 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.20-signed.msi
# Wed, 22 May 2019 16:21:30 GMT
ENV MONGO_DOWNLOAD_SHA256=a6b27a8ce7ba1d6ebe734e7e5c0f644317ca684a0e4530250b9a2201f331bc59
# Wed, 22 May 2019 16:24:11 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 16:24:14 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 May 2019 16:24:16 GMT
EXPOSE 27017
# Wed, 22 May 2019 16:24:18 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76b4a07d1e9a5d4f3c02ae5b4c3f4bc0ee1a2df7a4dd154cd9eddd7ae27c06e`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e866cdabb45fe7047d69724cac62c43f062fa696fbae1768cb1842e9a9df3b2`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea12539e779b7d45fc657e5d582a08926dcb4e8d0017b1f824f95b50c06d06d`  
		Last Modified: Wed, 22 May 2019 16:50:55 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7023b2ed2f74f828ced3dc86b4c34474d5c833e6f36c9780cdb4ab35971628b`  
		Last Modified: Wed, 22 May 2019 16:51:17 GMT  
		Size: 91.8 MB (91848733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b61f9d7f64f15a683cdd71a2f3824f36cfbbcbe96a0b1b8e55e86551d1484f9`  
		Last Modified: Wed, 22 May 2019 16:50:55 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e3d9b0e7b9283def46bae58e5225cae302cbbfb36428c17c8f7ad1c135a2d8`  
		Last Modified: Wed, 22 May 2019 16:50:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ac378ec740c59e348c456b54a031b866ff00950efc54fbb33f012692e5564e`  
		Last Modified: Wed, 22 May 2019 16:50:55 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-xenial`

```console
$ docker pull mongo@sha256:b6b82d980a2f0e98a9e2b5527708225a28e882a3a4750deb054d171ac54b88e7
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
$ docker pull mongo@sha256:9844be6c6df0089700f9b5af1316d6a33edbb216a73e1305c49378c14e2bdb08
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.2 MB (156163667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7be71ee06ce3bc8980fdac3e3d9ffc4eb9b8ff595af4c973744b196d4ec85269`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Wed, 29 May 2019 20:39:48 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 29 May 2019 20:40:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:40:06 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 20:40:07 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 29 May 2019 20:40:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 29 May 2019 20:40:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 29 May 2019 20:40:23 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 29 May 2019 20:40:25 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 29 May 2019 20:40:25 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 29 May 2019 20:40:25 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:40:26 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:40:26 GMT
ENV MONGO_MAJOR=3.4
# Wed, 29 May 2019 20:40:27 GMT
ENV MONGO_VERSION=3.4.20
# Wed, 29 May 2019 20:40:28 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:40:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:40:57 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:40:57 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:40:58 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:40:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat (3.4)
# Wed, 29 May 2019 20:41:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:41:04 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:41:04 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a346b0eb8a11391dc1dd6341c9b26ea38f0266bece6362d360404a77296690ef`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1323ba5612ca90211af761826c4c0eb260925570bf5c80d973cf8c41be34fa9`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.5 MB (2474290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1a762317d33e68dd1d27a4363c30ba13ff044adfadb40afadaaae5d3affee9`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 1.1 MB (1085490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cd1cf117b296bd3a88deb6aef7b4732fde8f77bc1c4d28d7c82b1284ff72f4`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337d9e472f9a4753f20271870b996c2ca0b16bdfb5b92e0064053c6605c6f31c`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 2.0 KB (1999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5abaad0d718fe735e1bd430466fc330e552574c61a270cbd8f0eb74cb02f493`  
		Last Modified: Wed, 29 May 2019 20:44:16 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbc4dbc06a3cbd625b971c40740e759ccc2298bac2bd8001fcf8a29e64b5a85`  
		Last Modified: Wed, 29 May 2019 20:44:47 GMT  
		Size: 112.9 MB (112858207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0092dd65c7040e8a676308e3bb4b679955c2640922abab1557fef8d975a535`  
		Last Modified: Wed, 29 May 2019 20:44:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8302176c8e59db1b45345effa8ae5ba445e76a4a4b84a71f6412f6c55369388b`  
		Last Modified: Wed, 29 May 2019 20:44:16 GMT  
		Size: 3.9 KB (3918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4736f9978096c7a5c04b3bd6e342e7099401a19e27afbdf15f53fed03fc16833`  
		Last Modified: Wed, 29 May 2019 20:44:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6`

```console
$ docker pull mongo@sha256:a49f4b2eebd8eabb71833df3aa626b8f6cf49c9d05e5ab622a726b245e82424d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2972; amd64

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
$ docker pull mongo@sha256:89247b2234cd72fcc1f82ae25ba2181617b8b376014389f2812b4c7688694425
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.5 MB (154487227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6948c144c8544b835d971dbd067163183e6a6ab05d082a33c7c750531ae1673`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Wed, 29 May 2019 20:39:48 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 29 May 2019 20:40:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:40:06 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 20:40:07 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 29 May 2019 20:40:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 29 May 2019 20:40:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 29 May 2019 20:41:16 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 29 May 2019 20:41:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 29 May 2019 20:41:18 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 29 May 2019 20:41:18 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:41:19 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:41:19 GMT
ENV MONGO_MAJOR=3.6
# Wed, 29 May 2019 20:41:19 GMT
ENV MONGO_VERSION=3.6.12
# Wed, 29 May 2019 20:41:21 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:41:44 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:41:47 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:41:47 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:41:48 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:41:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:41:48 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:41:49 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a346b0eb8a11391dc1dd6341c9b26ea38f0266bece6362d360404a77296690ef`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1323ba5612ca90211af761826c4c0eb260925570bf5c80d973cf8c41be34fa9`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.5 MB (2474290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1a762317d33e68dd1d27a4363c30ba13ff044adfadb40afadaaae5d3affee9`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 1.1 MB (1085490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cd1cf117b296bd3a88deb6aef7b4732fde8f77bc1c4d28d7c82b1284ff72f4`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d1685331a036769b68da11105b1c2b8e0f6a142242dbf9b1a2d0dfeffb7037`  
		Last Modified: Wed, 29 May 2019 20:44:56 GMT  
		Size: 2.0 KB (1998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b494423e855ada8fdd8e228e3f61e7982a932158ce1069a7a651c4a12dbdacd`  
		Last Modified: Wed, 29 May 2019 20:44:56 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8453bc26ad23f143fbc593391aa5fc559bd1ea2506e42ae60e768f2e46b94f`  
		Last Modified: Wed, 29 May 2019 20:45:27 GMT  
		Size: 111.2 MB (111181890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4711e753272d32aa893db5187ff8158af2d6c001feafe5e4c699f48cb94cfc`  
		Last Modified: Wed, 29 May 2019 20:44:56 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6732a9e9ae752b8455e3b34fb34d1ee393e219cafd2cac32086c86f52326a30b`  
		Last Modified: Wed, 29 May 2019 20:44:56 GMT  
		Size: 3.9 KB (3916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.6` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:8cf2ed7dce3b0c5128072f4366ca5c11d6f6e67066cc66c5cad7f06342692be5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5791777908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddf7b917707472c755fa930f4fef033fa4093670fade744450d4d1bb35bbf92`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 May 2019 16:24:25 GMT
ENV MONGO_VERSION=3.6.12
# Wed, 22 May 2019 16:24:27 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.12-signed.msi
# Wed, 22 May 2019 16:24:28 GMT
ENV MONGO_DOWNLOAD_SHA256=074261abf106d79e4d42612ce1d22d397c10af7f73cc9947f8e36632683ef3f7
# Wed, 22 May 2019 16:27:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 16:27:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 May 2019 16:27:32 GMT
EXPOSE 27017
# Wed, 22 May 2019 16:27:33 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6348f0f076ebd97ecfb69e9a2cd6eddcba54b9fcafb764807332e2e3e8c968e2`  
		Last Modified: Wed, 22 May 2019 16:51:36 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9f4ddadcfc658a2748dadde51dd9a714cceb68c6299df138ff30ccb9962db3`  
		Last Modified: Wed, 22 May 2019 16:51:36 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d3b1879c7585bc25fa6faab02f5d3585728cbfccfbf885cec05e3ed9824ec5c`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36b73840013bded1bcb26cdb73625eaf86f5483941a72b29928429b8280ec8e`  
		Last Modified: Wed, 22 May 2019 16:51:56 GMT  
		Size: 92.0 MB (91981334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8154043bac5e7e0dbfb3e1e3e2649c266c05ce96b2dc858ec2b1bd1e8bd3b722`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f6cfae40107bde4326f512721cf3ff759a4c8569752fb411698d0d67e66963`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3311c695a96a7acf9b012272544d2f074e9e3359d9ab749b7d3d621a0ec8a937`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.12`

```console
$ docker pull mongo@sha256:a49f4b2eebd8eabb71833df3aa626b8f6cf49c9d05e5ab622a726b245e82424d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2972; amd64

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
$ docker pull mongo@sha256:89247b2234cd72fcc1f82ae25ba2181617b8b376014389f2812b4c7688694425
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.5 MB (154487227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6948c144c8544b835d971dbd067163183e6a6ab05d082a33c7c750531ae1673`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Wed, 29 May 2019 20:39:48 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 29 May 2019 20:40:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:40:06 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 20:40:07 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 29 May 2019 20:40:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 29 May 2019 20:40:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 29 May 2019 20:41:16 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 29 May 2019 20:41:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 29 May 2019 20:41:18 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 29 May 2019 20:41:18 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:41:19 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:41:19 GMT
ENV MONGO_MAJOR=3.6
# Wed, 29 May 2019 20:41:19 GMT
ENV MONGO_VERSION=3.6.12
# Wed, 29 May 2019 20:41:21 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:41:44 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:41:47 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:41:47 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:41:48 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:41:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:41:48 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:41:49 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a346b0eb8a11391dc1dd6341c9b26ea38f0266bece6362d360404a77296690ef`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1323ba5612ca90211af761826c4c0eb260925570bf5c80d973cf8c41be34fa9`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.5 MB (2474290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1a762317d33e68dd1d27a4363c30ba13ff044adfadb40afadaaae5d3affee9`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 1.1 MB (1085490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cd1cf117b296bd3a88deb6aef7b4732fde8f77bc1c4d28d7c82b1284ff72f4`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d1685331a036769b68da11105b1c2b8e0f6a142242dbf9b1a2d0dfeffb7037`  
		Last Modified: Wed, 29 May 2019 20:44:56 GMT  
		Size: 2.0 KB (1998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b494423e855ada8fdd8e228e3f61e7982a932158ce1069a7a651c4a12dbdacd`  
		Last Modified: Wed, 29 May 2019 20:44:56 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8453bc26ad23f143fbc593391aa5fc559bd1ea2506e42ae60e768f2e46b94f`  
		Last Modified: Wed, 29 May 2019 20:45:27 GMT  
		Size: 111.2 MB (111181890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4711e753272d32aa893db5187ff8158af2d6c001feafe5e4c699f48cb94cfc`  
		Last Modified: Wed, 29 May 2019 20:44:56 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6732a9e9ae752b8455e3b34fb34d1ee393e219cafd2cac32086c86f52326a30b`  
		Last Modified: Wed, 29 May 2019 20:44:56 GMT  
		Size: 3.9 KB (3916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.6.12` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:8cf2ed7dce3b0c5128072f4366ca5c11d6f6e67066cc66c5cad7f06342692be5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5791777908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddf7b917707472c755fa930f4fef033fa4093670fade744450d4d1bb35bbf92`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 May 2019 16:24:25 GMT
ENV MONGO_VERSION=3.6.12
# Wed, 22 May 2019 16:24:27 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.12-signed.msi
# Wed, 22 May 2019 16:24:28 GMT
ENV MONGO_DOWNLOAD_SHA256=074261abf106d79e4d42612ce1d22d397c10af7f73cc9947f8e36632683ef3f7
# Wed, 22 May 2019 16:27:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 16:27:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 May 2019 16:27:32 GMT
EXPOSE 27017
# Wed, 22 May 2019 16:27:33 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6348f0f076ebd97ecfb69e9a2cd6eddcba54b9fcafb764807332e2e3e8c968e2`  
		Last Modified: Wed, 22 May 2019 16:51:36 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9f4ddadcfc658a2748dadde51dd9a714cceb68c6299df138ff30ccb9962db3`  
		Last Modified: Wed, 22 May 2019 16:51:36 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d3b1879c7585bc25fa6faab02f5d3585728cbfccfbf885cec05e3ed9824ec5c`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36b73840013bded1bcb26cdb73625eaf86f5483941a72b29928429b8280ec8e`  
		Last Modified: Wed, 22 May 2019 16:51:56 GMT  
		Size: 92.0 MB (91981334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8154043bac5e7e0dbfb3e1e3e2649c266c05ce96b2dc858ec2b1bd1e8bd3b722`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f6cfae40107bde4326f512721cf3ff759a4c8569752fb411698d0d67e66963`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3311c695a96a7acf9b012272544d2f074e9e3359d9ab749b7d3d621a0ec8a937`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.12-windowsservercore`

```console
$ docker pull mongo@sha256:c6302c9ee4e3e4982b17f6423d58c883d823af79698e9f3003d4a785a45acaad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64

### `mongo:3.6.12-windowsservercore` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:8cf2ed7dce3b0c5128072f4366ca5c11d6f6e67066cc66c5cad7f06342692be5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5791777908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddf7b917707472c755fa930f4fef033fa4093670fade744450d4d1bb35bbf92`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 May 2019 16:24:25 GMT
ENV MONGO_VERSION=3.6.12
# Wed, 22 May 2019 16:24:27 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.12-signed.msi
# Wed, 22 May 2019 16:24:28 GMT
ENV MONGO_DOWNLOAD_SHA256=074261abf106d79e4d42612ce1d22d397c10af7f73cc9947f8e36632683ef3f7
# Wed, 22 May 2019 16:27:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 16:27:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 May 2019 16:27:32 GMT
EXPOSE 27017
# Wed, 22 May 2019 16:27:33 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6348f0f076ebd97ecfb69e9a2cd6eddcba54b9fcafb764807332e2e3e8c968e2`  
		Last Modified: Wed, 22 May 2019 16:51:36 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9f4ddadcfc658a2748dadde51dd9a714cceb68c6299df138ff30ccb9962db3`  
		Last Modified: Wed, 22 May 2019 16:51:36 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d3b1879c7585bc25fa6faab02f5d3585728cbfccfbf885cec05e3ed9824ec5c`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36b73840013bded1bcb26cdb73625eaf86f5483941a72b29928429b8280ec8e`  
		Last Modified: Wed, 22 May 2019 16:51:56 GMT  
		Size: 92.0 MB (91981334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8154043bac5e7e0dbfb3e1e3e2649c266c05ce96b2dc858ec2b1bd1e8bd3b722`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f6cfae40107bde4326f512721cf3ff759a4c8569752fb411698d0d67e66963`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3311c695a96a7acf9b012272544d2f074e9e3359d9ab749b7d3d621a0ec8a937`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.12-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:c6302c9ee4e3e4982b17f6423d58c883d823af79698e9f3003d4a785a45acaad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64

### `mongo:3.6.12-windowsservercore-ltsc2016` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:8cf2ed7dce3b0c5128072f4366ca5c11d6f6e67066cc66c5cad7f06342692be5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5791777908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddf7b917707472c755fa930f4fef033fa4093670fade744450d4d1bb35bbf92`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 May 2019 16:24:25 GMT
ENV MONGO_VERSION=3.6.12
# Wed, 22 May 2019 16:24:27 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.12-signed.msi
# Wed, 22 May 2019 16:24:28 GMT
ENV MONGO_DOWNLOAD_SHA256=074261abf106d79e4d42612ce1d22d397c10af7f73cc9947f8e36632683ef3f7
# Wed, 22 May 2019 16:27:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 16:27:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 May 2019 16:27:32 GMT
EXPOSE 27017
# Wed, 22 May 2019 16:27:33 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6348f0f076ebd97ecfb69e9a2cd6eddcba54b9fcafb764807332e2e3e8c968e2`  
		Last Modified: Wed, 22 May 2019 16:51:36 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9f4ddadcfc658a2748dadde51dd9a714cceb68c6299df138ff30ccb9962db3`  
		Last Modified: Wed, 22 May 2019 16:51:36 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d3b1879c7585bc25fa6faab02f5d3585728cbfccfbf885cec05e3ed9824ec5c`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36b73840013bded1bcb26cdb73625eaf86f5483941a72b29928429b8280ec8e`  
		Last Modified: Wed, 22 May 2019 16:51:56 GMT  
		Size: 92.0 MB (91981334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8154043bac5e7e0dbfb3e1e3e2649c266c05ce96b2dc858ec2b1bd1e8bd3b722`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f6cfae40107bde4326f512721cf3ff759a4c8569752fb411698d0d67e66963`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3311c695a96a7acf9b012272544d2f074e9e3359d9ab749b7d3d621a0ec8a937`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.12-xenial`

```console
$ docker pull mongo@sha256:a47dc6d1cae55dc446bc70af892f2ba5c33314da0d976b62f9d365875286b414
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
$ docker pull mongo@sha256:89247b2234cd72fcc1f82ae25ba2181617b8b376014389f2812b4c7688694425
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.5 MB (154487227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6948c144c8544b835d971dbd067163183e6a6ab05d082a33c7c750531ae1673`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Wed, 29 May 2019 20:39:48 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 29 May 2019 20:40:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:40:06 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 20:40:07 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 29 May 2019 20:40:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 29 May 2019 20:40:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 29 May 2019 20:41:16 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 29 May 2019 20:41:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 29 May 2019 20:41:18 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 29 May 2019 20:41:18 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:41:19 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:41:19 GMT
ENV MONGO_MAJOR=3.6
# Wed, 29 May 2019 20:41:19 GMT
ENV MONGO_VERSION=3.6.12
# Wed, 29 May 2019 20:41:21 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:41:44 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:41:47 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:41:47 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:41:48 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:41:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:41:48 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:41:49 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a346b0eb8a11391dc1dd6341c9b26ea38f0266bece6362d360404a77296690ef`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1323ba5612ca90211af761826c4c0eb260925570bf5c80d973cf8c41be34fa9`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.5 MB (2474290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1a762317d33e68dd1d27a4363c30ba13ff044adfadb40afadaaae5d3affee9`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 1.1 MB (1085490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cd1cf117b296bd3a88deb6aef7b4732fde8f77bc1c4d28d7c82b1284ff72f4`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d1685331a036769b68da11105b1c2b8e0f6a142242dbf9b1a2d0dfeffb7037`  
		Last Modified: Wed, 29 May 2019 20:44:56 GMT  
		Size: 2.0 KB (1998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b494423e855ada8fdd8e228e3f61e7982a932158ce1069a7a651c4a12dbdacd`  
		Last Modified: Wed, 29 May 2019 20:44:56 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8453bc26ad23f143fbc593391aa5fc559bd1ea2506e42ae60e768f2e46b94f`  
		Last Modified: Wed, 29 May 2019 20:45:27 GMT  
		Size: 111.2 MB (111181890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4711e753272d32aa893db5187ff8158af2d6c001feafe5e4c699f48cb94cfc`  
		Last Modified: Wed, 29 May 2019 20:44:56 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6732a9e9ae752b8455e3b34fb34d1ee393e219cafd2cac32086c86f52326a30b`  
		Last Modified: Wed, 29 May 2019 20:44:56 GMT  
		Size: 3.9 KB (3916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6-windowsservercore`

```console
$ docker pull mongo@sha256:c6302c9ee4e3e4982b17f6423d58c883d823af79698e9f3003d4a785a45acaad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64

### `mongo:3.6-windowsservercore` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:8cf2ed7dce3b0c5128072f4366ca5c11d6f6e67066cc66c5cad7f06342692be5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5791777908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddf7b917707472c755fa930f4fef033fa4093670fade744450d4d1bb35bbf92`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 May 2019 16:24:25 GMT
ENV MONGO_VERSION=3.6.12
# Wed, 22 May 2019 16:24:27 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.12-signed.msi
# Wed, 22 May 2019 16:24:28 GMT
ENV MONGO_DOWNLOAD_SHA256=074261abf106d79e4d42612ce1d22d397c10af7f73cc9947f8e36632683ef3f7
# Wed, 22 May 2019 16:27:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 16:27:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 May 2019 16:27:32 GMT
EXPOSE 27017
# Wed, 22 May 2019 16:27:33 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6348f0f076ebd97ecfb69e9a2cd6eddcba54b9fcafb764807332e2e3e8c968e2`  
		Last Modified: Wed, 22 May 2019 16:51:36 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9f4ddadcfc658a2748dadde51dd9a714cceb68c6299df138ff30ccb9962db3`  
		Last Modified: Wed, 22 May 2019 16:51:36 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d3b1879c7585bc25fa6faab02f5d3585728cbfccfbf885cec05e3ed9824ec5c`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36b73840013bded1bcb26cdb73625eaf86f5483941a72b29928429b8280ec8e`  
		Last Modified: Wed, 22 May 2019 16:51:56 GMT  
		Size: 92.0 MB (91981334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8154043bac5e7e0dbfb3e1e3e2649c266c05ce96b2dc858ec2b1bd1e8bd3b722`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f6cfae40107bde4326f512721cf3ff759a4c8569752fb411698d0d67e66963`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3311c695a96a7acf9b012272544d2f074e9e3359d9ab749b7d3d621a0ec8a937`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:c6302c9ee4e3e4982b17f6423d58c883d823af79698e9f3003d4a785a45acaad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64

### `mongo:3.6-windowsservercore-ltsc2016` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:8cf2ed7dce3b0c5128072f4366ca5c11d6f6e67066cc66c5cad7f06342692be5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5791777908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddf7b917707472c755fa930f4fef033fa4093670fade744450d4d1bb35bbf92`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 May 2019 16:24:25 GMT
ENV MONGO_VERSION=3.6.12
# Wed, 22 May 2019 16:24:27 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.12-signed.msi
# Wed, 22 May 2019 16:24:28 GMT
ENV MONGO_DOWNLOAD_SHA256=074261abf106d79e4d42612ce1d22d397c10af7f73cc9947f8e36632683ef3f7
# Wed, 22 May 2019 16:27:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 16:27:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 May 2019 16:27:32 GMT
EXPOSE 27017
# Wed, 22 May 2019 16:27:33 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6348f0f076ebd97ecfb69e9a2cd6eddcba54b9fcafb764807332e2e3e8c968e2`  
		Last Modified: Wed, 22 May 2019 16:51:36 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9f4ddadcfc658a2748dadde51dd9a714cceb68c6299df138ff30ccb9962db3`  
		Last Modified: Wed, 22 May 2019 16:51:36 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d3b1879c7585bc25fa6faab02f5d3585728cbfccfbf885cec05e3ed9824ec5c`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36b73840013bded1bcb26cdb73625eaf86f5483941a72b29928429b8280ec8e`  
		Last Modified: Wed, 22 May 2019 16:51:56 GMT  
		Size: 92.0 MB (91981334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8154043bac5e7e0dbfb3e1e3e2649c266c05ce96b2dc858ec2b1bd1e8bd3b722`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f6cfae40107bde4326f512721cf3ff759a4c8569752fb411698d0d67e66963`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3311c695a96a7acf9b012272544d2f074e9e3359d9ab749b7d3d621a0ec8a937`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6-xenial`

```console
$ docker pull mongo@sha256:a47dc6d1cae55dc446bc70af892f2ba5c33314da0d976b62f9d365875286b414
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
$ docker pull mongo@sha256:89247b2234cd72fcc1f82ae25ba2181617b8b376014389f2812b4c7688694425
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.5 MB (154487227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6948c144c8544b835d971dbd067163183e6a6ab05d082a33c7c750531ae1673`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Wed, 29 May 2019 20:39:48 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 29 May 2019 20:40:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:40:06 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 20:40:07 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 29 May 2019 20:40:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 29 May 2019 20:40:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 29 May 2019 20:41:16 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 29 May 2019 20:41:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 29 May 2019 20:41:18 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 29 May 2019 20:41:18 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:41:19 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:41:19 GMT
ENV MONGO_MAJOR=3.6
# Wed, 29 May 2019 20:41:19 GMT
ENV MONGO_VERSION=3.6.12
# Wed, 29 May 2019 20:41:21 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:41:44 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:41:47 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:41:47 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:41:48 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:41:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:41:48 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:41:49 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a346b0eb8a11391dc1dd6341c9b26ea38f0266bece6362d360404a77296690ef`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1323ba5612ca90211af761826c4c0eb260925570bf5c80d973cf8c41be34fa9`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.5 MB (2474290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1a762317d33e68dd1d27a4363c30ba13ff044adfadb40afadaaae5d3affee9`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 1.1 MB (1085490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cd1cf117b296bd3a88deb6aef7b4732fde8f77bc1c4d28d7c82b1284ff72f4`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d1685331a036769b68da11105b1c2b8e0f6a142242dbf9b1a2d0dfeffb7037`  
		Last Modified: Wed, 29 May 2019 20:44:56 GMT  
		Size: 2.0 KB (1998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b494423e855ada8fdd8e228e3f61e7982a932158ce1069a7a651c4a12dbdacd`  
		Last Modified: Wed, 29 May 2019 20:44:56 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8453bc26ad23f143fbc593391aa5fc559bd1ea2506e42ae60e768f2e46b94f`  
		Last Modified: Wed, 29 May 2019 20:45:27 GMT  
		Size: 111.2 MB (111181890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4711e753272d32aa893db5187ff8158af2d6c001feafe5e4c699f48cb94cfc`  
		Last Modified: Wed, 29 May 2019 20:44:56 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6732a9e9ae752b8455e3b34fb34d1ee393e219cafd2cac32086c86f52326a30b`  
		Last Modified: Wed, 29 May 2019 20:44:56 GMT  
		Size: 3.9 KB (3916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:c6302c9ee4e3e4982b17f6423d58c883d823af79698e9f3003d4a785a45acaad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64

### `mongo:3-windowsservercore` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:8cf2ed7dce3b0c5128072f4366ca5c11d6f6e67066cc66c5cad7f06342692be5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5791777908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddf7b917707472c755fa930f4fef033fa4093670fade744450d4d1bb35bbf92`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 May 2019 16:24:25 GMT
ENV MONGO_VERSION=3.6.12
# Wed, 22 May 2019 16:24:27 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.12-signed.msi
# Wed, 22 May 2019 16:24:28 GMT
ENV MONGO_DOWNLOAD_SHA256=074261abf106d79e4d42612ce1d22d397c10af7f73cc9947f8e36632683ef3f7
# Wed, 22 May 2019 16:27:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 16:27:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 May 2019 16:27:32 GMT
EXPOSE 27017
# Wed, 22 May 2019 16:27:33 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6348f0f076ebd97ecfb69e9a2cd6eddcba54b9fcafb764807332e2e3e8c968e2`  
		Last Modified: Wed, 22 May 2019 16:51:36 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9f4ddadcfc658a2748dadde51dd9a714cceb68c6299df138ff30ccb9962db3`  
		Last Modified: Wed, 22 May 2019 16:51:36 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d3b1879c7585bc25fa6faab02f5d3585728cbfccfbf885cec05e3ed9824ec5c`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36b73840013bded1bcb26cdb73625eaf86f5483941a72b29928429b8280ec8e`  
		Last Modified: Wed, 22 May 2019 16:51:56 GMT  
		Size: 92.0 MB (91981334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8154043bac5e7e0dbfb3e1e3e2649c266c05ce96b2dc858ec2b1bd1e8bd3b722`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f6cfae40107bde4326f512721cf3ff759a4c8569752fb411698d0d67e66963`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3311c695a96a7acf9b012272544d2f074e9e3359d9ab749b7d3d621a0ec8a937`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:c6302c9ee4e3e4982b17f6423d58c883d823af79698e9f3003d4a785a45acaad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64

### `mongo:3-windowsservercore-ltsc2016` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:8cf2ed7dce3b0c5128072f4366ca5c11d6f6e67066cc66c5cad7f06342692be5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5791777908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddf7b917707472c755fa930f4fef033fa4093670fade744450d4d1bb35bbf92`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 May 2019 16:24:25 GMT
ENV MONGO_VERSION=3.6.12
# Wed, 22 May 2019 16:24:27 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.12-signed.msi
# Wed, 22 May 2019 16:24:28 GMT
ENV MONGO_DOWNLOAD_SHA256=074261abf106d79e4d42612ce1d22d397c10af7f73cc9947f8e36632683ef3f7
# Wed, 22 May 2019 16:27:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 16:27:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 May 2019 16:27:32 GMT
EXPOSE 27017
# Wed, 22 May 2019 16:27:33 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6348f0f076ebd97ecfb69e9a2cd6eddcba54b9fcafb764807332e2e3e8c968e2`  
		Last Modified: Wed, 22 May 2019 16:51:36 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9f4ddadcfc658a2748dadde51dd9a714cceb68c6299df138ff30ccb9962db3`  
		Last Modified: Wed, 22 May 2019 16:51:36 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d3b1879c7585bc25fa6faab02f5d3585728cbfccfbf885cec05e3ed9824ec5c`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36b73840013bded1bcb26cdb73625eaf86f5483941a72b29928429b8280ec8e`  
		Last Modified: Wed, 22 May 2019 16:51:56 GMT  
		Size: 92.0 MB (91981334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8154043bac5e7e0dbfb3e1e3e2649c266c05ce96b2dc858ec2b1bd1e8bd3b722`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f6cfae40107bde4326f512721cf3ff759a4c8569752fb411698d0d67e66963`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3311c695a96a7acf9b012272544d2f074e9e3359d9ab749b7d3d621a0ec8a937`  
		Last Modified: Wed, 22 May 2019 16:51:34 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-xenial`

```console
$ docker pull mongo@sha256:a47dc6d1cae55dc446bc70af892f2ba5c33314da0d976b62f9d365875286b414
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
$ docker pull mongo@sha256:89247b2234cd72fcc1f82ae25ba2181617b8b376014389f2812b4c7688694425
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.5 MB (154487227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6948c144c8544b835d971dbd067163183e6a6ab05d082a33c7c750531ae1673`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Wed, 29 May 2019 20:39:48 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 29 May 2019 20:40:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:40:06 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 20:40:07 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 29 May 2019 20:40:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 29 May 2019 20:40:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 29 May 2019 20:41:16 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 29 May 2019 20:41:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 29 May 2019 20:41:18 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 29 May 2019 20:41:18 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:41:19 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:41:19 GMT
ENV MONGO_MAJOR=3.6
# Wed, 29 May 2019 20:41:19 GMT
ENV MONGO_VERSION=3.6.12
# Wed, 29 May 2019 20:41:21 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:41:44 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:41:47 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:41:47 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:41:48 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:41:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:41:48 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:41:49 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a346b0eb8a11391dc1dd6341c9b26ea38f0266bece6362d360404a77296690ef`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1323ba5612ca90211af761826c4c0eb260925570bf5c80d973cf8c41be34fa9`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.5 MB (2474290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1a762317d33e68dd1d27a4363c30ba13ff044adfadb40afadaaae5d3affee9`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 1.1 MB (1085490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cd1cf117b296bd3a88deb6aef7b4732fde8f77bc1c4d28d7c82b1284ff72f4`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d1685331a036769b68da11105b1c2b8e0f6a142242dbf9b1a2d0dfeffb7037`  
		Last Modified: Wed, 29 May 2019 20:44:56 GMT  
		Size: 2.0 KB (1998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b494423e855ada8fdd8e228e3f61e7982a932158ce1069a7a651c4a12dbdacd`  
		Last Modified: Wed, 29 May 2019 20:44:56 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8453bc26ad23f143fbc593391aa5fc559bd1ea2506e42ae60e768f2e46b94f`  
		Last Modified: Wed, 29 May 2019 20:45:27 GMT  
		Size: 111.2 MB (111181890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4711e753272d32aa893db5187ff8158af2d6c001feafe5e4c699f48cb94cfc`  
		Last Modified: Wed, 29 May 2019 20:44:56 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6732a9e9ae752b8455e3b34fb34d1ee393e219cafd2cac32086c86f52326a30b`  
		Last Modified: Wed, 29 May 2019 20:44:56 GMT  
		Size: 3.9 KB (3916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4`

```console
$ docker pull mongo@sha256:93bd5412f16f3b9f7e12eb94813087f195dad950807a8ca74aa2db080c203990
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2972; amd64
	-	windows version 10.0.17134.766; amd64

### `mongo:4` - linux; amd64

```console
$ docker pull mongo@sha256:05f12b17aa35948848c0d3f0198ce10c7f3e37438724911d0d8f9b6643535599
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152630643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fb47b43df1987480928787d3907f3be50941506ede82298b920df07011b8d94`
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
# Wed, 29 May 2019 20:26:27 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:26:28 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:27:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:27:01 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:27:01 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:27:01 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:27:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:27:02 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:27:02 GMT
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
	-	`sha256:c283cca25ace379a7a25c8f31ed635c965909f6165b555dfda8e572ab45c82a8`  
		Last Modified: Wed, 29 May 2019 20:27:46 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051b3304da4ab48f21f3a9856c2b6969329bc18523598d384137b6dce1acdf95`  
		Last Modified: Wed, 29 May 2019 20:28:08 GMT  
		Size: 104.8 MB (104756440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4327c3493368e2b595e866fd329889be6e5a82db1bbafbbfecd3004b37ee05`  
		Last Modified: Wed, 29 May 2019 20:27:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80003bc32b799981ceea62ad61a6601aa1b7fbb85f32a255100adbde56eadabd`  
		Last Modified: Wed, 29 May 2019 20:27:46 GMT  
		Size: 3.9 KB (3919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:bd056a4199692553f06d6021a4ea8e763ec6e2cccabc14a9125f9c252be5940c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.5 MB (142524264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c5f2579db20fdc79fd987ee61f40ce3f821bd39705ed7b4dd75ae25d46b73f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Wed, 29 May 2019 20:39:48 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 29 May 2019 20:40:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:40:06 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 20:40:07 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 29 May 2019 20:40:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 29 May 2019 20:40:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 29 May 2019 20:41:56 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 29 May 2019 20:41:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 29 May 2019 20:41:58 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 29 May 2019 20:41:58 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:41:58 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:41:59 GMT
ENV MONGO_MAJOR=4.0
# Wed, 29 May 2019 20:41:59 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:42:00 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:42:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:42:28 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:42:29 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:42:29 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:42:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:42:30 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:42:30 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a346b0eb8a11391dc1dd6341c9b26ea38f0266bece6362d360404a77296690ef`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1323ba5612ca90211af761826c4c0eb260925570bf5c80d973cf8c41be34fa9`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.5 MB (2474290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1a762317d33e68dd1d27a4363c30ba13ff044adfadb40afadaaae5d3affee9`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 1.1 MB (1085490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cd1cf117b296bd3a88deb6aef7b4732fde8f77bc1c4d28d7c82b1284ff72f4`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164f5e188c717c64780ae7768bbf69a7381c07c30a81873cfc255495d5df8963`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff2b0482ee28a64ed93d9fccfb25f7620b0ad678294a411f2ad956af95d0e23f`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bce7c26c7dc3235ab87e4b381f9b8e8a05857342c8a722151eb36436409ad9`  
		Last Modified: Wed, 29 May 2019 20:46:09 GMT  
		Size: 99.2 MB (99219492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe1386f976a405959772c8f74c59f79ad12948706a051999641a7b2ff491690`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af07a5b42066604eefd19aaca7afad9e595afe5d3388cfd073d4ad85acf89fc7`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 3.9 KB (3918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:b1ca419cbfc383e8a13078e5ee09a1c3514576a91f3d14c196b785d8c86e5f8e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5785025652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b826a4243bf19a547d0b1dce522933755e8d2f1d4ae8bb9387549c6ba0268164`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:18:50 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:18:52 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.10-signed.msi
# Wed, 29 May 2019 20:18:53 GMT
ENV MONGO_DOWNLOAD_SHA256=d1ddac7ba6e2fbdfaaa0a787b83c165d4ad61795c051dc0f3142717a0b6a3707
# Wed, 29 May 2019 20:22:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:22:34 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:22:35 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:22:37 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8614e7a9166aecb1a112fd30dd449b22f1f766b2e25e551ab3ca3937f790e0f8`  
		Last Modified: Wed, 29 May 2019 20:57:30 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb516f41ef3d428513082a3ef5c61c541f683e2f2bcf8c4af01f0c7024c6a39`  
		Last Modified: Wed, 29 May 2019 20:57:30 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a9140cc356bac323f8c1b4e9d243bf56e8d345c4885de2c3258e6ec087672a`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6395bf368e75a835e04ca5f0f37e8b1756eba1fe1de64b88e6e6d87e9e4fc9`  
		Last Modified: Wed, 29 May 2019 20:58:09 GMT  
		Size: 85.2 MB (85229202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd12d243a853e32737bcea47946e1a7b5937dd964db31023200c2457d9e67ef`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fcf17e6f70acbafd13b6b6f34e07822b2d42035b3baed1046387eb5af331f1`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a95abfa44a068d062c5f32a8e02b27c53831b06660e1aaf4259c8a9cd172fa9`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4` - windows version 10.0.17134.766; amd64

```console
$ docker pull mongo@sha256:028373d156e59512fdddd8971359861f5a080e0af48619b9cdfa7e56d1ef653b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2784938590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4b3386bb7c72e395b28c7811c6056c3686fd320cf35f13e7d655085fb917f16`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 16:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:22:49 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:22:50 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.10-signed.msi
# Wed, 29 May 2019 20:22:52 GMT
ENV MONGO_DOWNLOAD_SHA256=d1ddac7ba6e2fbdfaaa0a787b83c165d4ad61795c051dc0f3142717a0b6a3707
# Wed, 29 May 2019 20:42:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:42:32 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:42:34 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:42:36 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a67a6b4a761b56344d5ca197119cbfe6ffbacaac6bf5e860ec3a2ea827c81f88`  
		Last Modified: Wed, 22 May 2019 16:53:02 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b5c8c0e871040e7e91d5b16174c1d149ce0332b7b8b7f8930d6a8d2e401744`  
		Last Modified: Wed, 29 May 2019 20:58:35 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335322e451e70aae885934fba6cb2f43f666de6cf4593a1e13e387af329ada06`  
		Last Modified: Wed, 29 May 2019 20:58:35 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4eba3893a41cf13201c0640e444b7d842dbd289bb4a7c9abdc3a5274652c01`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c60d97ae5ca6737561d99c6f3f4b2c8540bf0e3f851b0be296649b883c6907`  
		Last Modified: Wed, 29 May 2019 21:02:01 GMT  
		Size: 481.5 MB (481473579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1bb86203542c23106a38562b2dc82003ad7ab68b184db922d1448501bc4fd6`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217748c354057a9d2b88f60c0e2572481f2a323f2e3fe30d5c7a7d7f098507f6`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b7cc2a8fb7f1423f18cff5bed90423aea5d08190ee544a7b7e5c6088e50b9c`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0`

```console
$ docker pull mongo@sha256:93bd5412f16f3b9f7e12eb94813087f195dad950807a8ca74aa2db080c203990
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2972; amd64
	-	windows version 10.0.17134.766; amd64

### `mongo:4.0` - linux; amd64

```console
$ docker pull mongo@sha256:05f12b17aa35948848c0d3f0198ce10c7f3e37438724911d0d8f9b6643535599
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152630643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fb47b43df1987480928787d3907f3be50941506ede82298b920df07011b8d94`
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
# Wed, 29 May 2019 20:26:27 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:26:28 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:27:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:27:01 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:27:01 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:27:01 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:27:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:27:02 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:27:02 GMT
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
	-	`sha256:c283cca25ace379a7a25c8f31ed635c965909f6165b555dfda8e572ab45c82a8`  
		Last Modified: Wed, 29 May 2019 20:27:46 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051b3304da4ab48f21f3a9856c2b6969329bc18523598d384137b6dce1acdf95`  
		Last Modified: Wed, 29 May 2019 20:28:08 GMT  
		Size: 104.8 MB (104756440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4327c3493368e2b595e866fd329889be6e5a82db1bbafbbfecd3004b37ee05`  
		Last Modified: Wed, 29 May 2019 20:27:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80003bc32b799981ceea62ad61a6601aa1b7fbb85f32a255100adbde56eadabd`  
		Last Modified: Wed, 29 May 2019 20:27:46 GMT  
		Size: 3.9 KB (3919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:bd056a4199692553f06d6021a4ea8e763ec6e2cccabc14a9125f9c252be5940c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.5 MB (142524264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c5f2579db20fdc79fd987ee61f40ce3f821bd39705ed7b4dd75ae25d46b73f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Wed, 29 May 2019 20:39:48 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 29 May 2019 20:40:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:40:06 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 20:40:07 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 29 May 2019 20:40:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 29 May 2019 20:40:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 29 May 2019 20:41:56 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 29 May 2019 20:41:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 29 May 2019 20:41:58 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 29 May 2019 20:41:58 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:41:58 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:41:59 GMT
ENV MONGO_MAJOR=4.0
# Wed, 29 May 2019 20:41:59 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:42:00 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:42:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:42:28 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:42:29 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:42:29 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:42:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:42:30 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:42:30 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a346b0eb8a11391dc1dd6341c9b26ea38f0266bece6362d360404a77296690ef`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1323ba5612ca90211af761826c4c0eb260925570bf5c80d973cf8c41be34fa9`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.5 MB (2474290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1a762317d33e68dd1d27a4363c30ba13ff044adfadb40afadaaae5d3affee9`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 1.1 MB (1085490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cd1cf117b296bd3a88deb6aef7b4732fde8f77bc1c4d28d7c82b1284ff72f4`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164f5e188c717c64780ae7768bbf69a7381c07c30a81873cfc255495d5df8963`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff2b0482ee28a64ed93d9fccfb25f7620b0ad678294a411f2ad956af95d0e23f`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bce7c26c7dc3235ab87e4b381f9b8e8a05857342c8a722151eb36436409ad9`  
		Last Modified: Wed, 29 May 2019 20:46:09 GMT  
		Size: 99.2 MB (99219492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe1386f976a405959772c8f74c59f79ad12948706a051999641a7b2ff491690`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af07a5b42066604eefd19aaca7afad9e595afe5d3388cfd073d4ad85acf89fc7`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 3.9 KB (3918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:b1ca419cbfc383e8a13078e5ee09a1c3514576a91f3d14c196b785d8c86e5f8e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5785025652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b826a4243bf19a547d0b1dce522933755e8d2f1d4ae8bb9387549c6ba0268164`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:18:50 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:18:52 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.10-signed.msi
# Wed, 29 May 2019 20:18:53 GMT
ENV MONGO_DOWNLOAD_SHA256=d1ddac7ba6e2fbdfaaa0a787b83c165d4ad61795c051dc0f3142717a0b6a3707
# Wed, 29 May 2019 20:22:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:22:34 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:22:35 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:22:37 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8614e7a9166aecb1a112fd30dd449b22f1f766b2e25e551ab3ca3937f790e0f8`  
		Last Modified: Wed, 29 May 2019 20:57:30 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb516f41ef3d428513082a3ef5c61c541f683e2f2bcf8c4af01f0c7024c6a39`  
		Last Modified: Wed, 29 May 2019 20:57:30 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a9140cc356bac323f8c1b4e9d243bf56e8d345c4885de2c3258e6ec087672a`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6395bf368e75a835e04ca5f0f37e8b1756eba1fe1de64b88e6e6d87e9e4fc9`  
		Last Modified: Wed, 29 May 2019 20:58:09 GMT  
		Size: 85.2 MB (85229202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd12d243a853e32737bcea47946e1a7b5937dd964db31023200c2457d9e67ef`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fcf17e6f70acbafd13b6b6f34e07822b2d42035b3baed1046387eb5af331f1`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a95abfa44a068d062c5f32a8e02b27c53831b06660e1aaf4259c8a9cd172fa9`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0` - windows version 10.0.17134.766; amd64

```console
$ docker pull mongo@sha256:028373d156e59512fdddd8971359861f5a080e0af48619b9cdfa7e56d1ef653b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2784938590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4b3386bb7c72e395b28c7811c6056c3686fd320cf35f13e7d655085fb917f16`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 16:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:22:49 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:22:50 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.10-signed.msi
# Wed, 29 May 2019 20:22:52 GMT
ENV MONGO_DOWNLOAD_SHA256=d1ddac7ba6e2fbdfaaa0a787b83c165d4ad61795c051dc0f3142717a0b6a3707
# Wed, 29 May 2019 20:42:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:42:32 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:42:34 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:42:36 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a67a6b4a761b56344d5ca197119cbfe6ffbacaac6bf5e860ec3a2ea827c81f88`  
		Last Modified: Wed, 22 May 2019 16:53:02 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b5c8c0e871040e7e91d5b16174c1d149ce0332b7b8b7f8930d6a8d2e401744`  
		Last Modified: Wed, 29 May 2019 20:58:35 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335322e451e70aae885934fba6cb2f43f666de6cf4593a1e13e387af329ada06`  
		Last Modified: Wed, 29 May 2019 20:58:35 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4eba3893a41cf13201c0640e444b7d842dbd289bb4a7c9abdc3a5274652c01`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c60d97ae5ca6737561d99c6f3f4b2c8540bf0e3f851b0be296649b883c6907`  
		Last Modified: Wed, 29 May 2019 21:02:01 GMT  
		Size: 481.5 MB (481473579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1bb86203542c23106a38562b2dc82003ad7ab68b184db922d1448501bc4fd6`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217748c354057a9d2b88f60c0e2572481f2a323f2e3fe30d5c7a7d7f098507f6`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b7cc2a8fb7f1423f18cff5bed90423aea5d08190ee544a7b7e5c6088e50b9c`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0.10`

```console
$ docker pull mongo@sha256:93bd5412f16f3b9f7e12eb94813087f195dad950807a8ca74aa2db080c203990
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2972; amd64
	-	windows version 10.0.17134.766; amd64

### `mongo:4.0.10` - linux; amd64

```console
$ docker pull mongo@sha256:05f12b17aa35948848c0d3f0198ce10c7f3e37438724911d0d8f9b6643535599
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152630643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fb47b43df1987480928787d3907f3be50941506ede82298b920df07011b8d94`
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
# Wed, 29 May 2019 20:26:27 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:26:28 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:27:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:27:01 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:27:01 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:27:01 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:27:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:27:02 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:27:02 GMT
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
	-	`sha256:c283cca25ace379a7a25c8f31ed635c965909f6165b555dfda8e572ab45c82a8`  
		Last Modified: Wed, 29 May 2019 20:27:46 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051b3304da4ab48f21f3a9856c2b6969329bc18523598d384137b6dce1acdf95`  
		Last Modified: Wed, 29 May 2019 20:28:08 GMT  
		Size: 104.8 MB (104756440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4327c3493368e2b595e866fd329889be6e5a82db1bbafbbfecd3004b37ee05`  
		Last Modified: Wed, 29 May 2019 20:27:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80003bc32b799981ceea62ad61a6601aa1b7fbb85f32a255100adbde56eadabd`  
		Last Modified: Wed, 29 May 2019 20:27:46 GMT  
		Size: 3.9 KB (3919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0.10` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:bd056a4199692553f06d6021a4ea8e763ec6e2cccabc14a9125f9c252be5940c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.5 MB (142524264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c5f2579db20fdc79fd987ee61f40ce3f821bd39705ed7b4dd75ae25d46b73f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Wed, 29 May 2019 20:39:48 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 29 May 2019 20:40:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:40:06 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 20:40:07 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 29 May 2019 20:40:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 29 May 2019 20:40:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 29 May 2019 20:41:56 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 29 May 2019 20:41:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 29 May 2019 20:41:58 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 29 May 2019 20:41:58 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:41:58 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:41:59 GMT
ENV MONGO_MAJOR=4.0
# Wed, 29 May 2019 20:41:59 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:42:00 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:42:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:42:28 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:42:29 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:42:29 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:42:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:42:30 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:42:30 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a346b0eb8a11391dc1dd6341c9b26ea38f0266bece6362d360404a77296690ef`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1323ba5612ca90211af761826c4c0eb260925570bf5c80d973cf8c41be34fa9`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.5 MB (2474290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1a762317d33e68dd1d27a4363c30ba13ff044adfadb40afadaaae5d3affee9`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 1.1 MB (1085490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cd1cf117b296bd3a88deb6aef7b4732fde8f77bc1c4d28d7c82b1284ff72f4`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164f5e188c717c64780ae7768bbf69a7381c07c30a81873cfc255495d5df8963`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff2b0482ee28a64ed93d9fccfb25f7620b0ad678294a411f2ad956af95d0e23f`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bce7c26c7dc3235ab87e4b381f9b8e8a05857342c8a722151eb36436409ad9`  
		Last Modified: Wed, 29 May 2019 20:46:09 GMT  
		Size: 99.2 MB (99219492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe1386f976a405959772c8f74c59f79ad12948706a051999641a7b2ff491690`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af07a5b42066604eefd19aaca7afad9e595afe5d3388cfd073d4ad85acf89fc7`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 3.9 KB (3918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0.10` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:b1ca419cbfc383e8a13078e5ee09a1c3514576a91f3d14c196b785d8c86e5f8e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5785025652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b826a4243bf19a547d0b1dce522933755e8d2f1d4ae8bb9387549c6ba0268164`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:18:50 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:18:52 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.10-signed.msi
# Wed, 29 May 2019 20:18:53 GMT
ENV MONGO_DOWNLOAD_SHA256=d1ddac7ba6e2fbdfaaa0a787b83c165d4ad61795c051dc0f3142717a0b6a3707
# Wed, 29 May 2019 20:22:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:22:34 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:22:35 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:22:37 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8614e7a9166aecb1a112fd30dd449b22f1f766b2e25e551ab3ca3937f790e0f8`  
		Last Modified: Wed, 29 May 2019 20:57:30 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb516f41ef3d428513082a3ef5c61c541f683e2f2bcf8c4af01f0c7024c6a39`  
		Last Modified: Wed, 29 May 2019 20:57:30 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a9140cc356bac323f8c1b4e9d243bf56e8d345c4885de2c3258e6ec087672a`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6395bf368e75a835e04ca5f0f37e8b1756eba1fe1de64b88e6e6d87e9e4fc9`  
		Last Modified: Wed, 29 May 2019 20:58:09 GMT  
		Size: 85.2 MB (85229202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd12d243a853e32737bcea47946e1a7b5937dd964db31023200c2457d9e67ef`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fcf17e6f70acbafd13b6b6f34e07822b2d42035b3baed1046387eb5af331f1`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a95abfa44a068d062c5f32a8e02b27c53831b06660e1aaf4259c8a9cd172fa9`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0.10` - windows version 10.0.17134.766; amd64

```console
$ docker pull mongo@sha256:028373d156e59512fdddd8971359861f5a080e0af48619b9cdfa7e56d1ef653b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2784938590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4b3386bb7c72e395b28c7811c6056c3686fd320cf35f13e7d655085fb917f16`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 16:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:22:49 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:22:50 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.10-signed.msi
# Wed, 29 May 2019 20:22:52 GMT
ENV MONGO_DOWNLOAD_SHA256=d1ddac7ba6e2fbdfaaa0a787b83c165d4ad61795c051dc0f3142717a0b6a3707
# Wed, 29 May 2019 20:42:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:42:32 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:42:34 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:42:36 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a67a6b4a761b56344d5ca197119cbfe6ffbacaac6bf5e860ec3a2ea827c81f88`  
		Last Modified: Wed, 22 May 2019 16:53:02 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b5c8c0e871040e7e91d5b16174c1d149ce0332b7b8b7f8930d6a8d2e401744`  
		Last Modified: Wed, 29 May 2019 20:58:35 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335322e451e70aae885934fba6cb2f43f666de6cf4593a1e13e387af329ada06`  
		Last Modified: Wed, 29 May 2019 20:58:35 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4eba3893a41cf13201c0640e444b7d842dbd289bb4a7c9abdc3a5274652c01`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c60d97ae5ca6737561d99c6f3f4b2c8540bf0e3f851b0be296649b883c6907`  
		Last Modified: Wed, 29 May 2019 21:02:01 GMT  
		Size: 481.5 MB (481473579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1bb86203542c23106a38562b2dc82003ad7ab68b184db922d1448501bc4fd6`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217748c354057a9d2b88f60c0e2572481f2a323f2e3fe30d5c7a7d7f098507f6`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b7cc2a8fb7f1423f18cff5bed90423aea5d08190ee544a7b7e5c6088e50b9c`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0.10-windowsservercore`

```console
$ docker pull mongo@sha256:c5e03c720ef3e6a1cb11134678a714b71249a04cf47c97334dadb6848453617f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64
	-	windows version 10.0.17134.766; amd64

### `mongo:4.0.10-windowsservercore` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:b1ca419cbfc383e8a13078e5ee09a1c3514576a91f3d14c196b785d8c86e5f8e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5785025652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b826a4243bf19a547d0b1dce522933755e8d2f1d4ae8bb9387549c6ba0268164`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:18:50 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:18:52 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.10-signed.msi
# Wed, 29 May 2019 20:18:53 GMT
ENV MONGO_DOWNLOAD_SHA256=d1ddac7ba6e2fbdfaaa0a787b83c165d4ad61795c051dc0f3142717a0b6a3707
# Wed, 29 May 2019 20:22:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:22:34 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:22:35 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:22:37 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8614e7a9166aecb1a112fd30dd449b22f1f766b2e25e551ab3ca3937f790e0f8`  
		Last Modified: Wed, 29 May 2019 20:57:30 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb516f41ef3d428513082a3ef5c61c541f683e2f2bcf8c4af01f0c7024c6a39`  
		Last Modified: Wed, 29 May 2019 20:57:30 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a9140cc356bac323f8c1b4e9d243bf56e8d345c4885de2c3258e6ec087672a`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6395bf368e75a835e04ca5f0f37e8b1756eba1fe1de64b88e6e6d87e9e4fc9`  
		Last Modified: Wed, 29 May 2019 20:58:09 GMT  
		Size: 85.2 MB (85229202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd12d243a853e32737bcea47946e1a7b5937dd964db31023200c2457d9e67ef`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fcf17e6f70acbafd13b6b6f34e07822b2d42035b3baed1046387eb5af331f1`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a95abfa44a068d062c5f32a8e02b27c53831b06660e1aaf4259c8a9cd172fa9`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0.10-windowsservercore` - windows version 10.0.17134.766; amd64

```console
$ docker pull mongo@sha256:028373d156e59512fdddd8971359861f5a080e0af48619b9cdfa7e56d1ef653b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2784938590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4b3386bb7c72e395b28c7811c6056c3686fd320cf35f13e7d655085fb917f16`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 16:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:22:49 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:22:50 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.10-signed.msi
# Wed, 29 May 2019 20:22:52 GMT
ENV MONGO_DOWNLOAD_SHA256=d1ddac7ba6e2fbdfaaa0a787b83c165d4ad61795c051dc0f3142717a0b6a3707
# Wed, 29 May 2019 20:42:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:42:32 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:42:34 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:42:36 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a67a6b4a761b56344d5ca197119cbfe6ffbacaac6bf5e860ec3a2ea827c81f88`  
		Last Modified: Wed, 22 May 2019 16:53:02 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b5c8c0e871040e7e91d5b16174c1d149ce0332b7b8b7f8930d6a8d2e401744`  
		Last Modified: Wed, 29 May 2019 20:58:35 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335322e451e70aae885934fba6cb2f43f666de6cf4593a1e13e387af329ada06`  
		Last Modified: Wed, 29 May 2019 20:58:35 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4eba3893a41cf13201c0640e444b7d842dbd289bb4a7c9abdc3a5274652c01`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c60d97ae5ca6737561d99c6f3f4b2c8540bf0e3f851b0be296649b883c6907`  
		Last Modified: Wed, 29 May 2019 21:02:01 GMT  
		Size: 481.5 MB (481473579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1bb86203542c23106a38562b2dc82003ad7ab68b184db922d1448501bc4fd6`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217748c354057a9d2b88f60c0e2572481f2a323f2e3fe30d5c7a7d7f098507f6`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b7cc2a8fb7f1423f18cff5bed90423aea5d08190ee544a7b7e5c6088e50b9c`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0.10-windowsservercore-1803`

```console
$ docker pull mongo@sha256:62209176b6cae484059897ff6ad86fc7eca13eba8989606c992973da1aec93a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.766; amd64

### `mongo:4.0.10-windowsservercore-1803` - windows version 10.0.17134.766; amd64

```console
$ docker pull mongo@sha256:028373d156e59512fdddd8971359861f5a080e0af48619b9cdfa7e56d1ef653b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2784938590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4b3386bb7c72e395b28c7811c6056c3686fd320cf35f13e7d655085fb917f16`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 16:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:22:49 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:22:50 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.10-signed.msi
# Wed, 29 May 2019 20:22:52 GMT
ENV MONGO_DOWNLOAD_SHA256=d1ddac7ba6e2fbdfaaa0a787b83c165d4ad61795c051dc0f3142717a0b6a3707
# Wed, 29 May 2019 20:42:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:42:32 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:42:34 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:42:36 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a67a6b4a761b56344d5ca197119cbfe6ffbacaac6bf5e860ec3a2ea827c81f88`  
		Last Modified: Wed, 22 May 2019 16:53:02 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b5c8c0e871040e7e91d5b16174c1d149ce0332b7b8b7f8930d6a8d2e401744`  
		Last Modified: Wed, 29 May 2019 20:58:35 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335322e451e70aae885934fba6cb2f43f666de6cf4593a1e13e387af329ada06`  
		Last Modified: Wed, 29 May 2019 20:58:35 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4eba3893a41cf13201c0640e444b7d842dbd289bb4a7c9abdc3a5274652c01`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c60d97ae5ca6737561d99c6f3f4b2c8540bf0e3f851b0be296649b883c6907`  
		Last Modified: Wed, 29 May 2019 21:02:01 GMT  
		Size: 481.5 MB (481473579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1bb86203542c23106a38562b2dc82003ad7ab68b184db922d1448501bc4fd6`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217748c354057a9d2b88f60c0e2572481f2a323f2e3fe30d5c7a7d7f098507f6`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b7cc2a8fb7f1423f18cff5bed90423aea5d08190ee544a7b7e5c6088e50b9c`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0.10-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:ba6e81a06617ff8eeda353da66d4133c249a540562d848922aa6edad13f7b6ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64

### `mongo:4.0.10-windowsservercore-ltsc2016` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:b1ca419cbfc383e8a13078e5ee09a1c3514576a91f3d14c196b785d8c86e5f8e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5785025652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b826a4243bf19a547d0b1dce522933755e8d2f1d4ae8bb9387549c6ba0268164`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:18:50 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:18:52 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.10-signed.msi
# Wed, 29 May 2019 20:18:53 GMT
ENV MONGO_DOWNLOAD_SHA256=d1ddac7ba6e2fbdfaaa0a787b83c165d4ad61795c051dc0f3142717a0b6a3707
# Wed, 29 May 2019 20:22:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:22:34 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:22:35 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:22:37 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8614e7a9166aecb1a112fd30dd449b22f1f766b2e25e551ab3ca3937f790e0f8`  
		Last Modified: Wed, 29 May 2019 20:57:30 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb516f41ef3d428513082a3ef5c61c541f683e2f2bcf8c4af01f0c7024c6a39`  
		Last Modified: Wed, 29 May 2019 20:57:30 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a9140cc356bac323f8c1b4e9d243bf56e8d345c4885de2c3258e6ec087672a`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6395bf368e75a835e04ca5f0f37e8b1756eba1fe1de64b88e6e6d87e9e4fc9`  
		Last Modified: Wed, 29 May 2019 20:58:09 GMT  
		Size: 85.2 MB (85229202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd12d243a853e32737bcea47946e1a7b5937dd964db31023200c2457d9e67ef`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fcf17e6f70acbafd13b6b6f34e07822b2d42035b3baed1046387eb5af331f1`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a95abfa44a068d062c5f32a8e02b27c53831b06660e1aaf4259c8a9cd172fa9`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0.10-xenial`

```console
$ docker pull mongo@sha256:c33ab7640ed2a4e083532e9c63aadf9c5e21e589f5e46b8b2ef1b5a1981e6b9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:4.0.10-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:05f12b17aa35948848c0d3f0198ce10c7f3e37438724911d0d8f9b6643535599
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152630643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fb47b43df1987480928787d3907f3be50941506ede82298b920df07011b8d94`
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
# Wed, 29 May 2019 20:26:27 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:26:28 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:27:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:27:01 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:27:01 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:27:01 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:27:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:27:02 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:27:02 GMT
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
	-	`sha256:c283cca25ace379a7a25c8f31ed635c965909f6165b555dfda8e572ab45c82a8`  
		Last Modified: Wed, 29 May 2019 20:27:46 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051b3304da4ab48f21f3a9856c2b6969329bc18523598d384137b6dce1acdf95`  
		Last Modified: Wed, 29 May 2019 20:28:08 GMT  
		Size: 104.8 MB (104756440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4327c3493368e2b595e866fd329889be6e5a82db1bbafbbfecd3004b37ee05`  
		Last Modified: Wed, 29 May 2019 20:27:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80003bc32b799981ceea62ad61a6601aa1b7fbb85f32a255100adbde56eadabd`  
		Last Modified: Wed, 29 May 2019 20:27:46 GMT  
		Size: 3.9 KB (3919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0.10-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:bd056a4199692553f06d6021a4ea8e763ec6e2cccabc14a9125f9c252be5940c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.5 MB (142524264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c5f2579db20fdc79fd987ee61f40ce3f821bd39705ed7b4dd75ae25d46b73f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Wed, 29 May 2019 20:39:48 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 29 May 2019 20:40:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:40:06 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 20:40:07 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 29 May 2019 20:40:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 29 May 2019 20:40:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 29 May 2019 20:41:56 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 29 May 2019 20:41:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 29 May 2019 20:41:58 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 29 May 2019 20:41:58 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:41:58 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:41:59 GMT
ENV MONGO_MAJOR=4.0
# Wed, 29 May 2019 20:41:59 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:42:00 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:42:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:42:28 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:42:29 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:42:29 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:42:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:42:30 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:42:30 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a346b0eb8a11391dc1dd6341c9b26ea38f0266bece6362d360404a77296690ef`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1323ba5612ca90211af761826c4c0eb260925570bf5c80d973cf8c41be34fa9`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.5 MB (2474290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1a762317d33e68dd1d27a4363c30ba13ff044adfadb40afadaaae5d3affee9`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 1.1 MB (1085490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cd1cf117b296bd3a88deb6aef7b4732fde8f77bc1c4d28d7c82b1284ff72f4`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164f5e188c717c64780ae7768bbf69a7381c07c30a81873cfc255495d5df8963`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff2b0482ee28a64ed93d9fccfb25f7620b0ad678294a411f2ad956af95d0e23f`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bce7c26c7dc3235ab87e4b381f9b8e8a05857342c8a722151eb36436409ad9`  
		Last Modified: Wed, 29 May 2019 20:46:09 GMT  
		Size: 99.2 MB (99219492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe1386f976a405959772c8f74c59f79ad12948706a051999641a7b2ff491690`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af07a5b42066604eefd19aaca7afad9e595afe5d3388cfd073d4ad85acf89fc7`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 3.9 KB (3918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0-windowsservercore`

```console
$ docker pull mongo@sha256:c5e03c720ef3e6a1cb11134678a714b71249a04cf47c97334dadb6848453617f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64
	-	windows version 10.0.17134.766; amd64

### `mongo:4.0-windowsservercore` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:b1ca419cbfc383e8a13078e5ee09a1c3514576a91f3d14c196b785d8c86e5f8e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5785025652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b826a4243bf19a547d0b1dce522933755e8d2f1d4ae8bb9387549c6ba0268164`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:18:50 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:18:52 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.10-signed.msi
# Wed, 29 May 2019 20:18:53 GMT
ENV MONGO_DOWNLOAD_SHA256=d1ddac7ba6e2fbdfaaa0a787b83c165d4ad61795c051dc0f3142717a0b6a3707
# Wed, 29 May 2019 20:22:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:22:34 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:22:35 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:22:37 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8614e7a9166aecb1a112fd30dd449b22f1f766b2e25e551ab3ca3937f790e0f8`  
		Last Modified: Wed, 29 May 2019 20:57:30 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb516f41ef3d428513082a3ef5c61c541f683e2f2bcf8c4af01f0c7024c6a39`  
		Last Modified: Wed, 29 May 2019 20:57:30 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a9140cc356bac323f8c1b4e9d243bf56e8d345c4885de2c3258e6ec087672a`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6395bf368e75a835e04ca5f0f37e8b1756eba1fe1de64b88e6e6d87e9e4fc9`  
		Last Modified: Wed, 29 May 2019 20:58:09 GMT  
		Size: 85.2 MB (85229202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd12d243a853e32737bcea47946e1a7b5937dd964db31023200c2457d9e67ef`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fcf17e6f70acbafd13b6b6f34e07822b2d42035b3baed1046387eb5af331f1`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a95abfa44a068d062c5f32a8e02b27c53831b06660e1aaf4259c8a9cd172fa9`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0-windowsservercore` - windows version 10.0.17134.766; amd64

```console
$ docker pull mongo@sha256:028373d156e59512fdddd8971359861f5a080e0af48619b9cdfa7e56d1ef653b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2784938590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4b3386bb7c72e395b28c7811c6056c3686fd320cf35f13e7d655085fb917f16`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 16:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:22:49 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:22:50 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.10-signed.msi
# Wed, 29 May 2019 20:22:52 GMT
ENV MONGO_DOWNLOAD_SHA256=d1ddac7ba6e2fbdfaaa0a787b83c165d4ad61795c051dc0f3142717a0b6a3707
# Wed, 29 May 2019 20:42:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:42:32 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:42:34 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:42:36 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a67a6b4a761b56344d5ca197119cbfe6ffbacaac6bf5e860ec3a2ea827c81f88`  
		Last Modified: Wed, 22 May 2019 16:53:02 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b5c8c0e871040e7e91d5b16174c1d149ce0332b7b8b7f8930d6a8d2e401744`  
		Last Modified: Wed, 29 May 2019 20:58:35 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335322e451e70aae885934fba6cb2f43f666de6cf4593a1e13e387af329ada06`  
		Last Modified: Wed, 29 May 2019 20:58:35 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4eba3893a41cf13201c0640e444b7d842dbd289bb4a7c9abdc3a5274652c01`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c60d97ae5ca6737561d99c6f3f4b2c8540bf0e3f851b0be296649b883c6907`  
		Last Modified: Wed, 29 May 2019 21:02:01 GMT  
		Size: 481.5 MB (481473579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1bb86203542c23106a38562b2dc82003ad7ab68b184db922d1448501bc4fd6`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217748c354057a9d2b88f60c0e2572481f2a323f2e3fe30d5c7a7d7f098507f6`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b7cc2a8fb7f1423f18cff5bed90423aea5d08190ee544a7b7e5c6088e50b9c`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0-windowsservercore-1803`

```console
$ docker pull mongo@sha256:62209176b6cae484059897ff6ad86fc7eca13eba8989606c992973da1aec93a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.766; amd64

### `mongo:4.0-windowsservercore-1803` - windows version 10.0.17134.766; amd64

```console
$ docker pull mongo@sha256:028373d156e59512fdddd8971359861f5a080e0af48619b9cdfa7e56d1ef653b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2784938590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4b3386bb7c72e395b28c7811c6056c3686fd320cf35f13e7d655085fb917f16`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 16:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:22:49 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:22:50 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.10-signed.msi
# Wed, 29 May 2019 20:22:52 GMT
ENV MONGO_DOWNLOAD_SHA256=d1ddac7ba6e2fbdfaaa0a787b83c165d4ad61795c051dc0f3142717a0b6a3707
# Wed, 29 May 2019 20:42:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:42:32 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:42:34 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:42:36 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a67a6b4a761b56344d5ca197119cbfe6ffbacaac6bf5e860ec3a2ea827c81f88`  
		Last Modified: Wed, 22 May 2019 16:53:02 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b5c8c0e871040e7e91d5b16174c1d149ce0332b7b8b7f8930d6a8d2e401744`  
		Last Modified: Wed, 29 May 2019 20:58:35 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335322e451e70aae885934fba6cb2f43f666de6cf4593a1e13e387af329ada06`  
		Last Modified: Wed, 29 May 2019 20:58:35 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4eba3893a41cf13201c0640e444b7d842dbd289bb4a7c9abdc3a5274652c01`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c60d97ae5ca6737561d99c6f3f4b2c8540bf0e3f851b0be296649b883c6907`  
		Last Modified: Wed, 29 May 2019 21:02:01 GMT  
		Size: 481.5 MB (481473579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1bb86203542c23106a38562b2dc82003ad7ab68b184db922d1448501bc4fd6`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217748c354057a9d2b88f60c0e2572481f2a323f2e3fe30d5c7a7d7f098507f6`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b7cc2a8fb7f1423f18cff5bed90423aea5d08190ee544a7b7e5c6088e50b9c`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:ba6e81a06617ff8eeda353da66d4133c249a540562d848922aa6edad13f7b6ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64

### `mongo:4.0-windowsservercore-ltsc2016` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:b1ca419cbfc383e8a13078e5ee09a1c3514576a91f3d14c196b785d8c86e5f8e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5785025652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b826a4243bf19a547d0b1dce522933755e8d2f1d4ae8bb9387549c6ba0268164`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:18:50 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:18:52 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.10-signed.msi
# Wed, 29 May 2019 20:18:53 GMT
ENV MONGO_DOWNLOAD_SHA256=d1ddac7ba6e2fbdfaaa0a787b83c165d4ad61795c051dc0f3142717a0b6a3707
# Wed, 29 May 2019 20:22:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:22:34 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:22:35 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:22:37 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8614e7a9166aecb1a112fd30dd449b22f1f766b2e25e551ab3ca3937f790e0f8`  
		Last Modified: Wed, 29 May 2019 20:57:30 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb516f41ef3d428513082a3ef5c61c541f683e2f2bcf8c4af01f0c7024c6a39`  
		Last Modified: Wed, 29 May 2019 20:57:30 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a9140cc356bac323f8c1b4e9d243bf56e8d345c4885de2c3258e6ec087672a`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6395bf368e75a835e04ca5f0f37e8b1756eba1fe1de64b88e6e6d87e9e4fc9`  
		Last Modified: Wed, 29 May 2019 20:58:09 GMT  
		Size: 85.2 MB (85229202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd12d243a853e32737bcea47946e1a7b5937dd964db31023200c2457d9e67ef`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fcf17e6f70acbafd13b6b6f34e07822b2d42035b3baed1046387eb5af331f1`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a95abfa44a068d062c5f32a8e02b27c53831b06660e1aaf4259c8a9cd172fa9`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0-xenial`

```console
$ docker pull mongo@sha256:c33ab7640ed2a4e083532e9c63aadf9c5e21e589f5e46b8b2ef1b5a1981e6b9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:4.0-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:05f12b17aa35948848c0d3f0198ce10c7f3e37438724911d0d8f9b6643535599
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152630643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fb47b43df1987480928787d3907f3be50941506ede82298b920df07011b8d94`
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
# Wed, 29 May 2019 20:26:27 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:26:28 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:27:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:27:01 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:27:01 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:27:01 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:27:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:27:02 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:27:02 GMT
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
	-	`sha256:c283cca25ace379a7a25c8f31ed635c965909f6165b555dfda8e572ab45c82a8`  
		Last Modified: Wed, 29 May 2019 20:27:46 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051b3304da4ab48f21f3a9856c2b6969329bc18523598d384137b6dce1acdf95`  
		Last Modified: Wed, 29 May 2019 20:28:08 GMT  
		Size: 104.8 MB (104756440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4327c3493368e2b595e866fd329889be6e5a82db1bbafbbfecd3004b37ee05`  
		Last Modified: Wed, 29 May 2019 20:27:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80003bc32b799981ceea62ad61a6601aa1b7fbb85f32a255100adbde56eadabd`  
		Last Modified: Wed, 29 May 2019 20:27:46 GMT  
		Size: 3.9 KB (3919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:bd056a4199692553f06d6021a4ea8e763ec6e2cccabc14a9125f9c252be5940c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.5 MB (142524264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c5f2579db20fdc79fd987ee61f40ce3f821bd39705ed7b4dd75ae25d46b73f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Wed, 29 May 2019 20:39:48 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 29 May 2019 20:40:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:40:06 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 20:40:07 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 29 May 2019 20:40:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 29 May 2019 20:40:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 29 May 2019 20:41:56 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 29 May 2019 20:41:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 29 May 2019 20:41:58 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 29 May 2019 20:41:58 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:41:58 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:41:59 GMT
ENV MONGO_MAJOR=4.0
# Wed, 29 May 2019 20:41:59 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:42:00 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:42:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:42:28 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:42:29 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:42:29 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:42:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:42:30 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:42:30 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a346b0eb8a11391dc1dd6341c9b26ea38f0266bece6362d360404a77296690ef`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1323ba5612ca90211af761826c4c0eb260925570bf5c80d973cf8c41be34fa9`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.5 MB (2474290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1a762317d33e68dd1d27a4363c30ba13ff044adfadb40afadaaae5d3affee9`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 1.1 MB (1085490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cd1cf117b296bd3a88deb6aef7b4732fde8f77bc1c4d28d7c82b1284ff72f4`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164f5e188c717c64780ae7768bbf69a7381c07c30a81873cfc255495d5df8963`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff2b0482ee28a64ed93d9fccfb25f7620b0ad678294a411f2ad956af95d0e23f`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bce7c26c7dc3235ab87e4b381f9b8e8a05857342c8a722151eb36436409ad9`  
		Last Modified: Wed, 29 May 2019 20:46:09 GMT  
		Size: 99.2 MB (99219492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe1386f976a405959772c8f74c59f79ad12948706a051999641a7b2ff491690`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af07a5b42066604eefd19aaca7afad9e595afe5d3388cfd073d4ad85acf89fc7`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 3.9 KB (3918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.1`

```console
$ docker pull mongo@sha256:657740beb79d8089f4a88921915c00360a04f088686e10b0a8bd2b85a4515d67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; s390x
	-	windows version 10.0.14393.2972; amd64
	-	windows version 10.0.17134.766; amd64

### `mongo:4.1` - linux; amd64

```console
$ docker pull mongo@sha256:cf2a849118a1b5c45480d53467516c7bfa1d8c0603a5877125a23654a9b2cc67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.4 MB (147445404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be945be05053751347453a706796f794fb35e184ee55e8563d066f4f583e766c`
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
# Wed, 29 May 2019 20:27:05 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:27:06 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:27:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:27:30 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:27:30 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:27:31 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:27:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:27:31 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:27:31 GMT
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
	-	`sha256:f656cc5d816f6ffdc16171097c0174cc869b1cc356c950adaf1aa2d3c18fb74d`  
		Last Modified: Wed, 29 May 2019 20:28:22 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fcb6c132cbcbccccd04795c42964ac72c4ef06b6d343bfe16fee02fe8ee1c7e`  
		Last Modified: Wed, 29 May 2019 20:28:38 GMT  
		Size: 110.1 MB (110089297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e5fab80a3f22d968d50cae98b3cde756ddf31cabeb005ce408a4c989f2722c`  
		Last Modified: Wed, 29 May 2019 20:28:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f10e4e2178c203feab5d4ab40393ecc3b60b4ca3cb8db47bcf2c4c1355cc906`  
		Last Modified: Wed, 29 May 2019 20:28:22 GMT  
		Size: 3.9 KB (3918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:e5b997a367871383b647df26a5ebdd65e98612b8343ec897983dcf7bed26b072
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136758762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:130ab62e8ccf99be97608a74564e2e8fe0703e0ae670b5e295d5883d1eed8efa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Wed, 29 May 2019 20:42:35 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 29 May 2019 20:42:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:42:52 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 20:42:52 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 29 May 2019 20:43:14 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 29 May 2019 20:43:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 29 May 2019 20:43:15 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Wed, 29 May 2019 20:43:17 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 29 May 2019 20:43:17 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 29 May 2019 20:43:18 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:43:18 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:43:18 GMT
ENV MONGO_MAJOR=4.1
# Wed, 29 May 2019 20:43:19 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:43:20 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:43:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:43:49 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:43:49 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:43:50 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:43:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:43:50 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:43:51 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c7e3735789afb9568d403c1c808403411d387ffe6a48cc10953b908f82b62d`  
		Last Modified: Wed, 29 May 2019 20:46:21 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8ffdb9ef9a807043dc945b3aaaa6b5a6d7b985e62e9e69e41fe48bfd325067`  
		Last Modified: Wed, 29 May 2019 20:46:21 GMT  
		Size: 2.4 MB (2445821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe401919105eac0c0d0fe49ed5bb81cd5008bd18bac8c0a0a851eee7d6ab417e`  
		Last Modified: Wed, 29 May 2019 20:46:22 GMT  
		Size: 5.3 MB (5278836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fb4761d9a2dc26ffa12d2f1f4d4e16faf3556341993866cc9ff6aac1f4bbfb`  
		Last Modified: Wed, 29 May 2019 20:46:20 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3884352da973b52333c36028c74b63757dd9a337f0b1d27f42697283c5c3570c`  
		Last Modified: Wed, 29 May 2019 20:46:19 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e498203c19a3732aa607f76c53de8e0a8b1860cd1f0f9ba77799a42c9c288f`  
		Last Modified: Wed, 29 May 2019 20:46:19 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa543bf535702a906df0ef4d236feb65c4c6fb357329330307dc38f405fe9d44`  
		Last Modified: Wed, 29 May 2019 20:46:46 GMT  
		Size: 103.2 MB (103150483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d45328762fd381de4405de690a4e7758b7f123d7ca399c6d7870cc9f472301a`  
		Last Modified: Wed, 29 May 2019 20:46:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3388fbb5bcc5f47f7b4fe914f12a20a17fb4a05d4a05408cf3dbb19df8532b`  
		Last Modified: Wed, 29 May 2019 20:46:19 GMT  
		Size: 3.9 KB (3916 bytes)  
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

### `mongo:4.1` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:e010e4b5ed8fddb78d6094054743cb43634d301f1214014fb3ce166f0e0076d6
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5791472657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:483ca9f3ab7f917f997be3f251bfaa35920eab8602cff63d210c3360d7639ddb`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:42:54 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:42:55 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.12-signed.msi
# Wed, 29 May 2019 20:42:57 GMT
ENV MONGO_DOWNLOAD_SHA256=3bbc33a5db84d15de37259ae1f9d5e890a0c97573041c9b017631a776157089e
# Wed, 29 May 2019 20:52:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:52:57 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:52:59 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:53:01 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feadb61c9a426a1ac8bbb12f44522858d96323d16816bb86067b1acd8f3a0abb`  
		Last Modified: Wed, 29 May 2019 21:02:33 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd12ff6fb1a78028480f4638b1cb18da353fda626a880e532ce428e390e21d27`  
		Last Modified: Wed, 29 May 2019 21:02:32 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:030e2eefa2ca399e251eb468ade85a46120085e90b719f77200691421c5d1f58`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23578f83381062472fa94b02349e0bf8f6393649e6f08c11ad2372fa8026ad55`  
		Last Modified: Wed, 29 May 2019 21:02:55 GMT  
		Size: 91.7 MB (91676148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5eba5de1f5fba6301d6140d902ab43d29724d8da8794c45e933d792f23f2c9`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe7bab3f1e1e66e75b9ea5211de3ba638f7357135e31fc0bb10c3d88f9b8b33`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0fb0faa9ef44c7d877f18c65f1f358fca45774e05c7cb0bba91339901dcc5f7`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1` - windows version 10.0.17134.766; amd64

```console
$ docker pull mongo@sha256:f6a5e83f0ae48f31664ce81e1a866569ac6e19a5d571b9e0385664064f5dd283
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2388873057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6fab3d6cdfeba8305fb14d896c7095559b081869839130d9431175930eb0206`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 16:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:53:10 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:53:12 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.12-signed.msi
# Wed, 29 May 2019 20:53:13 GMT
ENV MONGO_DOWNLOAD_SHA256=3bbc33a5db84d15de37259ae1f9d5e890a0c97573041c9b017631a776157089e
# Wed, 29 May 2019 20:56:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:56:38 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:56:40 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:56:42 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a67a6b4a761b56344d5ca197119cbfe6ffbacaac6bf5e860ec3a2ea827c81f88`  
		Last Modified: Wed, 22 May 2019 16:53:02 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce8c4e4498b524de7fc5036da4d7cb487d4321a76b8c3da77f0837bf23b4f08`  
		Last Modified: Wed, 29 May 2019 21:03:16 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e15e1cf08b86f8ab7fdcce4c590ce70fcbdbab86c65c97ea427dda9df41ab9f`  
		Last Modified: Wed, 29 May 2019 21:03:16 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f532e65b477f0df48421afe9e0b8ac325a3d44a841767af336194b456761c4`  
		Last Modified: Wed, 29 May 2019 21:03:14 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d49405bc6c13b7674b8961559b4ac6fef11df6f8da49f0392d848250284e86`  
		Last Modified: Wed, 29 May 2019 21:03:34 GMT  
		Size: 85.4 MB (85408046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ec4d8d98066e0f2d3aa3fd24414de58f9a9bdc5c66c2693b58912cca63c585`  
		Last Modified: Wed, 29 May 2019 21:03:13 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f5c1d76a85a570eb07371f9f77382df32414aa2ecf33ee15a10f2ef1c5776d`  
		Last Modified: Wed, 29 May 2019 21:03:13 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ec6d63a724609a63cb8ce87be0a97e9a43c72205dd40799c86c8d0ef961e07`  
		Last Modified: Wed, 29 May 2019 21:03:13 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.1.12`

```console
$ docker pull mongo@sha256:687e4cb863692a89e1e9b751c6d17e89de35fc1951e6e1ddc5a6b6345d9f8119
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2972; amd64
	-	windows version 10.0.17134.766; amd64

### `mongo:4.1.12` - linux; amd64

```console
$ docker pull mongo@sha256:cf2a849118a1b5c45480d53467516c7bfa1d8c0603a5877125a23654a9b2cc67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.4 MB (147445404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be945be05053751347453a706796f794fb35e184ee55e8563d066f4f583e766c`
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
# Wed, 29 May 2019 20:27:05 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:27:06 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:27:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:27:30 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:27:30 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:27:31 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:27:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:27:31 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:27:31 GMT
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
	-	`sha256:f656cc5d816f6ffdc16171097c0174cc869b1cc356c950adaf1aa2d3c18fb74d`  
		Last Modified: Wed, 29 May 2019 20:28:22 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fcb6c132cbcbccccd04795c42964ac72c4ef06b6d343bfe16fee02fe8ee1c7e`  
		Last Modified: Wed, 29 May 2019 20:28:38 GMT  
		Size: 110.1 MB (110089297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e5fab80a3f22d968d50cae98b3cde756ddf31cabeb005ce408a4c989f2722c`  
		Last Modified: Wed, 29 May 2019 20:28:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f10e4e2178c203feab5d4ab40393ecc3b60b4ca3cb8db47bcf2c4c1355cc906`  
		Last Modified: Wed, 29 May 2019 20:28:22 GMT  
		Size: 3.9 KB (3918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1.12` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:e5b997a367871383b647df26a5ebdd65e98612b8343ec897983dcf7bed26b072
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136758762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:130ab62e8ccf99be97608a74564e2e8fe0703e0ae670b5e295d5883d1eed8efa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Wed, 29 May 2019 20:42:35 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 29 May 2019 20:42:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:42:52 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 20:42:52 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 29 May 2019 20:43:14 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 29 May 2019 20:43:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 29 May 2019 20:43:15 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Wed, 29 May 2019 20:43:17 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 29 May 2019 20:43:17 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 29 May 2019 20:43:18 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:43:18 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:43:18 GMT
ENV MONGO_MAJOR=4.1
# Wed, 29 May 2019 20:43:19 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:43:20 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:43:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:43:49 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:43:49 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:43:50 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:43:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:43:50 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:43:51 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c7e3735789afb9568d403c1c808403411d387ffe6a48cc10953b908f82b62d`  
		Last Modified: Wed, 29 May 2019 20:46:21 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8ffdb9ef9a807043dc945b3aaaa6b5a6d7b985e62e9e69e41fe48bfd325067`  
		Last Modified: Wed, 29 May 2019 20:46:21 GMT  
		Size: 2.4 MB (2445821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe401919105eac0c0d0fe49ed5bb81cd5008bd18bac8c0a0a851eee7d6ab417e`  
		Last Modified: Wed, 29 May 2019 20:46:22 GMT  
		Size: 5.3 MB (5278836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fb4761d9a2dc26ffa12d2f1f4d4e16faf3556341993866cc9ff6aac1f4bbfb`  
		Last Modified: Wed, 29 May 2019 20:46:20 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3884352da973b52333c36028c74b63757dd9a337f0b1d27f42697283c5c3570c`  
		Last Modified: Wed, 29 May 2019 20:46:19 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e498203c19a3732aa607f76c53de8e0a8b1860cd1f0f9ba77799a42c9c288f`  
		Last Modified: Wed, 29 May 2019 20:46:19 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa543bf535702a906df0ef4d236feb65c4c6fb357329330307dc38f405fe9d44`  
		Last Modified: Wed, 29 May 2019 20:46:46 GMT  
		Size: 103.2 MB (103150483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d45328762fd381de4405de690a4e7758b7f123d7ca399c6d7870cc9f472301a`  
		Last Modified: Wed, 29 May 2019 20:46:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3388fbb5bcc5f47f7b4fe914f12a20a17fb4a05d4a05408cf3dbb19df8532b`  
		Last Modified: Wed, 29 May 2019 20:46:19 GMT  
		Size: 3.9 KB (3916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1.12` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:e010e4b5ed8fddb78d6094054743cb43634d301f1214014fb3ce166f0e0076d6
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5791472657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:483ca9f3ab7f917f997be3f251bfaa35920eab8602cff63d210c3360d7639ddb`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:42:54 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:42:55 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.12-signed.msi
# Wed, 29 May 2019 20:42:57 GMT
ENV MONGO_DOWNLOAD_SHA256=3bbc33a5db84d15de37259ae1f9d5e890a0c97573041c9b017631a776157089e
# Wed, 29 May 2019 20:52:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:52:57 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:52:59 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:53:01 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feadb61c9a426a1ac8bbb12f44522858d96323d16816bb86067b1acd8f3a0abb`  
		Last Modified: Wed, 29 May 2019 21:02:33 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd12ff6fb1a78028480f4638b1cb18da353fda626a880e532ce428e390e21d27`  
		Last Modified: Wed, 29 May 2019 21:02:32 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:030e2eefa2ca399e251eb468ade85a46120085e90b719f77200691421c5d1f58`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23578f83381062472fa94b02349e0bf8f6393649e6f08c11ad2372fa8026ad55`  
		Last Modified: Wed, 29 May 2019 21:02:55 GMT  
		Size: 91.7 MB (91676148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5eba5de1f5fba6301d6140d902ab43d29724d8da8794c45e933d792f23f2c9`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe7bab3f1e1e66e75b9ea5211de3ba638f7357135e31fc0bb10c3d88f9b8b33`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0fb0faa9ef44c7d877f18c65f1f358fca45774e05c7cb0bba91339901dcc5f7`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1.12` - windows version 10.0.17134.766; amd64

```console
$ docker pull mongo@sha256:f6a5e83f0ae48f31664ce81e1a866569ac6e19a5d571b9e0385664064f5dd283
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2388873057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6fab3d6cdfeba8305fb14d896c7095559b081869839130d9431175930eb0206`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 16:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:53:10 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:53:12 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.12-signed.msi
# Wed, 29 May 2019 20:53:13 GMT
ENV MONGO_DOWNLOAD_SHA256=3bbc33a5db84d15de37259ae1f9d5e890a0c97573041c9b017631a776157089e
# Wed, 29 May 2019 20:56:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:56:38 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:56:40 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:56:42 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a67a6b4a761b56344d5ca197119cbfe6ffbacaac6bf5e860ec3a2ea827c81f88`  
		Last Modified: Wed, 22 May 2019 16:53:02 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce8c4e4498b524de7fc5036da4d7cb487d4321a76b8c3da77f0837bf23b4f08`  
		Last Modified: Wed, 29 May 2019 21:03:16 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e15e1cf08b86f8ab7fdcce4c590ce70fcbdbab86c65c97ea427dda9df41ab9f`  
		Last Modified: Wed, 29 May 2019 21:03:16 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f532e65b477f0df48421afe9e0b8ac325a3d44a841767af336194b456761c4`  
		Last Modified: Wed, 29 May 2019 21:03:14 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d49405bc6c13b7674b8961559b4ac6fef11df6f8da49f0392d848250284e86`  
		Last Modified: Wed, 29 May 2019 21:03:34 GMT  
		Size: 85.4 MB (85408046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ec4d8d98066e0f2d3aa3fd24414de58f9a9bdc5c66c2693b58912cca63c585`  
		Last Modified: Wed, 29 May 2019 21:03:13 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f5c1d76a85a570eb07371f9f77382df32414aa2ecf33ee15a10f2ef1c5776d`  
		Last Modified: Wed, 29 May 2019 21:03:13 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ec6d63a724609a63cb8ce87be0a97e9a43c72205dd40799c86c8d0ef961e07`  
		Last Modified: Wed, 29 May 2019 21:03:13 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.1.12-bionic`

```console
$ docker pull mongo@sha256:45c2c49c1810effe2eedbd76dad36a2696945569d4267aea72ff2e8bf32a7ff9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:4.1.12-bionic` - linux; amd64

```console
$ docker pull mongo@sha256:cf2a849118a1b5c45480d53467516c7bfa1d8c0603a5877125a23654a9b2cc67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.4 MB (147445404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be945be05053751347453a706796f794fb35e184ee55e8563d066f4f583e766c`
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
# Wed, 29 May 2019 20:27:05 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:27:06 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:27:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:27:30 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:27:30 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:27:31 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:27:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:27:31 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:27:31 GMT
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
	-	`sha256:f656cc5d816f6ffdc16171097c0174cc869b1cc356c950adaf1aa2d3c18fb74d`  
		Last Modified: Wed, 29 May 2019 20:28:22 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fcb6c132cbcbccccd04795c42964ac72c4ef06b6d343bfe16fee02fe8ee1c7e`  
		Last Modified: Wed, 29 May 2019 20:28:38 GMT  
		Size: 110.1 MB (110089297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e5fab80a3f22d968d50cae98b3cde756ddf31cabeb005ce408a4c989f2722c`  
		Last Modified: Wed, 29 May 2019 20:28:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f10e4e2178c203feab5d4ab40393ecc3b60b4ca3cb8db47bcf2c4c1355cc906`  
		Last Modified: Wed, 29 May 2019 20:28:22 GMT  
		Size: 3.9 KB (3918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1.12-bionic` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:e5b997a367871383b647df26a5ebdd65e98612b8343ec897983dcf7bed26b072
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136758762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:130ab62e8ccf99be97608a74564e2e8fe0703e0ae670b5e295d5883d1eed8efa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Wed, 29 May 2019 20:42:35 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 29 May 2019 20:42:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:42:52 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 20:42:52 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 29 May 2019 20:43:14 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 29 May 2019 20:43:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 29 May 2019 20:43:15 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Wed, 29 May 2019 20:43:17 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 29 May 2019 20:43:17 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 29 May 2019 20:43:18 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:43:18 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:43:18 GMT
ENV MONGO_MAJOR=4.1
# Wed, 29 May 2019 20:43:19 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:43:20 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:43:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:43:49 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:43:49 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:43:50 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:43:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:43:50 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:43:51 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c7e3735789afb9568d403c1c808403411d387ffe6a48cc10953b908f82b62d`  
		Last Modified: Wed, 29 May 2019 20:46:21 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8ffdb9ef9a807043dc945b3aaaa6b5a6d7b985e62e9e69e41fe48bfd325067`  
		Last Modified: Wed, 29 May 2019 20:46:21 GMT  
		Size: 2.4 MB (2445821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe401919105eac0c0d0fe49ed5bb81cd5008bd18bac8c0a0a851eee7d6ab417e`  
		Last Modified: Wed, 29 May 2019 20:46:22 GMT  
		Size: 5.3 MB (5278836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fb4761d9a2dc26ffa12d2f1f4d4e16faf3556341993866cc9ff6aac1f4bbfb`  
		Last Modified: Wed, 29 May 2019 20:46:20 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3884352da973b52333c36028c74b63757dd9a337f0b1d27f42697283c5c3570c`  
		Last Modified: Wed, 29 May 2019 20:46:19 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e498203c19a3732aa607f76c53de8e0a8b1860cd1f0f9ba77799a42c9c288f`  
		Last Modified: Wed, 29 May 2019 20:46:19 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa543bf535702a906df0ef4d236feb65c4c6fb357329330307dc38f405fe9d44`  
		Last Modified: Wed, 29 May 2019 20:46:46 GMT  
		Size: 103.2 MB (103150483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d45328762fd381de4405de690a4e7758b7f123d7ca399c6d7870cc9f472301a`  
		Last Modified: Wed, 29 May 2019 20:46:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3388fbb5bcc5f47f7b4fe914f12a20a17fb4a05d4a05408cf3dbb19df8532b`  
		Last Modified: Wed, 29 May 2019 20:46:19 GMT  
		Size: 3.9 KB (3916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.1.12-windowsservercore`

```console
$ docker pull mongo@sha256:d72e99b4bdcb4e1565b1c402d1beb5b3e177e01e6b2d5bb19f8527731db4aafb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64
	-	windows version 10.0.17134.766; amd64

### `mongo:4.1.12-windowsservercore` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:e010e4b5ed8fddb78d6094054743cb43634d301f1214014fb3ce166f0e0076d6
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5791472657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:483ca9f3ab7f917f997be3f251bfaa35920eab8602cff63d210c3360d7639ddb`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:42:54 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:42:55 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.12-signed.msi
# Wed, 29 May 2019 20:42:57 GMT
ENV MONGO_DOWNLOAD_SHA256=3bbc33a5db84d15de37259ae1f9d5e890a0c97573041c9b017631a776157089e
# Wed, 29 May 2019 20:52:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:52:57 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:52:59 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:53:01 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feadb61c9a426a1ac8bbb12f44522858d96323d16816bb86067b1acd8f3a0abb`  
		Last Modified: Wed, 29 May 2019 21:02:33 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd12ff6fb1a78028480f4638b1cb18da353fda626a880e532ce428e390e21d27`  
		Last Modified: Wed, 29 May 2019 21:02:32 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:030e2eefa2ca399e251eb468ade85a46120085e90b719f77200691421c5d1f58`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23578f83381062472fa94b02349e0bf8f6393649e6f08c11ad2372fa8026ad55`  
		Last Modified: Wed, 29 May 2019 21:02:55 GMT  
		Size: 91.7 MB (91676148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5eba5de1f5fba6301d6140d902ab43d29724d8da8794c45e933d792f23f2c9`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe7bab3f1e1e66e75b9ea5211de3ba638f7357135e31fc0bb10c3d88f9b8b33`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0fb0faa9ef44c7d877f18c65f1f358fca45774e05c7cb0bba91339901dcc5f7`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1.12-windowsservercore` - windows version 10.0.17134.766; amd64

```console
$ docker pull mongo@sha256:f6a5e83f0ae48f31664ce81e1a866569ac6e19a5d571b9e0385664064f5dd283
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2388873057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6fab3d6cdfeba8305fb14d896c7095559b081869839130d9431175930eb0206`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 16:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:53:10 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:53:12 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.12-signed.msi
# Wed, 29 May 2019 20:53:13 GMT
ENV MONGO_DOWNLOAD_SHA256=3bbc33a5db84d15de37259ae1f9d5e890a0c97573041c9b017631a776157089e
# Wed, 29 May 2019 20:56:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:56:38 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:56:40 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:56:42 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a67a6b4a761b56344d5ca197119cbfe6ffbacaac6bf5e860ec3a2ea827c81f88`  
		Last Modified: Wed, 22 May 2019 16:53:02 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce8c4e4498b524de7fc5036da4d7cb487d4321a76b8c3da77f0837bf23b4f08`  
		Last Modified: Wed, 29 May 2019 21:03:16 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e15e1cf08b86f8ab7fdcce4c590ce70fcbdbab86c65c97ea427dda9df41ab9f`  
		Last Modified: Wed, 29 May 2019 21:03:16 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f532e65b477f0df48421afe9e0b8ac325a3d44a841767af336194b456761c4`  
		Last Modified: Wed, 29 May 2019 21:03:14 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d49405bc6c13b7674b8961559b4ac6fef11df6f8da49f0392d848250284e86`  
		Last Modified: Wed, 29 May 2019 21:03:34 GMT  
		Size: 85.4 MB (85408046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ec4d8d98066e0f2d3aa3fd24414de58f9a9bdc5c66c2693b58912cca63c585`  
		Last Modified: Wed, 29 May 2019 21:03:13 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f5c1d76a85a570eb07371f9f77382df32414aa2ecf33ee15a10f2ef1c5776d`  
		Last Modified: Wed, 29 May 2019 21:03:13 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ec6d63a724609a63cb8ce87be0a97e9a43c72205dd40799c86c8d0ef961e07`  
		Last Modified: Wed, 29 May 2019 21:03:13 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.1.12-windowsservercore-1803`

```console
$ docker pull mongo@sha256:f2c70dfba6bd161bbc6de68ecfc59e96fa7a755dc3ae78fb9ff9023740b680a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.766; amd64

### `mongo:4.1.12-windowsservercore-1803` - windows version 10.0.17134.766; amd64

```console
$ docker pull mongo@sha256:f6a5e83f0ae48f31664ce81e1a866569ac6e19a5d571b9e0385664064f5dd283
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2388873057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6fab3d6cdfeba8305fb14d896c7095559b081869839130d9431175930eb0206`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 16:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:53:10 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:53:12 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.12-signed.msi
# Wed, 29 May 2019 20:53:13 GMT
ENV MONGO_DOWNLOAD_SHA256=3bbc33a5db84d15de37259ae1f9d5e890a0c97573041c9b017631a776157089e
# Wed, 29 May 2019 20:56:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:56:38 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:56:40 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:56:42 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a67a6b4a761b56344d5ca197119cbfe6ffbacaac6bf5e860ec3a2ea827c81f88`  
		Last Modified: Wed, 22 May 2019 16:53:02 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce8c4e4498b524de7fc5036da4d7cb487d4321a76b8c3da77f0837bf23b4f08`  
		Last Modified: Wed, 29 May 2019 21:03:16 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e15e1cf08b86f8ab7fdcce4c590ce70fcbdbab86c65c97ea427dda9df41ab9f`  
		Last Modified: Wed, 29 May 2019 21:03:16 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f532e65b477f0df48421afe9e0b8ac325a3d44a841767af336194b456761c4`  
		Last Modified: Wed, 29 May 2019 21:03:14 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d49405bc6c13b7674b8961559b4ac6fef11df6f8da49f0392d848250284e86`  
		Last Modified: Wed, 29 May 2019 21:03:34 GMT  
		Size: 85.4 MB (85408046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ec4d8d98066e0f2d3aa3fd24414de58f9a9bdc5c66c2693b58912cca63c585`  
		Last Modified: Wed, 29 May 2019 21:03:13 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f5c1d76a85a570eb07371f9f77382df32414aa2ecf33ee15a10f2ef1c5776d`  
		Last Modified: Wed, 29 May 2019 21:03:13 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ec6d63a724609a63cb8ce87be0a97e9a43c72205dd40799c86c8d0ef961e07`  
		Last Modified: Wed, 29 May 2019 21:03:13 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.1.12-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:c164c9fe82f9dbe18a7471dec5cb533089c095f2c217b1fab179e8ae73faae26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64

### `mongo:4.1.12-windowsservercore-ltsc2016` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:e010e4b5ed8fddb78d6094054743cb43634d301f1214014fb3ce166f0e0076d6
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5791472657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:483ca9f3ab7f917f997be3f251bfaa35920eab8602cff63d210c3360d7639ddb`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:42:54 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:42:55 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.12-signed.msi
# Wed, 29 May 2019 20:42:57 GMT
ENV MONGO_DOWNLOAD_SHA256=3bbc33a5db84d15de37259ae1f9d5e890a0c97573041c9b017631a776157089e
# Wed, 29 May 2019 20:52:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:52:57 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:52:59 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:53:01 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feadb61c9a426a1ac8bbb12f44522858d96323d16816bb86067b1acd8f3a0abb`  
		Last Modified: Wed, 29 May 2019 21:02:33 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd12ff6fb1a78028480f4638b1cb18da353fda626a880e532ce428e390e21d27`  
		Last Modified: Wed, 29 May 2019 21:02:32 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:030e2eefa2ca399e251eb468ade85a46120085e90b719f77200691421c5d1f58`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23578f83381062472fa94b02349e0bf8f6393649e6f08c11ad2372fa8026ad55`  
		Last Modified: Wed, 29 May 2019 21:02:55 GMT  
		Size: 91.7 MB (91676148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5eba5de1f5fba6301d6140d902ab43d29724d8da8794c45e933d792f23f2c9`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe7bab3f1e1e66e75b9ea5211de3ba638f7357135e31fc0bb10c3d88f9b8b33`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0fb0faa9ef44c7d877f18c65f1f358fca45774e05c7cb0bba91339901dcc5f7`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.1-bionic`

```console
$ docker pull mongo@sha256:798701aa07c7f981894da2a54c3863d927c062ea370a1ad1833f28e25bb4e7cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; s390x

### `mongo:4.1-bionic` - linux; amd64

```console
$ docker pull mongo@sha256:cf2a849118a1b5c45480d53467516c7bfa1d8c0603a5877125a23654a9b2cc67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.4 MB (147445404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be945be05053751347453a706796f794fb35e184ee55e8563d066f4f583e766c`
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
# Wed, 29 May 2019 20:27:05 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:27:06 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:27:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:27:30 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:27:30 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:27:31 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:27:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:27:31 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:27:31 GMT
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
	-	`sha256:f656cc5d816f6ffdc16171097c0174cc869b1cc356c950adaf1aa2d3c18fb74d`  
		Last Modified: Wed, 29 May 2019 20:28:22 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fcb6c132cbcbccccd04795c42964ac72c4ef06b6d343bfe16fee02fe8ee1c7e`  
		Last Modified: Wed, 29 May 2019 20:28:38 GMT  
		Size: 110.1 MB (110089297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e5fab80a3f22d968d50cae98b3cde756ddf31cabeb005ce408a4c989f2722c`  
		Last Modified: Wed, 29 May 2019 20:28:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f10e4e2178c203feab5d4ab40393ecc3b60b4ca3cb8db47bcf2c4c1355cc906`  
		Last Modified: Wed, 29 May 2019 20:28:22 GMT  
		Size: 3.9 KB (3918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1-bionic` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:e5b997a367871383b647df26a5ebdd65e98612b8343ec897983dcf7bed26b072
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136758762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:130ab62e8ccf99be97608a74564e2e8fe0703e0ae670b5e295d5883d1eed8efa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Wed, 29 May 2019 20:42:35 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 29 May 2019 20:42:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:42:52 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 20:42:52 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 29 May 2019 20:43:14 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 29 May 2019 20:43:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 29 May 2019 20:43:15 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Wed, 29 May 2019 20:43:17 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 29 May 2019 20:43:17 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 29 May 2019 20:43:18 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:43:18 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:43:18 GMT
ENV MONGO_MAJOR=4.1
# Wed, 29 May 2019 20:43:19 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:43:20 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:43:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:43:49 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:43:49 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:43:50 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:43:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:43:50 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:43:51 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c7e3735789afb9568d403c1c808403411d387ffe6a48cc10953b908f82b62d`  
		Last Modified: Wed, 29 May 2019 20:46:21 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8ffdb9ef9a807043dc945b3aaaa6b5a6d7b985e62e9e69e41fe48bfd325067`  
		Last Modified: Wed, 29 May 2019 20:46:21 GMT  
		Size: 2.4 MB (2445821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe401919105eac0c0d0fe49ed5bb81cd5008bd18bac8c0a0a851eee7d6ab417e`  
		Last Modified: Wed, 29 May 2019 20:46:22 GMT  
		Size: 5.3 MB (5278836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fb4761d9a2dc26ffa12d2f1f4d4e16faf3556341993866cc9ff6aac1f4bbfb`  
		Last Modified: Wed, 29 May 2019 20:46:20 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3884352da973b52333c36028c74b63757dd9a337f0b1d27f42697283c5c3570c`  
		Last Modified: Wed, 29 May 2019 20:46:19 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e498203c19a3732aa607f76c53de8e0a8b1860cd1f0f9ba77799a42c9c288f`  
		Last Modified: Wed, 29 May 2019 20:46:19 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa543bf535702a906df0ef4d236feb65c4c6fb357329330307dc38f405fe9d44`  
		Last Modified: Wed, 29 May 2019 20:46:46 GMT  
		Size: 103.2 MB (103150483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d45328762fd381de4405de690a4e7758b7f123d7ca399c6d7870cc9f472301a`  
		Last Modified: Wed, 29 May 2019 20:46:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3388fbb5bcc5f47f7b4fe914f12a20a17fb4a05d4a05408cf3dbb19df8532b`  
		Last Modified: Wed, 29 May 2019 20:46:19 GMT  
		Size: 3.9 KB (3916 bytes)  
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
$ docker pull mongo@sha256:d72e99b4bdcb4e1565b1c402d1beb5b3e177e01e6b2d5bb19f8527731db4aafb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64
	-	windows version 10.0.17134.766; amd64

### `mongo:4.1-windowsservercore` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:e010e4b5ed8fddb78d6094054743cb43634d301f1214014fb3ce166f0e0076d6
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5791472657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:483ca9f3ab7f917f997be3f251bfaa35920eab8602cff63d210c3360d7639ddb`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:42:54 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:42:55 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.12-signed.msi
# Wed, 29 May 2019 20:42:57 GMT
ENV MONGO_DOWNLOAD_SHA256=3bbc33a5db84d15de37259ae1f9d5e890a0c97573041c9b017631a776157089e
# Wed, 29 May 2019 20:52:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:52:57 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:52:59 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:53:01 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feadb61c9a426a1ac8bbb12f44522858d96323d16816bb86067b1acd8f3a0abb`  
		Last Modified: Wed, 29 May 2019 21:02:33 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd12ff6fb1a78028480f4638b1cb18da353fda626a880e532ce428e390e21d27`  
		Last Modified: Wed, 29 May 2019 21:02:32 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:030e2eefa2ca399e251eb468ade85a46120085e90b719f77200691421c5d1f58`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23578f83381062472fa94b02349e0bf8f6393649e6f08c11ad2372fa8026ad55`  
		Last Modified: Wed, 29 May 2019 21:02:55 GMT  
		Size: 91.7 MB (91676148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5eba5de1f5fba6301d6140d902ab43d29724d8da8794c45e933d792f23f2c9`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe7bab3f1e1e66e75b9ea5211de3ba638f7357135e31fc0bb10c3d88f9b8b33`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0fb0faa9ef44c7d877f18c65f1f358fca45774e05c7cb0bba91339901dcc5f7`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1-windowsservercore` - windows version 10.0.17134.766; amd64

```console
$ docker pull mongo@sha256:f6a5e83f0ae48f31664ce81e1a866569ac6e19a5d571b9e0385664064f5dd283
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2388873057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6fab3d6cdfeba8305fb14d896c7095559b081869839130d9431175930eb0206`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 16:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:53:10 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:53:12 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.12-signed.msi
# Wed, 29 May 2019 20:53:13 GMT
ENV MONGO_DOWNLOAD_SHA256=3bbc33a5db84d15de37259ae1f9d5e890a0c97573041c9b017631a776157089e
# Wed, 29 May 2019 20:56:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:56:38 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:56:40 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:56:42 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a67a6b4a761b56344d5ca197119cbfe6ffbacaac6bf5e860ec3a2ea827c81f88`  
		Last Modified: Wed, 22 May 2019 16:53:02 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce8c4e4498b524de7fc5036da4d7cb487d4321a76b8c3da77f0837bf23b4f08`  
		Last Modified: Wed, 29 May 2019 21:03:16 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e15e1cf08b86f8ab7fdcce4c590ce70fcbdbab86c65c97ea427dda9df41ab9f`  
		Last Modified: Wed, 29 May 2019 21:03:16 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f532e65b477f0df48421afe9e0b8ac325a3d44a841767af336194b456761c4`  
		Last Modified: Wed, 29 May 2019 21:03:14 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d49405bc6c13b7674b8961559b4ac6fef11df6f8da49f0392d848250284e86`  
		Last Modified: Wed, 29 May 2019 21:03:34 GMT  
		Size: 85.4 MB (85408046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ec4d8d98066e0f2d3aa3fd24414de58f9a9bdc5c66c2693b58912cca63c585`  
		Last Modified: Wed, 29 May 2019 21:03:13 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f5c1d76a85a570eb07371f9f77382df32414aa2ecf33ee15a10f2ef1c5776d`  
		Last Modified: Wed, 29 May 2019 21:03:13 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ec6d63a724609a63cb8ce87be0a97e9a43c72205dd40799c86c8d0ef961e07`  
		Last Modified: Wed, 29 May 2019 21:03:13 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.1-windowsservercore-1803`

```console
$ docker pull mongo@sha256:f2c70dfba6bd161bbc6de68ecfc59e96fa7a755dc3ae78fb9ff9023740b680a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.766; amd64

### `mongo:4.1-windowsservercore-1803` - windows version 10.0.17134.766; amd64

```console
$ docker pull mongo@sha256:f6a5e83f0ae48f31664ce81e1a866569ac6e19a5d571b9e0385664064f5dd283
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2388873057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6fab3d6cdfeba8305fb14d896c7095559b081869839130d9431175930eb0206`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 16:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:53:10 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:53:12 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.12-signed.msi
# Wed, 29 May 2019 20:53:13 GMT
ENV MONGO_DOWNLOAD_SHA256=3bbc33a5db84d15de37259ae1f9d5e890a0c97573041c9b017631a776157089e
# Wed, 29 May 2019 20:56:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:56:38 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:56:40 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:56:42 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a67a6b4a761b56344d5ca197119cbfe6ffbacaac6bf5e860ec3a2ea827c81f88`  
		Last Modified: Wed, 22 May 2019 16:53:02 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce8c4e4498b524de7fc5036da4d7cb487d4321a76b8c3da77f0837bf23b4f08`  
		Last Modified: Wed, 29 May 2019 21:03:16 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e15e1cf08b86f8ab7fdcce4c590ce70fcbdbab86c65c97ea427dda9df41ab9f`  
		Last Modified: Wed, 29 May 2019 21:03:16 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f532e65b477f0df48421afe9e0b8ac325a3d44a841767af336194b456761c4`  
		Last Modified: Wed, 29 May 2019 21:03:14 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d49405bc6c13b7674b8961559b4ac6fef11df6f8da49f0392d848250284e86`  
		Last Modified: Wed, 29 May 2019 21:03:34 GMT  
		Size: 85.4 MB (85408046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ec4d8d98066e0f2d3aa3fd24414de58f9a9bdc5c66c2693b58912cca63c585`  
		Last Modified: Wed, 29 May 2019 21:03:13 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f5c1d76a85a570eb07371f9f77382df32414aa2ecf33ee15a10f2ef1c5776d`  
		Last Modified: Wed, 29 May 2019 21:03:13 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ec6d63a724609a63cb8ce87be0a97e9a43c72205dd40799c86c8d0ef961e07`  
		Last Modified: Wed, 29 May 2019 21:03:13 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.1-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:c164c9fe82f9dbe18a7471dec5cb533089c095f2c217b1fab179e8ae73faae26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64

### `mongo:4.1-windowsservercore-ltsc2016` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:e010e4b5ed8fddb78d6094054743cb43634d301f1214014fb3ce166f0e0076d6
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5791472657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:483ca9f3ab7f917f997be3f251bfaa35920eab8602cff63d210c3360d7639ddb`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:42:54 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:42:55 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.12-signed.msi
# Wed, 29 May 2019 20:42:57 GMT
ENV MONGO_DOWNLOAD_SHA256=3bbc33a5db84d15de37259ae1f9d5e890a0c97573041c9b017631a776157089e
# Wed, 29 May 2019 20:52:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:52:57 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:52:59 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:53:01 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feadb61c9a426a1ac8bbb12f44522858d96323d16816bb86067b1acd8f3a0abb`  
		Last Modified: Wed, 29 May 2019 21:02:33 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd12ff6fb1a78028480f4638b1cb18da353fda626a880e532ce428e390e21d27`  
		Last Modified: Wed, 29 May 2019 21:02:32 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:030e2eefa2ca399e251eb468ade85a46120085e90b719f77200691421c5d1f58`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23578f83381062472fa94b02349e0bf8f6393649e6f08c11ad2372fa8026ad55`  
		Last Modified: Wed, 29 May 2019 21:02:55 GMT  
		Size: 91.7 MB (91676148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5eba5de1f5fba6301d6140d902ab43d29724d8da8794c45e933d792f23f2c9`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe7bab3f1e1e66e75b9ea5211de3ba638f7357135e31fc0bb10c3d88f9b8b33`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0fb0faa9ef44c7d877f18c65f1f358fca45774e05c7cb0bba91339901dcc5f7`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4-windowsservercore`

```console
$ docker pull mongo@sha256:c5e03c720ef3e6a1cb11134678a714b71249a04cf47c97334dadb6848453617f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64
	-	windows version 10.0.17134.766; amd64

### `mongo:4-windowsservercore` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:b1ca419cbfc383e8a13078e5ee09a1c3514576a91f3d14c196b785d8c86e5f8e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5785025652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b826a4243bf19a547d0b1dce522933755e8d2f1d4ae8bb9387549c6ba0268164`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:18:50 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:18:52 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.10-signed.msi
# Wed, 29 May 2019 20:18:53 GMT
ENV MONGO_DOWNLOAD_SHA256=d1ddac7ba6e2fbdfaaa0a787b83c165d4ad61795c051dc0f3142717a0b6a3707
# Wed, 29 May 2019 20:22:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:22:34 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:22:35 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:22:37 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8614e7a9166aecb1a112fd30dd449b22f1f766b2e25e551ab3ca3937f790e0f8`  
		Last Modified: Wed, 29 May 2019 20:57:30 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb516f41ef3d428513082a3ef5c61c541f683e2f2bcf8c4af01f0c7024c6a39`  
		Last Modified: Wed, 29 May 2019 20:57:30 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a9140cc356bac323f8c1b4e9d243bf56e8d345c4885de2c3258e6ec087672a`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6395bf368e75a835e04ca5f0f37e8b1756eba1fe1de64b88e6e6d87e9e4fc9`  
		Last Modified: Wed, 29 May 2019 20:58:09 GMT  
		Size: 85.2 MB (85229202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd12d243a853e32737bcea47946e1a7b5937dd964db31023200c2457d9e67ef`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fcf17e6f70acbafd13b6b6f34e07822b2d42035b3baed1046387eb5af331f1`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a95abfa44a068d062c5f32a8e02b27c53831b06660e1aaf4259c8a9cd172fa9`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4-windowsservercore` - windows version 10.0.17134.766; amd64

```console
$ docker pull mongo@sha256:028373d156e59512fdddd8971359861f5a080e0af48619b9cdfa7e56d1ef653b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2784938590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4b3386bb7c72e395b28c7811c6056c3686fd320cf35f13e7d655085fb917f16`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 16:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:22:49 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:22:50 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.10-signed.msi
# Wed, 29 May 2019 20:22:52 GMT
ENV MONGO_DOWNLOAD_SHA256=d1ddac7ba6e2fbdfaaa0a787b83c165d4ad61795c051dc0f3142717a0b6a3707
# Wed, 29 May 2019 20:42:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:42:32 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:42:34 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:42:36 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a67a6b4a761b56344d5ca197119cbfe6ffbacaac6bf5e860ec3a2ea827c81f88`  
		Last Modified: Wed, 22 May 2019 16:53:02 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b5c8c0e871040e7e91d5b16174c1d149ce0332b7b8b7f8930d6a8d2e401744`  
		Last Modified: Wed, 29 May 2019 20:58:35 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335322e451e70aae885934fba6cb2f43f666de6cf4593a1e13e387af329ada06`  
		Last Modified: Wed, 29 May 2019 20:58:35 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4eba3893a41cf13201c0640e444b7d842dbd289bb4a7c9abdc3a5274652c01`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c60d97ae5ca6737561d99c6f3f4b2c8540bf0e3f851b0be296649b883c6907`  
		Last Modified: Wed, 29 May 2019 21:02:01 GMT  
		Size: 481.5 MB (481473579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1bb86203542c23106a38562b2dc82003ad7ab68b184db922d1448501bc4fd6`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217748c354057a9d2b88f60c0e2572481f2a323f2e3fe30d5c7a7d7f098507f6`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b7cc2a8fb7f1423f18cff5bed90423aea5d08190ee544a7b7e5c6088e50b9c`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4-windowsservercore-1803`

```console
$ docker pull mongo@sha256:62209176b6cae484059897ff6ad86fc7eca13eba8989606c992973da1aec93a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.766; amd64

### `mongo:4-windowsservercore-1803` - windows version 10.0.17134.766; amd64

```console
$ docker pull mongo@sha256:028373d156e59512fdddd8971359861f5a080e0af48619b9cdfa7e56d1ef653b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2784938590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4b3386bb7c72e395b28c7811c6056c3686fd320cf35f13e7d655085fb917f16`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 16:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:22:49 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:22:50 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.10-signed.msi
# Wed, 29 May 2019 20:22:52 GMT
ENV MONGO_DOWNLOAD_SHA256=d1ddac7ba6e2fbdfaaa0a787b83c165d4ad61795c051dc0f3142717a0b6a3707
# Wed, 29 May 2019 20:42:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:42:32 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:42:34 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:42:36 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a67a6b4a761b56344d5ca197119cbfe6ffbacaac6bf5e860ec3a2ea827c81f88`  
		Last Modified: Wed, 22 May 2019 16:53:02 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b5c8c0e871040e7e91d5b16174c1d149ce0332b7b8b7f8930d6a8d2e401744`  
		Last Modified: Wed, 29 May 2019 20:58:35 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335322e451e70aae885934fba6cb2f43f666de6cf4593a1e13e387af329ada06`  
		Last Modified: Wed, 29 May 2019 20:58:35 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4eba3893a41cf13201c0640e444b7d842dbd289bb4a7c9abdc3a5274652c01`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c60d97ae5ca6737561d99c6f3f4b2c8540bf0e3f851b0be296649b883c6907`  
		Last Modified: Wed, 29 May 2019 21:02:01 GMT  
		Size: 481.5 MB (481473579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1bb86203542c23106a38562b2dc82003ad7ab68b184db922d1448501bc4fd6`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217748c354057a9d2b88f60c0e2572481f2a323f2e3fe30d5c7a7d7f098507f6`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b7cc2a8fb7f1423f18cff5bed90423aea5d08190ee544a7b7e5c6088e50b9c`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:ba6e81a06617ff8eeda353da66d4133c249a540562d848922aa6edad13f7b6ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64

### `mongo:4-windowsservercore-ltsc2016` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:b1ca419cbfc383e8a13078e5ee09a1c3514576a91f3d14c196b785d8c86e5f8e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5785025652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b826a4243bf19a547d0b1dce522933755e8d2f1d4ae8bb9387549c6ba0268164`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:18:50 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:18:52 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.10-signed.msi
# Wed, 29 May 2019 20:18:53 GMT
ENV MONGO_DOWNLOAD_SHA256=d1ddac7ba6e2fbdfaaa0a787b83c165d4ad61795c051dc0f3142717a0b6a3707
# Wed, 29 May 2019 20:22:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:22:34 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:22:35 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:22:37 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8614e7a9166aecb1a112fd30dd449b22f1f766b2e25e551ab3ca3937f790e0f8`  
		Last Modified: Wed, 29 May 2019 20:57:30 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb516f41ef3d428513082a3ef5c61c541f683e2f2bcf8c4af01f0c7024c6a39`  
		Last Modified: Wed, 29 May 2019 20:57:30 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a9140cc356bac323f8c1b4e9d243bf56e8d345c4885de2c3258e6ec087672a`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6395bf368e75a835e04ca5f0f37e8b1756eba1fe1de64b88e6e6d87e9e4fc9`  
		Last Modified: Wed, 29 May 2019 20:58:09 GMT  
		Size: 85.2 MB (85229202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd12d243a853e32737bcea47946e1a7b5937dd964db31023200c2457d9e67ef`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fcf17e6f70acbafd13b6b6f34e07822b2d42035b3baed1046387eb5af331f1`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a95abfa44a068d062c5f32a8e02b27c53831b06660e1aaf4259c8a9cd172fa9`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4-xenial`

```console
$ docker pull mongo@sha256:c33ab7640ed2a4e083532e9c63aadf9c5e21e589f5e46b8b2ef1b5a1981e6b9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:4-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:05f12b17aa35948848c0d3f0198ce10c7f3e37438724911d0d8f9b6643535599
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152630643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fb47b43df1987480928787d3907f3be50941506ede82298b920df07011b8d94`
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
# Wed, 29 May 2019 20:26:27 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:26:28 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:27:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:27:01 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:27:01 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:27:01 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:27:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:27:02 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:27:02 GMT
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
	-	`sha256:c283cca25ace379a7a25c8f31ed635c965909f6165b555dfda8e572ab45c82a8`  
		Last Modified: Wed, 29 May 2019 20:27:46 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051b3304da4ab48f21f3a9856c2b6969329bc18523598d384137b6dce1acdf95`  
		Last Modified: Wed, 29 May 2019 20:28:08 GMT  
		Size: 104.8 MB (104756440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4327c3493368e2b595e866fd329889be6e5a82db1bbafbbfecd3004b37ee05`  
		Last Modified: Wed, 29 May 2019 20:27:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80003bc32b799981ceea62ad61a6601aa1b7fbb85f32a255100adbde56eadabd`  
		Last Modified: Wed, 29 May 2019 20:27:46 GMT  
		Size: 3.9 KB (3919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:bd056a4199692553f06d6021a4ea8e763ec6e2cccabc14a9125f9c252be5940c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.5 MB (142524264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c5f2579db20fdc79fd987ee61f40ce3f821bd39705ed7b4dd75ae25d46b73f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Wed, 29 May 2019 20:39:48 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 29 May 2019 20:40:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:40:06 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 20:40:07 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 29 May 2019 20:40:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 29 May 2019 20:40:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 29 May 2019 20:41:56 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 29 May 2019 20:41:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 29 May 2019 20:41:58 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 29 May 2019 20:41:58 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:41:58 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:41:59 GMT
ENV MONGO_MAJOR=4.0
# Wed, 29 May 2019 20:41:59 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:42:00 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:42:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:42:28 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:42:29 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:42:29 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:42:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:42:30 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:42:30 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a346b0eb8a11391dc1dd6341c9b26ea38f0266bece6362d360404a77296690ef`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1323ba5612ca90211af761826c4c0eb260925570bf5c80d973cf8c41be34fa9`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.5 MB (2474290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1a762317d33e68dd1d27a4363c30ba13ff044adfadb40afadaaae5d3affee9`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 1.1 MB (1085490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cd1cf117b296bd3a88deb6aef7b4732fde8f77bc1c4d28d7c82b1284ff72f4`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164f5e188c717c64780ae7768bbf69a7381c07c30a81873cfc255495d5df8963`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff2b0482ee28a64ed93d9fccfb25f7620b0ad678294a411f2ad956af95d0e23f`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bce7c26c7dc3235ab87e4b381f9b8e8a05857342c8a722151eb36436409ad9`  
		Last Modified: Wed, 29 May 2019 20:46:09 GMT  
		Size: 99.2 MB (99219492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe1386f976a405959772c8f74c59f79ad12948706a051999641a7b2ff491690`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af07a5b42066604eefd19aaca7afad9e595afe5d3388cfd073d4ad85acf89fc7`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 3.9 KB (3918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:93bd5412f16f3b9f7e12eb94813087f195dad950807a8ca74aa2db080c203990
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2972; amd64
	-	windows version 10.0.17134.766; amd64

### `mongo:latest` - linux; amd64

```console
$ docker pull mongo@sha256:05f12b17aa35948848c0d3f0198ce10c7f3e37438724911d0d8f9b6643535599
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152630643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fb47b43df1987480928787d3907f3be50941506ede82298b920df07011b8d94`
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
# Wed, 29 May 2019 20:26:27 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:26:28 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:27:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:27:01 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:27:01 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:27:01 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:27:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:27:02 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:27:02 GMT
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
	-	`sha256:c283cca25ace379a7a25c8f31ed635c965909f6165b555dfda8e572ab45c82a8`  
		Last Modified: Wed, 29 May 2019 20:27:46 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051b3304da4ab48f21f3a9856c2b6969329bc18523598d384137b6dce1acdf95`  
		Last Modified: Wed, 29 May 2019 20:28:08 GMT  
		Size: 104.8 MB (104756440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4327c3493368e2b595e866fd329889be6e5a82db1bbafbbfecd3004b37ee05`  
		Last Modified: Wed, 29 May 2019 20:27:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80003bc32b799981ceea62ad61a6601aa1b7fbb85f32a255100adbde56eadabd`  
		Last Modified: Wed, 29 May 2019 20:27:46 GMT  
		Size: 3.9 KB (3919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:bd056a4199692553f06d6021a4ea8e763ec6e2cccabc14a9125f9c252be5940c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.5 MB (142524264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c5f2579db20fdc79fd987ee61f40ce3f821bd39705ed7b4dd75ae25d46b73f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Wed, 29 May 2019 20:39:48 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 29 May 2019 20:40:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:40:06 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 20:40:07 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 29 May 2019 20:40:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 29 May 2019 20:40:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 29 May 2019 20:41:56 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 29 May 2019 20:41:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 29 May 2019 20:41:58 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 29 May 2019 20:41:58 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:41:58 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:41:59 GMT
ENV MONGO_MAJOR=4.0
# Wed, 29 May 2019 20:41:59 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:42:00 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:42:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:42:28 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:42:29 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:42:29 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:42:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:42:30 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:42:30 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a346b0eb8a11391dc1dd6341c9b26ea38f0266bece6362d360404a77296690ef`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1323ba5612ca90211af761826c4c0eb260925570bf5c80d973cf8c41be34fa9`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.5 MB (2474290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1a762317d33e68dd1d27a4363c30ba13ff044adfadb40afadaaae5d3affee9`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 1.1 MB (1085490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cd1cf117b296bd3a88deb6aef7b4732fde8f77bc1c4d28d7c82b1284ff72f4`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164f5e188c717c64780ae7768bbf69a7381c07c30a81873cfc255495d5df8963`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff2b0482ee28a64ed93d9fccfb25f7620b0ad678294a411f2ad956af95d0e23f`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bce7c26c7dc3235ab87e4b381f9b8e8a05857342c8a722151eb36436409ad9`  
		Last Modified: Wed, 29 May 2019 20:46:09 GMT  
		Size: 99.2 MB (99219492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe1386f976a405959772c8f74c59f79ad12948706a051999641a7b2ff491690`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af07a5b42066604eefd19aaca7afad9e595afe5d3388cfd073d4ad85acf89fc7`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 3.9 KB (3918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:b1ca419cbfc383e8a13078e5ee09a1c3514576a91f3d14c196b785d8c86e5f8e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5785025652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b826a4243bf19a547d0b1dce522933755e8d2f1d4ae8bb9387549c6ba0268164`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:18:50 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:18:52 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.10-signed.msi
# Wed, 29 May 2019 20:18:53 GMT
ENV MONGO_DOWNLOAD_SHA256=d1ddac7ba6e2fbdfaaa0a787b83c165d4ad61795c051dc0f3142717a0b6a3707
# Wed, 29 May 2019 20:22:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:22:34 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:22:35 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:22:37 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8614e7a9166aecb1a112fd30dd449b22f1f766b2e25e551ab3ca3937f790e0f8`  
		Last Modified: Wed, 29 May 2019 20:57:30 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb516f41ef3d428513082a3ef5c61c541f683e2f2bcf8c4af01f0c7024c6a39`  
		Last Modified: Wed, 29 May 2019 20:57:30 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a9140cc356bac323f8c1b4e9d243bf56e8d345c4885de2c3258e6ec087672a`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6395bf368e75a835e04ca5f0f37e8b1756eba1fe1de64b88e6e6d87e9e4fc9`  
		Last Modified: Wed, 29 May 2019 20:58:09 GMT  
		Size: 85.2 MB (85229202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd12d243a853e32737bcea47946e1a7b5937dd964db31023200c2457d9e67ef`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fcf17e6f70acbafd13b6b6f34e07822b2d42035b3baed1046387eb5af331f1`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a95abfa44a068d062c5f32a8e02b27c53831b06660e1aaf4259c8a9cd172fa9`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - windows version 10.0.17134.766; amd64

```console
$ docker pull mongo@sha256:028373d156e59512fdddd8971359861f5a080e0af48619b9cdfa7e56d1ef653b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2784938590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4b3386bb7c72e395b28c7811c6056c3686fd320cf35f13e7d655085fb917f16`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 16:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:22:49 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:22:50 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.10-signed.msi
# Wed, 29 May 2019 20:22:52 GMT
ENV MONGO_DOWNLOAD_SHA256=d1ddac7ba6e2fbdfaaa0a787b83c165d4ad61795c051dc0f3142717a0b6a3707
# Wed, 29 May 2019 20:42:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:42:32 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:42:34 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:42:36 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a67a6b4a761b56344d5ca197119cbfe6ffbacaac6bf5e860ec3a2ea827c81f88`  
		Last Modified: Wed, 22 May 2019 16:53:02 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b5c8c0e871040e7e91d5b16174c1d149ce0332b7b8b7f8930d6a8d2e401744`  
		Last Modified: Wed, 29 May 2019 20:58:35 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335322e451e70aae885934fba6cb2f43f666de6cf4593a1e13e387af329ada06`  
		Last Modified: Wed, 29 May 2019 20:58:35 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4eba3893a41cf13201c0640e444b7d842dbd289bb4a7c9abdc3a5274652c01`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c60d97ae5ca6737561d99c6f3f4b2c8540bf0e3f851b0be296649b883c6907`  
		Last Modified: Wed, 29 May 2019 21:02:01 GMT  
		Size: 481.5 MB (481473579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1bb86203542c23106a38562b2dc82003ad7ab68b184db922d1448501bc4fd6`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217748c354057a9d2b88f60c0e2572481f2a323f2e3fe30d5c7a7d7f098507f6`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b7cc2a8fb7f1423f18cff5bed90423aea5d08190ee544a7b7e5c6088e50b9c`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable`

```console
$ docker pull mongo@sha256:657740beb79d8089f4a88921915c00360a04f088686e10b0a8bd2b85a4515d67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; s390x
	-	windows version 10.0.14393.2972; amd64
	-	windows version 10.0.17134.766; amd64

### `mongo:unstable` - linux; amd64

```console
$ docker pull mongo@sha256:cf2a849118a1b5c45480d53467516c7bfa1d8c0603a5877125a23654a9b2cc67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.4 MB (147445404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be945be05053751347453a706796f794fb35e184ee55e8563d066f4f583e766c`
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
# Wed, 29 May 2019 20:27:05 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:27:06 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:27:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:27:30 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:27:30 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:27:31 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:27:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:27:31 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:27:31 GMT
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
	-	`sha256:f656cc5d816f6ffdc16171097c0174cc869b1cc356c950adaf1aa2d3c18fb74d`  
		Last Modified: Wed, 29 May 2019 20:28:22 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fcb6c132cbcbccccd04795c42964ac72c4ef06b6d343bfe16fee02fe8ee1c7e`  
		Last Modified: Wed, 29 May 2019 20:28:38 GMT  
		Size: 110.1 MB (110089297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e5fab80a3f22d968d50cae98b3cde756ddf31cabeb005ce408a4c989f2722c`  
		Last Modified: Wed, 29 May 2019 20:28:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f10e4e2178c203feab5d4ab40393ecc3b60b4ca3cb8db47bcf2c4c1355cc906`  
		Last Modified: Wed, 29 May 2019 20:28:22 GMT  
		Size: 3.9 KB (3918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:e5b997a367871383b647df26a5ebdd65e98612b8343ec897983dcf7bed26b072
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136758762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:130ab62e8ccf99be97608a74564e2e8fe0703e0ae670b5e295d5883d1eed8efa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Wed, 29 May 2019 20:42:35 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 29 May 2019 20:42:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:42:52 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 20:42:52 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 29 May 2019 20:43:14 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 29 May 2019 20:43:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 29 May 2019 20:43:15 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Wed, 29 May 2019 20:43:17 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 29 May 2019 20:43:17 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 29 May 2019 20:43:18 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:43:18 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:43:18 GMT
ENV MONGO_MAJOR=4.1
# Wed, 29 May 2019 20:43:19 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:43:20 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:43:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:43:49 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:43:49 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:43:50 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:43:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:43:50 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:43:51 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c7e3735789afb9568d403c1c808403411d387ffe6a48cc10953b908f82b62d`  
		Last Modified: Wed, 29 May 2019 20:46:21 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8ffdb9ef9a807043dc945b3aaaa6b5a6d7b985e62e9e69e41fe48bfd325067`  
		Last Modified: Wed, 29 May 2019 20:46:21 GMT  
		Size: 2.4 MB (2445821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe401919105eac0c0d0fe49ed5bb81cd5008bd18bac8c0a0a851eee7d6ab417e`  
		Last Modified: Wed, 29 May 2019 20:46:22 GMT  
		Size: 5.3 MB (5278836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fb4761d9a2dc26ffa12d2f1f4d4e16faf3556341993866cc9ff6aac1f4bbfb`  
		Last Modified: Wed, 29 May 2019 20:46:20 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3884352da973b52333c36028c74b63757dd9a337f0b1d27f42697283c5c3570c`  
		Last Modified: Wed, 29 May 2019 20:46:19 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e498203c19a3732aa607f76c53de8e0a8b1860cd1f0f9ba77799a42c9c288f`  
		Last Modified: Wed, 29 May 2019 20:46:19 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa543bf535702a906df0ef4d236feb65c4c6fb357329330307dc38f405fe9d44`  
		Last Modified: Wed, 29 May 2019 20:46:46 GMT  
		Size: 103.2 MB (103150483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d45328762fd381de4405de690a4e7758b7f123d7ca399c6d7870cc9f472301a`  
		Last Modified: Wed, 29 May 2019 20:46:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3388fbb5bcc5f47f7b4fe914f12a20a17fb4a05d4a05408cf3dbb19df8532b`  
		Last Modified: Wed, 29 May 2019 20:46:19 GMT  
		Size: 3.9 KB (3916 bytes)  
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

### `mongo:unstable` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:e010e4b5ed8fddb78d6094054743cb43634d301f1214014fb3ce166f0e0076d6
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5791472657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:483ca9f3ab7f917f997be3f251bfaa35920eab8602cff63d210c3360d7639ddb`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:42:54 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:42:55 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.12-signed.msi
# Wed, 29 May 2019 20:42:57 GMT
ENV MONGO_DOWNLOAD_SHA256=3bbc33a5db84d15de37259ae1f9d5e890a0c97573041c9b017631a776157089e
# Wed, 29 May 2019 20:52:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:52:57 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:52:59 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:53:01 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feadb61c9a426a1ac8bbb12f44522858d96323d16816bb86067b1acd8f3a0abb`  
		Last Modified: Wed, 29 May 2019 21:02:33 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd12ff6fb1a78028480f4638b1cb18da353fda626a880e532ce428e390e21d27`  
		Last Modified: Wed, 29 May 2019 21:02:32 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:030e2eefa2ca399e251eb468ade85a46120085e90b719f77200691421c5d1f58`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23578f83381062472fa94b02349e0bf8f6393649e6f08c11ad2372fa8026ad55`  
		Last Modified: Wed, 29 May 2019 21:02:55 GMT  
		Size: 91.7 MB (91676148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5eba5de1f5fba6301d6140d902ab43d29724d8da8794c45e933d792f23f2c9`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe7bab3f1e1e66e75b9ea5211de3ba638f7357135e31fc0bb10c3d88f9b8b33`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0fb0faa9ef44c7d877f18c65f1f358fca45774e05c7cb0bba91339901dcc5f7`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - windows version 10.0.17134.766; amd64

```console
$ docker pull mongo@sha256:f6a5e83f0ae48f31664ce81e1a866569ac6e19a5d571b9e0385664064f5dd283
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2388873057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6fab3d6cdfeba8305fb14d896c7095559b081869839130d9431175930eb0206`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 16:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:53:10 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:53:12 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.12-signed.msi
# Wed, 29 May 2019 20:53:13 GMT
ENV MONGO_DOWNLOAD_SHA256=3bbc33a5db84d15de37259ae1f9d5e890a0c97573041c9b017631a776157089e
# Wed, 29 May 2019 20:56:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:56:38 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:56:40 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:56:42 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a67a6b4a761b56344d5ca197119cbfe6ffbacaac6bf5e860ec3a2ea827c81f88`  
		Last Modified: Wed, 22 May 2019 16:53:02 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce8c4e4498b524de7fc5036da4d7cb487d4321a76b8c3da77f0837bf23b4f08`  
		Last Modified: Wed, 29 May 2019 21:03:16 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e15e1cf08b86f8ab7fdcce4c590ce70fcbdbab86c65c97ea427dda9df41ab9f`  
		Last Modified: Wed, 29 May 2019 21:03:16 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f532e65b477f0df48421afe9e0b8ac325a3d44a841767af336194b456761c4`  
		Last Modified: Wed, 29 May 2019 21:03:14 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d49405bc6c13b7674b8961559b4ac6fef11df6f8da49f0392d848250284e86`  
		Last Modified: Wed, 29 May 2019 21:03:34 GMT  
		Size: 85.4 MB (85408046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ec4d8d98066e0f2d3aa3fd24414de58f9a9bdc5c66c2693b58912cca63c585`  
		Last Modified: Wed, 29 May 2019 21:03:13 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f5c1d76a85a570eb07371f9f77382df32414aa2ecf33ee15a10f2ef1c5776d`  
		Last Modified: Wed, 29 May 2019 21:03:13 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ec6d63a724609a63cb8ce87be0a97e9a43c72205dd40799c86c8d0ef961e07`  
		Last Modified: Wed, 29 May 2019 21:03:13 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-bionic`

```console
$ docker pull mongo@sha256:798701aa07c7f981894da2a54c3863d927c062ea370a1ad1833f28e25bb4e7cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; s390x

### `mongo:unstable-bionic` - linux; amd64

```console
$ docker pull mongo@sha256:cf2a849118a1b5c45480d53467516c7bfa1d8c0603a5877125a23654a9b2cc67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.4 MB (147445404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be945be05053751347453a706796f794fb35e184ee55e8563d066f4f583e766c`
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
# Wed, 29 May 2019 20:27:05 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:27:06 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:27:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:27:30 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:27:30 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:27:31 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:27:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:27:31 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:27:31 GMT
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
	-	`sha256:f656cc5d816f6ffdc16171097c0174cc869b1cc356c950adaf1aa2d3c18fb74d`  
		Last Modified: Wed, 29 May 2019 20:28:22 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fcb6c132cbcbccccd04795c42964ac72c4ef06b6d343bfe16fee02fe8ee1c7e`  
		Last Modified: Wed, 29 May 2019 20:28:38 GMT  
		Size: 110.1 MB (110089297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e5fab80a3f22d968d50cae98b3cde756ddf31cabeb005ce408a4c989f2722c`  
		Last Modified: Wed, 29 May 2019 20:28:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f10e4e2178c203feab5d4ab40393ecc3b60b4ca3cb8db47bcf2c4c1355cc906`  
		Last Modified: Wed, 29 May 2019 20:28:22 GMT  
		Size: 3.9 KB (3918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable-bionic` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:e5b997a367871383b647df26a5ebdd65e98612b8343ec897983dcf7bed26b072
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136758762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:130ab62e8ccf99be97608a74564e2e8fe0703e0ae670b5e295d5883d1eed8efa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Wed, 29 May 2019 20:42:35 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 29 May 2019 20:42:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:42:52 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 20:42:52 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 29 May 2019 20:43:14 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 29 May 2019 20:43:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 29 May 2019 20:43:15 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Wed, 29 May 2019 20:43:17 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 29 May 2019 20:43:17 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 29 May 2019 20:43:18 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:43:18 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:43:18 GMT
ENV MONGO_MAJOR=4.1
# Wed, 29 May 2019 20:43:19 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:43:20 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:43:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:43:49 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:43:49 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:43:50 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:43:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:43:50 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:43:51 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c7e3735789afb9568d403c1c808403411d387ffe6a48cc10953b908f82b62d`  
		Last Modified: Wed, 29 May 2019 20:46:21 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8ffdb9ef9a807043dc945b3aaaa6b5a6d7b985e62e9e69e41fe48bfd325067`  
		Last Modified: Wed, 29 May 2019 20:46:21 GMT  
		Size: 2.4 MB (2445821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe401919105eac0c0d0fe49ed5bb81cd5008bd18bac8c0a0a851eee7d6ab417e`  
		Last Modified: Wed, 29 May 2019 20:46:22 GMT  
		Size: 5.3 MB (5278836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fb4761d9a2dc26ffa12d2f1f4d4e16faf3556341993866cc9ff6aac1f4bbfb`  
		Last Modified: Wed, 29 May 2019 20:46:20 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3884352da973b52333c36028c74b63757dd9a337f0b1d27f42697283c5c3570c`  
		Last Modified: Wed, 29 May 2019 20:46:19 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e498203c19a3732aa607f76c53de8e0a8b1860cd1f0f9ba77799a42c9c288f`  
		Last Modified: Wed, 29 May 2019 20:46:19 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa543bf535702a906df0ef4d236feb65c4c6fb357329330307dc38f405fe9d44`  
		Last Modified: Wed, 29 May 2019 20:46:46 GMT  
		Size: 103.2 MB (103150483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d45328762fd381de4405de690a4e7758b7f123d7ca399c6d7870cc9f472301a`  
		Last Modified: Wed, 29 May 2019 20:46:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3388fbb5bcc5f47f7b4fe914f12a20a17fb4a05d4a05408cf3dbb19df8532b`  
		Last Modified: Wed, 29 May 2019 20:46:19 GMT  
		Size: 3.9 KB (3916 bytes)  
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
$ docker pull mongo@sha256:d72e99b4bdcb4e1565b1c402d1beb5b3e177e01e6b2d5bb19f8527731db4aafb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64
	-	windows version 10.0.17134.766; amd64

### `mongo:unstable-windowsservercore` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:e010e4b5ed8fddb78d6094054743cb43634d301f1214014fb3ce166f0e0076d6
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5791472657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:483ca9f3ab7f917f997be3f251bfaa35920eab8602cff63d210c3360d7639ddb`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:42:54 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:42:55 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.12-signed.msi
# Wed, 29 May 2019 20:42:57 GMT
ENV MONGO_DOWNLOAD_SHA256=3bbc33a5db84d15de37259ae1f9d5e890a0c97573041c9b017631a776157089e
# Wed, 29 May 2019 20:52:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:52:57 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:52:59 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:53:01 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feadb61c9a426a1ac8bbb12f44522858d96323d16816bb86067b1acd8f3a0abb`  
		Last Modified: Wed, 29 May 2019 21:02:33 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd12ff6fb1a78028480f4638b1cb18da353fda626a880e532ce428e390e21d27`  
		Last Modified: Wed, 29 May 2019 21:02:32 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:030e2eefa2ca399e251eb468ade85a46120085e90b719f77200691421c5d1f58`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23578f83381062472fa94b02349e0bf8f6393649e6f08c11ad2372fa8026ad55`  
		Last Modified: Wed, 29 May 2019 21:02:55 GMT  
		Size: 91.7 MB (91676148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5eba5de1f5fba6301d6140d902ab43d29724d8da8794c45e933d792f23f2c9`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe7bab3f1e1e66e75b9ea5211de3ba638f7357135e31fc0bb10c3d88f9b8b33`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0fb0faa9ef44c7d877f18c65f1f358fca45774e05c7cb0bba91339901dcc5f7`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable-windowsservercore` - windows version 10.0.17134.766; amd64

```console
$ docker pull mongo@sha256:f6a5e83f0ae48f31664ce81e1a866569ac6e19a5d571b9e0385664064f5dd283
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2388873057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6fab3d6cdfeba8305fb14d896c7095559b081869839130d9431175930eb0206`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 16:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:53:10 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:53:12 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.12-signed.msi
# Wed, 29 May 2019 20:53:13 GMT
ENV MONGO_DOWNLOAD_SHA256=3bbc33a5db84d15de37259ae1f9d5e890a0c97573041c9b017631a776157089e
# Wed, 29 May 2019 20:56:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:56:38 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:56:40 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:56:42 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a67a6b4a761b56344d5ca197119cbfe6ffbacaac6bf5e860ec3a2ea827c81f88`  
		Last Modified: Wed, 22 May 2019 16:53:02 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce8c4e4498b524de7fc5036da4d7cb487d4321a76b8c3da77f0837bf23b4f08`  
		Last Modified: Wed, 29 May 2019 21:03:16 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e15e1cf08b86f8ab7fdcce4c590ce70fcbdbab86c65c97ea427dda9df41ab9f`  
		Last Modified: Wed, 29 May 2019 21:03:16 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f532e65b477f0df48421afe9e0b8ac325a3d44a841767af336194b456761c4`  
		Last Modified: Wed, 29 May 2019 21:03:14 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d49405bc6c13b7674b8961559b4ac6fef11df6f8da49f0392d848250284e86`  
		Last Modified: Wed, 29 May 2019 21:03:34 GMT  
		Size: 85.4 MB (85408046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ec4d8d98066e0f2d3aa3fd24414de58f9a9bdc5c66c2693b58912cca63c585`  
		Last Modified: Wed, 29 May 2019 21:03:13 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f5c1d76a85a570eb07371f9f77382df32414aa2ecf33ee15a10f2ef1c5776d`  
		Last Modified: Wed, 29 May 2019 21:03:13 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ec6d63a724609a63cb8ce87be0a97e9a43c72205dd40799c86c8d0ef961e07`  
		Last Modified: Wed, 29 May 2019 21:03:13 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-windowsservercore-1803`

```console
$ docker pull mongo@sha256:f2c70dfba6bd161bbc6de68ecfc59e96fa7a755dc3ae78fb9ff9023740b680a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.766; amd64

### `mongo:unstable-windowsservercore-1803` - windows version 10.0.17134.766; amd64

```console
$ docker pull mongo@sha256:f6a5e83f0ae48f31664ce81e1a866569ac6e19a5d571b9e0385664064f5dd283
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2388873057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6fab3d6cdfeba8305fb14d896c7095559b081869839130d9431175930eb0206`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 16:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:53:10 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:53:12 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.12-signed.msi
# Wed, 29 May 2019 20:53:13 GMT
ENV MONGO_DOWNLOAD_SHA256=3bbc33a5db84d15de37259ae1f9d5e890a0c97573041c9b017631a776157089e
# Wed, 29 May 2019 20:56:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:56:38 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:56:40 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:56:42 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a67a6b4a761b56344d5ca197119cbfe6ffbacaac6bf5e860ec3a2ea827c81f88`  
		Last Modified: Wed, 22 May 2019 16:53:02 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce8c4e4498b524de7fc5036da4d7cb487d4321a76b8c3da77f0837bf23b4f08`  
		Last Modified: Wed, 29 May 2019 21:03:16 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e15e1cf08b86f8ab7fdcce4c590ce70fcbdbab86c65c97ea427dda9df41ab9f`  
		Last Modified: Wed, 29 May 2019 21:03:16 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f532e65b477f0df48421afe9e0b8ac325a3d44a841767af336194b456761c4`  
		Last Modified: Wed, 29 May 2019 21:03:14 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d49405bc6c13b7674b8961559b4ac6fef11df6f8da49f0392d848250284e86`  
		Last Modified: Wed, 29 May 2019 21:03:34 GMT  
		Size: 85.4 MB (85408046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ec4d8d98066e0f2d3aa3fd24414de58f9a9bdc5c66c2693b58912cca63c585`  
		Last Modified: Wed, 29 May 2019 21:03:13 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f5c1d76a85a570eb07371f9f77382df32414aa2ecf33ee15a10f2ef1c5776d`  
		Last Modified: Wed, 29 May 2019 21:03:13 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ec6d63a724609a63cb8ce87be0a97e9a43c72205dd40799c86c8d0ef961e07`  
		Last Modified: Wed, 29 May 2019 21:03:13 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:c164c9fe82f9dbe18a7471dec5cb533089c095f2c217b1fab179e8ae73faae26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64

### `mongo:unstable-windowsservercore-ltsc2016` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:e010e4b5ed8fddb78d6094054743cb43634d301f1214014fb3ce166f0e0076d6
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5791472657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:483ca9f3ab7f917f997be3f251bfaa35920eab8602cff63d210c3360d7639ddb`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:42:54 GMT
ENV MONGO_VERSION=4.1.12
# Wed, 29 May 2019 20:42:55 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.12-signed.msi
# Wed, 29 May 2019 20:42:57 GMT
ENV MONGO_DOWNLOAD_SHA256=3bbc33a5db84d15de37259ae1f9d5e890a0c97573041c9b017631a776157089e
# Wed, 29 May 2019 20:52:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:52:57 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:52:59 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:53:01 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feadb61c9a426a1ac8bbb12f44522858d96323d16816bb86067b1acd8f3a0abb`  
		Last Modified: Wed, 29 May 2019 21:02:33 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd12ff6fb1a78028480f4638b1cb18da353fda626a880e532ce428e390e21d27`  
		Last Modified: Wed, 29 May 2019 21:02:32 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:030e2eefa2ca399e251eb468ade85a46120085e90b719f77200691421c5d1f58`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23578f83381062472fa94b02349e0bf8f6393649e6f08c11ad2372fa8026ad55`  
		Last Modified: Wed, 29 May 2019 21:02:55 GMT  
		Size: 91.7 MB (91676148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5eba5de1f5fba6301d6140d902ab43d29724d8da8794c45e933d792f23f2c9`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe7bab3f1e1e66e75b9ea5211de3ba638f7357135e31fc0bb10c3d88f9b8b33`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0fb0faa9ef44c7d877f18c65f1f358fca45774e05c7cb0bba91339901dcc5f7`  
		Last Modified: Wed, 29 May 2019 21:02:30 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:c5e03c720ef3e6a1cb11134678a714b71249a04cf47c97334dadb6848453617f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64
	-	windows version 10.0.17134.766; amd64

### `mongo:windowsservercore` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:b1ca419cbfc383e8a13078e5ee09a1c3514576a91f3d14c196b785d8c86e5f8e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5785025652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b826a4243bf19a547d0b1dce522933755e8d2f1d4ae8bb9387549c6ba0268164`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:18:50 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:18:52 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.10-signed.msi
# Wed, 29 May 2019 20:18:53 GMT
ENV MONGO_DOWNLOAD_SHA256=d1ddac7ba6e2fbdfaaa0a787b83c165d4ad61795c051dc0f3142717a0b6a3707
# Wed, 29 May 2019 20:22:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:22:34 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:22:35 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:22:37 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8614e7a9166aecb1a112fd30dd449b22f1f766b2e25e551ab3ca3937f790e0f8`  
		Last Modified: Wed, 29 May 2019 20:57:30 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb516f41ef3d428513082a3ef5c61c541f683e2f2bcf8c4af01f0c7024c6a39`  
		Last Modified: Wed, 29 May 2019 20:57:30 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a9140cc356bac323f8c1b4e9d243bf56e8d345c4885de2c3258e6ec087672a`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6395bf368e75a835e04ca5f0f37e8b1756eba1fe1de64b88e6e6d87e9e4fc9`  
		Last Modified: Wed, 29 May 2019 20:58:09 GMT  
		Size: 85.2 MB (85229202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd12d243a853e32737bcea47946e1a7b5937dd964db31023200c2457d9e67ef`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fcf17e6f70acbafd13b6b6f34e07822b2d42035b3baed1046387eb5af331f1`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a95abfa44a068d062c5f32a8e02b27c53831b06660e1aaf4259c8a9cd172fa9`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.17134.766; amd64

```console
$ docker pull mongo@sha256:028373d156e59512fdddd8971359861f5a080e0af48619b9cdfa7e56d1ef653b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2784938590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4b3386bb7c72e395b28c7811c6056c3686fd320cf35f13e7d655085fb917f16`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 16:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:22:49 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:22:50 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.10-signed.msi
# Wed, 29 May 2019 20:22:52 GMT
ENV MONGO_DOWNLOAD_SHA256=d1ddac7ba6e2fbdfaaa0a787b83c165d4ad61795c051dc0f3142717a0b6a3707
# Wed, 29 May 2019 20:42:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:42:32 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:42:34 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:42:36 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a67a6b4a761b56344d5ca197119cbfe6ffbacaac6bf5e860ec3a2ea827c81f88`  
		Last Modified: Wed, 22 May 2019 16:53:02 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b5c8c0e871040e7e91d5b16174c1d149ce0332b7b8b7f8930d6a8d2e401744`  
		Last Modified: Wed, 29 May 2019 20:58:35 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335322e451e70aae885934fba6cb2f43f666de6cf4593a1e13e387af329ada06`  
		Last Modified: Wed, 29 May 2019 20:58:35 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4eba3893a41cf13201c0640e444b7d842dbd289bb4a7c9abdc3a5274652c01`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c60d97ae5ca6737561d99c6f3f4b2c8540bf0e3f851b0be296649b883c6907`  
		Last Modified: Wed, 29 May 2019 21:02:01 GMT  
		Size: 481.5 MB (481473579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1bb86203542c23106a38562b2dc82003ad7ab68b184db922d1448501bc4fd6`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217748c354057a9d2b88f60c0e2572481f2a323f2e3fe30d5c7a7d7f098507f6`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b7cc2a8fb7f1423f18cff5bed90423aea5d08190ee544a7b7e5c6088e50b9c`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore-1803`

```console
$ docker pull mongo@sha256:62209176b6cae484059897ff6ad86fc7eca13eba8989606c992973da1aec93a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.766; amd64

### `mongo:windowsservercore-1803` - windows version 10.0.17134.766; amd64

```console
$ docker pull mongo@sha256:028373d156e59512fdddd8971359861f5a080e0af48619b9cdfa7e56d1ef653b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2784938590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4b3386bb7c72e395b28c7811c6056c3686fd320cf35f13e7d655085fb917f16`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 16:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:22:49 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:22:50 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.10-signed.msi
# Wed, 29 May 2019 20:22:52 GMT
ENV MONGO_DOWNLOAD_SHA256=d1ddac7ba6e2fbdfaaa0a787b83c165d4ad61795c051dc0f3142717a0b6a3707
# Wed, 29 May 2019 20:42:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:42:32 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:42:34 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:42:36 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a67a6b4a761b56344d5ca197119cbfe6ffbacaac6bf5e860ec3a2ea827c81f88`  
		Last Modified: Wed, 22 May 2019 16:53:02 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b5c8c0e871040e7e91d5b16174c1d149ce0332b7b8b7f8930d6a8d2e401744`  
		Last Modified: Wed, 29 May 2019 20:58:35 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335322e451e70aae885934fba6cb2f43f666de6cf4593a1e13e387af329ada06`  
		Last Modified: Wed, 29 May 2019 20:58:35 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4eba3893a41cf13201c0640e444b7d842dbd289bb4a7c9abdc3a5274652c01`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c60d97ae5ca6737561d99c6f3f4b2c8540bf0e3f851b0be296649b883c6907`  
		Last Modified: Wed, 29 May 2019 21:02:01 GMT  
		Size: 481.5 MB (481473579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1bb86203542c23106a38562b2dc82003ad7ab68b184db922d1448501bc4fd6`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217748c354057a9d2b88f60c0e2572481f2a323f2e3fe30d5c7a7d7f098507f6`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b7cc2a8fb7f1423f18cff5bed90423aea5d08190ee544a7b7e5c6088e50b9c`  
		Last Modified: Wed, 29 May 2019 20:58:32 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:ba6e81a06617ff8eeda353da66d4133c249a540562d848922aa6edad13f7b6ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64

### `mongo:windowsservercore-ltsc2016` - windows version 10.0.14393.2972; amd64

```console
$ docker pull mongo@sha256:b1ca419cbfc383e8a13078e5ee09a1c3514576a91f3d14c196b785d8c86e5f8e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5785025652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b826a4243bf19a547d0b1dce522933755e8d2f1d4ae8bb9387549c6ba0268164`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 16:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 May 2019 20:18:50 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:18:52 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.10-signed.msi
# Wed, 29 May 2019 20:18:53 GMT
ENV MONGO_DOWNLOAD_SHA256=d1ddac7ba6e2fbdfaaa0a787b83c165d4ad61795c051dc0f3142717a0b6a3707
# Wed, 29 May 2019 20:22:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 May 2019 20:22:34 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 May 2019 20:22:35 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:22:37 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa7b7a5d59df7c91b4788e232aa5f539c2515b6ccecfac54823548fcd896eaaf`  
		Last Modified: Wed, 22 May 2019 16:50:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8614e7a9166aecb1a112fd30dd449b22f1f766b2e25e551ab3ca3937f790e0f8`  
		Last Modified: Wed, 29 May 2019 20:57:30 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb516f41ef3d428513082a3ef5c61c541f683e2f2bcf8c4af01f0c7024c6a39`  
		Last Modified: Wed, 29 May 2019 20:57:30 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a9140cc356bac323f8c1b4e9d243bf56e8d345c4885de2c3258e6ec087672a`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6395bf368e75a835e04ca5f0f37e8b1756eba1fe1de64b88e6e6d87e9e4fc9`  
		Last Modified: Wed, 29 May 2019 20:58:09 GMT  
		Size: 85.2 MB (85229202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd12d243a853e32737bcea47946e1a7b5937dd964db31023200c2457d9e67ef`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fcf17e6f70acbafd13b6b6f34e07822b2d42035b3baed1046387eb5af331f1`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a95abfa44a068d062c5f32a8e02b27c53831b06660e1aaf4259c8a9cd172fa9`  
		Last Modified: Wed, 29 May 2019 20:57:28 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:xenial`

```console
$ docker pull mongo@sha256:c33ab7640ed2a4e083532e9c63aadf9c5e21e589f5e46b8b2ef1b5a1981e6b9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:xenial` - linux; amd64

```console
$ docker pull mongo@sha256:05f12b17aa35948848c0d3f0198ce10c7f3e37438724911d0d8f9b6643535599
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152630643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fb47b43df1987480928787d3907f3be50941506ede82298b920df07011b8d94`
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
# Wed, 29 May 2019 20:26:27 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:26:28 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:27:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:27:01 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:27:01 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:27:01 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:27:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:27:02 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:27:02 GMT
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
	-	`sha256:c283cca25ace379a7a25c8f31ed635c965909f6165b555dfda8e572ab45c82a8`  
		Last Modified: Wed, 29 May 2019 20:27:46 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051b3304da4ab48f21f3a9856c2b6969329bc18523598d384137b6dce1acdf95`  
		Last Modified: Wed, 29 May 2019 20:28:08 GMT  
		Size: 104.8 MB (104756440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4327c3493368e2b595e866fd329889be6e5a82db1bbafbbfecd3004b37ee05`  
		Last Modified: Wed, 29 May 2019 20:27:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80003bc32b799981ceea62ad61a6601aa1b7fbb85f32a255100adbde56eadabd`  
		Last Modified: Wed, 29 May 2019 20:27:46 GMT  
		Size: 3.9 KB (3919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:bd056a4199692553f06d6021a4ea8e763ec6e2cccabc14a9125f9c252be5940c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.5 MB (142524264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c5f2579db20fdc79fd987ee61f40ce3f821bd39705ed7b4dd75ae25d46b73f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Wed, 29 May 2019 20:39:48 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 29 May 2019 20:40:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:40:06 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 20:40:07 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 29 May 2019 20:40:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 29 May 2019 20:40:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 29 May 2019 20:41:56 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 29 May 2019 20:41:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 29 May 2019 20:41:58 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 29 May 2019 20:41:58 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:41:58 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 29 May 2019 20:41:59 GMT
ENV MONGO_MAJOR=4.0
# Wed, 29 May 2019 20:41:59 GMT
ENV MONGO_VERSION=4.0.10
# Wed, 29 May 2019 20:42:00 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 29 May 2019 20:42:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 29 May 2019 20:42:28 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 29 May 2019 20:42:29 GMT
VOLUME [/data/db /data/configdb]
# Wed, 29 May 2019 20:42:29 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 29 May 2019 20:42:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 20:42:30 GMT
EXPOSE 27017
# Wed, 29 May 2019 20:42:30 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a346b0eb8a11391dc1dd6341c9b26ea38f0266bece6362d360404a77296690ef`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1323ba5612ca90211af761826c4c0eb260925570bf5c80d973cf8c41be34fa9`  
		Last Modified: Wed, 29 May 2019 20:44:22 GMT  
		Size: 2.5 MB (2474290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1a762317d33e68dd1d27a4363c30ba13ff044adfadb40afadaaae5d3affee9`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 1.1 MB (1085490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cd1cf117b296bd3a88deb6aef7b4732fde8f77bc1c4d28d7c82b1284ff72f4`  
		Last Modified: Wed, 29 May 2019 20:44:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164f5e188c717c64780ae7768bbf69a7381c07c30a81873cfc255495d5df8963`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff2b0482ee28a64ed93d9fccfb25f7620b0ad678294a411f2ad956af95d0e23f`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bce7c26c7dc3235ab87e4b381f9b8e8a05857342c8a722151eb36436409ad9`  
		Last Modified: Wed, 29 May 2019 20:46:09 GMT  
		Size: 99.2 MB (99219492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe1386f976a405959772c8f74c59f79ad12948706a051999641a7b2ff491690`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af07a5b42066604eefd19aaca7afad9e595afe5d3388cfd073d4ad85acf89fc7`  
		Last Modified: Wed, 29 May 2019 20:45:40 GMT  
		Size: 3.9 KB (3918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
