## `mongo:unstable`

```console
$ docker pull mongo@sha256:1f5a5fd72c7795e7e7de97f224b927986f2ddc61f6d21e36240090127492c23c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2665; amd64
	-	windows version 10.0.16299.846; amd64
	-	windows version 10.0.17134.469; amd64

### `mongo:unstable` - linux; amd64

```console
$ docker pull mongo@sha256:74886e93ac39f3ce3b4848071283693e17996b770a82330ad3be9b4f7ebbb8aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.0 MB (137970230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b677b0915a49423288a384b22d13e52cb0e8587edb483ec62f9ea9a40583b218`
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
# Thu, 27 Dec 2018 23:27:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 27 Dec 2018 23:27:19 GMT
ENV GOSU_VERSION=1.10
# Thu, 27 Dec 2018 23:27:19 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 27 Dec 2018 23:27:25 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 27 Dec 2018 23:27:26 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 27 Dec 2018 23:28:06 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Thu, 27 Dec 2018 23:28:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 27 Dec 2018 23:28:07 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Thu, 27 Dec 2018 23:28:08 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 27 Dec 2018 23:28:08 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Thu, 27 Dec 2018 23:28:08 GMT
ENV MONGO_MAJOR=4.1
# Thu, 27 Dec 2018 23:28:08 GMT
ENV MONGO_VERSION=4.1.6
# Thu, 27 Dec 2018 23:28:09 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 27 Dec 2018 23:28:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 27 Dec 2018 23:28:25 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 27 Dec 2018 23:28:26 GMT
VOLUME [/data/db /data/configdb]
# Thu, 27 Dec 2018 23:28:26 GMT
COPY file:aede91d254349505ddabe55af4cf4debc6cc3f959f945a489b8864e520f193e8 in /usr/local/bin/ 
# Thu, 27 Dec 2018 23:28:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 23:28:26 GMT
EXPOSE 27017
# Thu, 27 Dec 2018 23:28:26 GMT
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
	-	`sha256:b4b05efc1ce791f6c995a472747f43fd6ca6a8d559b77dad2eb7a3ebc2adaa34`  
		Last Modified: Thu, 27 Dec 2018 23:29:32 GMT  
		Size: 2.9 MB (2946324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70f19d0cfcde496cfcce708c845f931a4c0e8d4c0ce6a3d1ecc6f95580bf142`  
		Last Modified: Thu, 27 Dec 2018 23:29:31 GMT  
		Size: 751.4 KB (751409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7294371c5feba3ec583419f714d398b17fec2bcbc7e78cb8a3de6606ea51338`  
		Last Modified: Thu, 27 Dec 2018 23:29:31 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afd251f0a2b6889951087a62df8b1af7dbe490597329bdc0a5868a69d2ff857`  
		Last Modified: Thu, 27 Dec 2018 23:29:53 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d720f994cd31fbf1c98da5e6f50b8504e04404f72b5baada79768d887adb60ec`  
		Last Modified: Thu, 27 Dec 2018 23:29:53 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:522fcd14d50b29246590ae0257ed06fcfa5e0cc4cbe6179eeae5cc8266957348`  
		Last Modified: Thu, 27 Dec 2018 23:30:10 GMT  
		Size: 90.9 MB (90850966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de5d62d90b37ecd5b7ecbf35f40153b56718778e61fe472eb7431b14f0c501c`  
		Last Modified: Thu, 27 Dec 2018 23:29:53 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ad46877bcf042bf75d253c7711cfb0ec27db8a628e222786089eaba36d33c2`  
		Last Modified: Thu, 27 Dec 2018 23:29:53 GMT  
		Size: 3.8 KB (3795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:b6cbbde451e53ebad31de6fffaada6982062423dc3a05c960893d2d21b558dca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.1 MB (117137855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42a6931c99d15adfc3f298131fbe8aaf83b7a0f6d3e3765e972d390a84b1ce8a`
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
# Tue, 20 Nov 2018 11:22:02 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Tue, 20 Nov 2018 11:22:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 11:22:08 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Tue, 20 Nov 2018 11:22:09 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 20 Nov 2018 11:22:10 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Tue, 20 Nov 2018 11:22:11 GMT
ENV MONGO_MAJOR=4.1
# Sat, 08 Dec 2018 12:08:34 GMT
ENV MONGO_VERSION=4.1.6
# Sat, 08 Dec 2018 12:08:36 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 08 Dec 2018 12:09:30 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 08 Dec 2018 12:09:33 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 08 Dec 2018 12:09:34 GMT
VOLUME [/data/db /data/configdb]
# Sat, 08 Dec 2018 12:09:36 GMT
COPY file:60abb511d646e0b8b4668acde625346e0976c8ff820e8efa7df9fdb3ed11cab3 in /usr/local/bin/ 
# Sat, 08 Dec 2018 12:09:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 08 Dec 2018 12:09:38 GMT
EXPOSE 27017/tcp
# Sat, 08 Dec 2018 12:09:39 GMT
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
	-	`sha256:a638c5fc5653541a8d171f0a3251d903912beba73f81a0eca957e786d2bac7b0`  
		Last Modified: Tue, 20 Nov 2018 11:26:05 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:939af29d3c5b02fa369528e7c439764f1507562d1b31152bd6006ceb39807a4e`  
		Last Modified: Sat, 08 Dec 2018 12:10:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d09f440fe123201228c3f732878c25d58f86a7dd8ed086b756b78ed450ad36`  
		Last Modified: Sat, 08 Dec 2018 12:10:47 GMT  
		Size: 74.5 MB (74454632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5f8aeeedab30bfb49da739984d07092068dfe9bbe8a931e0386739f44501cf`  
		Last Modified: Sat, 08 Dec 2018 12:10:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f61034fc14a7a5974cf5d2038546b8ccbca2eee10f156dc393f60d84d79cc7`  
		Last Modified: Sat, 08 Dec 2018 12:10:11 GMT  
		Size: 3.7 KB (3729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - windows version 10.0.14393.2665; amd64

```console
$ docker pull mongo@sha256:a6f0c0fb257930964960db466f4e2780200ef4c2d6a780e7602b354fc6f3ee2a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5708972131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38bac43e3a149b882194f5933a9230bc2c57b3dec4ea34fc146c1f26a911bd86`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Dec 2018 22:22:29 GMT
RUN Install update 10.0.14393.2665
# Tue, 25 Dec 2018 19:01:19 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 25 Dec 2018 19:32:36 GMT
ENV MONGO_VERSION=4.1.6
# Tue, 25 Dec 2018 19:32:37 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.6-signed.msi
# Tue, 25 Dec 2018 19:32:39 GMT
ENV MONGO_DOWNLOAD_SHA256=c777df7816bb8c9a760fdea782113949408b6f39d72be29a2551fa51e2fe0473
# Tue, 25 Dec 2018 19:43:11 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 25 Dec 2018 19:43:13 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 25 Dec 2018 19:43:15 GMT
EXPOSE 27017
# Tue, 25 Dec 2018 19:43:16 GMT
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
	-	`sha256:f76f53febd3573929323f4d94f36bf70eb649d45f3d5fd903d4e9a307d7ea917`  
		Last Modified: Tue, 25 Dec 2018 20:37:19 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec4939fcbf001b93e9729e4a0419aaaf640bf734f5d9afaee6a7532df820bd8`  
		Last Modified: Tue, 25 Dec 2018 20:37:20 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c5a8be8561ec4ede55f41b7f0ccf94c39a6cee561e1e05e564d84408030e88`  
		Last Modified: Tue, 25 Dec 2018 20:37:17 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:054f4470d480746bb1804b388c0199a11c9db4affe60fc756d15a377e839e5db`  
		Last Modified: Tue, 25 Dec 2018 20:37:44 GMT  
		Size: 74.2 MB (74236486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1642b37b0db71dca5ccd8bac784770861c263a56977ff3375fb53d77670f7c99`  
		Last Modified: Tue, 25 Dec 2018 20:37:17 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc720cc82aa78c96701768496872aa61f6d3492f0f5d59c0da168d6fbb5a8932`  
		Last Modified: Tue, 25 Dec 2018 20:37:17 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8467e44a378697425b1091bbedc71fb57432f81980b4b0788c8ea82db1a0cdc1`  
		Last Modified: Tue, 25 Dec 2018 20:37:17 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - windows version 10.0.16299.846; amd64

```console
$ docker pull mongo@sha256:037217298b8e8419c03413c384d66b0197eb9709490581ef2942e398aa5b64c1
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 GB (3725508948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c5aa44b70b030b506e429b3a69f1daffa05cff1b6e0e37cdf6e5d09bc580232`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 05 Dec 2018 22:40:26 GMT
RUN Install update 10.0.16299.846
# Tue, 25 Dec 2018 19:04:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 25 Dec 2018 19:43:35 GMT
ENV MONGO_VERSION=4.1.6
# Tue, 25 Dec 2018 19:43:37 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.6-signed.msi
# Tue, 25 Dec 2018 19:43:38 GMT
ENV MONGO_DOWNLOAD_SHA256=c777df7816bb8c9a760fdea782113949408b6f39d72be29a2551fa51e2fe0473
# Tue, 25 Dec 2018 20:07:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 25 Dec 2018 20:07:34 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 25 Dec 2018 20:07:36 GMT
EXPOSE 27017
# Tue, 25 Dec 2018 20:07:37 GMT
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
	-	`sha256:f1b29654ce40032d91697ac38afa703bf88e3407f91e9d9a4d0f0af14739fc7b`  
		Last Modified: Tue, 25 Dec 2018 20:38:00 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:804d5f45af69ac4832789c905db5b43c9320c962c70003aad38c8a7e4e155368`  
		Last Modified: Tue, 25 Dec 2018 20:38:00 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac46c4ff6496fe2d5c3511593ca1588f1c07a7bdd00da91d872dad9ea08e3ac3`  
		Last Modified: Tue, 25 Dec 2018 20:37:58 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99d3cc849c85207f13ab06dade87a90cee58038b4d8449889288cfc154ea91a`  
		Last Modified: Tue, 25 Dec 2018 20:41:11 GMT  
		Size: 573.4 MB (573362937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3e8b079ed1ca33e18890bdae0327934ed39834aa5df626361744b0ba079648`  
		Last Modified: Tue, 25 Dec 2018 20:37:58 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:294115dae51ad405923bb87aaff45f93713241edc7c21a7f1a5df6a339d47576`  
		Last Modified: Tue, 25 Dec 2018 20:37:58 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2267a51998e6f990e4ae36209a01d60be732d5453fa93fbcf86c0a97913400`  
		Last Modified: Tue, 25 Dec 2018 20:37:57 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - windows version 10.0.17134.469; amd64

```console
$ docker pull mongo@sha256:b0d82b024418460b4e6200e323afc8b9d398b3bd2845402af383645bf00d02ca
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2793620344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa201a12fa0e3ed656e18e4df5034702c430a8984c74bfd428a62439a372014`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Thu, 06 Dec 2018 19:45:44 GMT
RUN Install update 10.0.17134.469
# Tue, 25 Dec 2018 19:28:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 25 Dec 2018 20:07:55 GMT
ENV MONGO_VERSION=4.1.6
# Tue, 25 Dec 2018 20:07:56 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.6-signed.msi
# Tue, 25 Dec 2018 20:07:58 GMT
ENV MONGO_DOWNLOAD_SHA256=c777df7816bb8c9a760fdea782113949408b6f39d72be29a2551fa51e2fe0473
# Tue, 25 Dec 2018 20:31:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 25 Dec 2018 20:31:39 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 25 Dec 2018 20:31:41 GMT
EXPOSE 27017
# Tue, 25 Dec 2018 20:31:43 GMT
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
	-	`sha256:e384ba70d4fc9ee039bf4623e817b4cb0dd52b65f637554148ef09f6be4ecaad`  
		Last Modified: Tue, 25 Dec 2018 20:41:44 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717858d1829265b83a87a5947ded40c8e9afc91a89711fe8bd51547683fdb010`  
		Last Modified: Tue, 25 Dec 2018 20:41:44 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e22921f35abbb34acd9b0f30015ab24f4a2b24b247b1c8fd39f5e802183eccf5`  
		Last Modified: Tue, 25 Dec 2018 20:41:42 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09406dc137ff6766f4e8d4c3be28fcbd1d44386bbc530c99b8cc127c69f2290d`  
		Last Modified: Tue, 25 Dec 2018 20:46:02 GMT  
		Size: 550.0 MB (550024844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4cc2fd82ad1e983ff2dc387dc6abb250eb91ab1172bbcbf6d667f41a09e159`  
		Last Modified: Tue, 25 Dec 2018 20:41:42 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba34c5f2550ab48d56f70d695d590e3c8b3e56cdb1c6fdfd76be413014d17d6`  
		Last Modified: Tue, 25 Dec 2018 20:41:42 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed4cd7f4fdf286fa440733e37adfe9fa20e7e5505287ef52ff600da117716fb3`  
		Last Modified: Tue, 25 Dec 2018 20:41:42 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
