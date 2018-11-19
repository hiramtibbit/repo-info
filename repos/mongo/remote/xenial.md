## `mongo:xenial`

```console
$ docker pull mongo@sha256:cd036d96a6e28fa5d4eac4dca7334c5956a01033c26bd3b901e558d3ab42d855
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:xenial` - linux; amd64

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

### `mongo:xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:d3664bfc7082022d1c39e4a96476b858fbf8db56e4c3c75aa6e3de02128720a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.1 MB (154112029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:283f369c15a6a63787c3e14b9fe7711a40489a6d7e832beccf672afef26fe56e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 19 Oct 2018 11:22:58 GMT
ADD file:9770ac4ecb41798c5999796e611468c62bf20e585daf48667db9f39757ec5ad9 in / 
# Fri, 19 Oct 2018 11:23:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 11:23:05 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 11:23:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 11:23:08 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 12:48:05 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 19 Oct 2018 12:48:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:48:27 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 12:48:27 GMT
ENV JSYAML_VERSION=3.10.0
# Fri, 16 Nov 2018 12:19:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Fri, 16 Nov 2018 12:19:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 12:19:09 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Fri, 16 Nov 2018 12:19:15 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 12:19:16 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 16 Nov 2018 12:19:17 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 16 Nov 2018 12:19:18 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 16 Nov 2018 12:19:20 GMT
ENV MONGO_MAJOR=4.0
# Fri, 16 Nov 2018 12:19:21 GMT
ENV MONGO_VERSION=4.0.4
# Fri, 16 Nov 2018 12:19:26 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 16 Nov 2018 12:20:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 16 Nov 2018 12:20:49 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 16 Nov 2018 12:20:50 GMT
VOLUME [/data/db /data/configdb]
# Fri, 16 Nov 2018 12:20:52 GMT
COPY file:60abb511d646e0b8b4668acde625346e0976c8ff820e8efa7df9fdb3ed11cab3 in /usr/local/bin/ 
# Fri, 16 Nov 2018 12:20:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 12:20:55 GMT
EXPOSE 27017/tcp
# Fri, 16 Nov 2018 12:20:56 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:e4852cc2dcfa698a092467d4b0a8a4f34f9ac6d20b64dbd4a8be0a764f29564d`  
		Last Modified: Fri, 05 Oct 2018 22:11:51 GMT  
		Size: 39.4 MB (39432395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf455d9dd16d488d1c230ceb231351c1abd0733011acf191b6a63339e7b5cfca`  
		Last Modified: Fri, 19 Oct 2018 11:26:42 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2abc38e50c7444b0314ce04d70d73a1bd3733e860f550ad9edd236fd650769c0`  
		Last Modified: Fri, 19 Oct 2018 11:26:42 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cecbdd5ae3d455dc9ef1c1be196ac6ef7c70e3062656dadcec822910202d798`  
		Last Modified: Fri, 19 Oct 2018 11:26:42 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0c098e72a1ee3761dd77beb78840f42ecf5ff8c34e22be9e0b8bb11e42f0eb`  
		Last Modified: Fri, 19 Oct 2018 12:53:04 GMT  
		Size: 2.0 KB (1999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922f8e65d47dba2364e8cae561796dbafeacf719c2230a27656e7a3326abd36c`  
		Last Modified: Fri, 19 Oct 2018 12:53:04 GMT  
		Size: 2.5 MB (2473683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444221ccd4d89cbc328d9375633c9bca260a3430fb0103e410b67b692475eff8`  
		Last Modified: Fri, 16 Nov 2018 12:23:21 GMT  
		Size: 718.3 KB (718265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c20161dc1c86558aba84852a50bcefd7c5f3bcffe3690d03a4300b272513292`  
		Last Modified: Fri, 16 Nov 2018 12:23:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502cdeabb03a39232e2916c7d6de4ac748b8054a27cf51948915b52a3e021c4b`  
		Last Modified: Fri, 16 Nov 2018 12:23:18 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51de6e3e33be8743680ed847d0de76962ead2d8b758ed4c415364cd34393ab79`  
		Last Modified: Fri, 16 Nov 2018 12:23:18 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63aab6600aee91d4e6a5515b17d7716d4f7b9d8d3b44cb8ffa6baa5de4d24ebe`  
		Last Modified: Fri, 16 Nov 2018 12:24:03 GMT  
		Size: 111.5 MB (111478466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307859d4127bb7bf88141d0a9ee147dd47244c2085acbbc75b47c532f1b63777`  
		Last Modified: Fri, 16 Nov 2018 12:23:18 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9281ecd6159d1789ab33c1f8085a52bf10cda7545d1ff04c5db6411e5662ae71`  
		Last Modified: Fri, 16 Nov 2018 12:23:18 GMT  
		Size: 3.7 KB (3729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
