## `mongo:unstable-xenial`

```console
$ docker pull mongo@sha256:276f30cc7d8e43c49ee4a7ba0d4c30a2c8b68a38b577b9894d79013740604ca9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:unstable-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:38d3b6989a7f7ea48476e9747859bb0162bcce9816d6d412e0c9ed3a8bd2542e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.0 MB (137999224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afb95a100adaae95b3a338948758f26065dbe043c9477965ab61ed8ce97ac237`
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
# Sat, 29 Dec 2018 00:57:48 GMT
ENV MONGO_VERSION=4.1.6
# Sat, 29 Dec 2018 00:57:49 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 29 Dec 2018 00:58:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 29 Dec 2018 00:58:06 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 29 Dec 2018 00:58:07 GMT
VOLUME [/data/db /data/configdb]
# Sat, 29 Dec 2018 00:58:07 GMT
COPY file:aede91d254349505ddabe55af4cf4debc6cc3f959f945a489b8864e520f193e8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 00:58:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 00:58:08 GMT
EXPOSE 27017
# Sat, 29 Dec 2018 00:58:08 GMT
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
	-	`sha256:6ab3ae87a4d188430258d7b46b077e737b0f12bde8d7e30398d1420f5654bbd9`  
		Last Modified: Sat, 29 Dec 2018 00:59:33 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:252f3f7a51329d3afedb27f4217c36d69a54ee94fae7f5705a9695db144c457f`  
		Last Modified: Sat, 29 Dec 2018 00:59:52 GMT  
		Size: 90.9 MB (90850438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a480ce52ef9a553d663f6955dee68ab6fca6d54e2a11349729c0ce9cebb7cc51`  
		Last Modified: Sat, 29 Dec 2018 00:59:33 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6c601f0e15441f49372c20c4e8edc1d72a23460461e325dd420b51535f2072`  
		Last Modified: Sat, 29 Dec 2018 00:59:33 GMT  
		Size: 3.8 KB (3792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:010a46cf548deb3cbf59be2027f4079a6bc54344cb2adfe211ee6caa11a1f689
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.1 MB (117138797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d22cd7a7ec092338d649b8e6b8f2ea243b43c89df9b1b89fcc203f7e881179cd`
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
# Fri, 28 Dec 2018 09:40:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 09:40:07 GMT
ENV GOSU_VERSION=1.10
# Fri, 28 Dec 2018 09:40:08 GMT
ENV JSYAML_VERSION=3.10.0
# Fri, 28 Dec 2018 09:40:28 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Fri, 28 Dec 2018 09:40:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 28 Dec 2018 09:41:56 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Fri, 28 Dec 2018 09:42:00 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 28 Dec 2018 09:42:01 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Fri, 28 Dec 2018 09:42:02 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 28 Dec 2018 09:42:03 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Fri, 28 Dec 2018 09:42:04 GMT
ENV MONGO_MAJOR=4.1
# Fri, 28 Dec 2018 09:42:04 GMT
ENV MONGO_VERSION=4.1.6
# Fri, 28 Dec 2018 09:42:08 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 28 Dec 2018 09:43:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 28 Dec 2018 09:43:11 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 28 Dec 2018 09:43:13 GMT
VOLUME [/data/db /data/configdb]
# Fri, 28 Dec 2018 09:43:14 GMT
COPY file:aede91d254349505ddabe55af4cf4debc6cc3f959f945a489b8864e520f193e8 in /usr/local/bin/ 
# Fri, 28 Dec 2018 09:43:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 28 Dec 2018 09:43:19 GMT
EXPOSE 27017
# Fri, 28 Dec 2018 09:43:21 GMT
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
	-	`sha256:d1c1ee41a842d216da6e1b7bb3928aab6b9f2b5c14db130f6b3307fe7fca25f9`  
		Last Modified: Fri, 28 Dec 2018 09:43:57 GMT  
		Size: 2.5 MB (2474504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6470c8d9fa26247519a9c2b63d4a9ad5854fb49c4e849d767665b074a0b784cd`  
		Last Modified: Fri, 28 Dec 2018 09:43:57 GMT  
		Size: 717.9 KB (717945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecac14b4e23097d2206edc8b0a7323ea9b9e276f9eed61966cf968bb3704f983`  
		Last Modified: Fri, 28 Dec 2018 09:43:56 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec4c8174158a5d2d84e57c5b5356b8f394a44a1a3004a6c7bee53cce9c26159`  
		Last Modified: Fri, 28 Dec 2018 09:44:41 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0018168a69e0221b5f7915efd93e4ff06e5f0549959d2ba322c6e408ed5c4849`  
		Last Modified: Fri, 28 Dec 2018 09:44:40 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e287cb080892569ee4031618610647b73e3ed8a0d879682259d6ecea46651290`  
		Last Modified: Fri, 28 Dec 2018 09:45:07 GMT  
		Size: 74.5 MB (74454597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e282d93b1c2da160417bb06ef9eaf10010788d8b059c177b70ebd9e1eaa48d84`  
		Last Modified: Fri, 28 Dec 2018 09:44:43 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a69e0144c034cf67555ceb83958b5327c3762688c5c0fa657c5333f3016792`  
		Last Modified: Fri, 28 Dec 2018 09:44:40 GMT  
		Size: 3.8 KB (3798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
