## `mongo:latest`

```console
$ docker pull mongo@sha256:1b29fbe615ce2f0a91e8973a1aa6fca59b4aaa21bc5d6c8311e6a55cc6ff6b18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2665; amd64
	-	windows version 10.0.16299.846; amd64
	-	windows version 10.0.17134.469; amd64

### `mongo:latest` - linux; amd64

```console
$ docker pull mongo@sha256:ac7a3af793a667004b09bd280d88a2a0ed107a6b1725e556bb358420f0952ad8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134187369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525bd2016729a161cffa87b2ab606afabc5d95e744077259613d77b22533a3de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:28:19 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 19 Nov 2018 22:28:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:28:29 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Nov 2018 22:28:29 GMT
ENV JSYAML_VERSION=3.10.0
# Mon, 19 Nov 2018 22:28:34 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Mon, 19 Nov 2018 22:28:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Nov 2018 22:28:35 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Mon, 19 Nov 2018 22:28:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 19 Nov 2018 22:28:36 GMT
ARG MONGO_PACKAGE=mongodb-org
# Mon, 19 Nov 2018 22:28:37 GMT
ARG MONGO_REPO=repo.mongodb.org
# Mon, 19 Nov 2018 22:28:37 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Mon, 19 Nov 2018 22:28:37 GMT
ENV MONGO_MAJOR=4.0
# Mon, 19 Nov 2018 22:28:37 GMT
ENV MONGO_VERSION=4.0.4
# Mon, 19 Nov 2018 22:28:38 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 19 Nov 2018 22:28:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 19 Nov 2018 22:28:56 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 19 Nov 2018 22:28:57 GMT
VOLUME [/data/db /data/configdb]
# Mon, 19 Nov 2018 22:28:57 GMT
COPY file:60abb511d646e0b8b4668acde625346e0976c8ff820e8efa7df9fdb3ed11cab3 in /usr/local/bin/ 
# Mon, 19 Nov 2018 22:28:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 22:28:57 GMT
EXPOSE 27017/tcp
# Mon, 19 Nov 2018 22:28:58 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45aa1a4d5e06e8921b5b149839b27c3e2f0f04e6378da57809b6148bfe036437`  
		Last Modified: Mon, 19 Nov 2018 22:30:24 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e29f1842428489428770e4594eb16dd36fa9eba02fdc3d9b7d8cdcd1253ea3`  
		Last Modified: Mon, 19 Nov 2018 22:30:25 GMT  
		Size: 2.9 MB (2945515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad78e42605afb4699e63b77461816a838f1ac237b9b3d44b248e011839dd006a`  
		Last Modified: Mon, 19 Nov 2018 22:30:24 GMT  
		Size: 751.4 KB (751378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4ac0b92a654df5265ebd4601c9067fcbb21dc079ea3c1baa3a418e4b134010`  
		Last Modified: Mon, 19 Nov 2018 22:30:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55880275f9fb710800bb96f15fb1e35ca41e37607a7342d46d62b1b2737f8a18`  
		Last Modified: Mon, 19 Nov 2018 22:30:23 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0396c9dcef0ed8af69e139542262970eaf7f22caabe1cbd4130a24915e7222`  
		Last Modified: Mon, 19 Nov 2018 22:30:23 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bf9db38c030cbf0ac864b77c1b16da25a8c2042ac8a6deac959132e7b9f937`  
		Last Modified: Mon, 19 Nov 2018 22:30:40 GMT  
		Size: 87.1 MB (87069018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e954d14ae9bc26c9043446c51a6ac9fd12fbfb2ab4698a5fb514df4e8d57464`  
		Last Modified: Mon, 19 Nov 2018 22:30:23 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd245aa9c4264d7f394d59640919b27eee9404ff3ec80a996401ec0f5c8bb285`  
		Last Modified: Mon, 19 Nov 2018 22:30:23 GMT  
		Size: 3.7 KB (3727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:1af4c7099a6fe48d95b6cf7601a35d34400570d8fd185b76aa45faed91b29480
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.2 MB (154162766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cb371894f655499383b251a113f33eb7153075e3bf5cf3258dc4f06cab33ab8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 11:18:07 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 20 Nov 2018 11:19:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:19:14 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 11:19:17 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 20 Nov 2018 11:19:48 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 20 Nov 2018 11:19:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 11:19:54 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Tue, 20 Nov 2018 11:19:56 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 11:19:57 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 20 Nov 2018 11:19:58 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 20 Nov 2018 11:19:59 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 20 Nov 2018 11:20:00 GMT
ENV MONGO_MAJOR=4.0
# Tue, 20 Nov 2018 11:20:01 GMT
ENV MONGO_VERSION=4.0.4
# Tue, 20 Nov 2018 11:20:05 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 20 Nov 2018 11:21:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 20 Nov 2018 11:21:34 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 20 Nov 2018 11:21:35 GMT
VOLUME [/data/db /data/configdb]
# Tue, 20 Nov 2018 11:21:37 GMT
COPY file:60abb511d646e0b8b4668acde625346e0976c8ff820e8efa7df9fdb3ed11cab3 in /usr/local/bin/ 
# Tue, 20 Nov 2018 11:21:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 11:21:40 GMT
EXPOSE 27017/tcp
# Tue, 20 Nov 2018 11:21:41 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a2f002506d008811f6113d895efefbc0bb699a57b9b2426aaf877d2d310f64f`  
		Last Modified: Tue, 20 Nov 2018 11:24:48 GMT  
		Size: 2.0 KB (1999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458cd7ff270b98d488be34a27ba02f95d8a2e953f22655cad91e7add1343ec6c`  
		Last Modified: Tue, 20 Nov 2018 11:24:48 GMT  
		Size: 2.5 MB (2473529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45a9f97f23f89a6a39dbf169ed1cb129abd6e2fbe21dd1a1aca2d3384cdb4b3e`  
		Last Modified: Tue, 20 Nov 2018 11:24:48 GMT  
		Size: 718.0 KB (718014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e369fb79be52e3aa9d968dda7f7b3699c4e6964f0dea90fa760377efcf1f0eb`  
		Last Modified: Tue, 20 Nov 2018 11:24:47 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729f8c27f67bf45d92bc2c7909967122a2b1b4de840fe1a711f911e3873cd481`  
		Last Modified: Tue, 20 Nov 2018 11:24:44 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2409193f3e39695bb83eb23450fd4b165b7dac3e1467d18636f7629d7e872eb`  
		Last Modified: Tue, 20 Nov 2018 11:24:44 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b625972a18c7506db648e380dd650db7b84f65a1fab22c2dd7ab19b424ffb043`  
		Last Modified: Tue, 20 Nov 2018 11:25:28 GMT  
		Size: 111.5 MB (111479551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a336ab1d6994cbb0bd0cd8ec0076bab7e225f101fcfbba5dba886d1cabd74d1d`  
		Last Modified: Tue, 20 Nov 2018 11:24:45 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69eb12c1c0ee3561a43d2df4deddb2d3576ed8477e56336aa9686447a0503b2d`  
		Last Modified: Tue, 20 Nov 2018 11:24:44 GMT  
		Size: 3.7 KB (3729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - windows version 10.0.14393.2665; amd64

```console
$ docker pull mongo@sha256:2487bc12c2f0933de86100d72b213e37d0ff2ef5c4419288a03e50778505a3be
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5698500832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b9b5a9df33494cd679aa4a3a0b82e37cc350dbd66858014cdc30b454443be56`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Dec 2018 22:22:29 GMT
RUN Install update 10.0.14393.2665
# Tue, 25 Dec 2018 19:01:19 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 25 Dec 2018 19:20:58 GMT
ENV MONGO_VERSION=4.0.4
# Tue, 25 Dec 2018 19:21:00 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.4-signed.msi
# Tue, 25 Dec 2018 19:21:01 GMT
ENV MONGO_DOWNLOAD_SHA256=7d5b1f3a655cf2fe9864554699ffd6d7db616889fd211b4f0951d185e8395659
# Tue, 25 Dec 2018 19:24:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 25 Dec 2018 19:24:47 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 25 Dec 2018 19:24:49 GMT
EXPOSE 27017
# Tue, 25 Dec 2018 19:24:50 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bf261bf8d7bc7faa62a55474c337e0c2bf6e7d24df25e7737fa97ace46a2cd9a`  
		Last Modified: Mon, 10 Dec 2018 22:22:29 GMT  
		Size: 1.6 GB (1564741272 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5b92498775bef108bcee0d3239688e91da8acbfcaec62c8b5e05f78b04c70602`  
		Last Modified: Tue, 25 Dec 2018 20:32:55 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c1a0fb5f409137a7289d303dbd11a98959828b7f46d9854328e27b2509157a`  
		Last Modified: Tue, 25 Dec 2018 20:35:42 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b67392e0d5cbf2b7106fa8c0f7ea5120f754ebc304f4a164078aed317e7933`  
		Last Modified: Tue, 25 Dec 2018 20:35:42 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a84b0810066e01d46b1ef73d2bddc52e317f4e3fe40cc5807d7b67d1899cd17`  
		Last Modified: Tue, 25 Dec 2018 20:35:40 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d208bb93432134513842fa3deb33fd5b2602881d069dcf845d6449a3f8bccc2`  
		Last Modified: Tue, 25 Dec 2018 20:35:55 GMT  
		Size: 63.8 MB (63765210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c98f8a84e4ec9f16d83e3097ea79b6977c7e9be04b68ebc67ba0878c6b9d023`  
		Last Modified: Tue, 25 Dec 2018 20:35:40 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ff25317594f9edc85b5c75d055b9610b3289841abad876ca80c8c336792686`  
		Last Modified: Tue, 25 Dec 2018 20:35:40 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f463b22db1a09273652c8eef4c4b24d9c72c986e90f90377bdea1bc7cc18abf8`  
		Last Modified: Tue, 25 Dec 2018 20:35:40 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - windows version 10.0.16299.846; amd64

```console
$ docker pull mongo@sha256:15dc7536f5945fcc33005bbe6423187a4a3ea5ecb11a1a92f9a5ca3413c1c125
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3210773665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8991e43412c42bc71023dafd457878e32b72b8e23cec2e1c0e997402d050c3c2`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 05 Dec 2018 22:40:26 GMT
RUN Install update 10.0.16299.846
# Tue, 25 Dec 2018 19:04:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 25 Dec 2018 19:24:57 GMT
ENV MONGO_VERSION=4.0.4
# Tue, 25 Dec 2018 19:24:58 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.4-signed.msi
# Tue, 25 Dec 2018 19:25:00 GMT
ENV MONGO_DOWNLOAD_SHA256=7d5b1f3a655cf2fe9864554699ffd6d7db616889fd211b4f0951d185e8395659
# Tue, 25 Dec 2018 19:28:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 25 Dec 2018 19:28:45 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 25 Dec 2018 19:28:47 GMT
EXPOSE 27017
# Tue, 25 Dec 2018 19:28:49 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:10167262a01401a5b7cd880ca2abdb5a43d0cdb288b23e2bbda0cd16760064e7`  
		Last Modified: Tue, 11 Dec 2018 21:30:45 GMT  
		Size: 877.8 MB (877837008 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f9dda4685a777cd79d2b2657bd58c66d7d630dd04d91295e2867ebf816d48dc0`  
		Last Modified: Tue, 25 Dec 2018 20:33:20 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91b4a7834e93c17d7bd16ccec98a238f9bb3584c5b3ce7a0382d1ec8272ed4b`  
		Last Modified: Tue, 25 Dec 2018 20:36:12 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0457a52a836b4eb47fc3dbd4c9c4a3f637b21e7fafe48d2828994bf6ab04db4a`  
		Last Modified: Tue, 25 Dec 2018 20:36:12 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816ec0c28f54313b0f9f13cb0cebe3485d6651c5a4cad9bc8bbb5f6e4c71a84b`  
		Last Modified: Tue, 25 Dec 2018 20:36:10 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c7967aed0dc1e06801b09d1341140a86ebb933b861a8be0f10c92c03e851bf`  
		Last Modified: Tue, 25 Dec 2018 20:36:33 GMT  
		Size: 58.6 MB (58627626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d73b7994809731fc95bec81cd1d78ceed3d53a2949e534abf921352b8c5ffdb`  
		Last Modified: Tue, 25 Dec 2018 20:36:10 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d128fb599512812b1a7c417e2fbd80a623375c3796a60c557cf7ec4801e3c978`  
		Last Modified: Tue, 25 Dec 2018 20:36:10 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5aa9cd2285522c165dc887c4f26553c61177359e2782b188a3c8f9973410387`  
		Last Modified: Tue, 25 Dec 2018 20:36:10 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - windows version 10.0.17134.469; amd64

```console
$ docker pull mongo@sha256:965818a8296dad20a5cb9bc9800a2bb4433054c6fc889c4b8e25f930d17522bf
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2302159491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e65c2e858993dad185c08a73a429ed347ba3c1434a1ddced705a5e843a37f2d`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Thu, 06 Dec 2018 19:45:44 GMT
RUN Install update 10.0.17134.469
# Tue, 25 Dec 2018 19:28:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 25 Dec 2018 19:28:56 GMT
ENV MONGO_VERSION=4.0.4
# Tue, 25 Dec 2018 19:28:57 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.4-signed.msi
# Tue, 25 Dec 2018 19:28:58 GMT
ENV MONGO_DOWNLOAD_SHA256=7d5b1f3a655cf2fe9864554699ffd6d7db616889fd211b4f0951d185e8395659
# Tue, 25 Dec 2018 19:32:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 25 Dec 2018 19:32:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 25 Dec 2018 19:32:29 GMT
EXPOSE 27017
# Tue, 25 Dec 2018 19:32:30 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a716b198c71b782955b21f1eed303f89f487eaef823ebccdeb452b764512b3b`  
		Last Modified: Tue, 11 Dec 2018 22:06:40 GMT  
		Size: 583.9 MB (583898765 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:edcb8af516ba153b07675737209648bd886ef5c8b56e7c912ead73de6e7b2b28`  
		Last Modified: Tue, 25 Dec 2018 20:36:50 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feee150edc89cfb375cc3fec23e337da777767f1d62b1311cc37c31392fa0f13`  
		Last Modified: Tue, 25 Dec 2018 20:36:50 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7fc72cc1b74fac4bd302e5a5253a0f22f0487d58c3c38bcebbe099a2d1f143`  
		Last Modified: Tue, 25 Dec 2018 20:36:50 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd6942c768d225b9c5c10063c5e5474b6b82c96f96212285a655d68007eda77`  
		Last Modified: Tue, 25 Dec 2018 20:36:48 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c990a7f148b0e07c6ace56ae002f6f1af601fdb816710e1fdcc580dd8e18607`  
		Last Modified: Tue, 25 Dec 2018 20:37:02 GMT  
		Size: 58.6 MB (58564026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d88a2c745a0ddef6498bbd98e8751899a0cdec1f9a023f1b1e99a92eaab0e35`  
		Last Modified: Tue, 25 Dec 2018 20:36:48 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c342f29db101a878ec1a1c541751872a9dd3cbe62d3d30e1a86a9665e1e7536`  
		Last Modified: Tue, 25 Dec 2018 20:36:48 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1602f1e5c93d073e4a39bb0bb4eab00278a9af8287f5c78cf15a99753bef44ff`  
		Last Modified: Tue, 25 Dec 2018 20:36:48 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
