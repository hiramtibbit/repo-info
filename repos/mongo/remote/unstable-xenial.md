## `mongo:unstable-xenial`

```console
$ docker pull mongo@sha256:69467a2442b3cd5ecd95a6bd20ee8d8be4284af832b1aafee62b966a6ff6be4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:unstable-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:a1d536d6fc5dbf406831bea3dbd1b182081b5c0cbd5661bff7af064c74ec4a81
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.6 MB (137633719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f50f39a18dfd77084f55e5287d6a45b0093acc32b5dd40a662b987e3ceef4291`
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
# Mon, 19 Nov 2018 22:29:27 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Mon, 19 Nov 2018 22:29:30 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 19 Nov 2018 22:29:31 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Mon, 19 Nov 2018 22:29:31 GMT
ARG MONGO_REPO=repo.mongodb.org
# Mon, 19 Nov 2018 22:29:31 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Mon, 19 Nov 2018 22:29:31 GMT
ENV MONGO_MAJOR=4.1
# Mon, 19 Nov 2018 22:29:32 GMT
ENV MONGO_VERSION=4.1.5
# Mon, 19 Nov 2018 22:29:32 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 19 Nov 2018 22:29:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 19 Nov 2018 22:29:53 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 19 Nov 2018 22:29:53 GMT
VOLUME [/data/db /data/configdb]
# Mon, 19 Nov 2018 22:29:53 GMT
COPY file:60abb511d646e0b8b4668acde625346e0976c8ff820e8efa7df9fdb3ed11cab3 in /usr/local/bin/ 
# Mon, 19 Nov 2018 22:29:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 22:29:54 GMT
EXPOSE 27017/tcp
# Mon, 19 Nov 2018 22:29:54 GMT
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
	-	`sha256:2026ccc99ac0987f1403f88ccee0e09f8448171514ad98aff4ef255008dfcfd5`  
		Last Modified: Mon, 19 Nov 2018 22:31:54 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a996ce8435cbd256146c0567e1950f26de64e2180177a72d865eb82258a4a9b`  
		Last Modified: Mon, 19 Nov 2018 22:31:55 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b649b4d31d46f7f806e5d28c4ea7e62d330d311a412c8639796ee1aca8bcefc7`  
		Last Modified: Mon, 19 Nov 2018 22:32:13 GMT  
		Size: 90.5 MB (90515369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff333eac18ecb68bf6a513c5e998f867f2137e4fed781331231d0a2758ad03bc`  
		Last Modified: Mon, 19 Nov 2018 22:31:54 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd78c9f83139ff3b9c5f0f9f9c3eb22d8cf9d8bacfbe7c401b10fc997b9407a1`  
		Last Modified: Mon, 19 Nov 2018 22:31:54 GMT  
		Size: 3.7 KB (3726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:c542330af46eed14eb8b0550434b87a6b214c4a78a2bb6417a0354f714efd112
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.8 MB (116758282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:443a075df851677b43cc99094c5152f0efef4d9012234e6d88ed5c3e210b7d75`
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
# Fri, 16 Nov 2018 12:21:24 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Fri, 16 Nov 2018 12:21:26 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 12:21:27 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Fri, 16 Nov 2018 12:21:28 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 16 Nov 2018 12:21:28 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Fri, 16 Nov 2018 12:21:29 GMT
ENV MONGO_MAJOR=4.1
# Fri, 16 Nov 2018 12:21:30 GMT
ENV MONGO_VERSION=4.1.5
# Fri, 16 Nov 2018 12:21:31 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 16 Nov 2018 12:22:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 16 Nov 2018 12:22:37 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 16 Nov 2018 12:22:38 GMT
VOLUME [/data/db /data/configdb]
# Fri, 16 Nov 2018 12:22:39 GMT
COPY file:60abb511d646e0b8b4668acde625346e0976c8ff820e8efa7df9fdb3ed11cab3 in /usr/local/bin/ 
# Fri, 16 Nov 2018 12:22:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 12:22:41 GMT
EXPOSE 27017/tcp
# Fri, 16 Nov 2018 12:22:41 GMT
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
	-	`sha256:3c02822c88f728a8283576b79ef268a4b215d2831b6f572c7826faffa58b270e`  
		Last Modified: Fri, 16 Nov 2018 12:25:16 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4afce8f2b198ea9550321f1a6707bd9ab8ec959ed58b0577e79b5b41dd92ca`  
		Last Modified: Fri, 16 Nov 2018 12:25:15 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3f1970b5eafd75563319e306489aaddcf89906ea9e376987d011df446c2b85`  
		Last Modified: Fri, 16 Nov 2018 12:25:44 GMT  
		Size: 74.1 MB (74124722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e913dadf86e1c0dcf5d9e36dda0cac7900ddc445f50682a1a9a6dd9b46e75b4`  
		Last Modified: Fri, 16 Nov 2018 12:25:15 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b6fcf78f04e2cc4d66a3a61345117052d1500a2ed9f807766a1530ee63f47d`  
		Last Modified: Fri, 16 Nov 2018 12:25:16 GMT  
		Size: 3.7 KB (3730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
