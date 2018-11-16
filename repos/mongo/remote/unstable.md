## `mongo:unstable`

```console
$ docker pull mongo@sha256:1d086225515b7353343ac49720f34a9a1fb530c50923d929857ed0634753e37d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2608; amd64
	-	windows version 10.0.16299.785; amd64
	-	windows version 10.0.17134.407; amd64

### `mongo:unstable` - linux; amd64

```console
$ docker pull mongo@sha256:e8fc8f8d3ae1d8214f108ad1c75f74525f4eb9bf85e6e3dc37710d07bf569c92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.6 MB (137573260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21abdee9760ca26a23861433eb8a0805097685ae0938269098eb8ade383e1b8b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 19 Oct 2018 00:49:11 GMT
ADD file:01a5c4f2b1dcc8f8aebe00ce8ed6ceda7038abc31d40caf69273240cdd453b84 in / 
# Fri, 19 Oct 2018 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:49:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:49:14 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:52:20 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 19 Oct 2018 01:52:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:52:30 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 01:52:30 GMT
ENV JSYAML_VERSION=3.10.0
# Fri, 16 Nov 2018 00:59:06 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Fri, 16 Nov 2018 00:59:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 01:00:12 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Fri, 16 Nov 2018 01:00:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 01:00:19 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Fri, 16 Nov 2018 01:00:19 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 16 Nov 2018 01:00:19 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Fri, 16 Nov 2018 01:00:20 GMT
ENV MONGO_MAJOR=4.1
# Fri, 16 Nov 2018 01:00:20 GMT
ENV MONGO_VERSION=4.1.5
# Fri, 16 Nov 2018 01:00:21 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 16 Nov 2018 01:00:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 16 Nov 2018 01:00:51 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 16 Nov 2018 01:00:51 GMT
VOLUME [/data/db /data/configdb]
# Fri, 16 Nov 2018 01:00:52 GMT
COPY file:60abb511d646e0b8b4668acde625346e0976c8ff820e8efa7df9fdb3ed11cab3 in /usr/local/bin/ 
# Fri, 16 Nov 2018 01:00:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 01:00:52 GMT
EXPOSE 27017/tcp
# Fri, 16 Nov 2018 01:00:53 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:18d680d616571900d78ee1c8fff0310f2a2afe39c6ed0ba2651ff667af406c3e`  
		Last Modified: Fri, 05 Oct 2018 22:11:59 GMT  
		Size: 43.4 MB (43352848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0addb6fece630456e0ab187b0aa4304d0851ba60576e7f6f9042a97ee908a796`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e58219b215b359fe002f0ca1f416617b75ca9b36cb274c98d7a5f808711179`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6959a66df2ea26a26452ba11f84fb64bb45af90204374862ec71ee59f795e7`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb66a4db707baed22c8a2aa13b77f624be9ce1359953c8833c22d8126efaf7d`  
		Last Modified: Fri, 19 Oct 2018 01:54:24 GMT  
		Size: 2.0 KB (1994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b18fa018e44b557f69a930ac0cc25564ef163c66dc791988f7efa99bd4188e0a`  
		Last Modified: Fri, 19 Oct 2018 01:54:25 GMT  
		Size: 2.9 MB (2945920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66804df38cf1b9b25ea3630319ea8c10ceab37a3240ac2209382b355dc9d137f`  
		Last Modified: Fri, 16 Nov 2018 01:06:01 GMT  
		Size: 751.8 KB (751788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49311c56c33002e4b5c88e0ffb3b0b6145eef4aabc81d69dfce5ba729f486d83`  
		Last Modified: Fri, 16 Nov 2018 01:06:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726b3769da9ad86c027832e37cd2cf1519ef1701335a0d0cca5ce1669383a4d8`  
		Last Modified: Fri, 16 Nov 2018 01:07:41 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc85e76995f2604413db0fd114a0f34605cbe597e1c5641606920bccb49663e`  
		Last Modified: Fri, 16 Nov 2018 01:07:41 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94a1cbc2a055f50519031b5c66468687dcc36e1ac18258aa9dadffea5b2efbc`  
		Last Modified: Fri, 16 Nov 2018 01:08:08 GMT  
		Size: 90.5 MB (90513414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25dcf0cede98c52787fae6448d467955b2e749d323347ab34f50f40357af5bb`  
		Last Modified: Fri, 16 Nov 2018 01:07:41 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8442a49c44167b322be2df82f5d9400266dec1891452a426bf521baca0b4c4b`  
		Last Modified: Fri, 16 Nov 2018 01:07:41 GMT  
		Size: 3.7 KB (3728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - linux; arm64 variant v8

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

### `mongo:unstable` - windows version 10.0.14393.2608; amd64

```console
$ docker pull mongo@sha256:01e1db76288b2c68928a6ef485ab41768b2e2b899bfafef604e2e0ff4d175858
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5708104319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4ed54872e7e6a58c1213a5394b7511606803900125f998f25a3133d9fd49d6f`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 12 Nov 2018 20:18:49 GMT
RUN Install update 10.0.14393.2608
# Fri, 16 Nov 2018 10:18:19 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 16 Nov 2018 10:46:27 GMT
ENV MONGO_VERSION=4.1.5
# Fri, 16 Nov 2018 10:46:28 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.5-signed.msi
# Fri, 16 Nov 2018 10:46:29 GMT
ENV MONGO_DOWNLOAD_SHA256=3ea02318751817b109932fc85ed666991799de4cf9515063068e93a6264364cb
# Fri, 16 Nov 2018 10:57:13 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 16 Nov 2018 10:57:15 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 16 Nov 2018 10:57:16 GMT
EXPOSE 27017/tcp
# Fri, 16 Nov 2018 10:57:17 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:900b07d4317229a6e17265974aa1dac7af538380b34f978cbe221403c279c09a`  
		Last Modified: Mon, 12 Nov 2018 20:18:49 GMT  
		Size: 1.6 GB (1563935107 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:98274472ded852f1c63cfe7f1681a3e9892974dd7ed3c00b605c71328b2d018f`  
		Last Modified: Fri, 16 Nov 2018 11:40:14 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0490639faebd5f6080f3015ebaf5e27a68cfe2ffc7a001781b6fed1148bdac3a`  
		Last Modified: Fri, 16 Nov 2018 11:44:55 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba5437e9ff0123827216250166caf1224cfa98341460af20e368261bde2330a`  
		Last Modified: Fri, 16 Nov 2018 11:44:55 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f08da897878b1bedfa4ec5f644cd89fa4836ae0154684b5574636d79742923a`  
		Last Modified: Fri, 16 Nov 2018 11:44:52 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64c98a3411409988eb1a2e3b67ef73644ea18426ff2ebe65eb357a6817c3f49`  
		Last Modified: Fri, 16 Nov 2018 11:45:10 GMT  
		Size: 74.2 MB (74174921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d4a6c8c07e7c7ef8bae5a06e5e4669099fe8e3dcfee5b2eccb14b86b9cfad2b`  
		Last Modified: Fri, 16 Nov 2018 11:44:52 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8e70e5e72abc2f80931df76c9b200796295782dadf3a23fe5b699c32937ea3`  
		Last Modified: Fri, 16 Nov 2018 11:44:53 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde15dd2161b10ec65e4590e28a326fc137cb0811e1fdeba7f82c8bec3410b47`  
		Last Modified: Fri, 16 Nov 2018 11:44:52 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - windows version 10.0.16299.785; amd64

```console
$ docker pull mongo@sha256:6aff43dc51e2ba891683d5c7ac7df80b7975c2f58dc3575ea1bedc48259c1eef
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 GB (3711338599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4ba89e327998a146fcfedea6d5df0d79f6b61c36defa79dda0e2092900d8a7f`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 31 Oct 2018 19:38:09 GMT
RUN Install update 10.0.16299.785
# Fri, 16 Nov 2018 10:21:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 16 Nov 2018 10:57:27 GMT
ENV MONGO_VERSION=4.1.5
# Fri, 16 Nov 2018 10:57:27 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.5-signed.msi
# Fri, 16 Nov 2018 10:57:28 GMT
ENV MONGO_DOWNLOAD_SHA256=3ea02318751817b109932fc85ed666991799de4cf9515063068e93a6264364cb
# Fri, 16 Nov 2018 11:18:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 16 Nov 2018 11:18:15 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 16 Nov 2018 11:18:18 GMT
EXPOSE 27017/tcp
# Fri, 16 Nov 2018 11:18:19 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:78ada4d5eaa052e2d6ab049ee3371e7d2298a9e3e6dc6e10cf2aa4c0f8704abd`  
		Last Modified: Mon, 12 Nov 2018 20:34:53 GMT  
		Size: 871.6 MB (871606875 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a8ba966c2023bd5d3efcf1bc198b992a036e63816441ba6465bd60758d97058b`  
		Last Modified: Fri, 16 Nov 2018 11:40:41 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989b30d630d4f9f15a23921cee5e1290eed6f75ea24c3ac5d0cd46fb82a7aeec`  
		Last Modified: Fri, 16 Nov 2018 11:45:28 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472381d14f804e14693abbcf006a9299baa32abf752c08bd423572a86263ed48`  
		Last Modified: Fri, 16 Nov 2018 11:45:28 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b167631ec968fd9c29a383f9fd2dba866bd0b130e49a5f5171dec47d82d5d9`  
		Last Modified: Fri, 16 Nov 2018 11:45:26 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bce04bedb5db8ae6705b18d8b75123b860d1a4337f4d1671fa38dee39e6d1c`  
		Last Modified: Fri, 16 Nov 2018 11:46:35 GMT  
		Size: 565.4 MB (565422761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a943607ce9bba0b02badcc859ea760fd3b64494cd79a50e6f87a50f643f1d109`  
		Last Modified: Fri, 16 Nov 2018 11:45:26 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c940019ed2b2264ea11e1793d7b20d273b839d25f5906df9506c37448aa0ec70`  
		Last Modified: Fri, 16 Nov 2018 11:45:26 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bf387a64a389cd23ce50cc33d10ab5cccd4ed963b66e6197d68bb672a5d0cb`  
		Last Modified: Fri, 16 Nov 2018 11:45:26 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - windows version 10.0.17134.407; amd64

```console
$ docker pull mongo@sha256:66f106d1fb8ec5cf55a2553560a4ff7fbc71fca7ed93844f39f13b7de964a20c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2789924988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51c5a91e6b82e6bbf2b133428626e743028aac039384393468bf0183da36d243`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 02 Nov 2018 19:42:23 GMT
RUN Install update 10.0.17134.407
# Fri, 16 Nov 2018 10:42:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 16 Nov 2018 11:18:30 GMT
ENV MONGO_VERSION=4.1.5
# Fri, 16 Nov 2018 11:18:31 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.5-signed.msi
# Fri, 16 Nov 2018 11:18:32 GMT
ENV MONGO_DOWNLOAD_SHA256=3ea02318751817b109932fc85ed666991799de4cf9515063068e93a6264364cb
# Fri, 16 Nov 2018 11:39:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 16 Nov 2018 11:39:24 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 16 Nov 2018 11:39:26 GMT
EXPOSE 27017/tcp
# Fri, 16 Nov 2018 11:39:27 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e4486f0b239271cca51d8299e172f9335cefd19e924843676add9d58470b19c7`  
		Last Modified: Mon, 12 Nov 2018 20:42:58 GMT  
		Size: 580.4 MB (580390603 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:201e58c127c9e97481e0ddedc4db617af2c30dd9454b61920f571533baef1020`  
		Last Modified: Fri, 16 Nov 2018 11:44:21 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ae6125423e2832f118a81c3503ffb9dfacad5129b1d5c411d9f29793d8422b`  
		Last Modified: Fri, 16 Nov 2018 11:47:12 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d44a6b739a2ac944765d730a98320a13cfb7d41bec27368c1b191da2daebb8`  
		Last Modified: Fri, 16 Nov 2018 11:47:12 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fd75f162329b255fd51581185c46581bc63af4eb95d28cde973b82fbffdafb9`  
		Last Modified: Fri, 16 Nov 2018 11:47:10 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:239ed4edb2f44e7b9bb6e44427831f4c3bb129d43656edfb5ee9caf0c490e9e6`  
		Last Modified: Fri, 16 Nov 2018 11:48:15 GMT  
		Size: 549.8 MB (549837695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c0536788c24f0112f4518cad82bbbd9e6850592fec0e472fec770102f6b744`  
		Last Modified: Fri, 16 Nov 2018 11:47:10 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c8a96c8c7b8c1d480bfc920abb7fe72f8745d7fe46758802f6656abcf0243a`  
		Last Modified: Fri, 16 Nov 2018 11:47:10 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:146cecd4736c3c0f7646ee8b741b81a21232c4b290ca90fbcf2a019ed61a5655`  
		Last Modified: Fri, 16 Nov 2018 11:47:10 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
