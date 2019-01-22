## `mongo:unstable`

```console
$ docker pull mongo@sha256:976496436d729067ca6893c18d26403e9f4ed69b649b1a2e6eb7ddcd300500c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2724; amd64
	-	windows version 10.0.16299.904; amd64

### `mongo:unstable` - linux; amd64

```console
$ docker pull mongo@sha256:ae20060c3cd8da224757606c383d47a21e265c86070b45752ce3dc204381c2f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.7 MB (153744494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93d90dda5c12d35f7d8fda71a37b5cd91ea8103909f2f220e49123e1d7729a72`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 00:56:45 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 29 Dec 2018 00:56:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:56:56 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 00:56:57 GMT
ENV JSYAML_VERSION=3.10.0
# Sat, 29 Dec 2018 00:57:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 29 Dec 2018 00:57:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 00:57:46 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Sat, 29 Dec 2018 00:57:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 00:57:47 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Sat, 29 Dec 2018 00:57:48 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 29 Dec 2018 00:57:48 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Sat, 29 Dec 2018 00:57:48 GMT
ENV MONGO_MAJOR=4.1
# Mon, 21 Jan 2019 21:21:49 GMT
ENV MONGO_VERSION=4.1.7
# Mon, 21 Jan 2019 21:21:49 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 21 Jan 2019 21:22:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 21 Jan 2019 21:22:26 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 21 Jan 2019 21:22:27 GMT
VOLUME [/data/db /data/configdb]
# Mon, 21 Jan 2019 21:22:27 GMT
COPY file:aede91d254349505ddabe55af4cf4debc6cc3f959f945a489b8864e520f193e8 in /usr/local/bin/ 
# Mon, 21 Jan 2019 21:22:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Jan 2019 21:22:27 GMT
EXPOSE 27017
# Mon, 21 Jan 2019 21:22:28 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95dc958d65c64a9847dfe14ddd2f1cfe2382db0c61fadbefa2ebe86c1847110e`  
		Last Modified: Sat, 29 Dec 2018 00:59:10 GMT  
		Size: 2.0 KB (1989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec60d69dd505861f372c1e7d291790863d676d6e1b63e4e0319eda2e66b904f`  
		Last Modified: Sat, 29 Dec 2018 00:59:10 GMT  
		Size: 2.9 MB (2945688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf92a668191371e9f0f7526943b68233cb7a996c83e9077aaf58921717d692f8`  
		Last Modified: Sat, 29 Dec 2018 00:59:10 GMT  
		Size: 750.9 KB (750862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8911fe7d4b3598145a385ae0c2b0850eecb1c1d4222ecbacc430d992aed512e7`  
		Last Modified: Sat, 29 Dec 2018 00:59:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663aea32c9f0998d22d9d082e9fcb5fc658ea909a28022b67c42e22d35eff577`  
		Last Modified: Sat, 29 Dec 2018 00:59:33 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8edd2f8c0c491eda75671c8f8f967354658dd457fe243cba705915a57652d37`  
		Last Modified: Mon, 21 Jan 2019 21:23:19 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd25cc9fb25340553164674c09226b0cd78f41bf5baf01ab6d5fb230cdd1984`  
		Last Modified: Mon, 21 Jan 2019 21:23:36 GMT  
		Size: 106.6 MB (106595705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f7af37c5fea7aa8b9b9e82cb7b1fe8de1b04ae7f204d592f38a01699a963fb`  
		Last Modified: Mon, 21 Jan 2019 21:23:19 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f5c3dbb55eb61a7c414194a251134a7aa460b4801eb6bcf9721c4931796400`  
		Last Modified: Mon, 21 Jan 2019 21:23:19 GMT  
		Size: 3.8 KB (3796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:7ce83ebe23f328ecc4d2cb02c0647d9a7e5f3fa8d01460c7fa65382b6248fcdf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.1 MB (143121341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:179666216401b0d9877e2ffc78d2f101c3560a2a6abbc22dc9dbd77d991bb01d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 12:07:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 29 Dec 2018 12:08:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:08:30 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 12:08:33 GMT
ENV JSYAML_VERSION=3.10.0
# Sat, 29 Dec 2018 12:09:20 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 29 Dec 2018 12:09:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 12:11:51 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Sat, 29 Dec 2018 12:11:59 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 12:12:00 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Sat, 29 Dec 2018 12:12:02 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 29 Dec 2018 12:12:03 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Sat, 29 Dec 2018 12:12:04 GMT
ENV MONGO_MAJOR=4.1
# Tue, 22 Jan 2019 09:55:28 GMT
ENV MONGO_VERSION=4.1.7
# Tue, 22 Jan 2019 09:55:31 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 22 Jan 2019 09:56:48 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 22 Jan 2019 09:56:51 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 22 Jan 2019 09:56:52 GMT
VOLUME [/data/db /data/configdb]
# Tue, 22 Jan 2019 09:56:55 GMT
COPY file:aede91d254349505ddabe55af4cf4debc6cc3f959f945a489b8864e520f193e8 in /usr/local/bin/ 
# Tue, 22 Jan 2019 09:56:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 22 Jan 2019 09:56:57 GMT
EXPOSE 27017
# Tue, 22 Jan 2019 09:56:58 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a2becb684c7c6e9dc2a2ceafa1517761b2a42b2044498c69ce9e28045f191f2`  
		Last Modified: Sat, 29 Dec 2018 12:14:25 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b632039574c2a768c4270ad1c0a44ef0c7be506303b8b15eccaf7ace4dadc008`  
		Last Modified: Sat, 29 Dec 2018 12:14:26 GMT  
		Size: 2.5 MB (2474558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a4adf5411e1cac983757e61dee87b5bbaf5ceaac4c46c7d1867471ef9b5c0a8`  
		Last Modified: Sat, 29 Dec 2018 12:14:25 GMT  
		Size: 718.0 KB (718005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87e003b16c9415a422e00c96be17f1b78d53abec36e85e948751828b652fbf6`  
		Last Modified: Sat, 29 Dec 2018 12:14:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12eda4321ef32be13adadc2884643023c1c4f537699968aecd82b3f053eec9d`  
		Last Modified: Sat, 29 Dec 2018 12:15:08 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7aae192afac438a7034a0d9cc5c08bcaff951e19442c1637bc21088f5a337d4`  
		Last Modified: Tue, 22 Jan 2019 09:57:26 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2c7745cc176a321fd7ce91d28b25b5114e0901a8b85810a245330c31a25ff1`  
		Last Modified: Tue, 22 Jan 2019 09:58:02 GMT  
		Size: 100.4 MB (100412162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f51688590d25f262e2141f9e213ac2d19e88b414e8d36d2a0bb65b535432263`  
		Last Modified: Tue, 22 Jan 2019 09:57:26 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00733e982b8a5048f2288302d6cea157f70bd2da352e9bc13f9308d37e0e5371`  
		Last Modified: Tue, 22 Jan 2019 09:57:26 GMT  
		Size: 3.8 KB (3796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - windows version 10.0.14393.2724; amd64

```console
$ docker pull mongo@sha256:b853cff424a596216701e1cc6d3464e103975147d83b678e5dee3c0473874263
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5725234906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:902260daa6c83fe12970ee12349d708e95a88ccedc8a6511babb4506ca7ee4ae`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Tue, 22 Jan 2019 11:49:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 22 Jan 2019 12:34:24 GMT
ENV MONGO_VERSION=4.1.7
# Tue, 22 Jan 2019 12:34:26 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.7-signed.msi
# Tue, 22 Jan 2019 12:34:27 GMT
ENV MONGO_DOWNLOAD_SHA256=07225721b4b914c65c4a2a9306cf8d19b3875a96e349c3e4b9853e86c8d4cfb1
# Tue, 22 Jan 2019 12:43:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 22 Jan 2019 12:43:57 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 22 Jan 2019 12:43:59 GMT
EXPOSE 27017
# Tue, 22 Jan 2019 12:44:01 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0c71fc8924e632b81de72fba055610c4a5259b2f6723e15f70662f7bc328184`  
		Last Modified: Tue, 08 Jan 2019 17:44:44 GMT  
		Size: 1.6 GB (1565830172 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:17b027d2e81dbd6d79eaa15e958f3abf591a89252f9711b74b706f4f7a4520d5`  
		Last Modified: Tue, 22 Jan 2019 13:31:37 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0af47347bb903fb0d931382ac0c0e7719cc0c44eb549dbf35175e697b0f3bc4`  
		Last Modified: Tue, 22 Jan 2019 13:40:25 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455759ae8419054b880f7a950d5e0529839bf57dad2927e857560312cb3b414d`  
		Last Modified: Tue, 22 Jan 2019 13:40:25 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134cd954c9d5423e5db5738fdd460d5ab962c782147b774ec891a37ae10ed8c7`  
		Last Modified: Tue, 22 Jan 2019 13:40:23 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e04ca6aa4e5c183ee0e94a5f8ed7689dcd89d1145f683ed3c3980cb0a78171a`  
		Last Modified: Tue, 22 Jan 2019 13:40:57 GMT  
		Size: 89.4 MB (89410372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec9120e6e593fa5854390471166e01b391f564aacadeea08202cb61eed0899f`  
		Last Modified: Tue, 22 Jan 2019 13:40:23 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6db8781965b3b0d01bf3fce82a7b6b064e27fae1bcc24cf3146c4a881daac9`  
		Last Modified: Tue, 22 Jan 2019 13:40:22 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f6d024476d424001bdc320d0a8b2090afa6fd0412d032498d68b387cad56b1`  
		Last Modified: Tue, 22 Jan 2019 13:40:23 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - windows version 10.0.16299.904; amd64

```console
$ docker pull mongo@sha256:9140c4e04d2164143efe6c7a41a8ce3124affd8b3f23a04f067ac6051d22ecd1
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 GB (3712278803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b9da44974125304cde36008cd435386081036bb73ce9be1a67f4b42ddb31509`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 03 Jan 2019 04:08:43 GMT
RUN Install update 10.0.16299.904
# Tue, 22 Jan 2019 11:52:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 22 Jan 2019 12:44:09 GMT
ENV MONGO_VERSION=4.1.7
# Tue, 22 Jan 2019 12:44:10 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.7-signed.msi
# Tue, 22 Jan 2019 12:44:11 GMT
ENV MONGO_DOWNLOAD_SHA256=07225721b4b914c65c4a2a9306cf8d19b3875a96e349c3e4b9853e86c8d4cfb1
# Tue, 22 Jan 2019 13:07:53 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 22 Jan 2019 13:07:55 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 22 Jan 2019 13:07:57 GMT
EXPOSE 27017
# Tue, 22 Jan 2019 13:07:59 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ee945370a9b4bb58ea63e33767041df2ecc306b6e73a231fe90d31980e26b05d`  
		Last Modified: Tue, 08 Jan 2019 18:00:22 GMT  
		Size: 872.8 MB (872755280 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b73a0893a2a72f596b0b6e0f0bd7c375cc57a9f8c99eecac91cb183e81a685df`  
		Last Modified: Tue, 22 Jan 2019 13:32:24 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b1f7ec3a7172cbef8cea5422297a8270b0d5442209fa8461b18c8067d4f62c`  
		Last Modified: Tue, 22 Jan 2019 13:41:13 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1899c58993ac5b78b08f8c3448e7804145eae0d5d72e763e154440a2118677b0`  
		Last Modified: Tue, 22 Jan 2019 13:41:13 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9f9ab17f03a2bf857b355ad5d524b1cca4c02e8eb59a6b4326ccb27d3eb696`  
		Last Modified: Tue, 22 Jan 2019 13:41:11 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ce4ded6135648991a6b805ab1c3caea944ddb03860fa8880201634cab90177`  
		Last Modified: Tue, 22 Jan 2019 13:44:57 GMT  
		Size: 565.2 MB (565214509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0918cff780a4541dddb5ba20da26a34b1768837764b698e41bab9c4b24b7de5`  
		Last Modified: Tue, 22 Jan 2019 13:41:11 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b1417acba1e7bb1d404339255e0d41b6849fc06a2f0ead362f523652a81c5f`  
		Last Modified: Tue, 22 Jan 2019 13:41:11 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4e14fc3f5e4f188f367dd24b8331f3877f1e2157ebaf3a5c340e4ab8d03ef6`  
		Last Modified: Tue, 22 Jan 2019 13:41:11 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
