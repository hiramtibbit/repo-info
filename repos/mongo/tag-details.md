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
$ docker pull mongo@sha256:1cc9ea0f368e47aaa4b0da633a22790859b948308cea25c4235a4e6984424a37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2906; amd64

### `mongo:3` - linux; amd64

```console
$ docker pull mongo@sha256:5694f7f0888c96fc2e5292e78ada9115b2a70dfcc3adb9068468562b09347d5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.8 MB (164792703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f29e46dab4155759fbe11eae142df6437700ab37767483ea5ad0e5acb3d883b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 00:01:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 00:01:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:01:47 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 00:01:47 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 00:01:53 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 00:01:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 00:02:20 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Sat, 27 Apr 2019 00:02:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 00:02:22 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 00:02:22 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:02:22 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:02:22 GMT
ENV MONGO_MAJOR=3.6
# Sat, 27 Apr 2019 00:02:22 GMT
ENV MONGO_VERSION=3.6.12
# Sat, 27 Apr 2019 00:02:23 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 00:02:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 00:02:43 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 00:02:43 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 00:19:52 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 00:19:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 00:19:53 GMT
EXPOSE 27017
# Tue, 07 May 2019 00:19:53 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5182dfcfa207e938a4dbe8214adb73e0413c114436a1dd6f2493cd037f88230`  
		Last Modified: Sat, 27 Apr 2019 00:04:47 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb099326ee3fa95460e50a06e259887a6311d01e8f7b0d183f3808d0385f8c7`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 2.9 MB (2945567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75804f28c4b1878a1f7a1aa925190fce532c76192dd7895af9fc61716de7fb8d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 1.2 MB (1151175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765a10b214befdd889a88a1ef896e5b96df3171b4a8202022dfdf7833790e46d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36cbec4a23a50969ea447502f8d63406ef58c7ad083f132a616897b242594294`  
		Last Modified: Sat, 27 Apr 2019 00:05:11 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7c112fee500ca660560d8484f72f37b730e25a2b8c673d428147b0027a4d87`  
		Last Modified: Sat, 27 Apr 2019 00:05:11 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a72bf1a5923ee959d45688501679bede9114379334bd74077e3b43133c1950`  
		Last Modified: Sat, 27 Apr 2019 00:05:32 GMT  
		Size: 116.9 MB (116933521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c24e128abe6695bf1fc4161c72666102f2675f90a29ac6f20e316cc3e484592`  
		Last Modified: Sat, 27 Apr 2019 00:05:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a6d7d44235860e5d0ce7c27d88840dd9ded08e1c509bd421719fc7241c5def`  
		Last Modified: Tue, 07 May 2019 00:20:18 GMT  
		Size: 3.9 KB (3913 bytes)  
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

### `mongo:3` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:25ad76d8cb91bc1f5038dbdcd6651905589b7e3c696fce7f47152df14de297c2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 GB (6112494057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04f37cc0c3e1cb2b5c49a5e839a14648bbbf6b28782a1365c05e3ea7557ac076`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 02:12:18 GMT
ENV MONGO_VERSION=3.6.12
# Fri, 12 Apr 2019 02:12:19 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.12-signed.msi
# Fri, 12 Apr 2019 02:12:20 GMT
ENV MONGO_DOWNLOAD_SHA256=074261abf106d79e4d42612ce1d22d397c10af7f73cc9947f8e36632683ef3f7
# Fri, 12 Apr 2019 02:36:17 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 02:36:19 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 02:36:21 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 02:36:23 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e5043938b0de69e60d936a678f623c8ea21c327267c6e21ebd27225ee0a5e3`  
		Last Modified: Fri, 12 Apr 2019 04:39:03 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4065eeeec4d10354e90753b164b318d97ecc238ff36121a127900b084c369dcb`  
		Last Modified: Fri, 12 Apr 2019 04:39:02 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd667bc5d1f54baf5617cba02b580b11a1b7855ab53389991338f59658975123`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3678e51885517a528837a0aa7e80292d4b061e54437f47025a27a60e643f8f6c`  
		Last Modified: Fri, 12 Apr 2019 04:40:07 GMT  
		Size: 470.1 MB (470115904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa8ceffc85866575d4014d6d250d66614223ed8e4956df51c248d4dbd907dd6`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19b033614c81917c11f567466ac7049d1766b77a2fb7efc3e1cc534bd0a08ea`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39b926cc6947fc3a4b228112c63841ddc5c35d8fb3dd3116c3ada7802591afd`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:42166bc258b094b9842a5517b554006f35c8e256d7951df2f46819f66c6d5eea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2906; amd64

### `mongo:3.4` - linux; amd64

```console
$ docker pull mongo@sha256:f9cfee6070ef83ea57773b529c536b660d80fe5b1ff688e8ce7463d05c8ff2fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167470352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74adf035f5a238fdab5f97e344c41982ed4a2c2aec0030b7fb11f69c9fcffbb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 00:01:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 00:01:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:01:47 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 00:01:47 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 00:01:53 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 00:01:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 00:01:54 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Sat, 27 Apr 2019 00:01:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 00:01:55 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 00:01:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:01:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:01:56 GMT
ENV MONGO_MAJOR=3.4
# Sat, 27 Apr 2019 00:01:56 GMT
ENV MONGO_VERSION=3.4.20
# Sat, 27 Apr 2019 00:01:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 00:02:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 00:02:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 00:02:15 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 00:19:48 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 00:19:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat (3.4)
# Tue, 07 May 2019 00:19:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 00:19:49 GMT
EXPOSE 27017
# Tue, 07 May 2019 00:19:49 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5182dfcfa207e938a4dbe8214adb73e0413c114436a1dd6f2493cd037f88230`  
		Last Modified: Sat, 27 Apr 2019 00:04:47 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb099326ee3fa95460e50a06e259887a6311d01e8f7b0d183f3808d0385f8c7`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 2.9 MB (2945567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75804f28c4b1878a1f7a1aa925190fce532c76192dd7895af9fc61716de7fb8d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 1.2 MB (1151175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765a10b214befdd889a88a1ef896e5b96df3171b4a8202022dfdf7833790e46d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae38398f4041f1b9ba41e8e1a818cb8045b1e866345bb64269a6f7f0923ab02`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5532d3b70a3fccf9c70fea1a8babf335f4a50172212c293e346e07efae0ce93`  
		Last Modified: Sat, 27 Apr 2019 00:04:45 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82ef0d6a83f6ea013162bdf74676c5080655b811eb7718c5f6aadea96bf4b32`  
		Last Modified: Sat, 27 Apr 2019 00:05:06 GMT  
		Size: 119.6 MB (119611050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38e0cde81004c3330f0aaa6c6a6ac199f3daebb2c2226e903913c6ec4a119aa`  
		Last Modified: Sat, 27 Apr 2019 00:04:45 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bcebbbd029f904559004a13d897a87914c9ecd421de711b0cae306dc8dc5790`  
		Last Modified: Tue, 07 May 2019 00:20:15 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e07fbc85b1fff379259fde55a1a9d7e315e4bff91ba8356da26837b97402b87`  
		Last Modified: Tue, 07 May 2019 00:20:14 GMT  
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

### `mongo:3.4` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:54614e5ad125d20ba0dca9f2658a29c38244b8e565c7d05390dd043824865e7a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5734974692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499d51147faa13a33d8c7c5c195cac5553ed4c318a1bb4f5d286eec19af62d96`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 02:03:22 GMT
ENV MONGO_VERSION=3.4.20
# Fri, 12 Apr 2019 02:03:23 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.20-signed.msi
# Fri, 12 Apr 2019 02:03:24 GMT
ENV MONGO_DOWNLOAD_SHA256=a6b27a8ce7ba1d6ebe734e7e5c0f644317ca684a0e4530250b9a2201f331bc59
# Fri, 12 Apr 2019 02:09:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 02:09:09 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 02:09:11 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 02:09:12 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b3f755d89b91a87ad6d8c916f76234df8d9af393e0f33fd5d7bd284f6aa5eb`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7481afea3c762408d15a619e728de19aec96d9aafe6ece7583625f1dfca1eba4`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d682ce0e18fd03a4e8416408863efc5c2caea8e58b1d2e7b8a70b47c4cb6c7`  
		Last Modified: Fri, 12 Apr 2019 04:37:48 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5e91f768a79925c2198769a3d39b22596f600378c16f229e44ab16588a62e2`  
		Last Modified: Fri, 12 Apr 2019 04:38:11 GMT  
		Size: 92.6 MB (92596528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:165b2f3164ca2413b32075dda13c603f08e57684ee0ce136f92eeb5bffe1cc90`  
		Last Modified: Fri, 12 Apr 2019 04:37:48 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a11f3d60a10a9e4330010f9d931d474d9b80fc4f09e4b6807fc160e3c0c0a9`  
		Last Modified: Fri, 12 Apr 2019 04:37:48 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0abf2b2278ce904f93dc8b0cb44faa1b47bc0b284e107ef755ea711d81d84ed`  
		Last Modified: Fri, 12 Apr 2019 04:37:48 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.20`

```console
$ docker pull mongo@sha256:42166bc258b094b9842a5517b554006f35c8e256d7951df2f46819f66c6d5eea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2906; amd64

### `mongo:3.4.20` - linux; amd64

```console
$ docker pull mongo@sha256:f9cfee6070ef83ea57773b529c536b660d80fe5b1ff688e8ce7463d05c8ff2fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167470352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74adf035f5a238fdab5f97e344c41982ed4a2c2aec0030b7fb11f69c9fcffbb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 00:01:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 00:01:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:01:47 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 00:01:47 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 00:01:53 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 00:01:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 00:01:54 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Sat, 27 Apr 2019 00:01:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 00:01:55 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 00:01:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:01:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:01:56 GMT
ENV MONGO_MAJOR=3.4
# Sat, 27 Apr 2019 00:01:56 GMT
ENV MONGO_VERSION=3.4.20
# Sat, 27 Apr 2019 00:01:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 00:02:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 00:02:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 00:02:15 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 00:19:48 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 00:19:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat (3.4)
# Tue, 07 May 2019 00:19:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 00:19:49 GMT
EXPOSE 27017
# Tue, 07 May 2019 00:19:49 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5182dfcfa207e938a4dbe8214adb73e0413c114436a1dd6f2493cd037f88230`  
		Last Modified: Sat, 27 Apr 2019 00:04:47 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb099326ee3fa95460e50a06e259887a6311d01e8f7b0d183f3808d0385f8c7`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 2.9 MB (2945567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75804f28c4b1878a1f7a1aa925190fce532c76192dd7895af9fc61716de7fb8d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 1.2 MB (1151175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765a10b214befdd889a88a1ef896e5b96df3171b4a8202022dfdf7833790e46d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae38398f4041f1b9ba41e8e1a818cb8045b1e866345bb64269a6f7f0923ab02`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5532d3b70a3fccf9c70fea1a8babf335f4a50172212c293e346e07efae0ce93`  
		Last Modified: Sat, 27 Apr 2019 00:04:45 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82ef0d6a83f6ea013162bdf74676c5080655b811eb7718c5f6aadea96bf4b32`  
		Last Modified: Sat, 27 Apr 2019 00:05:06 GMT  
		Size: 119.6 MB (119611050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38e0cde81004c3330f0aaa6c6a6ac199f3daebb2c2226e903913c6ec4a119aa`  
		Last Modified: Sat, 27 Apr 2019 00:04:45 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bcebbbd029f904559004a13d897a87914c9ecd421de711b0cae306dc8dc5790`  
		Last Modified: Tue, 07 May 2019 00:20:15 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e07fbc85b1fff379259fde55a1a9d7e315e4bff91ba8356da26837b97402b87`  
		Last Modified: Tue, 07 May 2019 00:20:14 GMT  
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

### `mongo:3.4.20` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:54614e5ad125d20ba0dca9f2658a29c38244b8e565c7d05390dd043824865e7a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5734974692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499d51147faa13a33d8c7c5c195cac5553ed4c318a1bb4f5d286eec19af62d96`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 02:03:22 GMT
ENV MONGO_VERSION=3.4.20
# Fri, 12 Apr 2019 02:03:23 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.20-signed.msi
# Fri, 12 Apr 2019 02:03:24 GMT
ENV MONGO_DOWNLOAD_SHA256=a6b27a8ce7ba1d6ebe734e7e5c0f644317ca684a0e4530250b9a2201f331bc59
# Fri, 12 Apr 2019 02:09:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 02:09:09 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 02:09:11 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 02:09:12 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b3f755d89b91a87ad6d8c916f76234df8d9af393e0f33fd5d7bd284f6aa5eb`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7481afea3c762408d15a619e728de19aec96d9aafe6ece7583625f1dfca1eba4`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d682ce0e18fd03a4e8416408863efc5c2caea8e58b1d2e7b8a70b47c4cb6c7`  
		Last Modified: Fri, 12 Apr 2019 04:37:48 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5e91f768a79925c2198769a3d39b22596f600378c16f229e44ab16588a62e2`  
		Last Modified: Fri, 12 Apr 2019 04:38:11 GMT  
		Size: 92.6 MB (92596528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:165b2f3164ca2413b32075dda13c603f08e57684ee0ce136f92eeb5bffe1cc90`  
		Last Modified: Fri, 12 Apr 2019 04:37:48 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a11f3d60a10a9e4330010f9d931d474d9b80fc4f09e4b6807fc160e3c0c0a9`  
		Last Modified: Fri, 12 Apr 2019 04:37:48 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0abf2b2278ce904f93dc8b0cb44faa1b47bc0b284e107ef755ea711d81d84ed`  
		Last Modified: Fri, 12 Apr 2019 04:37:48 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.20-windowsservercore`

```console
$ docker pull mongo@sha256:78e7c78c21780b423b08aba8901c07f583999ca3d50723e0051c693fb2fd24ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64

### `mongo:3.4.20-windowsservercore` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:54614e5ad125d20ba0dca9f2658a29c38244b8e565c7d05390dd043824865e7a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5734974692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499d51147faa13a33d8c7c5c195cac5553ed4c318a1bb4f5d286eec19af62d96`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 02:03:22 GMT
ENV MONGO_VERSION=3.4.20
# Fri, 12 Apr 2019 02:03:23 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.20-signed.msi
# Fri, 12 Apr 2019 02:03:24 GMT
ENV MONGO_DOWNLOAD_SHA256=a6b27a8ce7ba1d6ebe734e7e5c0f644317ca684a0e4530250b9a2201f331bc59
# Fri, 12 Apr 2019 02:09:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 02:09:09 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 02:09:11 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 02:09:12 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b3f755d89b91a87ad6d8c916f76234df8d9af393e0f33fd5d7bd284f6aa5eb`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7481afea3c762408d15a619e728de19aec96d9aafe6ece7583625f1dfca1eba4`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d682ce0e18fd03a4e8416408863efc5c2caea8e58b1d2e7b8a70b47c4cb6c7`  
		Last Modified: Fri, 12 Apr 2019 04:37:48 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5e91f768a79925c2198769a3d39b22596f600378c16f229e44ab16588a62e2`  
		Last Modified: Fri, 12 Apr 2019 04:38:11 GMT  
		Size: 92.6 MB (92596528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:165b2f3164ca2413b32075dda13c603f08e57684ee0ce136f92eeb5bffe1cc90`  
		Last Modified: Fri, 12 Apr 2019 04:37:48 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a11f3d60a10a9e4330010f9d931d474d9b80fc4f09e4b6807fc160e3c0c0a9`  
		Last Modified: Fri, 12 Apr 2019 04:37:48 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0abf2b2278ce904f93dc8b0cb44faa1b47bc0b284e107ef755ea711d81d84ed`  
		Last Modified: Fri, 12 Apr 2019 04:37:48 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.20-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:78e7c78c21780b423b08aba8901c07f583999ca3d50723e0051c693fb2fd24ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64

### `mongo:3.4.20-windowsservercore-ltsc2016` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:54614e5ad125d20ba0dca9f2658a29c38244b8e565c7d05390dd043824865e7a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5734974692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499d51147faa13a33d8c7c5c195cac5553ed4c318a1bb4f5d286eec19af62d96`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 02:03:22 GMT
ENV MONGO_VERSION=3.4.20
# Fri, 12 Apr 2019 02:03:23 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.20-signed.msi
# Fri, 12 Apr 2019 02:03:24 GMT
ENV MONGO_DOWNLOAD_SHA256=a6b27a8ce7ba1d6ebe734e7e5c0f644317ca684a0e4530250b9a2201f331bc59
# Fri, 12 Apr 2019 02:09:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 02:09:09 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 02:09:11 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 02:09:12 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b3f755d89b91a87ad6d8c916f76234df8d9af393e0f33fd5d7bd284f6aa5eb`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7481afea3c762408d15a619e728de19aec96d9aafe6ece7583625f1dfca1eba4`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d682ce0e18fd03a4e8416408863efc5c2caea8e58b1d2e7b8a70b47c4cb6c7`  
		Last Modified: Fri, 12 Apr 2019 04:37:48 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5e91f768a79925c2198769a3d39b22596f600378c16f229e44ab16588a62e2`  
		Last Modified: Fri, 12 Apr 2019 04:38:11 GMT  
		Size: 92.6 MB (92596528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:165b2f3164ca2413b32075dda13c603f08e57684ee0ce136f92eeb5bffe1cc90`  
		Last Modified: Fri, 12 Apr 2019 04:37:48 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a11f3d60a10a9e4330010f9d931d474d9b80fc4f09e4b6807fc160e3c0c0a9`  
		Last Modified: Fri, 12 Apr 2019 04:37:48 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0abf2b2278ce904f93dc8b0cb44faa1b47bc0b284e107ef755ea711d81d84ed`  
		Last Modified: Fri, 12 Apr 2019 04:37:48 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.20-xenial`

```console
$ docker pull mongo@sha256:e422235a2855e621baefc1b024eceb5e8dcbb5d7ca60bd8659a548c66962db63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:3.4.20-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:f9cfee6070ef83ea57773b529c536b660d80fe5b1ff688e8ce7463d05c8ff2fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167470352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74adf035f5a238fdab5f97e344c41982ed4a2c2aec0030b7fb11f69c9fcffbb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 00:01:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 00:01:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:01:47 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 00:01:47 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 00:01:53 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 00:01:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 00:01:54 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Sat, 27 Apr 2019 00:01:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 00:01:55 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 00:01:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:01:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:01:56 GMT
ENV MONGO_MAJOR=3.4
# Sat, 27 Apr 2019 00:01:56 GMT
ENV MONGO_VERSION=3.4.20
# Sat, 27 Apr 2019 00:01:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 00:02:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 00:02:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 00:02:15 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 00:19:48 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 00:19:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat (3.4)
# Tue, 07 May 2019 00:19:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 00:19:49 GMT
EXPOSE 27017
# Tue, 07 May 2019 00:19:49 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5182dfcfa207e938a4dbe8214adb73e0413c114436a1dd6f2493cd037f88230`  
		Last Modified: Sat, 27 Apr 2019 00:04:47 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb099326ee3fa95460e50a06e259887a6311d01e8f7b0d183f3808d0385f8c7`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 2.9 MB (2945567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75804f28c4b1878a1f7a1aa925190fce532c76192dd7895af9fc61716de7fb8d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 1.2 MB (1151175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765a10b214befdd889a88a1ef896e5b96df3171b4a8202022dfdf7833790e46d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae38398f4041f1b9ba41e8e1a818cb8045b1e866345bb64269a6f7f0923ab02`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5532d3b70a3fccf9c70fea1a8babf335f4a50172212c293e346e07efae0ce93`  
		Last Modified: Sat, 27 Apr 2019 00:04:45 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82ef0d6a83f6ea013162bdf74676c5080655b811eb7718c5f6aadea96bf4b32`  
		Last Modified: Sat, 27 Apr 2019 00:05:06 GMT  
		Size: 119.6 MB (119611050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38e0cde81004c3330f0aaa6c6a6ac199f3daebb2c2226e903913c6ec4a119aa`  
		Last Modified: Sat, 27 Apr 2019 00:04:45 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bcebbbd029f904559004a13d897a87914c9ecd421de711b0cae306dc8dc5790`  
		Last Modified: Tue, 07 May 2019 00:20:15 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e07fbc85b1fff379259fde55a1a9d7e315e4bff91ba8356da26837b97402b87`  
		Last Modified: Tue, 07 May 2019 00:20:14 GMT  
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
$ docker pull mongo@sha256:78e7c78c21780b423b08aba8901c07f583999ca3d50723e0051c693fb2fd24ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64

### `mongo:3.4-windowsservercore` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:54614e5ad125d20ba0dca9f2658a29c38244b8e565c7d05390dd043824865e7a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5734974692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499d51147faa13a33d8c7c5c195cac5553ed4c318a1bb4f5d286eec19af62d96`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 02:03:22 GMT
ENV MONGO_VERSION=3.4.20
# Fri, 12 Apr 2019 02:03:23 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.20-signed.msi
# Fri, 12 Apr 2019 02:03:24 GMT
ENV MONGO_DOWNLOAD_SHA256=a6b27a8ce7ba1d6ebe734e7e5c0f644317ca684a0e4530250b9a2201f331bc59
# Fri, 12 Apr 2019 02:09:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 02:09:09 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 02:09:11 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 02:09:12 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b3f755d89b91a87ad6d8c916f76234df8d9af393e0f33fd5d7bd284f6aa5eb`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7481afea3c762408d15a619e728de19aec96d9aafe6ece7583625f1dfca1eba4`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d682ce0e18fd03a4e8416408863efc5c2caea8e58b1d2e7b8a70b47c4cb6c7`  
		Last Modified: Fri, 12 Apr 2019 04:37:48 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5e91f768a79925c2198769a3d39b22596f600378c16f229e44ab16588a62e2`  
		Last Modified: Fri, 12 Apr 2019 04:38:11 GMT  
		Size: 92.6 MB (92596528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:165b2f3164ca2413b32075dda13c603f08e57684ee0ce136f92eeb5bffe1cc90`  
		Last Modified: Fri, 12 Apr 2019 04:37:48 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a11f3d60a10a9e4330010f9d931d474d9b80fc4f09e4b6807fc160e3c0c0a9`  
		Last Modified: Fri, 12 Apr 2019 04:37:48 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0abf2b2278ce904f93dc8b0cb44faa1b47bc0b284e107ef755ea711d81d84ed`  
		Last Modified: Fri, 12 Apr 2019 04:37:48 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:78e7c78c21780b423b08aba8901c07f583999ca3d50723e0051c693fb2fd24ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64

### `mongo:3.4-windowsservercore-ltsc2016` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:54614e5ad125d20ba0dca9f2658a29c38244b8e565c7d05390dd043824865e7a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5734974692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499d51147faa13a33d8c7c5c195cac5553ed4c318a1bb4f5d286eec19af62d96`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 02:03:22 GMT
ENV MONGO_VERSION=3.4.20
# Fri, 12 Apr 2019 02:03:23 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.20-signed.msi
# Fri, 12 Apr 2019 02:03:24 GMT
ENV MONGO_DOWNLOAD_SHA256=a6b27a8ce7ba1d6ebe734e7e5c0f644317ca684a0e4530250b9a2201f331bc59
# Fri, 12 Apr 2019 02:09:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 02:09:09 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 02:09:11 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 02:09:12 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b3f755d89b91a87ad6d8c916f76234df8d9af393e0f33fd5d7bd284f6aa5eb`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7481afea3c762408d15a619e728de19aec96d9aafe6ece7583625f1dfca1eba4`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d682ce0e18fd03a4e8416408863efc5c2caea8e58b1d2e7b8a70b47c4cb6c7`  
		Last Modified: Fri, 12 Apr 2019 04:37:48 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5e91f768a79925c2198769a3d39b22596f600378c16f229e44ab16588a62e2`  
		Last Modified: Fri, 12 Apr 2019 04:38:11 GMT  
		Size: 92.6 MB (92596528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:165b2f3164ca2413b32075dda13c603f08e57684ee0ce136f92eeb5bffe1cc90`  
		Last Modified: Fri, 12 Apr 2019 04:37:48 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a11f3d60a10a9e4330010f9d931d474d9b80fc4f09e4b6807fc160e3c0c0a9`  
		Last Modified: Fri, 12 Apr 2019 04:37:48 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0abf2b2278ce904f93dc8b0cb44faa1b47bc0b284e107ef755ea711d81d84ed`  
		Last Modified: Fri, 12 Apr 2019 04:37:48 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-xenial`

```console
$ docker pull mongo@sha256:e422235a2855e621baefc1b024eceb5e8dcbb5d7ca60bd8659a548c66962db63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:3.4-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:f9cfee6070ef83ea57773b529c536b660d80fe5b1ff688e8ce7463d05c8ff2fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167470352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74adf035f5a238fdab5f97e344c41982ed4a2c2aec0030b7fb11f69c9fcffbb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 00:01:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 00:01:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:01:47 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 00:01:47 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 00:01:53 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 00:01:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 00:01:54 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Sat, 27 Apr 2019 00:01:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 00:01:55 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 00:01:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:01:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:01:56 GMT
ENV MONGO_MAJOR=3.4
# Sat, 27 Apr 2019 00:01:56 GMT
ENV MONGO_VERSION=3.4.20
# Sat, 27 Apr 2019 00:01:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 00:02:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 00:02:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 00:02:15 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 00:19:48 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 00:19:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat (3.4)
# Tue, 07 May 2019 00:19:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 00:19:49 GMT
EXPOSE 27017
# Tue, 07 May 2019 00:19:49 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5182dfcfa207e938a4dbe8214adb73e0413c114436a1dd6f2493cd037f88230`  
		Last Modified: Sat, 27 Apr 2019 00:04:47 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb099326ee3fa95460e50a06e259887a6311d01e8f7b0d183f3808d0385f8c7`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 2.9 MB (2945567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75804f28c4b1878a1f7a1aa925190fce532c76192dd7895af9fc61716de7fb8d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 1.2 MB (1151175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765a10b214befdd889a88a1ef896e5b96df3171b4a8202022dfdf7833790e46d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae38398f4041f1b9ba41e8e1a818cb8045b1e866345bb64269a6f7f0923ab02`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5532d3b70a3fccf9c70fea1a8babf335f4a50172212c293e346e07efae0ce93`  
		Last Modified: Sat, 27 Apr 2019 00:04:45 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82ef0d6a83f6ea013162bdf74676c5080655b811eb7718c5f6aadea96bf4b32`  
		Last Modified: Sat, 27 Apr 2019 00:05:06 GMT  
		Size: 119.6 MB (119611050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38e0cde81004c3330f0aaa6c6a6ac199f3daebb2c2226e903913c6ec4a119aa`  
		Last Modified: Sat, 27 Apr 2019 00:04:45 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bcebbbd029f904559004a13d897a87914c9ecd421de711b0cae306dc8dc5790`  
		Last Modified: Tue, 07 May 2019 00:20:15 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e07fbc85b1fff379259fde55a1a9d7e315e4bff91ba8356da26837b97402b87`  
		Last Modified: Tue, 07 May 2019 00:20:14 GMT  
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
$ docker pull mongo@sha256:1cc9ea0f368e47aaa4b0da633a22790859b948308cea25c4235a4e6984424a37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2906; amd64

### `mongo:3.6` - linux; amd64

```console
$ docker pull mongo@sha256:5694f7f0888c96fc2e5292e78ada9115b2a70dfcc3adb9068468562b09347d5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.8 MB (164792703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f29e46dab4155759fbe11eae142df6437700ab37767483ea5ad0e5acb3d883b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 00:01:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 00:01:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:01:47 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 00:01:47 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 00:01:53 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 00:01:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 00:02:20 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Sat, 27 Apr 2019 00:02:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 00:02:22 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 00:02:22 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:02:22 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:02:22 GMT
ENV MONGO_MAJOR=3.6
# Sat, 27 Apr 2019 00:02:22 GMT
ENV MONGO_VERSION=3.6.12
# Sat, 27 Apr 2019 00:02:23 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 00:02:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 00:02:43 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 00:02:43 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 00:19:52 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 00:19:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 00:19:53 GMT
EXPOSE 27017
# Tue, 07 May 2019 00:19:53 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5182dfcfa207e938a4dbe8214adb73e0413c114436a1dd6f2493cd037f88230`  
		Last Modified: Sat, 27 Apr 2019 00:04:47 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb099326ee3fa95460e50a06e259887a6311d01e8f7b0d183f3808d0385f8c7`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 2.9 MB (2945567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75804f28c4b1878a1f7a1aa925190fce532c76192dd7895af9fc61716de7fb8d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 1.2 MB (1151175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765a10b214befdd889a88a1ef896e5b96df3171b4a8202022dfdf7833790e46d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36cbec4a23a50969ea447502f8d63406ef58c7ad083f132a616897b242594294`  
		Last Modified: Sat, 27 Apr 2019 00:05:11 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7c112fee500ca660560d8484f72f37b730e25a2b8c673d428147b0027a4d87`  
		Last Modified: Sat, 27 Apr 2019 00:05:11 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a72bf1a5923ee959d45688501679bede9114379334bd74077e3b43133c1950`  
		Last Modified: Sat, 27 Apr 2019 00:05:32 GMT  
		Size: 116.9 MB (116933521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c24e128abe6695bf1fc4161c72666102f2675f90a29ac6f20e316cc3e484592`  
		Last Modified: Sat, 27 Apr 2019 00:05:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a6d7d44235860e5d0ce7c27d88840dd9ded08e1c509bd421719fc7241c5def`  
		Last Modified: Tue, 07 May 2019 00:20:18 GMT  
		Size: 3.9 KB (3913 bytes)  
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

### `mongo:3.6` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:25ad76d8cb91bc1f5038dbdcd6651905589b7e3c696fce7f47152df14de297c2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 GB (6112494057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04f37cc0c3e1cb2b5c49a5e839a14648bbbf6b28782a1365c05e3ea7557ac076`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 02:12:18 GMT
ENV MONGO_VERSION=3.6.12
# Fri, 12 Apr 2019 02:12:19 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.12-signed.msi
# Fri, 12 Apr 2019 02:12:20 GMT
ENV MONGO_DOWNLOAD_SHA256=074261abf106d79e4d42612ce1d22d397c10af7f73cc9947f8e36632683ef3f7
# Fri, 12 Apr 2019 02:36:17 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 02:36:19 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 02:36:21 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 02:36:23 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e5043938b0de69e60d936a678f623c8ea21c327267c6e21ebd27225ee0a5e3`  
		Last Modified: Fri, 12 Apr 2019 04:39:03 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4065eeeec4d10354e90753b164b318d97ecc238ff36121a127900b084c369dcb`  
		Last Modified: Fri, 12 Apr 2019 04:39:02 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd667bc5d1f54baf5617cba02b580b11a1b7855ab53389991338f59658975123`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3678e51885517a528837a0aa7e80292d4b061e54437f47025a27a60e643f8f6c`  
		Last Modified: Fri, 12 Apr 2019 04:40:07 GMT  
		Size: 470.1 MB (470115904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa8ceffc85866575d4014d6d250d66614223ed8e4956df51c248d4dbd907dd6`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19b033614c81917c11f567466ac7049d1766b77a2fb7efc3e1cc534bd0a08ea`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39b926cc6947fc3a4b228112c63841ddc5c35d8fb3dd3116c3ada7802591afd`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.12`

```console
$ docker pull mongo@sha256:1cc9ea0f368e47aaa4b0da633a22790859b948308cea25c4235a4e6984424a37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2906; amd64

### `mongo:3.6.12` - linux; amd64

```console
$ docker pull mongo@sha256:5694f7f0888c96fc2e5292e78ada9115b2a70dfcc3adb9068468562b09347d5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.8 MB (164792703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f29e46dab4155759fbe11eae142df6437700ab37767483ea5ad0e5acb3d883b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 00:01:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 00:01:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:01:47 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 00:01:47 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 00:01:53 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 00:01:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 00:02:20 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Sat, 27 Apr 2019 00:02:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 00:02:22 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 00:02:22 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:02:22 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:02:22 GMT
ENV MONGO_MAJOR=3.6
# Sat, 27 Apr 2019 00:02:22 GMT
ENV MONGO_VERSION=3.6.12
# Sat, 27 Apr 2019 00:02:23 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 00:02:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 00:02:43 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 00:02:43 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 00:19:52 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 00:19:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 00:19:53 GMT
EXPOSE 27017
# Tue, 07 May 2019 00:19:53 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5182dfcfa207e938a4dbe8214adb73e0413c114436a1dd6f2493cd037f88230`  
		Last Modified: Sat, 27 Apr 2019 00:04:47 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb099326ee3fa95460e50a06e259887a6311d01e8f7b0d183f3808d0385f8c7`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 2.9 MB (2945567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75804f28c4b1878a1f7a1aa925190fce532c76192dd7895af9fc61716de7fb8d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 1.2 MB (1151175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765a10b214befdd889a88a1ef896e5b96df3171b4a8202022dfdf7833790e46d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36cbec4a23a50969ea447502f8d63406ef58c7ad083f132a616897b242594294`  
		Last Modified: Sat, 27 Apr 2019 00:05:11 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7c112fee500ca660560d8484f72f37b730e25a2b8c673d428147b0027a4d87`  
		Last Modified: Sat, 27 Apr 2019 00:05:11 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a72bf1a5923ee959d45688501679bede9114379334bd74077e3b43133c1950`  
		Last Modified: Sat, 27 Apr 2019 00:05:32 GMT  
		Size: 116.9 MB (116933521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c24e128abe6695bf1fc4161c72666102f2675f90a29ac6f20e316cc3e484592`  
		Last Modified: Sat, 27 Apr 2019 00:05:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a6d7d44235860e5d0ce7c27d88840dd9ded08e1c509bd421719fc7241c5def`  
		Last Modified: Tue, 07 May 2019 00:20:18 GMT  
		Size: 3.9 KB (3913 bytes)  
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

### `mongo:3.6.12` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:25ad76d8cb91bc1f5038dbdcd6651905589b7e3c696fce7f47152df14de297c2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 GB (6112494057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04f37cc0c3e1cb2b5c49a5e839a14648bbbf6b28782a1365c05e3ea7557ac076`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 02:12:18 GMT
ENV MONGO_VERSION=3.6.12
# Fri, 12 Apr 2019 02:12:19 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.12-signed.msi
# Fri, 12 Apr 2019 02:12:20 GMT
ENV MONGO_DOWNLOAD_SHA256=074261abf106d79e4d42612ce1d22d397c10af7f73cc9947f8e36632683ef3f7
# Fri, 12 Apr 2019 02:36:17 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 02:36:19 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 02:36:21 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 02:36:23 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e5043938b0de69e60d936a678f623c8ea21c327267c6e21ebd27225ee0a5e3`  
		Last Modified: Fri, 12 Apr 2019 04:39:03 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4065eeeec4d10354e90753b164b318d97ecc238ff36121a127900b084c369dcb`  
		Last Modified: Fri, 12 Apr 2019 04:39:02 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd667bc5d1f54baf5617cba02b580b11a1b7855ab53389991338f59658975123`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3678e51885517a528837a0aa7e80292d4b061e54437f47025a27a60e643f8f6c`  
		Last Modified: Fri, 12 Apr 2019 04:40:07 GMT  
		Size: 470.1 MB (470115904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa8ceffc85866575d4014d6d250d66614223ed8e4956df51c248d4dbd907dd6`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19b033614c81917c11f567466ac7049d1766b77a2fb7efc3e1cc534bd0a08ea`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39b926cc6947fc3a4b228112c63841ddc5c35d8fb3dd3116c3ada7802591afd`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.12-windowsservercore`

```console
$ docker pull mongo@sha256:ed2bb602ecd2893d060a5529ba4b788c76096590001e774664111d7f6c1de1dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64

### `mongo:3.6.12-windowsservercore` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:25ad76d8cb91bc1f5038dbdcd6651905589b7e3c696fce7f47152df14de297c2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 GB (6112494057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04f37cc0c3e1cb2b5c49a5e839a14648bbbf6b28782a1365c05e3ea7557ac076`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 02:12:18 GMT
ENV MONGO_VERSION=3.6.12
# Fri, 12 Apr 2019 02:12:19 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.12-signed.msi
# Fri, 12 Apr 2019 02:12:20 GMT
ENV MONGO_DOWNLOAD_SHA256=074261abf106d79e4d42612ce1d22d397c10af7f73cc9947f8e36632683ef3f7
# Fri, 12 Apr 2019 02:36:17 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 02:36:19 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 02:36:21 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 02:36:23 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e5043938b0de69e60d936a678f623c8ea21c327267c6e21ebd27225ee0a5e3`  
		Last Modified: Fri, 12 Apr 2019 04:39:03 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4065eeeec4d10354e90753b164b318d97ecc238ff36121a127900b084c369dcb`  
		Last Modified: Fri, 12 Apr 2019 04:39:02 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd667bc5d1f54baf5617cba02b580b11a1b7855ab53389991338f59658975123`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3678e51885517a528837a0aa7e80292d4b061e54437f47025a27a60e643f8f6c`  
		Last Modified: Fri, 12 Apr 2019 04:40:07 GMT  
		Size: 470.1 MB (470115904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa8ceffc85866575d4014d6d250d66614223ed8e4956df51c248d4dbd907dd6`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19b033614c81917c11f567466ac7049d1766b77a2fb7efc3e1cc534bd0a08ea`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39b926cc6947fc3a4b228112c63841ddc5c35d8fb3dd3116c3ada7802591afd`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.12-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:ed2bb602ecd2893d060a5529ba4b788c76096590001e774664111d7f6c1de1dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64

### `mongo:3.6.12-windowsservercore-ltsc2016` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:25ad76d8cb91bc1f5038dbdcd6651905589b7e3c696fce7f47152df14de297c2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 GB (6112494057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04f37cc0c3e1cb2b5c49a5e839a14648bbbf6b28782a1365c05e3ea7557ac076`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 02:12:18 GMT
ENV MONGO_VERSION=3.6.12
# Fri, 12 Apr 2019 02:12:19 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.12-signed.msi
# Fri, 12 Apr 2019 02:12:20 GMT
ENV MONGO_DOWNLOAD_SHA256=074261abf106d79e4d42612ce1d22d397c10af7f73cc9947f8e36632683ef3f7
# Fri, 12 Apr 2019 02:36:17 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 02:36:19 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 02:36:21 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 02:36:23 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e5043938b0de69e60d936a678f623c8ea21c327267c6e21ebd27225ee0a5e3`  
		Last Modified: Fri, 12 Apr 2019 04:39:03 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4065eeeec4d10354e90753b164b318d97ecc238ff36121a127900b084c369dcb`  
		Last Modified: Fri, 12 Apr 2019 04:39:02 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd667bc5d1f54baf5617cba02b580b11a1b7855ab53389991338f59658975123`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3678e51885517a528837a0aa7e80292d4b061e54437f47025a27a60e643f8f6c`  
		Last Modified: Fri, 12 Apr 2019 04:40:07 GMT  
		Size: 470.1 MB (470115904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa8ceffc85866575d4014d6d250d66614223ed8e4956df51c248d4dbd907dd6`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19b033614c81917c11f567466ac7049d1766b77a2fb7efc3e1cc534bd0a08ea`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39b926cc6947fc3a4b228112c63841ddc5c35d8fb3dd3116c3ada7802591afd`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.12-xenial`

```console
$ docker pull mongo@sha256:6e561b572f390ce8a12ba810f39160bd34649337356623eced271b5d18a9ca90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:3.6.12-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:5694f7f0888c96fc2e5292e78ada9115b2a70dfcc3adb9068468562b09347d5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.8 MB (164792703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f29e46dab4155759fbe11eae142df6437700ab37767483ea5ad0e5acb3d883b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 00:01:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 00:01:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:01:47 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 00:01:47 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 00:01:53 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 00:01:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 00:02:20 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Sat, 27 Apr 2019 00:02:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 00:02:22 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 00:02:22 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:02:22 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:02:22 GMT
ENV MONGO_MAJOR=3.6
# Sat, 27 Apr 2019 00:02:22 GMT
ENV MONGO_VERSION=3.6.12
# Sat, 27 Apr 2019 00:02:23 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 00:02:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 00:02:43 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 00:02:43 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 00:19:52 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 00:19:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 00:19:53 GMT
EXPOSE 27017
# Tue, 07 May 2019 00:19:53 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5182dfcfa207e938a4dbe8214adb73e0413c114436a1dd6f2493cd037f88230`  
		Last Modified: Sat, 27 Apr 2019 00:04:47 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb099326ee3fa95460e50a06e259887a6311d01e8f7b0d183f3808d0385f8c7`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 2.9 MB (2945567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75804f28c4b1878a1f7a1aa925190fce532c76192dd7895af9fc61716de7fb8d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 1.2 MB (1151175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765a10b214befdd889a88a1ef896e5b96df3171b4a8202022dfdf7833790e46d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36cbec4a23a50969ea447502f8d63406ef58c7ad083f132a616897b242594294`  
		Last Modified: Sat, 27 Apr 2019 00:05:11 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7c112fee500ca660560d8484f72f37b730e25a2b8c673d428147b0027a4d87`  
		Last Modified: Sat, 27 Apr 2019 00:05:11 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a72bf1a5923ee959d45688501679bede9114379334bd74077e3b43133c1950`  
		Last Modified: Sat, 27 Apr 2019 00:05:32 GMT  
		Size: 116.9 MB (116933521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c24e128abe6695bf1fc4161c72666102f2675f90a29ac6f20e316cc3e484592`  
		Last Modified: Sat, 27 Apr 2019 00:05:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a6d7d44235860e5d0ce7c27d88840dd9ded08e1c509bd421719fc7241c5def`  
		Last Modified: Tue, 07 May 2019 00:20:18 GMT  
		Size: 3.9 KB (3913 bytes)  
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
$ docker pull mongo@sha256:ed2bb602ecd2893d060a5529ba4b788c76096590001e774664111d7f6c1de1dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64

### `mongo:3.6-windowsservercore` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:25ad76d8cb91bc1f5038dbdcd6651905589b7e3c696fce7f47152df14de297c2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 GB (6112494057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04f37cc0c3e1cb2b5c49a5e839a14648bbbf6b28782a1365c05e3ea7557ac076`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 02:12:18 GMT
ENV MONGO_VERSION=3.6.12
# Fri, 12 Apr 2019 02:12:19 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.12-signed.msi
# Fri, 12 Apr 2019 02:12:20 GMT
ENV MONGO_DOWNLOAD_SHA256=074261abf106d79e4d42612ce1d22d397c10af7f73cc9947f8e36632683ef3f7
# Fri, 12 Apr 2019 02:36:17 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 02:36:19 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 02:36:21 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 02:36:23 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e5043938b0de69e60d936a678f623c8ea21c327267c6e21ebd27225ee0a5e3`  
		Last Modified: Fri, 12 Apr 2019 04:39:03 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4065eeeec4d10354e90753b164b318d97ecc238ff36121a127900b084c369dcb`  
		Last Modified: Fri, 12 Apr 2019 04:39:02 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd667bc5d1f54baf5617cba02b580b11a1b7855ab53389991338f59658975123`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3678e51885517a528837a0aa7e80292d4b061e54437f47025a27a60e643f8f6c`  
		Last Modified: Fri, 12 Apr 2019 04:40:07 GMT  
		Size: 470.1 MB (470115904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa8ceffc85866575d4014d6d250d66614223ed8e4956df51c248d4dbd907dd6`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19b033614c81917c11f567466ac7049d1766b77a2fb7efc3e1cc534bd0a08ea`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39b926cc6947fc3a4b228112c63841ddc5c35d8fb3dd3116c3ada7802591afd`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:ed2bb602ecd2893d060a5529ba4b788c76096590001e774664111d7f6c1de1dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64

### `mongo:3.6-windowsservercore-ltsc2016` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:25ad76d8cb91bc1f5038dbdcd6651905589b7e3c696fce7f47152df14de297c2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 GB (6112494057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04f37cc0c3e1cb2b5c49a5e839a14648bbbf6b28782a1365c05e3ea7557ac076`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 02:12:18 GMT
ENV MONGO_VERSION=3.6.12
# Fri, 12 Apr 2019 02:12:19 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.12-signed.msi
# Fri, 12 Apr 2019 02:12:20 GMT
ENV MONGO_DOWNLOAD_SHA256=074261abf106d79e4d42612ce1d22d397c10af7f73cc9947f8e36632683ef3f7
# Fri, 12 Apr 2019 02:36:17 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 02:36:19 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 02:36:21 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 02:36:23 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e5043938b0de69e60d936a678f623c8ea21c327267c6e21ebd27225ee0a5e3`  
		Last Modified: Fri, 12 Apr 2019 04:39:03 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4065eeeec4d10354e90753b164b318d97ecc238ff36121a127900b084c369dcb`  
		Last Modified: Fri, 12 Apr 2019 04:39:02 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd667bc5d1f54baf5617cba02b580b11a1b7855ab53389991338f59658975123`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3678e51885517a528837a0aa7e80292d4b061e54437f47025a27a60e643f8f6c`  
		Last Modified: Fri, 12 Apr 2019 04:40:07 GMT  
		Size: 470.1 MB (470115904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa8ceffc85866575d4014d6d250d66614223ed8e4956df51c248d4dbd907dd6`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19b033614c81917c11f567466ac7049d1766b77a2fb7efc3e1cc534bd0a08ea`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39b926cc6947fc3a4b228112c63841ddc5c35d8fb3dd3116c3ada7802591afd`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6-xenial`

```console
$ docker pull mongo@sha256:6e561b572f390ce8a12ba810f39160bd34649337356623eced271b5d18a9ca90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:3.6-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:5694f7f0888c96fc2e5292e78ada9115b2a70dfcc3adb9068468562b09347d5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.8 MB (164792703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f29e46dab4155759fbe11eae142df6437700ab37767483ea5ad0e5acb3d883b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 00:01:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 00:01:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:01:47 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 00:01:47 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 00:01:53 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 00:01:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 00:02:20 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Sat, 27 Apr 2019 00:02:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 00:02:22 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 00:02:22 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:02:22 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:02:22 GMT
ENV MONGO_MAJOR=3.6
# Sat, 27 Apr 2019 00:02:22 GMT
ENV MONGO_VERSION=3.6.12
# Sat, 27 Apr 2019 00:02:23 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 00:02:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 00:02:43 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 00:02:43 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 00:19:52 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 00:19:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 00:19:53 GMT
EXPOSE 27017
# Tue, 07 May 2019 00:19:53 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5182dfcfa207e938a4dbe8214adb73e0413c114436a1dd6f2493cd037f88230`  
		Last Modified: Sat, 27 Apr 2019 00:04:47 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb099326ee3fa95460e50a06e259887a6311d01e8f7b0d183f3808d0385f8c7`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 2.9 MB (2945567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75804f28c4b1878a1f7a1aa925190fce532c76192dd7895af9fc61716de7fb8d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 1.2 MB (1151175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765a10b214befdd889a88a1ef896e5b96df3171b4a8202022dfdf7833790e46d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36cbec4a23a50969ea447502f8d63406ef58c7ad083f132a616897b242594294`  
		Last Modified: Sat, 27 Apr 2019 00:05:11 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7c112fee500ca660560d8484f72f37b730e25a2b8c673d428147b0027a4d87`  
		Last Modified: Sat, 27 Apr 2019 00:05:11 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a72bf1a5923ee959d45688501679bede9114379334bd74077e3b43133c1950`  
		Last Modified: Sat, 27 Apr 2019 00:05:32 GMT  
		Size: 116.9 MB (116933521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c24e128abe6695bf1fc4161c72666102f2675f90a29ac6f20e316cc3e484592`  
		Last Modified: Sat, 27 Apr 2019 00:05:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a6d7d44235860e5d0ce7c27d88840dd9ded08e1c509bd421719fc7241c5def`  
		Last Modified: Tue, 07 May 2019 00:20:18 GMT  
		Size: 3.9 KB (3913 bytes)  
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
$ docker pull mongo@sha256:ed2bb602ecd2893d060a5529ba4b788c76096590001e774664111d7f6c1de1dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64

### `mongo:3-windowsservercore` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:25ad76d8cb91bc1f5038dbdcd6651905589b7e3c696fce7f47152df14de297c2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 GB (6112494057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04f37cc0c3e1cb2b5c49a5e839a14648bbbf6b28782a1365c05e3ea7557ac076`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 02:12:18 GMT
ENV MONGO_VERSION=3.6.12
# Fri, 12 Apr 2019 02:12:19 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.12-signed.msi
# Fri, 12 Apr 2019 02:12:20 GMT
ENV MONGO_DOWNLOAD_SHA256=074261abf106d79e4d42612ce1d22d397c10af7f73cc9947f8e36632683ef3f7
# Fri, 12 Apr 2019 02:36:17 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 02:36:19 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 02:36:21 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 02:36:23 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e5043938b0de69e60d936a678f623c8ea21c327267c6e21ebd27225ee0a5e3`  
		Last Modified: Fri, 12 Apr 2019 04:39:03 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4065eeeec4d10354e90753b164b318d97ecc238ff36121a127900b084c369dcb`  
		Last Modified: Fri, 12 Apr 2019 04:39:02 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd667bc5d1f54baf5617cba02b580b11a1b7855ab53389991338f59658975123`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3678e51885517a528837a0aa7e80292d4b061e54437f47025a27a60e643f8f6c`  
		Last Modified: Fri, 12 Apr 2019 04:40:07 GMT  
		Size: 470.1 MB (470115904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa8ceffc85866575d4014d6d250d66614223ed8e4956df51c248d4dbd907dd6`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19b033614c81917c11f567466ac7049d1766b77a2fb7efc3e1cc534bd0a08ea`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39b926cc6947fc3a4b228112c63841ddc5c35d8fb3dd3116c3ada7802591afd`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:ed2bb602ecd2893d060a5529ba4b788c76096590001e774664111d7f6c1de1dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64

### `mongo:3-windowsservercore-ltsc2016` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:25ad76d8cb91bc1f5038dbdcd6651905589b7e3c696fce7f47152df14de297c2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 GB (6112494057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04f37cc0c3e1cb2b5c49a5e839a14648bbbf6b28782a1365c05e3ea7557ac076`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 02:12:18 GMT
ENV MONGO_VERSION=3.6.12
# Fri, 12 Apr 2019 02:12:19 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.12-signed.msi
# Fri, 12 Apr 2019 02:12:20 GMT
ENV MONGO_DOWNLOAD_SHA256=074261abf106d79e4d42612ce1d22d397c10af7f73cc9947f8e36632683ef3f7
# Fri, 12 Apr 2019 02:36:17 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 02:36:19 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 02:36:21 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 02:36:23 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e5043938b0de69e60d936a678f623c8ea21c327267c6e21ebd27225ee0a5e3`  
		Last Modified: Fri, 12 Apr 2019 04:39:03 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4065eeeec4d10354e90753b164b318d97ecc238ff36121a127900b084c369dcb`  
		Last Modified: Fri, 12 Apr 2019 04:39:02 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd667bc5d1f54baf5617cba02b580b11a1b7855ab53389991338f59658975123`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3678e51885517a528837a0aa7e80292d4b061e54437f47025a27a60e643f8f6c`  
		Last Modified: Fri, 12 Apr 2019 04:40:07 GMT  
		Size: 470.1 MB (470115904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa8ceffc85866575d4014d6d250d66614223ed8e4956df51c248d4dbd907dd6`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19b033614c81917c11f567466ac7049d1766b77a2fb7efc3e1cc534bd0a08ea`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39b926cc6947fc3a4b228112c63841ddc5c35d8fb3dd3116c3ada7802591afd`  
		Last Modified: Fri, 12 Apr 2019 04:39:00 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-xenial`

```console
$ docker pull mongo@sha256:6e561b572f390ce8a12ba810f39160bd34649337356623eced271b5d18a9ca90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:3-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:5694f7f0888c96fc2e5292e78ada9115b2a70dfcc3adb9068468562b09347d5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.8 MB (164792703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f29e46dab4155759fbe11eae142df6437700ab37767483ea5ad0e5acb3d883b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 00:01:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 00:01:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:01:47 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 00:01:47 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 00:01:53 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 00:01:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 00:02:20 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Sat, 27 Apr 2019 00:02:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 00:02:22 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 00:02:22 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:02:22 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:02:22 GMT
ENV MONGO_MAJOR=3.6
# Sat, 27 Apr 2019 00:02:22 GMT
ENV MONGO_VERSION=3.6.12
# Sat, 27 Apr 2019 00:02:23 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 00:02:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 00:02:43 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 00:02:43 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 00:19:52 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 00:19:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 00:19:53 GMT
EXPOSE 27017
# Tue, 07 May 2019 00:19:53 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5182dfcfa207e938a4dbe8214adb73e0413c114436a1dd6f2493cd037f88230`  
		Last Modified: Sat, 27 Apr 2019 00:04:47 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb099326ee3fa95460e50a06e259887a6311d01e8f7b0d183f3808d0385f8c7`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 2.9 MB (2945567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75804f28c4b1878a1f7a1aa925190fce532c76192dd7895af9fc61716de7fb8d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 1.2 MB (1151175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765a10b214befdd889a88a1ef896e5b96df3171b4a8202022dfdf7833790e46d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36cbec4a23a50969ea447502f8d63406ef58c7ad083f132a616897b242594294`  
		Last Modified: Sat, 27 Apr 2019 00:05:11 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7c112fee500ca660560d8484f72f37b730e25a2b8c673d428147b0027a4d87`  
		Last Modified: Sat, 27 Apr 2019 00:05:11 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a72bf1a5923ee959d45688501679bede9114379334bd74077e3b43133c1950`  
		Last Modified: Sat, 27 Apr 2019 00:05:32 GMT  
		Size: 116.9 MB (116933521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c24e128abe6695bf1fc4161c72666102f2675f90a29ac6f20e316cc3e484592`  
		Last Modified: Sat, 27 Apr 2019 00:05:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a6d7d44235860e5d0ce7c27d88840dd9ded08e1c509bd421719fc7241c5def`  
		Last Modified: Tue, 07 May 2019 00:20:18 GMT  
		Size: 3.9 KB (3913 bytes)  
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
$ docker pull mongo@sha256:02c6031b363fb9a43f6633eb9db405db59c9dfdd0ce726baa4fab973939952a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64

### `mongo:4` - linux; amd64

```console
$ docker pull mongo@sha256:a1ace85762246019d3b0eabfa191b3344668daa03a7e13d384daf06f2354036c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152582372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d98005b752b4d29ecce38d9373dd11cc84b941c3a49e6d49d97a2cea022fcb34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 00:01:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 00:01:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:01:47 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 00:01:47 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 00:01:53 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 00:01:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 00:02:49 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Sat, 27 Apr 2019 00:02:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 00:02:50 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 00:02:51 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:02:51 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:02:51 GMT
ENV MONGO_MAJOR=4.0
# Sat, 27 Apr 2019 00:02:51 GMT
ENV MONGO_VERSION=4.0.9
# Sat, 27 Apr 2019 00:02:52 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 00:03:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 00:03:22 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 00:03:22 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 00:19:56 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 00:19:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 00:19:57 GMT
EXPOSE 27017
# Tue, 07 May 2019 00:19:57 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5182dfcfa207e938a4dbe8214adb73e0413c114436a1dd6f2493cd037f88230`  
		Last Modified: Sat, 27 Apr 2019 00:04:47 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb099326ee3fa95460e50a06e259887a6311d01e8f7b0d183f3808d0385f8c7`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 2.9 MB (2945567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75804f28c4b1878a1f7a1aa925190fce532c76192dd7895af9fc61716de7fb8d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 1.2 MB (1151175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765a10b214befdd889a88a1ef896e5b96df3171b4a8202022dfdf7833790e46d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7304ae07bcd10636ee668d745e7533d8647bf4adee074106561a97ef5db8adb8`  
		Last Modified: Sat, 27 Apr 2019 00:05:40 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f2d1eeb002d248bc8682cd24f9775de26c447f25432e823b16b0b10cb84b35`  
		Last Modified: Sat, 27 Apr 2019 00:05:40 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d6dcc43c97e7abacd98e13dc0e944163ea2c69d35193c17f8d6ce433e9641b`  
		Last Modified: Sat, 27 Apr 2019 00:05:59 GMT  
		Size: 104.7 MB (104723757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a359560a31cf955f46afb97c7e17c4a58613cb959fe5817a9e5125dac89ce3c`  
		Last Modified: Sat, 27 Apr 2019 00:05:40 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dbd4bfea37b2c0fcf2309329513622b2da16b874e76fbd6ec04fc90a849b887`  
		Last Modified: Tue, 07 May 2019 00:20:23 GMT  
		Size: 3.9 KB (3913 bytes)  
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

### `mongo:4` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:5c8f2b0e4695069ef6b19655c84b514b0cfd78850529637dc74a4639ae5636be
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5728770955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f44926d0744ab5ebe992ba5788f99b16b900500fc7c7774b585d4000740783`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 02:55:13 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 02:55:14 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Fri, 12 Apr 2019 02:55:15 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Fri, 12 Apr 2019 03:12:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 03:12:31 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 03:12:33 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 03:12:35 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f34280531180f27fb3076056287eff9fcad7eb2b85f0a26b1d6d3b16d5183b`  
		Last Modified: Fri, 12 Apr 2019 04:41:50 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba51fdcf7451c1f0693a739c36c9ae0d1ce90cfefeea603c17608cd18bf98a63`  
		Last Modified: Fri, 12 Apr 2019 04:41:51 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fea4ecec35323821a1bda744104a868770b1aa53d56423ca515e2537a354184`  
		Last Modified: Fri, 12 Apr 2019 04:41:48 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97978b7c09827f915ba616cc6ccc6f784d9cba223d66ad169dcb4b3ee1e5fac0`  
		Last Modified: Fri, 12 Apr 2019 04:42:11 GMT  
		Size: 86.4 MB (86392803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da844cac1df326b6c69ab2ec0314976d79d4d90b50644218d84c735d9f799b55`  
		Last Modified: Fri, 12 Apr 2019 04:41:49 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84069f19e012ff8f7be7333fe3b9ca7e689c8751dc1ed42878ffa633ba959530`  
		Last Modified: Fri, 12 Apr 2019 04:41:49 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66dbc84ce3e798e27b7a1b13a09fff027e92ffc19b622b2415384d3d34358da4`  
		Last Modified: Fri, 12 Apr 2019 04:41:48 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4` - windows version 10.0.17134.706; amd64

```console
$ docker pull mongo@sha256:178ffb7efea663d45eb966b4675e1f7e82b4b4627f862520985d232ab933972e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2718997559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12dba7de7a0616131da880fadd955a33bca3094c1287e7a115f0442804986a94`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Fri, 12 Apr 2019 03:30:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 03:30:51 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 03:30:52 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Fri, 12 Apr 2019 03:30:53 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Fri, 12 Apr 2019 03:48:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 03:48:51 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 03:48:53 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 03:48:55 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f64de0803761413fe5d7971b2dc189439f3f4552f4f5b3585c3c9077da6c57cf`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d85e0ebc82804758c028060a5037a4d1a15b187cce6d0a4fbae5e0e9b3e0783`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd5a6f5a413da5b9420ed3202c16db5c26de4388e413966c80d1febd1124524`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8484ede680e2afd7d3d026345514f41f3d12dffdccfe6d9011498544c7379bf`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781f5b544d47940b71539e2a5a1ee98dd0cfa1b684a9e2d7770a20a3bda57862`  
		Last Modified: Fri, 12 Apr 2019 04:47:05 GMT  
		Size: 462.6 MB (462638526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3523ab7c959247bd3214cf87848496b500734ae39db803460382d7a4abec9603`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95527f66ae78beb784ad80c019ffe4412af3b3d586ac9b0751f2cd3f0ec7a6`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2499f5f5dae539b7de7b1cd2c841acceb947b10265198c59ca3f392c8f47fbf7`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0`

```console
$ docker pull mongo@sha256:02c6031b363fb9a43f6633eb9db405db59c9dfdd0ce726baa4fab973939952a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64

### `mongo:4.0` - linux; amd64

```console
$ docker pull mongo@sha256:a1ace85762246019d3b0eabfa191b3344668daa03a7e13d384daf06f2354036c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152582372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d98005b752b4d29ecce38d9373dd11cc84b941c3a49e6d49d97a2cea022fcb34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 00:01:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 00:01:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:01:47 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 00:01:47 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 00:01:53 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 00:01:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 00:02:49 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Sat, 27 Apr 2019 00:02:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 00:02:50 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 00:02:51 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:02:51 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:02:51 GMT
ENV MONGO_MAJOR=4.0
# Sat, 27 Apr 2019 00:02:51 GMT
ENV MONGO_VERSION=4.0.9
# Sat, 27 Apr 2019 00:02:52 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 00:03:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 00:03:22 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 00:03:22 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 00:19:56 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 00:19:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 00:19:57 GMT
EXPOSE 27017
# Tue, 07 May 2019 00:19:57 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5182dfcfa207e938a4dbe8214adb73e0413c114436a1dd6f2493cd037f88230`  
		Last Modified: Sat, 27 Apr 2019 00:04:47 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb099326ee3fa95460e50a06e259887a6311d01e8f7b0d183f3808d0385f8c7`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 2.9 MB (2945567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75804f28c4b1878a1f7a1aa925190fce532c76192dd7895af9fc61716de7fb8d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 1.2 MB (1151175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765a10b214befdd889a88a1ef896e5b96df3171b4a8202022dfdf7833790e46d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7304ae07bcd10636ee668d745e7533d8647bf4adee074106561a97ef5db8adb8`  
		Last Modified: Sat, 27 Apr 2019 00:05:40 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f2d1eeb002d248bc8682cd24f9775de26c447f25432e823b16b0b10cb84b35`  
		Last Modified: Sat, 27 Apr 2019 00:05:40 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d6dcc43c97e7abacd98e13dc0e944163ea2c69d35193c17f8d6ce433e9641b`  
		Last Modified: Sat, 27 Apr 2019 00:05:59 GMT  
		Size: 104.7 MB (104723757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a359560a31cf955f46afb97c7e17c4a58613cb959fe5817a9e5125dac89ce3c`  
		Last Modified: Sat, 27 Apr 2019 00:05:40 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dbd4bfea37b2c0fcf2309329513622b2da16b874e76fbd6ec04fc90a849b887`  
		Last Modified: Tue, 07 May 2019 00:20:23 GMT  
		Size: 3.9 KB (3913 bytes)  
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

### `mongo:4.0` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:5c8f2b0e4695069ef6b19655c84b514b0cfd78850529637dc74a4639ae5636be
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5728770955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f44926d0744ab5ebe992ba5788f99b16b900500fc7c7774b585d4000740783`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 02:55:13 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 02:55:14 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Fri, 12 Apr 2019 02:55:15 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Fri, 12 Apr 2019 03:12:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 03:12:31 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 03:12:33 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 03:12:35 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f34280531180f27fb3076056287eff9fcad7eb2b85f0a26b1d6d3b16d5183b`  
		Last Modified: Fri, 12 Apr 2019 04:41:50 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba51fdcf7451c1f0693a739c36c9ae0d1ce90cfefeea603c17608cd18bf98a63`  
		Last Modified: Fri, 12 Apr 2019 04:41:51 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fea4ecec35323821a1bda744104a868770b1aa53d56423ca515e2537a354184`  
		Last Modified: Fri, 12 Apr 2019 04:41:48 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97978b7c09827f915ba616cc6ccc6f784d9cba223d66ad169dcb4b3ee1e5fac0`  
		Last Modified: Fri, 12 Apr 2019 04:42:11 GMT  
		Size: 86.4 MB (86392803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da844cac1df326b6c69ab2ec0314976d79d4d90b50644218d84c735d9f799b55`  
		Last Modified: Fri, 12 Apr 2019 04:41:49 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84069f19e012ff8f7be7333fe3b9ca7e689c8751dc1ed42878ffa633ba959530`  
		Last Modified: Fri, 12 Apr 2019 04:41:49 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66dbc84ce3e798e27b7a1b13a09fff027e92ffc19b622b2415384d3d34358da4`  
		Last Modified: Fri, 12 Apr 2019 04:41:48 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0` - windows version 10.0.17134.706; amd64

```console
$ docker pull mongo@sha256:178ffb7efea663d45eb966b4675e1f7e82b4b4627f862520985d232ab933972e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2718997559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12dba7de7a0616131da880fadd955a33bca3094c1287e7a115f0442804986a94`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Fri, 12 Apr 2019 03:30:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 03:30:51 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 03:30:52 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Fri, 12 Apr 2019 03:30:53 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Fri, 12 Apr 2019 03:48:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 03:48:51 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 03:48:53 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 03:48:55 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f64de0803761413fe5d7971b2dc189439f3f4552f4f5b3585c3c9077da6c57cf`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d85e0ebc82804758c028060a5037a4d1a15b187cce6d0a4fbae5e0e9b3e0783`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd5a6f5a413da5b9420ed3202c16db5c26de4388e413966c80d1febd1124524`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8484ede680e2afd7d3d026345514f41f3d12dffdccfe6d9011498544c7379bf`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781f5b544d47940b71539e2a5a1ee98dd0cfa1b684a9e2d7770a20a3bda57862`  
		Last Modified: Fri, 12 Apr 2019 04:47:05 GMT  
		Size: 462.6 MB (462638526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3523ab7c959247bd3214cf87848496b500734ae39db803460382d7a4abec9603`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95527f66ae78beb784ad80c019ffe4412af3b3d586ac9b0751f2cd3f0ec7a6`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2499f5f5dae539b7de7b1cd2c841acceb947b10265198c59ca3f392c8f47fbf7`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0.9`

```console
$ docker pull mongo@sha256:02c6031b363fb9a43f6633eb9db405db59c9dfdd0ce726baa4fab973939952a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64

### `mongo:4.0.9` - linux; amd64

```console
$ docker pull mongo@sha256:a1ace85762246019d3b0eabfa191b3344668daa03a7e13d384daf06f2354036c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152582372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d98005b752b4d29ecce38d9373dd11cc84b941c3a49e6d49d97a2cea022fcb34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 00:01:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 00:01:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:01:47 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 00:01:47 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 00:01:53 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 00:01:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 00:02:49 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Sat, 27 Apr 2019 00:02:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 00:02:50 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 00:02:51 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:02:51 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:02:51 GMT
ENV MONGO_MAJOR=4.0
# Sat, 27 Apr 2019 00:02:51 GMT
ENV MONGO_VERSION=4.0.9
# Sat, 27 Apr 2019 00:02:52 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 00:03:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 00:03:22 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 00:03:22 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 00:19:56 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 00:19:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 00:19:57 GMT
EXPOSE 27017
# Tue, 07 May 2019 00:19:57 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5182dfcfa207e938a4dbe8214adb73e0413c114436a1dd6f2493cd037f88230`  
		Last Modified: Sat, 27 Apr 2019 00:04:47 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb099326ee3fa95460e50a06e259887a6311d01e8f7b0d183f3808d0385f8c7`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 2.9 MB (2945567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75804f28c4b1878a1f7a1aa925190fce532c76192dd7895af9fc61716de7fb8d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 1.2 MB (1151175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765a10b214befdd889a88a1ef896e5b96df3171b4a8202022dfdf7833790e46d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7304ae07bcd10636ee668d745e7533d8647bf4adee074106561a97ef5db8adb8`  
		Last Modified: Sat, 27 Apr 2019 00:05:40 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f2d1eeb002d248bc8682cd24f9775de26c447f25432e823b16b0b10cb84b35`  
		Last Modified: Sat, 27 Apr 2019 00:05:40 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d6dcc43c97e7abacd98e13dc0e944163ea2c69d35193c17f8d6ce433e9641b`  
		Last Modified: Sat, 27 Apr 2019 00:05:59 GMT  
		Size: 104.7 MB (104723757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a359560a31cf955f46afb97c7e17c4a58613cb959fe5817a9e5125dac89ce3c`  
		Last Modified: Sat, 27 Apr 2019 00:05:40 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dbd4bfea37b2c0fcf2309329513622b2da16b874e76fbd6ec04fc90a849b887`  
		Last Modified: Tue, 07 May 2019 00:20:23 GMT  
		Size: 3.9 KB (3913 bytes)  
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

### `mongo:4.0.9` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:5c8f2b0e4695069ef6b19655c84b514b0cfd78850529637dc74a4639ae5636be
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5728770955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f44926d0744ab5ebe992ba5788f99b16b900500fc7c7774b585d4000740783`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 02:55:13 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 02:55:14 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Fri, 12 Apr 2019 02:55:15 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Fri, 12 Apr 2019 03:12:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 03:12:31 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 03:12:33 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 03:12:35 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f34280531180f27fb3076056287eff9fcad7eb2b85f0a26b1d6d3b16d5183b`  
		Last Modified: Fri, 12 Apr 2019 04:41:50 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba51fdcf7451c1f0693a739c36c9ae0d1ce90cfefeea603c17608cd18bf98a63`  
		Last Modified: Fri, 12 Apr 2019 04:41:51 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fea4ecec35323821a1bda744104a868770b1aa53d56423ca515e2537a354184`  
		Last Modified: Fri, 12 Apr 2019 04:41:48 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97978b7c09827f915ba616cc6ccc6f784d9cba223d66ad169dcb4b3ee1e5fac0`  
		Last Modified: Fri, 12 Apr 2019 04:42:11 GMT  
		Size: 86.4 MB (86392803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da844cac1df326b6c69ab2ec0314976d79d4d90b50644218d84c735d9f799b55`  
		Last Modified: Fri, 12 Apr 2019 04:41:49 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84069f19e012ff8f7be7333fe3b9ca7e689c8751dc1ed42878ffa633ba959530`  
		Last Modified: Fri, 12 Apr 2019 04:41:49 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66dbc84ce3e798e27b7a1b13a09fff027e92ffc19b622b2415384d3d34358da4`  
		Last Modified: Fri, 12 Apr 2019 04:41:48 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0.9` - windows version 10.0.17134.706; amd64

```console
$ docker pull mongo@sha256:178ffb7efea663d45eb966b4675e1f7e82b4b4627f862520985d232ab933972e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2718997559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12dba7de7a0616131da880fadd955a33bca3094c1287e7a115f0442804986a94`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Fri, 12 Apr 2019 03:30:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 03:30:51 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 03:30:52 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Fri, 12 Apr 2019 03:30:53 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Fri, 12 Apr 2019 03:48:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 03:48:51 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 03:48:53 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 03:48:55 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f64de0803761413fe5d7971b2dc189439f3f4552f4f5b3585c3c9077da6c57cf`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d85e0ebc82804758c028060a5037a4d1a15b187cce6d0a4fbae5e0e9b3e0783`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd5a6f5a413da5b9420ed3202c16db5c26de4388e413966c80d1febd1124524`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8484ede680e2afd7d3d026345514f41f3d12dffdccfe6d9011498544c7379bf`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781f5b544d47940b71539e2a5a1ee98dd0cfa1b684a9e2d7770a20a3bda57862`  
		Last Modified: Fri, 12 Apr 2019 04:47:05 GMT  
		Size: 462.6 MB (462638526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3523ab7c959247bd3214cf87848496b500734ae39db803460382d7a4abec9603`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95527f66ae78beb784ad80c019ffe4412af3b3d586ac9b0751f2cd3f0ec7a6`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2499f5f5dae539b7de7b1cd2c841acceb947b10265198c59ca3f392c8f47fbf7`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0.9-windowsservercore`

```console
$ docker pull mongo@sha256:16bb597345afe6ad0d292e30f8b74501104c90677feb60b4b2f682677aa74ee4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64

### `mongo:4.0.9-windowsservercore` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:5c8f2b0e4695069ef6b19655c84b514b0cfd78850529637dc74a4639ae5636be
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5728770955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f44926d0744ab5ebe992ba5788f99b16b900500fc7c7774b585d4000740783`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 02:55:13 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 02:55:14 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Fri, 12 Apr 2019 02:55:15 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Fri, 12 Apr 2019 03:12:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 03:12:31 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 03:12:33 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 03:12:35 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f34280531180f27fb3076056287eff9fcad7eb2b85f0a26b1d6d3b16d5183b`  
		Last Modified: Fri, 12 Apr 2019 04:41:50 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba51fdcf7451c1f0693a739c36c9ae0d1ce90cfefeea603c17608cd18bf98a63`  
		Last Modified: Fri, 12 Apr 2019 04:41:51 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fea4ecec35323821a1bda744104a868770b1aa53d56423ca515e2537a354184`  
		Last Modified: Fri, 12 Apr 2019 04:41:48 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97978b7c09827f915ba616cc6ccc6f784d9cba223d66ad169dcb4b3ee1e5fac0`  
		Last Modified: Fri, 12 Apr 2019 04:42:11 GMT  
		Size: 86.4 MB (86392803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da844cac1df326b6c69ab2ec0314976d79d4d90b50644218d84c735d9f799b55`  
		Last Modified: Fri, 12 Apr 2019 04:41:49 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84069f19e012ff8f7be7333fe3b9ca7e689c8751dc1ed42878ffa633ba959530`  
		Last Modified: Fri, 12 Apr 2019 04:41:49 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66dbc84ce3e798e27b7a1b13a09fff027e92ffc19b622b2415384d3d34358da4`  
		Last Modified: Fri, 12 Apr 2019 04:41:48 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0.9-windowsservercore` - windows version 10.0.17134.706; amd64

```console
$ docker pull mongo@sha256:178ffb7efea663d45eb966b4675e1f7e82b4b4627f862520985d232ab933972e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2718997559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12dba7de7a0616131da880fadd955a33bca3094c1287e7a115f0442804986a94`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Fri, 12 Apr 2019 03:30:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 03:30:51 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 03:30:52 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Fri, 12 Apr 2019 03:30:53 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Fri, 12 Apr 2019 03:48:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 03:48:51 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 03:48:53 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 03:48:55 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f64de0803761413fe5d7971b2dc189439f3f4552f4f5b3585c3c9077da6c57cf`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d85e0ebc82804758c028060a5037a4d1a15b187cce6d0a4fbae5e0e9b3e0783`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd5a6f5a413da5b9420ed3202c16db5c26de4388e413966c80d1febd1124524`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8484ede680e2afd7d3d026345514f41f3d12dffdccfe6d9011498544c7379bf`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781f5b544d47940b71539e2a5a1ee98dd0cfa1b684a9e2d7770a20a3bda57862`  
		Last Modified: Fri, 12 Apr 2019 04:47:05 GMT  
		Size: 462.6 MB (462638526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3523ab7c959247bd3214cf87848496b500734ae39db803460382d7a4abec9603`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95527f66ae78beb784ad80c019ffe4412af3b3d586ac9b0751f2cd3f0ec7a6`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2499f5f5dae539b7de7b1cd2c841acceb947b10265198c59ca3f392c8f47fbf7`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0.9-windowsservercore-1803`

```console
$ docker pull mongo@sha256:bfa95ba1799d1927c79cec64a59d48488e55d3875fde98462e3682674cda7701
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.706; amd64

### `mongo:4.0.9-windowsservercore-1803` - windows version 10.0.17134.706; amd64

```console
$ docker pull mongo@sha256:178ffb7efea663d45eb966b4675e1f7e82b4b4627f862520985d232ab933972e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2718997559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12dba7de7a0616131da880fadd955a33bca3094c1287e7a115f0442804986a94`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Fri, 12 Apr 2019 03:30:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 03:30:51 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 03:30:52 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Fri, 12 Apr 2019 03:30:53 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Fri, 12 Apr 2019 03:48:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 03:48:51 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 03:48:53 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 03:48:55 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f64de0803761413fe5d7971b2dc189439f3f4552f4f5b3585c3c9077da6c57cf`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d85e0ebc82804758c028060a5037a4d1a15b187cce6d0a4fbae5e0e9b3e0783`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd5a6f5a413da5b9420ed3202c16db5c26de4388e413966c80d1febd1124524`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8484ede680e2afd7d3d026345514f41f3d12dffdccfe6d9011498544c7379bf`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781f5b544d47940b71539e2a5a1ee98dd0cfa1b684a9e2d7770a20a3bda57862`  
		Last Modified: Fri, 12 Apr 2019 04:47:05 GMT  
		Size: 462.6 MB (462638526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3523ab7c959247bd3214cf87848496b500734ae39db803460382d7a4abec9603`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95527f66ae78beb784ad80c019ffe4412af3b3d586ac9b0751f2cd3f0ec7a6`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2499f5f5dae539b7de7b1cd2c841acceb947b10265198c59ca3f392c8f47fbf7`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0.9-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:df5a7141850cae3208288f89d86ec05f9f3d48857ee2d6b7d92673a6f47770c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64

### `mongo:4.0.9-windowsservercore-ltsc2016` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:5c8f2b0e4695069ef6b19655c84b514b0cfd78850529637dc74a4639ae5636be
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5728770955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f44926d0744ab5ebe992ba5788f99b16b900500fc7c7774b585d4000740783`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 02:55:13 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 02:55:14 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Fri, 12 Apr 2019 02:55:15 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Fri, 12 Apr 2019 03:12:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 03:12:31 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 03:12:33 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 03:12:35 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f34280531180f27fb3076056287eff9fcad7eb2b85f0a26b1d6d3b16d5183b`  
		Last Modified: Fri, 12 Apr 2019 04:41:50 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba51fdcf7451c1f0693a739c36c9ae0d1ce90cfefeea603c17608cd18bf98a63`  
		Last Modified: Fri, 12 Apr 2019 04:41:51 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fea4ecec35323821a1bda744104a868770b1aa53d56423ca515e2537a354184`  
		Last Modified: Fri, 12 Apr 2019 04:41:48 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97978b7c09827f915ba616cc6ccc6f784d9cba223d66ad169dcb4b3ee1e5fac0`  
		Last Modified: Fri, 12 Apr 2019 04:42:11 GMT  
		Size: 86.4 MB (86392803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da844cac1df326b6c69ab2ec0314976d79d4d90b50644218d84c735d9f799b55`  
		Last Modified: Fri, 12 Apr 2019 04:41:49 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84069f19e012ff8f7be7333fe3b9ca7e689c8751dc1ed42878ffa633ba959530`  
		Last Modified: Fri, 12 Apr 2019 04:41:49 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66dbc84ce3e798e27b7a1b13a09fff027e92ffc19b622b2415384d3d34358da4`  
		Last Modified: Fri, 12 Apr 2019 04:41:48 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0.9-xenial`

```console
$ docker pull mongo@sha256:0d86b4ac74a54f079c515803676903479cc33f859f2c4b3897ea7ce2d100b08e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:4.0.9-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:a1ace85762246019d3b0eabfa191b3344668daa03a7e13d384daf06f2354036c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152582372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d98005b752b4d29ecce38d9373dd11cc84b941c3a49e6d49d97a2cea022fcb34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 00:01:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 00:01:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:01:47 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 00:01:47 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 00:01:53 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 00:01:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 00:02:49 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Sat, 27 Apr 2019 00:02:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 00:02:50 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 00:02:51 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:02:51 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:02:51 GMT
ENV MONGO_MAJOR=4.0
# Sat, 27 Apr 2019 00:02:51 GMT
ENV MONGO_VERSION=4.0.9
# Sat, 27 Apr 2019 00:02:52 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 00:03:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 00:03:22 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 00:03:22 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 00:19:56 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 00:19:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 00:19:57 GMT
EXPOSE 27017
# Tue, 07 May 2019 00:19:57 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5182dfcfa207e938a4dbe8214adb73e0413c114436a1dd6f2493cd037f88230`  
		Last Modified: Sat, 27 Apr 2019 00:04:47 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb099326ee3fa95460e50a06e259887a6311d01e8f7b0d183f3808d0385f8c7`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 2.9 MB (2945567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75804f28c4b1878a1f7a1aa925190fce532c76192dd7895af9fc61716de7fb8d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 1.2 MB (1151175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765a10b214befdd889a88a1ef896e5b96df3171b4a8202022dfdf7833790e46d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7304ae07bcd10636ee668d745e7533d8647bf4adee074106561a97ef5db8adb8`  
		Last Modified: Sat, 27 Apr 2019 00:05:40 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f2d1eeb002d248bc8682cd24f9775de26c447f25432e823b16b0b10cb84b35`  
		Last Modified: Sat, 27 Apr 2019 00:05:40 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d6dcc43c97e7abacd98e13dc0e944163ea2c69d35193c17f8d6ce433e9641b`  
		Last Modified: Sat, 27 Apr 2019 00:05:59 GMT  
		Size: 104.7 MB (104723757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a359560a31cf955f46afb97c7e17c4a58613cb959fe5817a9e5125dac89ce3c`  
		Last Modified: Sat, 27 Apr 2019 00:05:40 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dbd4bfea37b2c0fcf2309329513622b2da16b874e76fbd6ec04fc90a849b887`  
		Last Modified: Tue, 07 May 2019 00:20:23 GMT  
		Size: 3.9 KB (3913 bytes)  
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
$ docker pull mongo@sha256:16bb597345afe6ad0d292e30f8b74501104c90677feb60b4b2f682677aa74ee4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64

### `mongo:4.0-windowsservercore` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:5c8f2b0e4695069ef6b19655c84b514b0cfd78850529637dc74a4639ae5636be
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5728770955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f44926d0744ab5ebe992ba5788f99b16b900500fc7c7774b585d4000740783`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 02:55:13 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 02:55:14 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Fri, 12 Apr 2019 02:55:15 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Fri, 12 Apr 2019 03:12:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 03:12:31 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 03:12:33 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 03:12:35 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f34280531180f27fb3076056287eff9fcad7eb2b85f0a26b1d6d3b16d5183b`  
		Last Modified: Fri, 12 Apr 2019 04:41:50 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba51fdcf7451c1f0693a739c36c9ae0d1ce90cfefeea603c17608cd18bf98a63`  
		Last Modified: Fri, 12 Apr 2019 04:41:51 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fea4ecec35323821a1bda744104a868770b1aa53d56423ca515e2537a354184`  
		Last Modified: Fri, 12 Apr 2019 04:41:48 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97978b7c09827f915ba616cc6ccc6f784d9cba223d66ad169dcb4b3ee1e5fac0`  
		Last Modified: Fri, 12 Apr 2019 04:42:11 GMT  
		Size: 86.4 MB (86392803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da844cac1df326b6c69ab2ec0314976d79d4d90b50644218d84c735d9f799b55`  
		Last Modified: Fri, 12 Apr 2019 04:41:49 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84069f19e012ff8f7be7333fe3b9ca7e689c8751dc1ed42878ffa633ba959530`  
		Last Modified: Fri, 12 Apr 2019 04:41:49 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66dbc84ce3e798e27b7a1b13a09fff027e92ffc19b622b2415384d3d34358da4`  
		Last Modified: Fri, 12 Apr 2019 04:41:48 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0-windowsservercore` - windows version 10.0.17134.706; amd64

```console
$ docker pull mongo@sha256:178ffb7efea663d45eb966b4675e1f7e82b4b4627f862520985d232ab933972e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2718997559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12dba7de7a0616131da880fadd955a33bca3094c1287e7a115f0442804986a94`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Fri, 12 Apr 2019 03:30:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 03:30:51 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 03:30:52 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Fri, 12 Apr 2019 03:30:53 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Fri, 12 Apr 2019 03:48:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 03:48:51 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 03:48:53 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 03:48:55 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f64de0803761413fe5d7971b2dc189439f3f4552f4f5b3585c3c9077da6c57cf`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d85e0ebc82804758c028060a5037a4d1a15b187cce6d0a4fbae5e0e9b3e0783`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd5a6f5a413da5b9420ed3202c16db5c26de4388e413966c80d1febd1124524`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8484ede680e2afd7d3d026345514f41f3d12dffdccfe6d9011498544c7379bf`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781f5b544d47940b71539e2a5a1ee98dd0cfa1b684a9e2d7770a20a3bda57862`  
		Last Modified: Fri, 12 Apr 2019 04:47:05 GMT  
		Size: 462.6 MB (462638526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3523ab7c959247bd3214cf87848496b500734ae39db803460382d7a4abec9603`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95527f66ae78beb784ad80c019ffe4412af3b3d586ac9b0751f2cd3f0ec7a6`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2499f5f5dae539b7de7b1cd2c841acceb947b10265198c59ca3f392c8f47fbf7`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0-windowsservercore-1803`

```console
$ docker pull mongo@sha256:bfa95ba1799d1927c79cec64a59d48488e55d3875fde98462e3682674cda7701
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.706; amd64

### `mongo:4.0-windowsservercore-1803` - windows version 10.0.17134.706; amd64

```console
$ docker pull mongo@sha256:178ffb7efea663d45eb966b4675e1f7e82b4b4627f862520985d232ab933972e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2718997559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12dba7de7a0616131da880fadd955a33bca3094c1287e7a115f0442804986a94`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Fri, 12 Apr 2019 03:30:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 03:30:51 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 03:30:52 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Fri, 12 Apr 2019 03:30:53 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Fri, 12 Apr 2019 03:48:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 03:48:51 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 03:48:53 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 03:48:55 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f64de0803761413fe5d7971b2dc189439f3f4552f4f5b3585c3c9077da6c57cf`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d85e0ebc82804758c028060a5037a4d1a15b187cce6d0a4fbae5e0e9b3e0783`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd5a6f5a413da5b9420ed3202c16db5c26de4388e413966c80d1febd1124524`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8484ede680e2afd7d3d026345514f41f3d12dffdccfe6d9011498544c7379bf`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781f5b544d47940b71539e2a5a1ee98dd0cfa1b684a9e2d7770a20a3bda57862`  
		Last Modified: Fri, 12 Apr 2019 04:47:05 GMT  
		Size: 462.6 MB (462638526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3523ab7c959247bd3214cf87848496b500734ae39db803460382d7a4abec9603`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95527f66ae78beb784ad80c019ffe4412af3b3d586ac9b0751f2cd3f0ec7a6`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2499f5f5dae539b7de7b1cd2c841acceb947b10265198c59ca3f392c8f47fbf7`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:df5a7141850cae3208288f89d86ec05f9f3d48857ee2d6b7d92673a6f47770c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64

### `mongo:4.0-windowsservercore-ltsc2016` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:5c8f2b0e4695069ef6b19655c84b514b0cfd78850529637dc74a4639ae5636be
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5728770955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f44926d0744ab5ebe992ba5788f99b16b900500fc7c7774b585d4000740783`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 02:55:13 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 02:55:14 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Fri, 12 Apr 2019 02:55:15 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Fri, 12 Apr 2019 03:12:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 03:12:31 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 03:12:33 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 03:12:35 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f34280531180f27fb3076056287eff9fcad7eb2b85f0a26b1d6d3b16d5183b`  
		Last Modified: Fri, 12 Apr 2019 04:41:50 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba51fdcf7451c1f0693a739c36c9ae0d1ce90cfefeea603c17608cd18bf98a63`  
		Last Modified: Fri, 12 Apr 2019 04:41:51 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fea4ecec35323821a1bda744104a868770b1aa53d56423ca515e2537a354184`  
		Last Modified: Fri, 12 Apr 2019 04:41:48 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97978b7c09827f915ba616cc6ccc6f784d9cba223d66ad169dcb4b3ee1e5fac0`  
		Last Modified: Fri, 12 Apr 2019 04:42:11 GMT  
		Size: 86.4 MB (86392803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da844cac1df326b6c69ab2ec0314976d79d4d90b50644218d84c735d9f799b55`  
		Last Modified: Fri, 12 Apr 2019 04:41:49 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84069f19e012ff8f7be7333fe3b9ca7e689c8751dc1ed42878ffa633ba959530`  
		Last Modified: Fri, 12 Apr 2019 04:41:49 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66dbc84ce3e798e27b7a1b13a09fff027e92ffc19b622b2415384d3d34358da4`  
		Last Modified: Fri, 12 Apr 2019 04:41:48 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0-xenial`

```console
$ docker pull mongo@sha256:0d86b4ac74a54f079c515803676903479cc33f859f2c4b3897ea7ce2d100b08e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:4.0-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:a1ace85762246019d3b0eabfa191b3344668daa03a7e13d384daf06f2354036c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152582372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d98005b752b4d29ecce38d9373dd11cc84b941c3a49e6d49d97a2cea022fcb34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 00:01:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 00:01:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:01:47 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 00:01:47 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 00:01:53 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 00:01:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 00:02:49 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Sat, 27 Apr 2019 00:02:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 00:02:50 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 00:02:51 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:02:51 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:02:51 GMT
ENV MONGO_MAJOR=4.0
# Sat, 27 Apr 2019 00:02:51 GMT
ENV MONGO_VERSION=4.0.9
# Sat, 27 Apr 2019 00:02:52 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 00:03:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 00:03:22 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 00:03:22 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 00:19:56 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 00:19:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 00:19:57 GMT
EXPOSE 27017
# Tue, 07 May 2019 00:19:57 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5182dfcfa207e938a4dbe8214adb73e0413c114436a1dd6f2493cd037f88230`  
		Last Modified: Sat, 27 Apr 2019 00:04:47 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb099326ee3fa95460e50a06e259887a6311d01e8f7b0d183f3808d0385f8c7`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 2.9 MB (2945567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75804f28c4b1878a1f7a1aa925190fce532c76192dd7895af9fc61716de7fb8d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 1.2 MB (1151175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765a10b214befdd889a88a1ef896e5b96df3171b4a8202022dfdf7833790e46d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7304ae07bcd10636ee668d745e7533d8647bf4adee074106561a97ef5db8adb8`  
		Last Modified: Sat, 27 Apr 2019 00:05:40 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f2d1eeb002d248bc8682cd24f9775de26c447f25432e823b16b0b10cb84b35`  
		Last Modified: Sat, 27 Apr 2019 00:05:40 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d6dcc43c97e7abacd98e13dc0e944163ea2c69d35193c17f8d6ce433e9641b`  
		Last Modified: Sat, 27 Apr 2019 00:05:59 GMT  
		Size: 104.7 MB (104723757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a359560a31cf955f46afb97c7e17c4a58613cb959fe5817a9e5125dac89ce3c`  
		Last Modified: Sat, 27 Apr 2019 00:05:40 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dbd4bfea37b2c0fcf2309329513622b2da16b874e76fbd6ec04fc90a849b887`  
		Last Modified: Tue, 07 May 2019 00:20:23 GMT  
		Size: 3.9 KB (3913 bytes)  
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
$ docker pull mongo@sha256:ebd02b11442ee6dc3da85bd4cee7d9e6ffe7d994b6c3fd966482f35a11af6138
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:4.1` - linux; amd64

```console
$ docker pull mongo@sha256:6afa4247b5c5199da4fd6ca05def0d9367c0d98522dbe6bc77744ea6082c0da5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.7 MB (150702537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f33415f143ff45dd7648b57e19da5a279ff4cc1454a681edb9e4e01f008ab0e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 26 Apr 2019 22:21:02 GMT
ADD file:7ce84f13f11609a50ece7823578159412e2299c812746d1d1f1ed5db0728bd37 in / 
# Fri, 26 Apr 2019 22:21:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:21:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:21:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:21:05 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 00:03:32 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 00:03:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:03:41 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 00:03:41 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 00:04:02 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 00:04:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 00:04:03 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Sat, 27 Apr 2019 00:04:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 00:04:04 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Sat, 27 Apr 2019 00:04:04 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:04:05 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:04:05 GMT
ENV MONGO_MAJOR=4.1
# Thu, 09 May 2019 23:23:52 GMT
ENV MONGO_VERSION=4.1.11
# Thu, 09 May 2019 23:23:52 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 09 May 2019 23:24:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 09 May 2019 23:24:14 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 09 May 2019 23:24:14 GMT
VOLUME [/data/db /data/configdb]
# Thu, 09 May 2019 23:24:14 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Thu, 09 May 2019 23:24:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 23:24:14 GMT
EXPOSE 27017
# Thu, 09 May 2019 23:24:14 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:f476d66f540886e2bb4d9c8cc8c0f8915bca7d387e536957796ea6c2f8e7dfff`  
		Last Modified: Thu, 25 Apr 2019 00:24:51 GMT  
		Size: 37.2 MB (37206102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8882c27f669ef315fc231f272965cd5ee8507c0f376855d6f9c012aae0224797`  
		Last Modified: Fri, 26 Apr 2019 22:22:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9af21273955749bb8250c7a883fcce21647b54f5a685d237bc6b920a2ebad1a`  
		Last Modified: Fri, 26 Apr 2019 22:22:42 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5029279ec1223b70f2cbb2682ab360e1837a2ea59a8d7ff64b38e9eab5fb8c0`  
		Last Modified: Fri, 26 Apr 2019 22:22:41 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b628ec1f21839a13da0453b7365ccdf364e05274f45c5686bf2381e73d73713`  
		Last Modified: Sat, 27 Apr 2019 00:06:10 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9991ac3ac9ee4eb5ae6c7335908b3269a0a93127d198b686b7d65847840ee120`  
		Last Modified: Sat, 27 Apr 2019 00:06:10 GMT  
		Size: 2.7 MB (2733113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e923c0d9faf521d63d33ed35999ab1b352fa6a1b5a0d41c69cfd861e19607d8`  
		Last Modified: Sat, 27 Apr 2019 00:06:10 GMT  
		Size: 5.8 MB (5759113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0e810710b33e34e7226f623d219134d16caa243944981be5e51065bc3c06ac`  
		Last Modified: Sat, 27 Apr 2019 00:06:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa04b0e6a0ad9ba391df609f35c5f8bbd1548731cb76e132876c0ac771e907e`  
		Last Modified: Sat, 27 Apr 2019 00:06:08 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4401873e1ad75dfacc7a1e9faa43ddbe11bf67c242a8ad813a6c2f5a656dca`  
		Last Modified: Thu, 09 May 2019 23:24:30 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba10c990549b795a0e562380461b3cfa20fe7b81b75f3e5a023c088c928b728`  
		Last Modified: Thu, 09 May 2019 23:24:46 GMT  
		Size: 105.0 MB (104994939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8755bbb5810f48c23900e520d84782a690750c2a2eb17c4d9a0409768ed8fb8b`  
		Last Modified: Thu, 09 May 2019 23:24:30 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028ed8f4f899e856921ef09e67dcf3251d7e5c5336f50f2cf683a1dd111574de`  
		Last Modified: Thu, 09 May 2019 23:24:30 GMT  
		Size: 3.9 KB (3917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.1.11`

```console
$ docker pull mongo@sha256:ebd02b11442ee6dc3da85bd4cee7d9e6ffe7d994b6c3fd966482f35a11af6138
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:4.1.11` - linux; amd64

```console
$ docker pull mongo@sha256:6afa4247b5c5199da4fd6ca05def0d9367c0d98522dbe6bc77744ea6082c0da5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.7 MB (150702537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f33415f143ff45dd7648b57e19da5a279ff4cc1454a681edb9e4e01f008ab0e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 26 Apr 2019 22:21:02 GMT
ADD file:7ce84f13f11609a50ece7823578159412e2299c812746d1d1f1ed5db0728bd37 in / 
# Fri, 26 Apr 2019 22:21:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:21:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:21:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:21:05 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 00:03:32 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 00:03:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:03:41 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 00:03:41 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 00:04:02 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 00:04:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 00:04:03 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Sat, 27 Apr 2019 00:04:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 00:04:04 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Sat, 27 Apr 2019 00:04:04 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:04:05 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:04:05 GMT
ENV MONGO_MAJOR=4.1
# Thu, 09 May 2019 23:23:52 GMT
ENV MONGO_VERSION=4.1.11
# Thu, 09 May 2019 23:23:52 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 09 May 2019 23:24:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 09 May 2019 23:24:14 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 09 May 2019 23:24:14 GMT
VOLUME [/data/db /data/configdb]
# Thu, 09 May 2019 23:24:14 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Thu, 09 May 2019 23:24:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 23:24:14 GMT
EXPOSE 27017
# Thu, 09 May 2019 23:24:14 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:f476d66f540886e2bb4d9c8cc8c0f8915bca7d387e536957796ea6c2f8e7dfff`  
		Last Modified: Thu, 25 Apr 2019 00:24:51 GMT  
		Size: 37.2 MB (37206102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8882c27f669ef315fc231f272965cd5ee8507c0f376855d6f9c012aae0224797`  
		Last Modified: Fri, 26 Apr 2019 22:22:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9af21273955749bb8250c7a883fcce21647b54f5a685d237bc6b920a2ebad1a`  
		Last Modified: Fri, 26 Apr 2019 22:22:42 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5029279ec1223b70f2cbb2682ab360e1837a2ea59a8d7ff64b38e9eab5fb8c0`  
		Last Modified: Fri, 26 Apr 2019 22:22:41 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b628ec1f21839a13da0453b7365ccdf364e05274f45c5686bf2381e73d73713`  
		Last Modified: Sat, 27 Apr 2019 00:06:10 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9991ac3ac9ee4eb5ae6c7335908b3269a0a93127d198b686b7d65847840ee120`  
		Last Modified: Sat, 27 Apr 2019 00:06:10 GMT  
		Size: 2.7 MB (2733113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e923c0d9faf521d63d33ed35999ab1b352fa6a1b5a0d41c69cfd861e19607d8`  
		Last Modified: Sat, 27 Apr 2019 00:06:10 GMT  
		Size: 5.8 MB (5759113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0e810710b33e34e7226f623d219134d16caa243944981be5e51065bc3c06ac`  
		Last Modified: Sat, 27 Apr 2019 00:06:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa04b0e6a0ad9ba391df609f35c5f8bbd1548731cb76e132876c0ac771e907e`  
		Last Modified: Sat, 27 Apr 2019 00:06:08 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4401873e1ad75dfacc7a1e9faa43ddbe11bf67c242a8ad813a6c2f5a656dca`  
		Last Modified: Thu, 09 May 2019 23:24:30 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba10c990549b795a0e562380461b3cfa20fe7b81b75f3e5a023c088c928b728`  
		Last Modified: Thu, 09 May 2019 23:24:46 GMT  
		Size: 105.0 MB (104994939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8755bbb5810f48c23900e520d84782a690750c2a2eb17c4d9a0409768ed8fb8b`  
		Last Modified: Thu, 09 May 2019 23:24:30 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028ed8f4f899e856921ef09e67dcf3251d7e5c5336f50f2cf683a1dd111574de`  
		Last Modified: Thu, 09 May 2019 23:24:30 GMT  
		Size: 3.9 KB (3917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.1.11-bionic`

```console
$ docker pull mongo@sha256:ebd02b11442ee6dc3da85bd4cee7d9e6ffe7d994b6c3fd966482f35a11af6138
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:4.1.11-bionic` - linux; amd64

```console
$ docker pull mongo@sha256:6afa4247b5c5199da4fd6ca05def0d9367c0d98522dbe6bc77744ea6082c0da5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.7 MB (150702537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f33415f143ff45dd7648b57e19da5a279ff4cc1454a681edb9e4e01f008ab0e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 26 Apr 2019 22:21:02 GMT
ADD file:7ce84f13f11609a50ece7823578159412e2299c812746d1d1f1ed5db0728bd37 in / 
# Fri, 26 Apr 2019 22:21:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:21:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:21:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:21:05 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 00:03:32 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 00:03:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:03:41 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 00:03:41 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 00:04:02 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 00:04:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 00:04:03 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Sat, 27 Apr 2019 00:04:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 00:04:04 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Sat, 27 Apr 2019 00:04:04 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:04:05 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:04:05 GMT
ENV MONGO_MAJOR=4.1
# Thu, 09 May 2019 23:23:52 GMT
ENV MONGO_VERSION=4.1.11
# Thu, 09 May 2019 23:23:52 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 09 May 2019 23:24:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 09 May 2019 23:24:14 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 09 May 2019 23:24:14 GMT
VOLUME [/data/db /data/configdb]
# Thu, 09 May 2019 23:24:14 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Thu, 09 May 2019 23:24:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 23:24:14 GMT
EXPOSE 27017
# Thu, 09 May 2019 23:24:14 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:f476d66f540886e2bb4d9c8cc8c0f8915bca7d387e536957796ea6c2f8e7dfff`  
		Last Modified: Thu, 25 Apr 2019 00:24:51 GMT  
		Size: 37.2 MB (37206102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8882c27f669ef315fc231f272965cd5ee8507c0f376855d6f9c012aae0224797`  
		Last Modified: Fri, 26 Apr 2019 22:22:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9af21273955749bb8250c7a883fcce21647b54f5a685d237bc6b920a2ebad1a`  
		Last Modified: Fri, 26 Apr 2019 22:22:42 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5029279ec1223b70f2cbb2682ab360e1837a2ea59a8d7ff64b38e9eab5fb8c0`  
		Last Modified: Fri, 26 Apr 2019 22:22:41 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b628ec1f21839a13da0453b7365ccdf364e05274f45c5686bf2381e73d73713`  
		Last Modified: Sat, 27 Apr 2019 00:06:10 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9991ac3ac9ee4eb5ae6c7335908b3269a0a93127d198b686b7d65847840ee120`  
		Last Modified: Sat, 27 Apr 2019 00:06:10 GMT  
		Size: 2.7 MB (2733113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e923c0d9faf521d63d33ed35999ab1b352fa6a1b5a0d41c69cfd861e19607d8`  
		Last Modified: Sat, 27 Apr 2019 00:06:10 GMT  
		Size: 5.8 MB (5759113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0e810710b33e34e7226f623d219134d16caa243944981be5e51065bc3c06ac`  
		Last Modified: Sat, 27 Apr 2019 00:06:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa04b0e6a0ad9ba391df609f35c5f8bbd1548731cb76e132876c0ac771e907e`  
		Last Modified: Sat, 27 Apr 2019 00:06:08 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4401873e1ad75dfacc7a1e9faa43ddbe11bf67c242a8ad813a6c2f5a656dca`  
		Last Modified: Thu, 09 May 2019 23:24:30 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba10c990549b795a0e562380461b3cfa20fe7b81b75f3e5a023c088c928b728`  
		Last Modified: Thu, 09 May 2019 23:24:46 GMT  
		Size: 105.0 MB (104994939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8755bbb5810f48c23900e520d84782a690750c2a2eb17c4d9a0409768ed8fb8b`  
		Last Modified: Thu, 09 May 2019 23:24:30 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028ed8f4f899e856921ef09e67dcf3251d7e5c5336f50f2cf683a1dd111574de`  
		Last Modified: Thu, 09 May 2019 23:24:30 GMT  
		Size: 3.9 KB (3917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.1.11-windowsservercore`

**does not exist** (yet?)

## `mongo:4.1.11-windowsservercore-1803`

**does not exist** (yet?)

## `mongo:4.1.11-windowsservercore-ltsc2016`

**does not exist** (yet?)

## `mongo:4.1-bionic`

```console
$ docker pull mongo@sha256:ebd02b11442ee6dc3da85bd4cee7d9e6ffe7d994b6c3fd966482f35a11af6138
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:4.1-bionic` - linux; amd64

```console
$ docker pull mongo@sha256:6afa4247b5c5199da4fd6ca05def0d9367c0d98522dbe6bc77744ea6082c0da5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.7 MB (150702537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f33415f143ff45dd7648b57e19da5a279ff4cc1454a681edb9e4e01f008ab0e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 26 Apr 2019 22:21:02 GMT
ADD file:7ce84f13f11609a50ece7823578159412e2299c812746d1d1f1ed5db0728bd37 in / 
# Fri, 26 Apr 2019 22:21:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:21:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:21:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:21:05 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 00:03:32 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 00:03:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:03:41 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 00:03:41 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 00:04:02 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 00:04:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 00:04:03 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Sat, 27 Apr 2019 00:04:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 00:04:04 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Sat, 27 Apr 2019 00:04:04 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:04:05 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:04:05 GMT
ENV MONGO_MAJOR=4.1
# Thu, 09 May 2019 23:23:52 GMT
ENV MONGO_VERSION=4.1.11
# Thu, 09 May 2019 23:23:52 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 09 May 2019 23:24:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 09 May 2019 23:24:14 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 09 May 2019 23:24:14 GMT
VOLUME [/data/db /data/configdb]
# Thu, 09 May 2019 23:24:14 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Thu, 09 May 2019 23:24:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 23:24:14 GMT
EXPOSE 27017
# Thu, 09 May 2019 23:24:14 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:f476d66f540886e2bb4d9c8cc8c0f8915bca7d387e536957796ea6c2f8e7dfff`  
		Last Modified: Thu, 25 Apr 2019 00:24:51 GMT  
		Size: 37.2 MB (37206102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8882c27f669ef315fc231f272965cd5ee8507c0f376855d6f9c012aae0224797`  
		Last Modified: Fri, 26 Apr 2019 22:22:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9af21273955749bb8250c7a883fcce21647b54f5a685d237bc6b920a2ebad1a`  
		Last Modified: Fri, 26 Apr 2019 22:22:42 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5029279ec1223b70f2cbb2682ab360e1837a2ea59a8d7ff64b38e9eab5fb8c0`  
		Last Modified: Fri, 26 Apr 2019 22:22:41 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b628ec1f21839a13da0453b7365ccdf364e05274f45c5686bf2381e73d73713`  
		Last Modified: Sat, 27 Apr 2019 00:06:10 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9991ac3ac9ee4eb5ae6c7335908b3269a0a93127d198b686b7d65847840ee120`  
		Last Modified: Sat, 27 Apr 2019 00:06:10 GMT  
		Size: 2.7 MB (2733113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e923c0d9faf521d63d33ed35999ab1b352fa6a1b5a0d41c69cfd861e19607d8`  
		Last Modified: Sat, 27 Apr 2019 00:06:10 GMT  
		Size: 5.8 MB (5759113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0e810710b33e34e7226f623d219134d16caa243944981be5e51065bc3c06ac`  
		Last Modified: Sat, 27 Apr 2019 00:06:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa04b0e6a0ad9ba391df609f35c5f8bbd1548731cb76e132876c0ac771e907e`  
		Last Modified: Sat, 27 Apr 2019 00:06:08 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4401873e1ad75dfacc7a1e9faa43ddbe11bf67c242a8ad813a6c2f5a656dca`  
		Last Modified: Thu, 09 May 2019 23:24:30 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba10c990549b795a0e562380461b3cfa20fe7b81b75f3e5a023c088c928b728`  
		Last Modified: Thu, 09 May 2019 23:24:46 GMT  
		Size: 105.0 MB (104994939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8755bbb5810f48c23900e520d84782a690750c2a2eb17c4d9a0409768ed8fb8b`  
		Last Modified: Thu, 09 May 2019 23:24:30 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028ed8f4f899e856921ef09e67dcf3251d7e5c5336f50f2cf683a1dd111574de`  
		Last Modified: Thu, 09 May 2019 23:24:30 GMT  
		Size: 3.9 KB (3917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.1-windowsservercore`

```console
$ docker pull mongo@sha256:6608b4e7e8c3b5dd9025dfe0aca05e6076bcf971e61e6a16fe036bfca3ceab25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64

### `mongo:4.1-windowsservercore` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:eb9227b6e6b3b2bba54d1095afeea04485c269f9ceabd487d517170c981efd8b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5733740183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:201abc8e42d2ac2d86f0799f3934a5179b9fa5ee8f4c01d2941e85f4d7885213`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 03:49:08 GMT
ENV MONGO_VERSION=4.1.10
# Fri, 12 Apr 2019 03:49:10 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.10-signed.msi
# Fri, 12 Apr 2019 03:49:11 GMT
ENV MONGO_DOWNLOAD_SHA256=3f8646675fc5649d46d89737503c1fc8fac0e1dc80d2bea2c6e5da14a28ba094
# Fri, 12 Apr 2019 03:59:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 03:59:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 03:59:25 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 03:59:27 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0813092413c1b79548aca09b912554a9ab8c0f27b11e6c0f8466bfe76944ed4`  
		Last Modified: Fri, 12 Apr 2019 04:47:31 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7250209dcac8c07b3457a0087f239601d045d50acafc694fa386edd3618879d`  
		Last Modified: Fri, 12 Apr 2019 04:47:31 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:070ee383353d03b7b2906a14c4d6d46eef90b04a85e4e2c95b6067ed053232ba`  
		Last Modified: Fri, 12 Apr 2019 04:47:30 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2d9c9068a3135ffb6c7d8c661edb4cc5de746f7eadfbd5fceda427f7faab1b`  
		Last Modified: Fri, 12 Apr 2019 04:47:53 GMT  
		Size: 91.4 MB (91362047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdd88e399ecd1b3cd4e38da31f3db65029fdb247d36fc3a056fc7c880c806a2`  
		Last Modified: Fri, 12 Apr 2019 04:47:29 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65c381a4b654e301092cc2dc34f8e5b24775bae5a9ce2aa9b1c6a5542b81ab0`  
		Last Modified: Fri, 12 Apr 2019 04:47:29 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40954b9616154124050117e9957ac53544eb00d98075f9591d87cfb4ad5d7b02`  
		Last Modified: Fri, 12 Apr 2019 04:47:29 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1-windowsservercore` - windows version 10.0.17134.706; amd64

```console
$ docker pull mongo@sha256:63f6991c71028bab999055dee8b658db69b2a72c873410aab5930c14329a86c9
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2723973747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa511c9ba6a79e4a4de6bebea920e645934f774065287c1b103ca40ccf787d40`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Fri, 12 Apr 2019 03:30:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 04:18:42 GMT
ENV MONGO_VERSION=4.1.10
# Fri, 12 Apr 2019 04:18:43 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.10-signed.msi
# Fri, 12 Apr 2019 04:18:45 GMT
ENV MONGO_DOWNLOAD_SHA256=3f8646675fc5649d46d89737503c1fc8fac0e1dc80d2bea2c6e5da14a28ba094
# Fri, 12 Apr 2019 04:36:46 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 04:36:48 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 04:36:51 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 04:36:52 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f64de0803761413fe5d7971b2dc189439f3f4552f4f5b3585c3c9077da6c57cf`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0417a6a20bb5191a75e510790077e31e1748ea8789477c24f68f7f71f706c794`  
		Last Modified: Fri, 12 Apr 2019 04:50:22 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d225daec67fbf04909bcd533d3a4c64d87eb46a14d166fc7f30b08e04318f1`  
		Last Modified: Fri, 12 Apr 2019 04:50:22 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7c663fcd169191908dfc5ec9e4fd08dc6789cab333eae16c943183d0155adf`  
		Last Modified: Fri, 12 Apr 2019 04:50:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2779a38254d9f30fa2c6bde8c8476531ad9b0e83305a564f346d2751aa11d91d`  
		Last Modified: Fri, 12 Apr 2019 04:51:34 GMT  
		Size: 467.6 MB (467614723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465c18fa76d16042cd7482e2b46bb44fdfdcd9eee9c0d66aeb5ae4597749c671`  
		Last Modified: Fri, 12 Apr 2019 04:50:20 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2992484c12e9e2380f091f030ee77af2fa75516bb4a90db69eda7ce755306f59`  
		Last Modified: Fri, 12 Apr 2019 04:50:20 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5867d4bbcdcb00ce4cd0af5d9063cf4440220d9d68ea919e39d615f63567e2a7`  
		Last Modified: Fri, 12 Apr 2019 04:50:20 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.1-windowsservercore-1803`

```console
$ docker pull mongo@sha256:e4fa8d7170161ea54e7df4cfafd6db9eab4a7cf41934e261183e9af3d6e92cde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.706; amd64

### `mongo:4.1-windowsservercore-1803` - windows version 10.0.17134.706; amd64

```console
$ docker pull mongo@sha256:63f6991c71028bab999055dee8b658db69b2a72c873410aab5930c14329a86c9
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2723973747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa511c9ba6a79e4a4de6bebea920e645934f774065287c1b103ca40ccf787d40`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Fri, 12 Apr 2019 03:30:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 04:18:42 GMT
ENV MONGO_VERSION=4.1.10
# Fri, 12 Apr 2019 04:18:43 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.10-signed.msi
# Fri, 12 Apr 2019 04:18:45 GMT
ENV MONGO_DOWNLOAD_SHA256=3f8646675fc5649d46d89737503c1fc8fac0e1dc80d2bea2c6e5da14a28ba094
# Fri, 12 Apr 2019 04:36:46 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 04:36:48 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 04:36:51 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 04:36:52 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f64de0803761413fe5d7971b2dc189439f3f4552f4f5b3585c3c9077da6c57cf`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0417a6a20bb5191a75e510790077e31e1748ea8789477c24f68f7f71f706c794`  
		Last Modified: Fri, 12 Apr 2019 04:50:22 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d225daec67fbf04909bcd533d3a4c64d87eb46a14d166fc7f30b08e04318f1`  
		Last Modified: Fri, 12 Apr 2019 04:50:22 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7c663fcd169191908dfc5ec9e4fd08dc6789cab333eae16c943183d0155adf`  
		Last Modified: Fri, 12 Apr 2019 04:50:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2779a38254d9f30fa2c6bde8c8476531ad9b0e83305a564f346d2751aa11d91d`  
		Last Modified: Fri, 12 Apr 2019 04:51:34 GMT  
		Size: 467.6 MB (467614723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465c18fa76d16042cd7482e2b46bb44fdfdcd9eee9c0d66aeb5ae4597749c671`  
		Last Modified: Fri, 12 Apr 2019 04:50:20 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2992484c12e9e2380f091f030ee77af2fa75516bb4a90db69eda7ce755306f59`  
		Last Modified: Fri, 12 Apr 2019 04:50:20 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5867d4bbcdcb00ce4cd0af5d9063cf4440220d9d68ea919e39d615f63567e2a7`  
		Last Modified: Fri, 12 Apr 2019 04:50:20 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.1-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:dba82ce9c2265a9beb25dbb05357d336329c8128a7a0c8f560e99a0b744ca0e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64

### `mongo:4.1-windowsservercore-ltsc2016` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:eb9227b6e6b3b2bba54d1095afeea04485c269f9ceabd487d517170c981efd8b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5733740183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:201abc8e42d2ac2d86f0799f3934a5179b9fa5ee8f4c01d2941e85f4d7885213`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 03:49:08 GMT
ENV MONGO_VERSION=4.1.10
# Fri, 12 Apr 2019 03:49:10 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.10-signed.msi
# Fri, 12 Apr 2019 03:49:11 GMT
ENV MONGO_DOWNLOAD_SHA256=3f8646675fc5649d46d89737503c1fc8fac0e1dc80d2bea2c6e5da14a28ba094
# Fri, 12 Apr 2019 03:59:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 03:59:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 03:59:25 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 03:59:27 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0813092413c1b79548aca09b912554a9ab8c0f27b11e6c0f8466bfe76944ed4`  
		Last Modified: Fri, 12 Apr 2019 04:47:31 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7250209dcac8c07b3457a0087f239601d045d50acafc694fa386edd3618879d`  
		Last Modified: Fri, 12 Apr 2019 04:47:31 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:070ee383353d03b7b2906a14c4d6d46eef90b04a85e4e2c95b6067ed053232ba`  
		Last Modified: Fri, 12 Apr 2019 04:47:30 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2d9c9068a3135ffb6c7d8c661edb4cc5de746f7eadfbd5fceda427f7faab1b`  
		Last Modified: Fri, 12 Apr 2019 04:47:53 GMT  
		Size: 91.4 MB (91362047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdd88e399ecd1b3cd4e38da31f3db65029fdb247d36fc3a056fc7c880c806a2`  
		Last Modified: Fri, 12 Apr 2019 04:47:29 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65c381a4b654e301092cc2dc34f8e5b24775bae5a9ce2aa9b1c6a5542b81ab0`  
		Last Modified: Fri, 12 Apr 2019 04:47:29 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40954b9616154124050117e9957ac53544eb00d98075f9591d87cfb4ad5d7b02`  
		Last Modified: Fri, 12 Apr 2019 04:47:29 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4-windowsservercore`

```console
$ docker pull mongo@sha256:16bb597345afe6ad0d292e30f8b74501104c90677feb60b4b2f682677aa74ee4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64

### `mongo:4-windowsservercore` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:5c8f2b0e4695069ef6b19655c84b514b0cfd78850529637dc74a4639ae5636be
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5728770955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f44926d0744ab5ebe992ba5788f99b16b900500fc7c7774b585d4000740783`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 02:55:13 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 02:55:14 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Fri, 12 Apr 2019 02:55:15 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Fri, 12 Apr 2019 03:12:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 03:12:31 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 03:12:33 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 03:12:35 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f34280531180f27fb3076056287eff9fcad7eb2b85f0a26b1d6d3b16d5183b`  
		Last Modified: Fri, 12 Apr 2019 04:41:50 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba51fdcf7451c1f0693a739c36c9ae0d1ce90cfefeea603c17608cd18bf98a63`  
		Last Modified: Fri, 12 Apr 2019 04:41:51 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fea4ecec35323821a1bda744104a868770b1aa53d56423ca515e2537a354184`  
		Last Modified: Fri, 12 Apr 2019 04:41:48 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97978b7c09827f915ba616cc6ccc6f784d9cba223d66ad169dcb4b3ee1e5fac0`  
		Last Modified: Fri, 12 Apr 2019 04:42:11 GMT  
		Size: 86.4 MB (86392803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da844cac1df326b6c69ab2ec0314976d79d4d90b50644218d84c735d9f799b55`  
		Last Modified: Fri, 12 Apr 2019 04:41:49 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84069f19e012ff8f7be7333fe3b9ca7e689c8751dc1ed42878ffa633ba959530`  
		Last Modified: Fri, 12 Apr 2019 04:41:49 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66dbc84ce3e798e27b7a1b13a09fff027e92ffc19b622b2415384d3d34358da4`  
		Last Modified: Fri, 12 Apr 2019 04:41:48 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4-windowsservercore` - windows version 10.0.17134.706; amd64

```console
$ docker pull mongo@sha256:178ffb7efea663d45eb966b4675e1f7e82b4b4627f862520985d232ab933972e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2718997559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12dba7de7a0616131da880fadd955a33bca3094c1287e7a115f0442804986a94`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Fri, 12 Apr 2019 03:30:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 03:30:51 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 03:30:52 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Fri, 12 Apr 2019 03:30:53 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Fri, 12 Apr 2019 03:48:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 03:48:51 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 03:48:53 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 03:48:55 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f64de0803761413fe5d7971b2dc189439f3f4552f4f5b3585c3c9077da6c57cf`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d85e0ebc82804758c028060a5037a4d1a15b187cce6d0a4fbae5e0e9b3e0783`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd5a6f5a413da5b9420ed3202c16db5c26de4388e413966c80d1febd1124524`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8484ede680e2afd7d3d026345514f41f3d12dffdccfe6d9011498544c7379bf`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781f5b544d47940b71539e2a5a1ee98dd0cfa1b684a9e2d7770a20a3bda57862`  
		Last Modified: Fri, 12 Apr 2019 04:47:05 GMT  
		Size: 462.6 MB (462638526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3523ab7c959247bd3214cf87848496b500734ae39db803460382d7a4abec9603`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95527f66ae78beb784ad80c019ffe4412af3b3d586ac9b0751f2cd3f0ec7a6`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2499f5f5dae539b7de7b1cd2c841acceb947b10265198c59ca3f392c8f47fbf7`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4-windowsservercore-1803`

```console
$ docker pull mongo@sha256:bfa95ba1799d1927c79cec64a59d48488e55d3875fde98462e3682674cda7701
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.706; amd64

### `mongo:4-windowsservercore-1803` - windows version 10.0.17134.706; amd64

```console
$ docker pull mongo@sha256:178ffb7efea663d45eb966b4675e1f7e82b4b4627f862520985d232ab933972e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2718997559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12dba7de7a0616131da880fadd955a33bca3094c1287e7a115f0442804986a94`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Fri, 12 Apr 2019 03:30:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 03:30:51 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 03:30:52 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Fri, 12 Apr 2019 03:30:53 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Fri, 12 Apr 2019 03:48:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 03:48:51 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 03:48:53 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 03:48:55 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f64de0803761413fe5d7971b2dc189439f3f4552f4f5b3585c3c9077da6c57cf`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d85e0ebc82804758c028060a5037a4d1a15b187cce6d0a4fbae5e0e9b3e0783`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd5a6f5a413da5b9420ed3202c16db5c26de4388e413966c80d1febd1124524`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8484ede680e2afd7d3d026345514f41f3d12dffdccfe6d9011498544c7379bf`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781f5b544d47940b71539e2a5a1ee98dd0cfa1b684a9e2d7770a20a3bda57862`  
		Last Modified: Fri, 12 Apr 2019 04:47:05 GMT  
		Size: 462.6 MB (462638526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3523ab7c959247bd3214cf87848496b500734ae39db803460382d7a4abec9603`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95527f66ae78beb784ad80c019ffe4412af3b3d586ac9b0751f2cd3f0ec7a6`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2499f5f5dae539b7de7b1cd2c841acceb947b10265198c59ca3f392c8f47fbf7`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:df5a7141850cae3208288f89d86ec05f9f3d48857ee2d6b7d92673a6f47770c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64

### `mongo:4-windowsservercore-ltsc2016` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:5c8f2b0e4695069ef6b19655c84b514b0cfd78850529637dc74a4639ae5636be
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5728770955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f44926d0744ab5ebe992ba5788f99b16b900500fc7c7774b585d4000740783`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 02:55:13 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 02:55:14 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Fri, 12 Apr 2019 02:55:15 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Fri, 12 Apr 2019 03:12:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 03:12:31 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 03:12:33 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 03:12:35 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f34280531180f27fb3076056287eff9fcad7eb2b85f0a26b1d6d3b16d5183b`  
		Last Modified: Fri, 12 Apr 2019 04:41:50 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba51fdcf7451c1f0693a739c36c9ae0d1ce90cfefeea603c17608cd18bf98a63`  
		Last Modified: Fri, 12 Apr 2019 04:41:51 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fea4ecec35323821a1bda744104a868770b1aa53d56423ca515e2537a354184`  
		Last Modified: Fri, 12 Apr 2019 04:41:48 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97978b7c09827f915ba616cc6ccc6f784d9cba223d66ad169dcb4b3ee1e5fac0`  
		Last Modified: Fri, 12 Apr 2019 04:42:11 GMT  
		Size: 86.4 MB (86392803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da844cac1df326b6c69ab2ec0314976d79d4d90b50644218d84c735d9f799b55`  
		Last Modified: Fri, 12 Apr 2019 04:41:49 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84069f19e012ff8f7be7333fe3b9ca7e689c8751dc1ed42878ffa633ba959530`  
		Last Modified: Fri, 12 Apr 2019 04:41:49 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66dbc84ce3e798e27b7a1b13a09fff027e92ffc19b622b2415384d3d34358da4`  
		Last Modified: Fri, 12 Apr 2019 04:41:48 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4-xenial`

```console
$ docker pull mongo@sha256:0d86b4ac74a54f079c515803676903479cc33f859f2c4b3897ea7ce2d100b08e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:4-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:a1ace85762246019d3b0eabfa191b3344668daa03a7e13d384daf06f2354036c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152582372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d98005b752b4d29ecce38d9373dd11cc84b941c3a49e6d49d97a2cea022fcb34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 00:01:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 00:01:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:01:47 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 00:01:47 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 00:01:53 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 00:01:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 00:02:49 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Sat, 27 Apr 2019 00:02:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 00:02:50 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 00:02:51 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:02:51 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:02:51 GMT
ENV MONGO_MAJOR=4.0
# Sat, 27 Apr 2019 00:02:51 GMT
ENV MONGO_VERSION=4.0.9
# Sat, 27 Apr 2019 00:02:52 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 00:03:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 00:03:22 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 00:03:22 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 00:19:56 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 00:19:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 00:19:57 GMT
EXPOSE 27017
# Tue, 07 May 2019 00:19:57 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5182dfcfa207e938a4dbe8214adb73e0413c114436a1dd6f2493cd037f88230`  
		Last Modified: Sat, 27 Apr 2019 00:04:47 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb099326ee3fa95460e50a06e259887a6311d01e8f7b0d183f3808d0385f8c7`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 2.9 MB (2945567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75804f28c4b1878a1f7a1aa925190fce532c76192dd7895af9fc61716de7fb8d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 1.2 MB (1151175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765a10b214befdd889a88a1ef896e5b96df3171b4a8202022dfdf7833790e46d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7304ae07bcd10636ee668d745e7533d8647bf4adee074106561a97ef5db8adb8`  
		Last Modified: Sat, 27 Apr 2019 00:05:40 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f2d1eeb002d248bc8682cd24f9775de26c447f25432e823b16b0b10cb84b35`  
		Last Modified: Sat, 27 Apr 2019 00:05:40 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d6dcc43c97e7abacd98e13dc0e944163ea2c69d35193c17f8d6ce433e9641b`  
		Last Modified: Sat, 27 Apr 2019 00:05:59 GMT  
		Size: 104.7 MB (104723757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a359560a31cf955f46afb97c7e17c4a58613cb959fe5817a9e5125dac89ce3c`  
		Last Modified: Sat, 27 Apr 2019 00:05:40 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dbd4bfea37b2c0fcf2309329513622b2da16b874e76fbd6ec04fc90a849b887`  
		Last Modified: Tue, 07 May 2019 00:20:23 GMT  
		Size: 3.9 KB (3913 bytes)  
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
$ docker pull mongo@sha256:02c6031b363fb9a43f6633eb9db405db59c9dfdd0ce726baa4fab973939952a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64

### `mongo:latest` - linux; amd64

```console
$ docker pull mongo@sha256:a1ace85762246019d3b0eabfa191b3344668daa03a7e13d384daf06f2354036c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152582372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d98005b752b4d29ecce38d9373dd11cc84b941c3a49e6d49d97a2cea022fcb34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 00:01:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 00:01:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:01:47 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 00:01:47 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 00:01:53 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 00:01:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 00:02:49 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Sat, 27 Apr 2019 00:02:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 00:02:50 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 00:02:51 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:02:51 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:02:51 GMT
ENV MONGO_MAJOR=4.0
# Sat, 27 Apr 2019 00:02:51 GMT
ENV MONGO_VERSION=4.0.9
# Sat, 27 Apr 2019 00:02:52 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 00:03:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 00:03:22 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 00:03:22 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 00:19:56 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 00:19:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 00:19:57 GMT
EXPOSE 27017
# Tue, 07 May 2019 00:19:57 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5182dfcfa207e938a4dbe8214adb73e0413c114436a1dd6f2493cd037f88230`  
		Last Modified: Sat, 27 Apr 2019 00:04:47 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb099326ee3fa95460e50a06e259887a6311d01e8f7b0d183f3808d0385f8c7`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 2.9 MB (2945567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75804f28c4b1878a1f7a1aa925190fce532c76192dd7895af9fc61716de7fb8d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 1.2 MB (1151175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765a10b214befdd889a88a1ef896e5b96df3171b4a8202022dfdf7833790e46d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7304ae07bcd10636ee668d745e7533d8647bf4adee074106561a97ef5db8adb8`  
		Last Modified: Sat, 27 Apr 2019 00:05:40 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f2d1eeb002d248bc8682cd24f9775de26c447f25432e823b16b0b10cb84b35`  
		Last Modified: Sat, 27 Apr 2019 00:05:40 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d6dcc43c97e7abacd98e13dc0e944163ea2c69d35193c17f8d6ce433e9641b`  
		Last Modified: Sat, 27 Apr 2019 00:05:59 GMT  
		Size: 104.7 MB (104723757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a359560a31cf955f46afb97c7e17c4a58613cb959fe5817a9e5125dac89ce3c`  
		Last Modified: Sat, 27 Apr 2019 00:05:40 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dbd4bfea37b2c0fcf2309329513622b2da16b874e76fbd6ec04fc90a849b887`  
		Last Modified: Tue, 07 May 2019 00:20:23 GMT  
		Size: 3.9 KB (3913 bytes)  
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

### `mongo:latest` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:5c8f2b0e4695069ef6b19655c84b514b0cfd78850529637dc74a4639ae5636be
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5728770955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f44926d0744ab5ebe992ba5788f99b16b900500fc7c7774b585d4000740783`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 02:55:13 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 02:55:14 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Fri, 12 Apr 2019 02:55:15 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Fri, 12 Apr 2019 03:12:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 03:12:31 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 03:12:33 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 03:12:35 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f34280531180f27fb3076056287eff9fcad7eb2b85f0a26b1d6d3b16d5183b`  
		Last Modified: Fri, 12 Apr 2019 04:41:50 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba51fdcf7451c1f0693a739c36c9ae0d1ce90cfefeea603c17608cd18bf98a63`  
		Last Modified: Fri, 12 Apr 2019 04:41:51 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fea4ecec35323821a1bda744104a868770b1aa53d56423ca515e2537a354184`  
		Last Modified: Fri, 12 Apr 2019 04:41:48 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97978b7c09827f915ba616cc6ccc6f784d9cba223d66ad169dcb4b3ee1e5fac0`  
		Last Modified: Fri, 12 Apr 2019 04:42:11 GMT  
		Size: 86.4 MB (86392803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da844cac1df326b6c69ab2ec0314976d79d4d90b50644218d84c735d9f799b55`  
		Last Modified: Fri, 12 Apr 2019 04:41:49 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84069f19e012ff8f7be7333fe3b9ca7e689c8751dc1ed42878ffa633ba959530`  
		Last Modified: Fri, 12 Apr 2019 04:41:49 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66dbc84ce3e798e27b7a1b13a09fff027e92ffc19b622b2415384d3d34358da4`  
		Last Modified: Fri, 12 Apr 2019 04:41:48 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - windows version 10.0.17134.706; amd64

```console
$ docker pull mongo@sha256:178ffb7efea663d45eb966b4675e1f7e82b4b4627f862520985d232ab933972e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2718997559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12dba7de7a0616131da880fadd955a33bca3094c1287e7a115f0442804986a94`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Fri, 12 Apr 2019 03:30:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 03:30:51 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 03:30:52 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Fri, 12 Apr 2019 03:30:53 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Fri, 12 Apr 2019 03:48:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 03:48:51 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 03:48:53 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 03:48:55 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f64de0803761413fe5d7971b2dc189439f3f4552f4f5b3585c3c9077da6c57cf`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d85e0ebc82804758c028060a5037a4d1a15b187cce6d0a4fbae5e0e9b3e0783`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd5a6f5a413da5b9420ed3202c16db5c26de4388e413966c80d1febd1124524`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8484ede680e2afd7d3d026345514f41f3d12dffdccfe6d9011498544c7379bf`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781f5b544d47940b71539e2a5a1ee98dd0cfa1b684a9e2d7770a20a3bda57862`  
		Last Modified: Fri, 12 Apr 2019 04:47:05 GMT  
		Size: 462.6 MB (462638526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3523ab7c959247bd3214cf87848496b500734ae39db803460382d7a4abec9603`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95527f66ae78beb784ad80c019ffe4412af3b3d586ac9b0751f2cd3f0ec7a6`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2499f5f5dae539b7de7b1cd2c841acceb947b10265198c59ca3f392c8f47fbf7`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable`

```console
$ docker pull mongo@sha256:ebd02b11442ee6dc3da85bd4cee7d9e6ffe7d994b6c3fd966482f35a11af6138
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:unstable` - linux; amd64

```console
$ docker pull mongo@sha256:6afa4247b5c5199da4fd6ca05def0d9367c0d98522dbe6bc77744ea6082c0da5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.7 MB (150702537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f33415f143ff45dd7648b57e19da5a279ff4cc1454a681edb9e4e01f008ab0e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 26 Apr 2019 22:21:02 GMT
ADD file:7ce84f13f11609a50ece7823578159412e2299c812746d1d1f1ed5db0728bd37 in / 
# Fri, 26 Apr 2019 22:21:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:21:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:21:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:21:05 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 00:03:32 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 00:03:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:03:41 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 00:03:41 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 00:04:02 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 00:04:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 00:04:03 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Sat, 27 Apr 2019 00:04:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 00:04:04 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Sat, 27 Apr 2019 00:04:04 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:04:05 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:04:05 GMT
ENV MONGO_MAJOR=4.1
# Thu, 09 May 2019 23:23:52 GMT
ENV MONGO_VERSION=4.1.11
# Thu, 09 May 2019 23:23:52 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 09 May 2019 23:24:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 09 May 2019 23:24:14 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 09 May 2019 23:24:14 GMT
VOLUME [/data/db /data/configdb]
# Thu, 09 May 2019 23:24:14 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Thu, 09 May 2019 23:24:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 23:24:14 GMT
EXPOSE 27017
# Thu, 09 May 2019 23:24:14 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:f476d66f540886e2bb4d9c8cc8c0f8915bca7d387e536957796ea6c2f8e7dfff`  
		Last Modified: Thu, 25 Apr 2019 00:24:51 GMT  
		Size: 37.2 MB (37206102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8882c27f669ef315fc231f272965cd5ee8507c0f376855d6f9c012aae0224797`  
		Last Modified: Fri, 26 Apr 2019 22:22:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9af21273955749bb8250c7a883fcce21647b54f5a685d237bc6b920a2ebad1a`  
		Last Modified: Fri, 26 Apr 2019 22:22:42 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5029279ec1223b70f2cbb2682ab360e1837a2ea59a8d7ff64b38e9eab5fb8c0`  
		Last Modified: Fri, 26 Apr 2019 22:22:41 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b628ec1f21839a13da0453b7365ccdf364e05274f45c5686bf2381e73d73713`  
		Last Modified: Sat, 27 Apr 2019 00:06:10 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9991ac3ac9ee4eb5ae6c7335908b3269a0a93127d198b686b7d65847840ee120`  
		Last Modified: Sat, 27 Apr 2019 00:06:10 GMT  
		Size: 2.7 MB (2733113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e923c0d9faf521d63d33ed35999ab1b352fa6a1b5a0d41c69cfd861e19607d8`  
		Last Modified: Sat, 27 Apr 2019 00:06:10 GMT  
		Size: 5.8 MB (5759113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0e810710b33e34e7226f623d219134d16caa243944981be5e51065bc3c06ac`  
		Last Modified: Sat, 27 Apr 2019 00:06:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa04b0e6a0ad9ba391df609f35c5f8bbd1548731cb76e132876c0ac771e907e`  
		Last Modified: Sat, 27 Apr 2019 00:06:08 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4401873e1ad75dfacc7a1e9faa43ddbe11bf67c242a8ad813a6c2f5a656dca`  
		Last Modified: Thu, 09 May 2019 23:24:30 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba10c990549b795a0e562380461b3cfa20fe7b81b75f3e5a023c088c928b728`  
		Last Modified: Thu, 09 May 2019 23:24:46 GMT  
		Size: 105.0 MB (104994939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8755bbb5810f48c23900e520d84782a690750c2a2eb17c4d9a0409768ed8fb8b`  
		Last Modified: Thu, 09 May 2019 23:24:30 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028ed8f4f899e856921ef09e67dcf3251d7e5c5336f50f2cf683a1dd111574de`  
		Last Modified: Thu, 09 May 2019 23:24:30 GMT  
		Size: 3.9 KB (3917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-bionic`

```console
$ docker pull mongo@sha256:ebd02b11442ee6dc3da85bd4cee7d9e6ffe7d994b6c3fd966482f35a11af6138
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:unstable-bionic` - linux; amd64

```console
$ docker pull mongo@sha256:6afa4247b5c5199da4fd6ca05def0d9367c0d98522dbe6bc77744ea6082c0da5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.7 MB (150702537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f33415f143ff45dd7648b57e19da5a279ff4cc1454a681edb9e4e01f008ab0e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 26 Apr 2019 22:21:02 GMT
ADD file:7ce84f13f11609a50ece7823578159412e2299c812746d1d1f1ed5db0728bd37 in / 
# Fri, 26 Apr 2019 22:21:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:21:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:21:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:21:05 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 00:03:32 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 00:03:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:03:41 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 00:03:41 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 00:04:02 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 00:04:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 00:04:03 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Sat, 27 Apr 2019 00:04:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 00:04:04 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Sat, 27 Apr 2019 00:04:04 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:04:05 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:04:05 GMT
ENV MONGO_MAJOR=4.1
# Thu, 09 May 2019 23:23:52 GMT
ENV MONGO_VERSION=4.1.11
# Thu, 09 May 2019 23:23:52 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 09 May 2019 23:24:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 09 May 2019 23:24:14 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 09 May 2019 23:24:14 GMT
VOLUME [/data/db /data/configdb]
# Thu, 09 May 2019 23:24:14 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Thu, 09 May 2019 23:24:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 23:24:14 GMT
EXPOSE 27017
# Thu, 09 May 2019 23:24:14 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:f476d66f540886e2bb4d9c8cc8c0f8915bca7d387e536957796ea6c2f8e7dfff`  
		Last Modified: Thu, 25 Apr 2019 00:24:51 GMT  
		Size: 37.2 MB (37206102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8882c27f669ef315fc231f272965cd5ee8507c0f376855d6f9c012aae0224797`  
		Last Modified: Fri, 26 Apr 2019 22:22:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9af21273955749bb8250c7a883fcce21647b54f5a685d237bc6b920a2ebad1a`  
		Last Modified: Fri, 26 Apr 2019 22:22:42 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5029279ec1223b70f2cbb2682ab360e1837a2ea59a8d7ff64b38e9eab5fb8c0`  
		Last Modified: Fri, 26 Apr 2019 22:22:41 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b628ec1f21839a13da0453b7365ccdf364e05274f45c5686bf2381e73d73713`  
		Last Modified: Sat, 27 Apr 2019 00:06:10 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9991ac3ac9ee4eb5ae6c7335908b3269a0a93127d198b686b7d65847840ee120`  
		Last Modified: Sat, 27 Apr 2019 00:06:10 GMT  
		Size: 2.7 MB (2733113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e923c0d9faf521d63d33ed35999ab1b352fa6a1b5a0d41c69cfd861e19607d8`  
		Last Modified: Sat, 27 Apr 2019 00:06:10 GMT  
		Size: 5.8 MB (5759113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0e810710b33e34e7226f623d219134d16caa243944981be5e51065bc3c06ac`  
		Last Modified: Sat, 27 Apr 2019 00:06:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa04b0e6a0ad9ba391df609f35c5f8bbd1548731cb76e132876c0ac771e907e`  
		Last Modified: Sat, 27 Apr 2019 00:06:08 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4401873e1ad75dfacc7a1e9faa43ddbe11bf67c242a8ad813a6c2f5a656dca`  
		Last Modified: Thu, 09 May 2019 23:24:30 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba10c990549b795a0e562380461b3cfa20fe7b81b75f3e5a023c088c928b728`  
		Last Modified: Thu, 09 May 2019 23:24:46 GMT  
		Size: 105.0 MB (104994939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8755bbb5810f48c23900e520d84782a690750c2a2eb17c4d9a0409768ed8fb8b`  
		Last Modified: Thu, 09 May 2019 23:24:30 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028ed8f4f899e856921ef09e67dcf3251d7e5c5336f50f2cf683a1dd111574de`  
		Last Modified: Thu, 09 May 2019 23:24:30 GMT  
		Size: 3.9 KB (3917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:6608b4e7e8c3b5dd9025dfe0aca05e6076bcf971e61e6a16fe036bfca3ceab25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64

### `mongo:unstable-windowsservercore` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:eb9227b6e6b3b2bba54d1095afeea04485c269f9ceabd487d517170c981efd8b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5733740183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:201abc8e42d2ac2d86f0799f3934a5179b9fa5ee8f4c01d2941e85f4d7885213`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 03:49:08 GMT
ENV MONGO_VERSION=4.1.10
# Fri, 12 Apr 2019 03:49:10 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.10-signed.msi
# Fri, 12 Apr 2019 03:49:11 GMT
ENV MONGO_DOWNLOAD_SHA256=3f8646675fc5649d46d89737503c1fc8fac0e1dc80d2bea2c6e5da14a28ba094
# Fri, 12 Apr 2019 03:59:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 03:59:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 03:59:25 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 03:59:27 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0813092413c1b79548aca09b912554a9ab8c0f27b11e6c0f8466bfe76944ed4`  
		Last Modified: Fri, 12 Apr 2019 04:47:31 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7250209dcac8c07b3457a0087f239601d045d50acafc694fa386edd3618879d`  
		Last Modified: Fri, 12 Apr 2019 04:47:31 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:070ee383353d03b7b2906a14c4d6d46eef90b04a85e4e2c95b6067ed053232ba`  
		Last Modified: Fri, 12 Apr 2019 04:47:30 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2d9c9068a3135ffb6c7d8c661edb4cc5de746f7eadfbd5fceda427f7faab1b`  
		Last Modified: Fri, 12 Apr 2019 04:47:53 GMT  
		Size: 91.4 MB (91362047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdd88e399ecd1b3cd4e38da31f3db65029fdb247d36fc3a056fc7c880c806a2`  
		Last Modified: Fri, 12 Apr 2019 04:47:29 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65c381a4b654e301092cc2dc34f8e5b24775bae5a9ce2aa9b1c6a5542b81ab0`  
		Last Modified: Fri, 12 Apr 2019 04:47:29 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40954b9616154124050117e9957ac53544eb00d98075f9591d87cfb4ad5d7b02`  
		Last Modified: Fri, 12 Apr 2019 04:47:29 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable-windowsservercore` - windows version 10.0.17134.706; amd64

```console
$ docker pull mongo@sha256:63f6991c71028bab999055dee8b658db69b2a72c873410aab5930c14329a86c9
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2723973747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa511c9ba6a79e4a4de6bebea920e645934f774065287c1b103ca40ccf787d40`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Fri, 12 Apr 2019 03:30:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 04:18:42 GMT
ENV MONGO_VERSION=4.1.10
# Fri, 12 Apr 2019 04:18:43 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.10-signed.msi
# Fri, 12 Apr 2019 04:18:45 GMT
ENV MONGO_DOWNLOAD_SHA256=3f8646675fc5649d46d89737503c1fc8fac0e1dc80d2bea2c6e5da14a28ba094
# Fri, 12 Apr 2019 04:36:46 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 04:36:48 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 04:36:51 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 04:36:52 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f64de0803761413fe5d7971b2dc189439f3f4552f4f5b3585c3c9077da6c57cf`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0417a6a20bb5191a75e510790077e31e1748ea8789477c24f68f7f71f706c794`  
		Last Modified: Fri, 12 Apr 2019 04:50:22 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d225daec67fbf04909bcd533d3a4c64d87eb46a14d166fc7f30b08e04318f1`  
		Last Modified: Fri, 12 Apr 2019 04:50:22 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7c663fcd169191908dfc5ec9e4fd08dc6789cab333eae16c943183d0155adf`  
		Last Modified: Fri, 12 Apr 2019 04:50:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2779a38254d9f30fa2c6bde8c8476531ad9b0e83305a564f346d2751aa11d91d`  
		Last Modified: Fri, 12 Apr 2019 04:51:34 GMT  
		Size: 467.6 MB (467614723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465c18fa76d16042cd7482e2b46bb44fdfdcd9eee9c0d66aeb5ae4597749c671`  
		Last Modified: Fri, 12 Apr 2019 04:50:20 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2992484c12e9e2380f091f030ee77af2fa75516bb4a90db69eda7ce755306f59`  
		Last Modified: Fri, 12 Apr 2019 04:50:20 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5867d4bbcdcb00ce4cd0af5d9063cf4440220d9d68ea919e39d615f63567e2a7`  
		Last Modified: Fri, 12 Apr 2019 04:50:20 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-windowsservercore-1803`

```console
$ docker pull mongo@sha256:e4fa8d7170161ea54e7df4cfafd6db9eab4a7cf41934e261183e9af3d6e92cde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.706; amd64

### `mongo:unstable-windowsservercore-1803` - windows version 10.0.17134.706; amd64

```console
$ docker pull mongo@sha256:63f6991c71028bab999055dee8b658db69b2a72c873410aab5930c14329a86c9
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2723973747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa511c9ba6a79e4a4de6bebea920e645934f774065287c1b103ca40ccf787d40`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Fri, 12 Apr 2019 03:30:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 04:18:42 GMT
ENV MONGO_VERSION=4.1.10
# Fri, 12 Apr 2019 04:18:43 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.10-signed.msi
# Fri, 12 Apr 2019 04:18:45 GMT
ENV MONGO_DOWNLOAD_SHA256=3f8646675fc5649d46d89737503c1fc8fac0e1dc80d2bea2c6e5da14a28ba094
# Fri, 12 Apr 2019 04:36:46 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 04:36:48 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 04:36:51 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 04:36:52 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f64de0803761413fe5d7971b2dc189439f3f4552f4f5b3585c3c9077da6c57cf`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0417a6a20bb5191a75e510790077e31e1748ea8789477c24f68f7f71f706c794`  
		Last Modified: Fri, 12 Apr 2019 04:50:22 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d225daec67fbf04909bcd533d3a4c64d87eb46a14d166fc7f30b08e04318f1`  
		Last Modified: Fri, 12 Apr 2019 04:50:22 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7c663fcd169191908dfc5ec9e4fd08dc6789cab333eae16c943183d0155adf`  
		Last Modified: Fri, 12 Apr 2019 04:50:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2779a38254d9f30fa2c6bde8c8476531ad9b0e83305a564f346d2751aa11d91d`  
		Last Modified: Fri, 12 Apr 2019 04:51:34 GMT  
		Size: 467.6 MB (467614723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465c18fa76d16042cd7482e2b46bb44fdfdcd9eee9c0d66aeb5ae4597749c671`  
		Last Modified: Fri, 12 Apr 2019 04:50:20 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2992484c12e9e2380f091f030ee77af2fa75516bb4a90db69eda7ce755306f59`  
		Last Modified: Fri, 12 Apr 2019 04:50:20 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5867d4bbcdcb00ce4cd0af5d9063cf4440220d9d68ea919e39d615f63567e2a7`  
		Last Modified: Fri, 12 Apr 2019 04:50:20 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:dba82ce9c2265a9beb25dbb05357d336329c8128a7a0c8f560e99a0b744ca0e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64

### `mongo:unstable-windowsservercore-ltsc2016` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:eb9227b6e6b3b2bba54d1095afeea04485c269f9ceabd487d517170c981efd8b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5733740183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:201abc8e42d2ac2d86f0799f3934a5179b9fa5ee8f4c01d2941e85f4d7885213`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 03:49:08 GMT
ENV MONGO_VERSION=4.1.10
# Fri, 12 Apr 2019 03:49:10 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.10-signed.msi
# Fri, 12 Apr 2019 03:49:11 GMT
ENV MONGO_DOWNLOAD_SHA256=3f8646675fc5649d46d89737503c1fc8fac0e1dc80d2bea2c6e5da14a28ba094
# Fri, 12 Apr 2019 03:59:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 03:59:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 03:59:25 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 03:59:27 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0813092413c1b79548aca09b912554a9ab8c0f27b11e6c0f8466bfe76944ed4`  
		Last Modified: Fri, 12 Apr 2019 04:47:31 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7250209dcac8c07b3457a0087f239601d045d50acafc694fa386edd3618879d`  
		Last Modified: Fri, 12 Apr 2019 04:47:31 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:070ee383353d03b7b2906a14c4d6d46eef90b04a85e4e2c95b6067ed053232ba`  
		Last Modified: Fri, 12 Apr 2019 04:47:30 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2d9c9068a3135ffb6c7d8c661edb4cc5de746f7eadfbd5fceda427f7faab1b`  
		Last Modified: Fri, 12 Apr 2019 04:47:53 GMT  
		Size: 91.4 MB (91362047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdd88e399ecd1b3cd4e38da31f3db65029fdb247d36fc3a056fc7c880c806a2`  
		Last Modified: Fri, 12 Apr 2019 04:47:29 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65c381a4b654e301092cc2dc34f8e5b24775bae5a9ce2aa9b1c6a5542b81ab0`  
		Last Modified: Fri, 12 Apr 2019 04:47:29 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40954b9616154124050117e9957ac53544eb00d98075f9591d87cfb4ad5d7b02`  
		Last Modified: Fri, 12 Apr 2019 04:47:29 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:16bb597345afe6ad0d292e30f8b74501104c90677feb60b4b2f682677aa74ee4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64

### `mongo:windowsservercore` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:5c8f2b0e4695069ef6b19655c84b514b0cfd78850529637dc74a4639ae5636be
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5728770955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f44926d0744ab5ebe992ba5788f99b16b900500fc7c7774b585d4000740783`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 02:55:13 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 02:55:14 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Fri, 12 Apr 2019 02:55:15 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Fri, 12 Apr 2019 03:12:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 03:12:31 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 03:12:33 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 03:12:35 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f34280531180f27fb3076056287eff9fcad7eb2b85f0a26b1d6d3b16d5183b`  
		Last Modified: Fri, 12 Apr 2019 04:41:50 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba51fdcf7451c1f0693a739c36c9ae0d1ce90cfefeea603c17608cd18bf98a63`  
		Last Modified: Fri, 12 Apr 2019 04:41:51 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fea4ecec35323821a1bda744104a868770b1aa53d56423ca515e2537a354184`  
		Last Modified: Fri, 12 Apr 2019 04:41:48 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97978b7c09827f915ba616cc6ccc6f784d9cba223d66ad169dcb4b3ee1e5fac0`  
		Last Modified: Fri, 12 Apr 2019 04:42:11 GMT  
		Size: 86.4 MB (86392803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da844cac1df326b6c69ab2ec0314976d79d4d90b50644218d84c735d9f799b55`  
		Last Modified: Fri, 12 Apr 2019 04:41:49 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84069f19e012ff8f7be7333fe3b9ca7e689c8751dc1ed42878ffa633ba959530`  
		Last Modified: Fri, 12 Apr 2019 04:41:49 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66dbc84ce3e798e27b7a1b13a09fff027e92ffc19b622b2415384d3d34358da4`  
		Last Modified: Fri, 12 Apr 2019 04:41:48 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.17134.706; amd64

```console
$ docker pull mongo@sha256:178ffb7efea663d45eb966b4675e1f7e82b4b4627f862520985d232ab933972e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2718997559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12dba7de7a0616131da880fadd955a33bca3094c1287e7a115f0442804986a94`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Fri, 12 Apr 2019 03:30:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 03:30:51 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 03:30:52 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Fri, 12 Apr 2019 03:30:53 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Fri, 12 Apr 2019 03:48:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 03:48:51 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 03:48:53 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 03:48:55 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f64de0803761413fe5d7971b2dc189439f3f4552f4f5b3585c3c9077da6c57cf`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d85e0ebc82804758c028060a5037a4d1a15b187cce6d0a4fbae5e0e9b3e0783`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd5a6f5a413da5b9420ed3202c16db5c26de4388e413966c80d1febd1124524`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8484ede680e2afd7d3d026345514f41f3d12dffdccfe6d9011498544c7379bf`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781f5b544d47940b71539e2a5a1ee98dd0cfa1b684a9e2d7770a20a3bda57862`  
		Last Modified: Fri, 12 Apr 2019 04:47:05 GMT  
		Size: 462.6 MB (462638526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3523ab7c959247bd3214cf87848496b500734ae39db803460382d7a4abec9603`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95527f66ae78beb784ad80c019ffe4412af3b3d586ac9b0751f2cd3f0ec7a6`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2499f5f5dae539b7de7b1cd2c841acceb947b10265198c59ca3f392c8f47fbf7`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore-1803`

```console
$ docker pull mongo@sha256:bfa95ba1799d1927c79cec64a59d48488e55d3875fde98462e3682674cda7701
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.706; amd64

### `mongo:windowsservercore-1803` - windows version 10.0.17134.706; amd64

```console
$ docker pull mongo@sha256:178ffb7efea663d45eb966b4675e1f7e82b4b4627f862520985d232ab933972e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2718997559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12dba7de7a0616131da880fadd955a33bca3094c1287e7a115f0442804986a94`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Fri, 12 Apr 2019 03:30:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 03:30:51 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 03:30:52 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Fri, 12 Apr 2019 03:30:53 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Fri, 12 Apr 2019 03:48:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 03:48:51 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 03:48:53 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 03:48:55 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f64de0803761413fe5d7971b2dc189439f3f4552f4f5b3585c3c9077da6c57cf`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d85e0ebc82804758c028060a5037a4d1a15b187cce6d0a4fbae5e0e9b3e0783`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd5a6f5a413da5b9420ed3202c16db5c26de4388e413966c80d1febd1124524`  
		Last Modified: Fri, 12 Apr 2019 04:45:11 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8484ede680e2afd7d3d026345514f41f3d12dffdccfe6d9011498544c7379bf`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781f5b544d47940b71539e2a5a1ee98dd0cfa1b684a9e2d7770a20a3bda57862`  
		Last Modified: Fri, 12 Apr 2019 04:47:05 GMT  
		Size: 462.6 MB (462638526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3523ab7c959247bd3214cf87848496b500734ae39db803460382d7a4abec9603`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95527f66ae78beb784ad80c019ffe4412af3b3d586ac9b0751f2cd3f0ec7a6`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2499f5f5dae539b7de7b1cd2c841acceb947b10265198c59ca3f392c8f47fbf7`  
		Last Modified: Fri, 12 Apr 2019 04:45:09 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:df5a7141850cae3208288f89d86ec05f9f3d48857ee2d6b7d92673a6f47770c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64

### `mongo:windowsservercore-ltsc2016` - windows version 10.0.14393.2906; amd64

```console
$ docker pull mongo@sha256:5c8f2b0e4695069ef6b19655c84b514b0cfd78850529637dc74a4639ae5636be
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5728770955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f44926d0744ab5ebe992ba5788f99b16b900500fc7c7774b585d4000740783`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Fri, 12 Apr 2019 02:03:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Apr 2019 02:55:13 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 02:55:14 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9-signed.msi
# Fri, 12 Apr 2019 02:55:15 GMT
ENV MONGO_DOWNLOAD_SHA256=35909b5204abb4fbf68796b9c99747b29831c0d38ab21e1c3654845a8eb28090
# Fri, 12 Apr 2019 03:12:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 03:12:31 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Apr 2019 03:12:33 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 03:12:35 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:761b644ef5c43d859a5bc29a456beb717e768803dc0ad60b0fccf835daaa0351`  
		Last Modified: Fri, 12 Apr 2019 04:37:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f34280531180f27fb3076056287eff9fcad7eb2b85f0a26b1d6d3b16d5183b`  
		Last Modified: Fri, 12 Apr 2019 04:41:50 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba51fdcf7451c1f0693a739c36c9ae0d1ce90cfefeea603c17608cd18bf98a63`  
		Last Modified: Fri, 12 Apr 2019 04:41:51 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fea4ecec35323821a1bda744104a868770b1aa53d56423ca515e2537a354184`  
		Last Modified: Fri, 12 Apr 2019 04:41:48 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97978b7c09827f915ba616cc6ccc6f784d9cba223d66ad169dcb4b3ee1e5fac0`  
		Last Modified: Fri, 12 Apr 2019 04:42:11 GMT  
		Size: 86.4 MB (86392803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da844cac1df326b6c69ab2ec0314976d79d4d90b50644218d84c735d9f799b55`  
		Last Modified: Fri, 12 Apr 2019 04:41:49 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84069f19e012ff8f7be7333fe3b9ca7e689c8751dc1ed42878ffa633ba959530`  
		Last Modified: Fri, 12 Apr 2019 04:41:49 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66dbc84ce3e798e27b7a1b13a09fff027e92ffc19b622b2415384d3d34358da4`  
		Last Modified: Fri, 12 Apr 2019 04:41:48 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:xenial`

```console
$ docker pull mongo@sha256:0d86b4ac74a54f079c515803676903479cc33f859f2c4b3897ea7ce2d100b08e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:xenial` - linux; amd64

```console
$ docker pull mongo@sha256:a1ace85762246019d3b0eabfa191b3344668daa03a7e13d384daf06f2354036c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152582372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d98005b752b4d29ecce38d9373dd11cc84b941c3a49e6d49d97a2cea022fcb34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 00:01:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 27 Apr 2019 00:01:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:01:47 GMT
ENV GOSU_VERSION=1.11
# Sat, 27 Apr 2019 00:01:47 GMT
ENV JSYAML_VERSION=3.13.0
# Sat, 27 Apr 2019 00:01:53 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 27 Apr 2019 00:01:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 27 Apr 2019 00:02:49 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Sat, 27 Apr 2019 00:02:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 27 Apr 2019 00:02:50 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 27 Apr 2019 00:02:51 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:02:51 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 27 Apr 2019 00:02:51 GMT
ENV MONGO_MAJOR=4.0
# Sat, 27 Apr 2019 00:02:51 GMT
ENV MONGO_VERSION=4.0.9
# Sat, 27 Apr 2019 00:02:52 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 27 Apr 2019 00:03:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 27 Apr 2019 00:03:22 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 27 Apr 2019 00:03:22 GMT
VOLUME [/data/db /data/configdb]
# Tue, 07 May 2019 00:19:56 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 07 May 2019 00:19:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 00:19:57 GMT
EXPOSE 27017
# Tue, 07 May 2019 00:19:57 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5182dfcfa207e938a4dbe8214adb73e0413c114436a1dd6f2493cd037f88230`  
		Last Modified: Sat, 27 Apr 2019 00:04:47 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb099326ee3fa95460e50a06e259887a6311d01e8f7b0d183f3808d0385f8c7`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 2.9 MB (2945567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75804f28c4b1878a1f7a1aa925190fce532c76192dd7895af9fc61716de7fb8d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 1.2 MB (1151175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765a10b214befdd889a88a1ef896e5b96df3171b4a8202022dfdf7833790e46d`  
		Last Modified: Sat, 27 Apr 2019 00:04:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7304ae07bcd10636ee668d745e7533d8647bf4adee074106561a97ef5db8adb8`  
		Last Modified: Sat, 27 Apr 2019 00:05:40 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f2d1eeb002d248bc8682cd24f9775de26c447f25432e823b16b0b10cb84b35`  
		Last Modified: Sat, 27 Apr 2019 00:05:40 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d6dcc43c97e7abacd98e13dc0e944163ea2c69d35193c17f8d6ce433e9641b`  
		Last Modified: Sat, 27 Apr 2019 00:05:59 GMT  
		Size: 104.7 MB (104723757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a359560a31cf955f46afb97c7e17c4a58613cb959fe5817a9e5125dac89ce3c`  
		Last Modified: Sat, 27 Apr 2019 00:05:40 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dbd4bfea37b2c0fcf2309329513622b2da16b874e76fbd6ec04fc90a849b887`  
		Last Modified: Tue, 07 May 2019 00:20:23 GMT  
		Size: 3.9 KB (3913 bytes)  
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
