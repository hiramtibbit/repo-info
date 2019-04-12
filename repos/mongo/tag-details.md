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
-	[`mongo:4.1.10`](#mongo4110)
-	[`mongo:4.1.10-bionic`](#mongo4110-bionic)
-	[`mongo:4.1.10-windowsservercore`](#mongo4110-windowsservercore)
-	[`mongo:4.1.10-windowsservercore-1803`](#mongo4110-windowsservercore-1803)
-	[`mongo:4.1.10-windowsservercore-ltsc2016`](#mongo4110-windowsservercore-ltsc2016)
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
$ docker pull mongo@sha256:04e53e663f384e43aa2f5519cfb42e9928c63c8e8b62a244633338fa8f30dc52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2906; amd64

### `mongo:3` - linux; amd64

```console
$ docker pull mongo@sha256:7f5b264468c4f09088269fb09b28df57eb3060451860bb6bd8916b732c0e30ab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164593492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c7a2b269761317a3b1a5080829234bed47726cabae1b8dd40481b90d6e96fa6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:16:49 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Mar 2019 01:16:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 02 Apr 2019 23:43:32 GMT
ENV GOSU_VERSION=1.11
# Tue, 02 Apr 2019 23:43:32 GMT
ENV JSYAML_VERSION=3.13.0
# Tue, 02 Apr 2019 23:43:39 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 02 Apr 2019 23:43:40 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 02 Apr 2019 23:44:10 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 02 Apr 2019 23:44:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 02 Apr 2019 23:44:11 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 02 Apr 2019 23:44:11 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:44:12 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:44:12 GMT
ENV MONGO_MAJOR=3.6
# Sat, 06 Apr 2019 00:19:46 GMT
ENV MONGO_VERSION=3.6.12
# Sat, 06 Apr 2019 00:19:46 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 06 Apr 2019 00:20:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 06 Apr 2019 00:20:10 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 06 Apr 2019 00:20:10 GMT
VOLUME [/data/db /data/configdb]
# Sat, 06 Apr 2019 00:20:11 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Sat, 06 Apr 2019 00:20:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 00:20:11 GMT
EXPOSE 27017
# Sat, 06 Apr 2019 00:20:11 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7833eaffdda8c479f372f8bed51dfa22ad2a41ec187c8905248a67fdfae69c7`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8287cb5b9dafe7dbf0714f034c3ce7027cc9d68ff4a95d4c2711402e873217b6`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.9 MB (2945588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92d9c8d3bef70013346dcb29e55cf69e24455a658de9f6ecc716f667c81bd2`  
		Last Modified: Tue, 02 Apr 2019 23:46:28 GMT  
		Size: 1.2 MB (1151290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a99ed0412704a07ccebf7b67a323e37292c6635c1ecab51c489054f41995c2`  
		Last Modified: Tue, 02 Apr 2019 23:46:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119319870601de4fd38e2c98abf90ab3441f289b7d8a60903da8219ca4f7bafe`  
		Last Modified: Tue, 02 Apr 2019 23:46:53 GMT  
		Size: 2.0 KB (1998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5ca3634decbf69a33c73b791cd1a4496df508229abb53b3e00a03934ba24c1`  
		Last Modified: Sat, 06 Apr 2019 00:20:33 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53796206f021bb7c027b98c43bfeb1377cbdaf389fcdded33828d4db1d6f800b`  
		Last Modified: Sat, 06 Apr 2019 00:20:53 GMT  
		Size: 116.9 MB (116925184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e048abfbedb0d511ac9e1312c89a466b5433c8d6f0219dfa4f6e509342186dbf`  
		Last Modified: Sat, 06 Apr 2019 00:20:33 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e96e0de338211e2d23e333e2b0d014afa2bcf375af472aecbd116ea95a3ca4`  
		Last Modified: Sat, 06 Apr 2019 00:20:33 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:78cc7b1b0bc2c8ab597aba097bb5c3159cf69199089ed1d5519ac20f0cb387be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.3 MB (154328635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8075c38227fc12e1f666c1eeaea4accfa22747a9b4d74655ad937ec13d57cca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 13:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 14 Mar 2019 13:13:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 09:11:53 GMT
ENV GOSU_VERSION=1.11
# Wed, 03 Apr 2019 09:11:54 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 03 Apr 2019 09:12:20 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 03 Apr 2019 09:12:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 03 Apr 2019 09:13:56 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 03 Apr 2019 09:14:00 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 03 Apr 2019 09:14:01 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 03 Apr 2019 09:14:02 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:14:03 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:14:04 GMT
ENV MONGO_MAJOR=3.6
# Sat, 06 Apr 2019 08:43:26 GMT
ENV MONGO_VERSION=3.6.12
# Sat, 06 Apr 2019 08:43:28 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 06 Apr 2019 08:44:32 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 06 Apr 2019 08:44:35 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 06 Apr 2019 08:44:36 GMT
VOLUME [/data/db /data/configdb]
# Sat, 06 Apr 2019 08:44:36 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:44:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 08:44:38 GMT
EXPOSE 27017
# Sat, 06 Apr 2019 08:44:39 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6a83a8acb0578ebfbbf74a04004906f0b3b48a9093fc2d55e2f4733702f072`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.0 KB (1997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6773eb84c78cfadd6e06f80b284436019002b456c7ea2bb8b81fbe5219146c9a`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.5 MB (2474277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a0bc5664d45720bf4c190c4942f6c7af8305ab159e7195acfaa0258fede977`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 1.1 MB (1085802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d90e9fb115424b03824f81931655679424f7a09b346b82ac7f9c7a58dae7d25`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a35c4e134d5e978513a8d459c79bdfa96c7e47caaf87483ce6fcfe092471d43`  
		Last Modified: Wed, 03 Apr 2019 09:22:50 GMT  
		Size: 2.0 KB (1997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e731f5b312583fbf746a8a86cf43d93d6875379ff41e6a80d5b627e9d1a2b97a`  
		Last Modified: Sat, 06 Apr 2019 08:45:33 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87c2166fec4d23bd6d3dd17864016e2139fdfee531796f8feaf4a0cd7277189`  
		Last Modified: Sat, 06 Apr 2019 08:46:14 GMT  
		Size: 111.2 MB (111175699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef1181f962075cf90d785a2180c9041fdee828494e375ce67d03b7cf87a43fc`  
		Last Modified: Sat, 06 Apr 2019 08:45:33 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed411897eb9874a09c46bd0994ffbdc6da8c7355ff462a801092860f4945801`  
		Last Modified: Sat, 06 Apr 2019 08:45:33 GMT  
		Size: 3.9 KB (3912 bytes)  
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
$ docker pull mongo@sha256:d92e71d4749cf52f6dca06a555baa9d91d8437cdf57e2d5a13395442560b233d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2906; amd64

### `mongo:3.4` - linux; amd64

```console
$ docker pull mongo@sha256:49c28964c8a4eb041dd42f9b0a513dfcd03fd4b7c7cc7433930d758f024741ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167279552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad62612cfc71b6fde2319b0c9c7966f2bbf49a7e52b4a42e8603e0bf1d8f909c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:16:49 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Mar 2019 01:16:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 02 Apr 2019 23:43:32 GMT
ENV GOSU_VERSION=1.11
# Tue, 02 Apr 2019 23:43:32 GMT
ENV JSYAML_VERSION=3.13.0
# Tue, 02 Apr 2019 23:43:39 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 02 Apr 2019 23:43:40 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 02 Apr 2019 23:43:40 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 02 Apr 2019 23:43:41 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 02 Apr 2019 23:43:41 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 02 Apr 2019 23:43:41 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:43:42 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:43:42 GMT
ENV MONGO_MAJOR=3.4
# Tue, 02 Apr 2019 23:43:42 GMT
ENV MONGO_VERSION=3.4.20
# Tue, 02 Apr 2019 23:43:43 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 02 Apr 2019 23:44:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 02 Apr 2019 23:44:04 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 02 Apr 2019 23:44:05 GMT
VOLUME [/data/db /data/configdb]
# Tue, 02 Apr 2019 23:44:05 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Tue, 02 Apr 2019 23:44:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat (3.4)
# Tue, 02 Apr 2019 23:44:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 02 Apr 2019 23:44:06 GMT
EXPOSE 27017
# Tue, 02 Apr 2019 23:44:06 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7833eaffdda8c479f372f8bed51dfa22ad2a41ec187c8905248a67fdfae69c7`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8287cb5b9dafe7dbf0714f034c3ce7027cc9d68ff4a95d4c2711402e873217b6`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.9 MB (2945588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92d9c8d3bef70013346dcb29e55cf69e24455a658de9f6ecc716f667c81bd2`  
		Last Modified: Tue, 02 Apr 2019 23:46:28 GMT  
		Size: 1.2 MB (1151290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a99ed0412704a07ccebf7b67a323e37292c6635c1ecab51c489054f41995c2`  
		Last Modified: Tue, 02 Apr 2019 23:46:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb21677cfc537708a605191464db60a1c34c9b14a46b860e97798487949a19b3`  
		Last Modified: Tue, 02 Apr 2019 23:46:27 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d79ed4c18af47d64c899c3e2f56386e9ec9fda72248d3ee79eabd8781e084a`  
		Last Modified: Tue, 02 Apr 2019 23:46:26 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71243d9aab87be936cfa3555fb75ba1c997fc80a5b11138a6585186a57634585`  
		Last Modified: Tue, 02 Apr 2019 23:46:47 GMT  
		Size: 119.6 MB (119611123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0965198413b0d6b87845684436d2ed2677ad607bc6b14f59f8ae1dc4e5c931c0`  
		Last Modified: Tue, 02 Apr 2019 23:46:26 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd368e0ef16f69cbe80890a16cd3d8453c29cca4110fa2e5bed48a62cd708a15`  
		Last Modified: Tue, 02 Apr 2019 23:46:26 GMT  
		Size: 3.9 KB (3917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416bba15f9073e22597a88a957ede6c12841134c8d6b256de5a456c566ce6068`  
		Last Modified: Tue, 02 Apr 2019 23:46:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.4` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:1d94b0d0427978270d8ff2457d9f864b31905a8e8f683c7b4bd688742f442c0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.0 MB (156011430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46cf9207d4f2c6d6ee828b0a8f343e59def912930d5420170e4ed6102d2bf6d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 13:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 14 Mar 2019 13:13:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 09:11:53 GMT
ENV GOSU_VERSION=1.11
# Wed, 03 Apr 2019 09:11:54 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 03 Apr 2019 09:12:20 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 03 Apr 2019 09:12:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 03 Apr 2019 09:12:24 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 03 Apr 2019 09:12:26 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 03 Apr 2019 09:12:27 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 03 Apr 2019 09:12:28 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:12:29 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:12:31 GMT
ENV MONGO_MAJOR=3.4
# Wed, 03 Apr 2019 09:12:32 GMT
ENV MONGO_VERSION=3.4.20
# Wed, 03 Apr 2019 09:12:36 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 03 Apr 2019 09:13:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 03 Apr 2019 09:13:32 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 03 Apr 2019 09:13:33 GMT
VOLUME [/data/db /data/configdb]
# Wed, 03 Apr 2019 09:13:34 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Wed, 03 Apr 2019 09:13:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat (3.4)
# Wed, 03 Apr 2019 09:13:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Apr 2019 09:13:39 GMT
EXPOSE 27017
# Wed, 03 Apr 2019 09:13:40 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6a83a8acb0578ebfbbf74a04004906f0b3b48a9093fc2d55e2f4733702f072`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.0 KB (1997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6773eb84c78cfadd6e06f80b284436019002b456c7ea2bb8b81fbe5219146c9a`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.5 MB (2474277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a0bc5664d45720bf4c190c4942f6c7af8305ab159e7195acfaa0258fede977`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 1.1 MB (1085802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d90e9fb115424b03824f81931655679424f7a09b346b82ac7f9c7a58dae7d25`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e980201c2b2bc6e304122efa450f9748e30ddb9d6df868385bc3f707eb2b699`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 2.0 KB (1998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffbf3a78c1e99edc7e8667fa4cdafbec33fab1672a2df97591fc394b7f4af5c5`  
		Last Modified: Wed, 03 Apr 2019 09:22:01 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0d0c5a80d298f3d53cae2735dd126aecdf4976b1331155cc9d263a1775613e`  
		Last Modified: Wed, 03 Apr 2019 09:22:39 GMT  
		Size: 112.9 MB (112858372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b80629f1a26450f353e79b51e88c973c9b1640779368af69a1b6c8ea51fc299`  
		Last Modified: Wed, 03 Apr 2019 09:22:01 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331e12a701e8e2a495d68246368cb7f182dc107f4be894ab924a7c4ceb6b3080`  
		Last Modified: Wed, 03 Apr 2019 09:22:01 GMT  
		Size: 3.9 KB (3918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f9a84bfe1244f50b4d5607389cca66177259efbb831b784e58696d7308c619`  
		Last Modified: Wed, 03 Apr 2019 09:22:01 GMT  
		Size: 118.0 B  
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
$ docker pull mongo@sha256:d92e71d4749cf52f6dca06a555baa9d91d8437cdf57e2d5a13395442560b233d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2906; amd64

### `mongo:3.4.20` - linux; amd64

```console
$ docker pull mongo@sha256:49c28964c8a4eb041dd42f9b0a513dfcd03fd4b7c7cc7433930d758f024741ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167279552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad62612cfc71b6fde2319b0c9c7966f2bbf49a7e52b4a42e8603e0bf1d8f909c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:16:49 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Mar 2019 01:16:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 02 Apr 2019 23:43:32 GMT
ENV GOSU_VERSION=1.11
# Tue, 02 Apr 2019 23:43:32 GMT
ENV JSYAML_VERSION=3.13.0
# Tue, 02 Apr 2019 23:43:39 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 02 Apr 2019 23:43:40 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 02 Apr 2019 23:43:40 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 02 Apr 2019 23:43:41 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 02 Apr 2019 23:43:41 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 02 Apr 2019 23:43:41 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:43:42 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:43:42 GMT
ENV MONGO_MAJOR=3.4
# Tue, 02 Apr 2019 23:43:42 GMT
ENV MONGO_VERSION=3.4.20
# Tue, 02 Apr 2019 23:43:43 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 02 Apr 2019 23:44:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 02 Apr 2019 23:44:04 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 02 Apr 2019 23:44:05 GMT
VOLUME [/data/db /data/configdb]
# Tue, 02 Apr 2019 23:44:05 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Tue, 02 Apr 2019 23:44:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat (3.4)
# Tue, 02 Apr 2019 23:44:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 02 Apr 2019 23:44:06 GMT
EXPOSE 27017
# Tue, 02 Apr 2019 23:44:06 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7833eaffdda8c479f372f8bed51dfa22ad2a41ec187c8905248a67fdfae69c7`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8287cb5b9dafe7dbf0714f034c3ce7027cc9d68ff4a95d4c2711402e873217b6`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.9 MB (2945588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92d9c8d3bef70013346dcb29e55cf69e24455a658de9f6ecc716f667c81bd2`  
		Last Modified: Tue, 02 Apr 2019 23:46:28 GMT  
		Size: 1.2 MB (1151290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a99ed0412704a07ccebf7b67a323e37292c6635c1ecab51c489054f41995c2`  
		Last Modified: Tue, 02 Apr 2019 23:46:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb21677cfc537708a605191464db60a1c34c9b14a46b860e97798487949a19b3`  
		Last Modified: Tue, 02 Apr 2019 23:46:27 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d79ed4c18af47d64c899c3e2f56386e9ec9fda72248d3ee79eabd8781e084a`  
		Last Modified: Tue, 02 Apr 2019 23:46:26 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71243d9aab87be936cfa3555fb75ba1c997fc80a5b11138a6585186a57634585`  
		Last Modified: Tue, 02 Apr 2019 23:46:47 GMT  
		Size: 119.6 MB (119611123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0965198413b0d6b87845684436d2ed2677ad607bc6b14f59f8ae1dc4e5c931c0`  
		Last Modified: Tue, 02 Apr 2019 23:46:26 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd368e0ef16f69cbe80890a16cd3d8453c29cca4110fa2e5bed48a62cd708a15`  
		Last Modified: Tue, 02 Apr 2019 23:46:26 GMT  
		Size: 3.9 KB (3917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416bba15f9073e22597a88a957ede6c12841134c8d6b256de5a456c566ce6068`  
		Last Modified: Tue, 02 Apr 2019 23:46:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.4.20` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:1d94b0d0427978270d8ff2457d9f864b31905a8e8f683c7b4bd688742f442c0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.0 MB (156011430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46cf9207d4f2c6d6ee828b0a8f343e59def912930d5420170e4ed6102d2bf6d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 13:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 14 Mar 2019 13:13:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 09:11:53 GMT
ENV GOSU_VERSION=1.11
# Wed, 03 Apr 2019 09:11:54 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 03 Apr 2019 09:12:20 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 03 Apr 2019 09:12:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 03 Apr 2019 09:12:24 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 03 Apr 2019 09:12:26 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 03 Apr 2019 09:12:27 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 03 Apr 2019 09:12:28 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:12:29 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:12:31 GMT
ENV MONGO_MAJOR=3.4
# Wed, 03 Apr 2019 09:12:32 GMT
ENV MONGO_VERSION=3.4.20
# Wed, 03 Apr 2019 09:12:36 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 03 Apr 2019 09:13:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 03 Apr 2019 09:13:32 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 03 Apr 2019 09:13:33 GMT
VOLUME [/data/db /data/configdb]
# Wed, 03 Apr 2019 09:13:34 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Wed, 03 Apr 2019 09:13:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat (3.4)
# Wed, 03 Apr 2019 09:13:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Apr 2019 09:13:39 GMT
EXPOSE 27017
# Wed, 03 Apr 2019 09:13:40 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6a83a8acb0578ebfbbf74a04004906f0b3b48a9093fc2d55e2f4733702f072`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.0 KB (1997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6773eb84c78cfadd6e06f80b284436019002b456c7ea2bb8b81fbe5219146c9a`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.5 MB (2474277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a0bc5664d45720bf4c190c4942f6c7af8305ab159e7195acfaa0258fede977`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 1.1 MB (1085802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d90e9fb115424b03824f81931655679424f7a09b346b82ac7f9c7a58dae7d25`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e980201c2b2bc6e304122efa450f9748e30ddb9d6df868385bc3f707eb2b699`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 2.0 KB (1998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffbf3a78c1e99edc7e8667fa4cdafbec33fab1672a2df97591fc394b7f4af5c5`  
		Last Modified: Wed, 03 Apr 2019 09:22:01 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0d0c5a80d298f3d53cae2735dd126aecdf4976b1331155cc9d263a1775613e`  
		Last Modified: Wed, 03 Apr 2019 09:22:39 GMT  
		Size: 112.9 MB (112858372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b80629f1a26450f353e79b51e88c973c9b1640779368af69a1b6c8ea51fc299`  
		Last Modified: Wed, 03 Apr 2019 09:22:01 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331e12a701e8e2a495d68246368cb7f182dc107f4be894ab924a7c4ceb6b3080`  
		Last Modified: Wed, 03 Apr 2019 09:22:01 GMT  
		Size: 3.9 KB (3918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f9a84bfe1244f50b4d5607389cca66177259efbb831b784e58696d7308c619`  
		Last Modified: Wed, 03 Apr 2019 09:22:01 GMT  
		Size: 118.0 B  
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
$ docker pull mongo@sha256:ae9ec87f0bc1ebb3c3636380071d20ca63656d8dd82cf2cf8f70ac23a1994b49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:3.4.20-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:49c28964c8a4eb041dd42f9b0a513dfcd03fd4b7c7cc7433930d758f024741ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167279552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad62612cfc71b6fde2319b0c9c7966f2bbf49a7e52b4a42e8603e0bf1d8f909c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:16:49 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Mar 2019 01:16:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 02 Apr 2019 23:43:32 GMT
ENV GOSU_VERSION=1.11
# Tue, 02 Apr 2019 23:43:32 GMT
ENV JSYAML_VERSION=3.13.0
# Tue, 02 Apr 2019 23:43:39 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 02 Apr 2019 23:43:40 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 02 Apr 2019 23:43:40 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 02 Apr 2019 23:43:41 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 02 Apr 2019 23:43:41 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 02 Apr 2019 23:43:41 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:43:42 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:43:42 GMT
ENV MONGO_MAJOR=3.4
# Tue, 02 Apr 2019 23:43:42 GMT
ENV MONGO_VERSION=3.4.20
# Tue, 02 Apr 2019 23:43:43 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 02 Apr 2019 23:44:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 02 Apr 2019 23:44:04 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 02 Apr 2019 23:44:05 GMT
VOLUME [/data/db /data/configdb]
# Tue, 02 Apr 2019 23:44:05 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Tue, 02 Apr 2019 23:44:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat (3.4)
# Tue, 02 Apr 2019 23:44:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 02 Apr 2019 23:44:06 GMT
EXPOSE 27017
# Tue, 02 Apr 2019 23:44:06 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7833eaffdda8c479f372f8bed51dfa22ad2a41ec187c8905248a67fdfae69c7`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8287cb5b9dafe7dbf0714f034c3ce7027cc9d68ff4a95d4c2711402e873217b6`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.9 MB (2945588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92d9c8d3bef70013346dcb29e55cf69e24455a658de9f6ecc716f667c81bd2`  
		Last Modified: Tue, 02 Apr 2019 23:46:28 GMT  
		Size: 1.2 MB (1151290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a99ed0412704a07ccebf7b67a323e37292c6635c1ecab51c489054f41995c2`  
		Last Modified: Tue, 02 Apr 2019 23:46:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb21677cfc537708a605191464db60a1c34c9b14a46b860e97798487949a19b3`  
		Last Modified: Tue, 02 Apr 2019 23:46:27 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d79ed4c18af47d64c899c3e2f56386e9ec9fda72248d3ee79eabd8781e084a`  
		Last Modified: Tue, 02 Apr 2019 23:46:26 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71243d9aab87be936cfa3555fb75ba1c997fc80a5b11138a6585186a57634585`  
		Last Modified: Tue, 02 Apr 2019 23:46:47 GMT  
		Size: 119.6 MB (119611123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0965198413b0d6b87845684436d2ed2677ad607bc6b14f59f8ae1dc4e5c931c0`  
		Last Modified: Tue, 02 Apr 2019 23:46:26 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd368e0ef16f69cbe80890a16cd3d8453c29cca4110fa2e5bed48a62cd708a15`  
		Last Modified: Tue, 02 Apr 2019 23:46:26 GMT  
		Size: 3.9 KB (3917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416bba15f9073e22597a88a957ede6c12841134c8d6b256de5a456c566ce6068`  
		Last Modified: Tue, 02 Apr 2019 23:46:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.4.20-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:1d94b0d0427978270d8ff2457d9f864b31905a8e8f683c7b4bd688742f442c0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.0 MB (156011430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46cf9207d4f2c6d6ee828b0a8f343e59def912930d5420170e4ed6102d2bf6d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 13:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 14 Mar 2019 13:13:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 09:11:53 GMT
ENV GOSU_VERSION=1.11
# Wed, 03 Apr 2019 09:11:54 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 03 Apr 2019 09:12:20 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 03 Apr 2019 09:12:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 03 Apr 2019 09:12:24 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 03 Apr 2019 09:12:26 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 03 Apr 2019 09:12:27 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 03 Apr 2019 09:12:28 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:12:29 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:12:31 GMT
ENV MONGO_MAJOR=3.4
# Wed, 03 Apr 2019 09:12:32 GMT
ENV MONGO_VERSION=3.4.20
# Wed, 03 Apr 2019 09:12:36 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 03 Apr 2019 09:13:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 03 Apr 2019 09:13:32 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 03 Apr 2019 09:13:33 GMT
VOLUME [/data/db /data/configdb]
# Wed, 03 Apr 2019 09:13:34 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Wed, 03 Apr 2019 09:13:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat (3.4)
# Wed, 03 Apr 2019 09:13:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Apr 2019 09:13:39 GMT
EXPOSE 27017
# Wed, 03 Apr 2019 09:13:40 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6a83a8acb0578ebfbbf74a04004906f0b3b48a9093fc2d55e2f4733702f072`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.0 KB (1997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6773eb84c78cfadd6e06f80b284436019002b456c7ea2bb8b81fbe5219146c9a`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.5 MB (2474277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a0bc5664d45720bf4c190c4942f6c7af8305ab159e7195acfaa0258fede977`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 1.1 MB (1085802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d90e9fb115424b03824f81931655679424f7a09b346b82ac7f9c7a58dae7d25`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e980201c2b2bc6e304122efa450f9748e30ddb9d6df868385bc3f707eb2b699`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 2.0 KB (1998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffbf3a78c1e99edc7e8667fa4cdafbec33fab1672a2df97591fc394b7f4af5c5`  
		Last Modified: Wed, 03 Apr 2019 09:22:01 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0d0c5a80d298f3d53cae2735dd126aecdf4976b1331155cc9d263a1775613e`  
		Last Modified: Wed, 03 Apr 2019 09:22:39 GMT  
		Size: 112.9 MB (112858372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b80629f1a26450f353e79b51e88c973c9b1640779368af69a1b6c8ea51fc299`  
		Last Modified: Wed, 03 Apr 2019 09:22:01 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331e12a701e8e2a495d68246368cb7f182dc107f4be894ab924a7c4ceb6b3080`  
		Last Modified: Wed, 03 Apr 2019 09:22:01 GMT  
		Size: 3.9 KB (3918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f9a84bfe1244f50b4d5607389cca66177259efbb831b784e58696d7308c619`  
		Last Modified: Wed, 03 Apr 2019 09:22:01 GMT  
		Size: 118.0 B  
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
$ docker pull mongo@sha256:ae9ec87f0bc1ebb3c3636380071d20ca63656d8dd82cf2cf8f70ac23a1994b49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:3.4-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:49c28964c8a4eb041dd42f9b0a513dfcd03fd4b7c7cc7433930d758f024741ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167279552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad62612cfc71b6fde2319b0c9c7966f2bbf49a7e52b4a42e8603e0bf1d8f909c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:16:49 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Mar 2019 01:16:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 02 Apr 2019 23:43:32 GMT
ENV GOSU_VERSION=1.11
# Tue, 02 Apr 2019 23:43:32 GMT
ENV JSYAML_VERSION=3.13.0
# Tue, 02 Apr 2019 23:43:39 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 02 Apr 2019 23:43:40 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 02 Apr 2019 23:43:40 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 02 Apr 2019 23:43:41 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 02 Apr 2019 23:43:41 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 02 Apr 2019 23:43:41 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:43:42 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:43:42 GMT
ENV MONGO_MAJOR=3.4
# Tue, 02 Apr 2019 23:43:42 GMT
ENV MONGO_VERSION=3.4.20
# Tue, 02 Apr 2019 23:43:43 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 02 Apr 2019 23:44:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 02 Apr 2019 23:44:04 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 02 Apr 2019 23:44:05 GMT
VOLUME [/data/db /data/configdb]
# Tue, 02 Apr 2019 23:44:05 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Tue, 02 Apr 2019 23:44:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat (3.4)
# Tue, 02 Apr 2019 23:44:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 02 Apr 2019 23:44:06 GMT
EXPOSE 27017
# Tue, 02 Apr 2019 23:44:06 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7833eaffdda8c479f372f8bed51dfa22ad2a41ec187c8905248a67fdfae69c7`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8287cb5b9dafe7dbf0714f034c3ce7027cc9d68ff4a95d4c2711402e873217b6`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.9 MB (2945588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92d9c8d3bef70013346dcb29e55cf69e24455a658de9f6ecc716f667c81bd2`  
		Last Modified: Tue, 02 Apr 2019 23:46:28 GMT  
		Size: 1.2 MB (1151290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a99ed0412704a07ccebf7b67a323e37292c6635c1ecab51c489054f41995c2`  
		Last Modified: Tue, 02 Apr 2019 23:46:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb21677cfc537708a605191464db60a1c34c9b14a46b860e97798487949a19b3`  
		Last Modified: Tue, 02 Apr 2019 23:46:27 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d79ed4c18af47d64c899c3e2f56386e9ec9fda72248d3ee79eabd8781e084a`  
		Last Modified: Tue, 02 Apr 2019 23:46:26 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71243d9aab87be936cfa3555fb75ba1c997fc80a5b11138a6585186a57634585`  
		Last Modified: Tue, 02 Apr 2019 23:46:47 GMT  
		Size: 119.6 MB (119611123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0965198413b0d6b87845684436d2ed2677ad607bc6b14f59f8ae1dc4e5c931c0`  
		Last Modified: Tue, 02 Apr 2019 23:46:26 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd368e0ef16f69cbe80890a16cd3d8453c29cca4110fa2e5bed48a62cd708a15`  
		Last Modified: Tue, 02 Apr 2019 23:46:26 GMT  
		Size: 3.9 KB (3917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416bba15f9073e22597a88a957ede6c12841134c8d6b256de5a456c566ce6068`  
		Last Modified: Tue, 02 Apr 2019 23:46:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.4-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:1d94b0d0427978270d8ff2457d9f864b31905a8e8f683c7b4bd688742f442c0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.0 MB (156011430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46cf9207d4f2c6d6ee828b0a8f343e59def912930d5420170e4ed6102d2bf6d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 13:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 14 Mar 2019 13:13:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 09:11:53 GMT
ENV GOSU_VERSION=1.11
# Wed, 03 Apr 2019 09:11:54 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 03 Apr 2019 09:12:20 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 03 Apr 2019 09:12:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 03 Apr 2019 09:12:24 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 03 Apr 2019 09:12:26 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 03 Apr 2019 09:12:27 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 03 Apr 2019 09:12:28 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:12:29 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:12:31 GMT
ENV MONGO_MAJOR=3.4
# Wed, 03 Apr 2019 09:12:32 GMT
ENV MONGO_VERSION=3.4.20
# Wed, 03 Apr 2019 09:12:36 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 03 Apr 2019 09:13:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 03 Apr 2019 09:13:32 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 03 Apr 2019 09:13:33 GMT
VOLUME [/data/db /data/configdb]
# Wed, 03 Apr 2019 09:13:34 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Wed, 03 Apr 2019 09:13:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat (3.4)
# Wed, 03 Apr 2019 09:13:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Apr 2019 09:13:39 GMT
EXPOSE 27017
# Wed, 03 Apr 2019 09:13:40 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6a83a8acb0578ebfbbf74a04004906f0b3b48a9093fc2d55e2f4733702f072`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.0 KB (1997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6773eb84c78cfadd6e06f80b284436019002b456c7ea2bb8b81fbe5219146c9a`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.5 MB (2474277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a0bc5664d45720bf4c190c4942f6c7af8305ab159e7195acfaa0258fede977`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 1.1 MB (1085802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d90e9fb115424b03824f81931655679424f7a09b346b82ac7f9c7a58dae7d25`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e980201c2b2bc6e304122efa450f9748e30ddb9d6df868385bc3f707eb2b699`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 2.0 KB (1998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffbf3a78c1e99edc7e8667fa4cdafbec33fab1672a2df97591fc394b7f4af5c5`  
		Last Modified: Wed, 03 Apr 2019 09:22:01 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0d0c5a80d298f3d53cae2735dd126aecdf4976b1331155cc9d263a1775613e`  
		Last Modified: Wed, 03 Apr 2019 09:22:39 GMT  
		Size: 112.9 MB (112858372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b80629f1a26450f353e79b51e88c973c9b1640779368af69a1b6c8ea51fc299`  
		Last Modified: Wed, 03 Apr 2019 09:22:01 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331e12a701e8e2a495d68246368cb7f182dc107f4be894ab924a7c4ceb6b3080`  
		Last Modified: Wed, 03 Apr 2019 09:22:01 GMT  
		Size: 3.9 KB (3918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f9a84bfe1244f50b4d5607389cca66177259efbb831b784e58696d7308c619`  
		Last Modified: Wed, 03 Apr 2019 09:22:01 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6`

```console
$ docker pull mongo@sha256:04e53e663f384e43aa2f5519cfb42e9928c63c8e8b62a244633338fa8f30dc52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2906; amd64

### `mongo:3.6` - linux; amd64

```console
$ docker pull mongo@sha256:7f5b264468c4f09088269fb09b28df57eb3060451860bb6bd8916b732c0e30ab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164593492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c7a2b269761317a3b1a5080829234bed47726cabae1b8dd40481b90d6e96fa6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:16:49 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Mar 2019 01:16:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 02 Apr 2019 23:43:32 GMT
ENV GOSU_VERSION=1.11
# Tue, 02 Apr 2019 23:43:32 GMT
ENV JSYAML_VERSION=3.13.0
# Tue, 02 Apr 2019 23:43:39 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 02 Apr 2019 23:43:40 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 02 Apr 2019 23:44:10 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 02 Apr 2019 23:44:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 02 Apr 2019 23:44:11 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 02 Apr 2019 23:44:11 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:44:12 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:44:12 GMT
ENV MONGO_MAJOR=3.6
# Sat, 06 Apr 2019 00:19:46 GMT
ENV MONGO_VERSION=3.6.12
# Sat, 06 Apr 2019 00:19:46 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 06 Apr 2019 00:20:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 06 Apr 2019 00:20:10 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 06 Apr 2019 00:20:10 GMT
VOLUME [/data/db /data/configdb]
# Sat, 06 Apr 2019 00:20:11 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Sat, 06 Apr 2019 00:20:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 00:20:11 GMT
EXPOSE 27017
# Sat, 06 Apr 2019 00:20:11 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7833eaffdda8c479f372f8bed51dfa22ad2a41ec187c8905248a67fdfae69c7`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8287cb5b9dafe7dbf0714f034c3ce7027cc9d68ff4a95d4c2711402e873217b6`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.9 MB (2945588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92d9c8d3bef70013346dcb29e55cf69e24455a658de9f6ecc716f667c81bd2`  
		Last Modified: Tue, 02 Apr 2019 23:46:28 GMT  
		Size: 1.2 MB (1151290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a99ed0412704a07ccebf7b67a323e37292c6635c1ecab51c489054f41995c2`  
		Last Modified: Tue, 02 Apr 2019 23:46:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119319870601de4fd38e2c98abf90ab3441f289b7d8a60903da8219ca4f7bafe`  
		Last Modified: Tue, 02 Apr 2019 23:46:53 GMT  
		Size: 2.0 KB (1998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5ca3634decbf69a33c73b791cd1a4496df508229abb53b3e00a03934ba24c1`  
		Last Modified: Sat, 06 Apr 2019 00:20:33 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53796206f021bb7c027b98c43bfeb1377cbdaf389fcdded33828d4db1d6f800b`  
		Last Modified: Sat, 06 Apr 2019 00:20:53 GMT  
		Size: 116.9 MB (116925184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e048abfbedb0d511ac9e1312c89a466b5433c8d6f0219dfa4f6e509342186dbf`  
		Last Modified: Sat, 06 Apr 2019 00:20:33 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e96e0de338211e2d23e333e2b0d014afa2bcf375af472aecbd116ea95a3ca4`  
		Last Modified: Sat, 06 Apr 2019 00:20:33 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.6` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:78cc7b1b0bc2c8ab597aba097bb5c3159cf69199089ed1d5519ac20f0cb387be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.3 MB (154328635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8075c38227fc12e1f666c1eeaea4accfa22747a9b4d74655ad937ec13d57cca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 13:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 14 Mar 2019 13:13:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 09:11:53 GMT
ENV GOSU_VERSION=1.11
# Wed, 03 Apr 2019 09:11:54 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 03 Apr 2019 09:12:20 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 03 Apr 2019 09:12:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 03 Apr 2019 09:13:56 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 03 Apr 2019 09:14:00 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 03 Apr 2019 09:14:01 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 03 Apr 2019 09:14:02 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:14:03 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:14:04 GMT
ENV MONGO_MAJOR=3.6
# Sat, 06 Apr 2019 08:43:26 GMT
ENV MONGO_VERSION=3.6.12
# Sat, 06 Apr 2019 08:43:28 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 06 Apr 2019 08:44:32 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 06 Apr 2019 08:44:35 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 06 Apr 2019 08:44:36 GMT
VOLUME [/data/db /data/configdb]
# Sat, 06 Apr 2019 08:44:36 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:44:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 08:44:38 GMT
EXPOSE 27017
# Sat, 06 Apr 2019 08:44:39 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6a83a8acb0578ebfbbf74a04004906f0b3b48a9093fc2d55e2f4733702f072`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.0 KB (1997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6773eb84c78cfadd6e06f80b284436019002b456c7ea2bb8b81fbe5219146c9a`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.5 MB (2474277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a0bc5664d45720bf4c190c4942f6c7af8305ab159e7195acfaa0258fede977`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 1.1 MB (1085802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d90e9fb115424b03824f81931655679424f7a09b346b82ac7f9c7a58dae7d25`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a35c4e134d5e978513a8d459c79bdfa96c7e47caaf87483ce6fcfe092471d43`  
		Last Modified: Wed, 03 Apr 2019 09:22:50 GMT  
		Size: 2.0 KB (1997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e731f5b312583fbf746a8a86cf43d93d6875379ff41e6a80d5b627e9d1a2b97a`  
		Last Modified: Sat, 06 Apr 2019 08:45:33 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87c2166fec4d23bd6d3dd17864016e2139fdfee531796f8feaf4a0cd7277189`  
		Last Modified: Sat, 06 Apr 2019 08:46:14 GMT  
		Size: 111.2 MB (111175699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef1181f962075cf90d785a2180c9041fdee828494e375ce67d03b7cf87a43fc`  
		Last Modified: Sat, 06 Apr 2019 08:45:33 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed411897eb9874a09c46bd0994ffbdc6da8c7355ff462a801092860f4945801`  
		Last Modified: Sat, 06 Apr 2019 08:45:33 GMT  
		Size: 3.9 KB (3912 bytes)  
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
$ docker pull mongo@sha256:04e53e663f384e43aa2f5519cfb42e9928c63c8e8b62a244633338fa8f30dc52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2906; amd64

### `mongo:3.6.12` - linux; amd64

```console
$ docker pull mongo@sha256:7f5b264468c4f09088269fb09b28df57eb3060451860bb6bd8916b732c0e30ab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164593492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c7a2b269761317a3b1a5080829234bed47726cabae1b8dd40481b90d6e96fa6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:16:49 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Mar 2019 01:16:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 02 Apr 2019 23:43:32 GMT
ENV GOSU_VERSION=1.11
# Tue, 02 Apr 2019 23:43:32 GMT
ENV JSYAML_VERSION=3.13.0
# Tue, 02 Apr 2019 23:43:39 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 02 Apr 2019 23:43:40 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 02 Apr 2019 23:44:10 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 02 Apr 2019 23:44:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 02 Apr 2019 23:44:11 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 02 Apr 2019 23:44:11 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:44:12 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:44:12 GMT
ENV MONGO_MAJOR=3.6
# Sat, 06 Apr 2019 00:19:46 GMT
ENV MONGO_VERSION=3.6.12
# Sat, 06 Apr 2019 00:19:46 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 06 Apr 2019 00:20:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 06 Apr 2019 00:20:10 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 06 Apr 2019 00:20:10 GMT
VOLUME [/data/db /data/configdb]
# Sat, 06 Apr 2019 00:20:11 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Sat, 06 Apr 2019 00:20:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 00:20:11 GMT
EXPOSE 27017
# Sat, 06 Apr 2019 00:20:11 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7833eaffdda8c479f372f8bed51dfa22ad2a41ec187c8905248a67fdfae69c7`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8287cb5b9dafe7dbf0714f034c3ce7027cc9d68ff4a95d4c2711402e873217b6`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.9 MB (2945588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92d9c8d3bef70013346dcb29e55cf69e24455a658de9f6ecc716f667c81bd2`  
		Last Modified: Tue, 02 Apr 2019 23:46:28 GMT  
		Size: 1.2 MB (1151290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a99ed0412704a07ccebf7b67a323e37292c6635c1ecab51c489054f41995c2`  
		Last Modified: Tue, 02 Apr 2019 23:46:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119319870601de4fd38e2c98abf90ab3441f289b7d8a60903da8219ca4f7bafe`  
		Last Modified: Tue, 02 Apr 2019 23:46:53 GMT  
		Size: 2.0 KB (1998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5ca3634decbf69a33c73b791cd1a4496df508229abb53b3e00a03934ba24c1`  
		Last Modified: Sat, 06 Apr 2019 00:20:33 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53796206f021bb7c027b98c43bfeb1377cbdaf389fcdded33828d4db1d6f800b`  
		Last Modified: Sat, 06 Apr 2019 00:20:53 GMT  
		Size: 116.9 MB (116925184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e048abfbedb0d511ac9e1312c89a466b5433c8d6f0219dfa4f6e509342186dbf`  
		Last Modified: Sat, 06 Apr 2019 00:20:33 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e96e0de338211e2d23e333e2b0d014afa2bcf375af472aecbd116ea95a3ca4`  
		Last Modified: Sat, 06 Apr 2019 00:20:33 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.6.12` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:78cc7b1b0bc2c8ab597aba097bb5c3159cf69199089ed1d5519ac20f0cb387be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.3 MB (154328635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8075c38227fc12e1f666c1eeaea4accfa22747a9b4d74655ad937ec13d57cca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 13:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 14 Mar 2019 13:13:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 09:11:53 GMT
ENV GOSU_VERSION=1.11
# Wed, 03 Apr 2019 09:11:54 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 03 Apr 2019 09:12:20 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 03 Apr 2019 09:12:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 03 Apr 2019 09:13:56 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 03 Apr 2019 09:14:00 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 03 Apr 2019 09:14:01 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 03 Apr 2019 09:14:02 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:14:03 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:14:04 GMT
ENV MONGO_MAJOR=3.6
# Sat, 06 Apr 2019 08:43:26 GMT
ENV MONGO_VERSION=3.6.12
# Sat, 06 Apr 2019 08:43:28 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 06 Apr 2019 08:44:32 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 06 Apr 2019 08:44:35 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 06 Apr 2019 08:44:36 GMT
VOLUME [/data/db /data/configdb]
# Sat, 06 Apr 2019 08:44:36 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:44:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 08:44:38 GMT
EXPOSE 27017
# Sat, 06 Apr 2019 08:44:39 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6a83a8acb0578ebfbbf74a04004906f0b3b48a9093fc2d55e2f4733702f072`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.0 KB (1997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6773eb84c78cfadd6e06f80b284436019002b456c7ea2bb8b81fbe5219146c9a`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.5 MB (2474277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a0bc5664d45720bf4c190c4942f6c7af8305ab159e7195acfaa0258fede977`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 1.1 MB (1085802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d90e9fb115424b03824f81931655679424f7a09b346b82ac7f9c7a58dae7d25`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a35c4e134d5e978513a8d459c79bdfa96c7e47caaf87483ce6fcfe092471d43`  
		Last Modified: Wed, 03 Apr 2019 09:22:50 GMT  
		Size: 2.0 KB (1997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e731f5b312583fbf746a8a86cf43d93d6875379ff41e6a80d5b627e9d1a2b97a`  
		Last Modified: Sat, 06 Apr 2019 08:45:33 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87c2166fec4d23bd6d3dd17864016e2139fdfee531796f8feaf4a0cd7277189`  
		Last Modified: Sat, 06 Apr 2019 08:46:14 GMT  
		Size: 111.2 MB (111175699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef1181f962075cf90d785a2180c9041fdee828494e375ce67d03b7cf87a43fc`  
		Last Modified: Sat, 06 Apr 2019 08:45:33 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed411897eb9874a09c46bd0994ffbdc6da8c7355ff462a801092860f4945801`  
		Last Modified: Sat, 06 Apr 2019 08:45:33 GMT  
		Size: 3.9 KB (3912 bytes)  
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
$ docker pull mongo@sha256:84cb47c343d59e942b00baf070f09c1fa69eccc74cb44be05fccab46f8e1912b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:3.6.12-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:7f5b264468c4f09088269fb09b28df57eb3060451860bb6bd8916b732c0e30ab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164593492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c7a2b269761317a3b1a5080829234bed47726cabae1b8dd40481b90d6e96fa6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:16:49 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Mar 2019 01:16:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 02 Apr 2019 23:43:32 GMT
ENV GOSU_VERSION=1.11
# Tue, 02 Apr 2019 23:43:32 GMT
ENV JSYAML_VERSION=3.13.0
# Tue, 02 Apr 2019 23:43:39 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 02 Apr 2019 23:43:40 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 02 Apr 2019 23:44:10 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 02 Apr 2019 23:44:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 02 Apr 2019 23:44:11 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 02 Apr 2019 23:44:11 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:44:12 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:44:12 GMT
ENV MONGO_MAJOR=3.6
# Sat, 06 Apr 2019 00:19:46 GMT
ENV MONGO_VERSION=3.6.12
# Sat, 06 Apr 2019 00:19:46 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 06 Apr 2019 00:20:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 06 Apr 2019 00:20:10 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 06 Apr 2019 00:20:10 GMT
VOLUME [/data/db /data/configdb]
# Sat, 06 Apr 2019 00:20:11 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Sat, 06 Apr 2019 00:20:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 00:20:11 GMT
EXPOSE 27017
# Sat, 06 Apr 2019 00:20:11 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7833eaffdda8c479f372f8bed51dfa22ad2a41ec187c8905248a67fdfae69c7`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8287cb5b9dafe7dbf0714f034c3ce7027cc9d68ff4a95d4c2711402e873217b6`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.9 MB (2945588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92d9c8d3bef70013346dcb29e55cf69e24455a658de9f6ecc716f667c81bd2`  
		Last Modified: Tue, 02 Apr 2019 23:46:28 GMT  
		Size: 1.2 MB (1151290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a99ed0412704a07ccebf7b67a323e37292c6635c1ecab51c489054f41995c2`  
		Last Modified: Tue, 02 Apr 2019 23:46:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119319870601de4fd38e2c98abf90ab3441f289b7d8a60903da8219ca4f7bafe`  
		Last Modified: Tue, 02 Apr 2019 23:46:53 GMT  
		Size: 2.0 KB (1998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5ca3634decbf69a33c73b791cd1a4496df508229abb53b3e00a03934ba24c1`  
		Last Modified: Sat, 06 Apr 2019 00:20:33 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53796206f021bb7c027b98c43bfeb1377cbdaf389fcdded33828d4db1d6f800b`  
		Last Modified: Sat, 06 Apr 2019 00:20:53 GMT  
		Size: 116.9 MB (116925184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e048abfbedb0d511ac9e1312c89a466b5433c8d6f0219dfa4f6e509342186dbf`  
		Last Modified: Sat, 06 Apr 2019 00:20:33 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e96e0de338211e2d23e333e2b0d014afa2bcf375af472aecbd116ea95a3ca4`  
		Last Modified: Sat, 06 Apr 2019 00:20:33 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.6.12-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:78cc7b1b0bc2c8ab597aba097bb5c3159cf69199089ed1d5519ac20f0cb387be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.3 MB (154328635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8075c38227fc12e1f666c1eeaea4accfa22747a9b4d74655ad937ec13d57cca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 13:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 14 Mar 2019 13:13:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 09:11:53 GMT
ENV GOSU_VERSION=1.11
# Wed, 03 Apr 2019 09:11:54 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 03 Apr 2019 09:12:20 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 03 Apr 2019 09:12:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 03 Apr 2019 09:13:56 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 03 Apr 2019 09:14:00 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 03 Apr 2019 09:14:01 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 03 Apr 2019 09:14:02 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:14:03 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:14:04 GMT
ENV MONGO_MAJOR=3.6
# Sat, 06 Apr 2019 08:43:26 GMT
ENV MONGO_VERSION=3.6.12
# Sat, 06 Apr 2019 08:43:28 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 06 Apr 2019 08:44:32 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 06 Apr 2019 08:44:35 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 06 Apr 2019 08:44:36 GMT
VOLUME [/data/db /data/configdb]
# Sat, 06 Apr 2019 08:44:36 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:44:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 08:44:38 GMT
EXPOSE 27017
# Sat, 06 Apr 2019 08:44:39 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6a83a8acb0578ebfbbf74a04004906f0b3b48a9093fc2d55e2f4733702f072`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.0 KB (1997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6773eb84c78cfadd6e06f80b284436019002b456c7ea2bb8b81fbe5219146c9a`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.5 MB (2474277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a0bc5664d45720bf4c190c4942f6c7af8305ab159e7195acfaa0258fede977`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 1.1 MB (1085802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d90e9fb115424b03824f81931655679424f7a09b346b82ac7f9c7a58dae7d25`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a35c4e134d5e978513a8d459c79bdfa96c7e47caaf87483ce6fcfe092471d43`  
		Last Modified: Wed, 03 Apr 2019 09:22:50 GMT  
		Size: 2.0 KB (1997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e731f5b312583fbf746a8a86cf43d93d6875379ff41e6a80d5b627e9d1a2b97a`  
		Last Modified: Sat, 06 Apr 2019 08:45:33 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87c2166fec4d23bd6d3dd17864016e2139fdfee531796f8feaf4a0cd7277189`  
		Last Modified: Sat, 06 Apr 2019 08:46:14 GMT  
		Size: 111.2 MB (111175699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef1181f962075cf90d785a2180c9041fdee828494e375ce67d03b7cf87a43fc`  
		Last Modified: Sat, 06 Apr 2019 08:45:33 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed411897eb9874a09c46bd0994ffbdc6da8c7355ff462a801092860f4945801`  
		Last Modified: Sat, 06 Apr 2019 08:45:33 GMT  
		Size: 3.9 KB (3912 bytes)  
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
$ docker pull mongo@sha256:84cb47c343d59e942b00baf070f09c1fa69eccc74cb44be05fccab46f8e1912b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:3.6-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:7f5b264468c4f09088269fb09b28df57eb3060451860bb6bd8916b732c0e30ab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164593492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c7a2b269761317a3b1a5080829234bed47726cabae1b8dd40481b90d6e96fa6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:16:49 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Mar 2019 01:16:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 02 Apr 2019 23:43:32 GMT
ENV GOSU_VERSION=1.11
# Tue, 02 Apr 2019 23:43:32 GMT
ENV JSYAML_VERSION=3.13.0
# Tue, 02 Apr 2019 23:43:39 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 02 Apr 2019 23:43:40 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 02 Apr 2019 23:44:10 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 02 Apr 2019 23:44:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 02 Apr 2019 23:44:11 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 02 Apr 2019 23:44:11 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:44:12 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:44:12 GMT
ENV MONGO_MAJOR=3.6
# Sat, 06 Apr 2019 00:19:46 GMT
ENV MONGO_VERSION=3.6.12
# Sat, 06 Apr 2019 00:19:46 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 06 Apr 2019 00:20:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 06 Apr 2019 00:20:10 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 06 Apr 2019 00:20:10 GMT
VOLUME [/data/db /data/configdb]
# Sat, 06 Apr 2019 00:20:11 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Sat, 06 Apr 2019 00:20:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 00:20:11 GMT
EXPOSE 27017
# Sat, 06 Apr 2019 00:20:11 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7833eaffdda8c479f372f8bed51dfa22ad2a41ec187c8905248a67fdfae69c7`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8287cb5b9dafe7dbf0714f034c3ce7027cc9d68ff4a95d4c2711402e873217b6`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.9 MB (2945588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92d9c8d3bef70013346dcb29e55cf69e24455a658de9f6ecc716f667c81bd2`  
		Last Modified: Tue, 02 Apr 2019 23:46:28 GMT  
		Size: 1.2 MB (1151290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a99ed0412704a07ccebf7b67a323e37292c6635c1ecab51c489054f41995c2`  
		Last Modified: Tue, 02 Apr 2019 23:46:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119319870601de4fd38e2c98abf90ab3441f289b7d8a60903da8219ca4f7bafe`  
		Last Modified: Tue, 02 Apr 2019 23:46:53 GMT  
		Size: 2.0 KB (1998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5ca3634decbf69a33c73b791cd1a4496df508229abb53b3e00a03934ba24c1`  
		Last Modified: Sat, 06 Apr 2019 00:20:33 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53796206f021bb7c027b98c43bfeb1377cbdaf389fcdded33828d4db1d6f800b`  
		Last Modified: Sat, 06 Apr 2019 00:20:53 GMT  
		Size: 116.9 MB (116925184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e048abfbedb0d511ac9e1312c89a466b5433c8d6f0219dfa4f6e509342186dbf`  
		Last Modified: Sat, 06 Apr 2019 00:20:33 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e96e0de338211e2d23e333e2b0d014afa2bcf375af472aecbd116ea95a3ca4`  
		Last Modified: Sat, 06 Apr 2019 00:20:33 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.6-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:78cc7b1b0bc2c8ab597aba097bb5c3159cf69199089ed1d5519ac20f0cb387be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.3 MB (154328635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8075c38227fc12e1f666c1eeaea4accfa22747a9b4d74655ad937ec13d57cca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 13:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 14 Mar 2019 13:13:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 09:11:53 GMT
ENV GOSU_VERSION=1.11
# Wed, 03 Apr 2019 09:11:54 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 03 Apr 2019 09:12:20 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 03 Apr 2019 09:12:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 03 Apr 2019 09:13:56 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 03 Apr 2019 09:14:00 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 03 Apr 2019 09:14:01 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 03 Apr 2019 09:14:02 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:14:03 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:14:04 GMT
ENV MONGO_MAJOR=3.6
# Sat, 06 Apr 2019 08:43:26 GMT
ENV MONGO_VERSION=3.6.12
# Sat, 06 Apr 2019 08:43:28 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 06 Apr 2019 08:44:32 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 06 Apr 2019 08:44:35 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 06 Apr 2019 08:44:36 GMT
VOLUME [/data/db /data/configdb]
# Sat, 06 Apr 2019 08:44:36 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:44:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 08:44:38 GMT
EXPOSE 27017
# Sat, 06 Apr 2019 08:44:39 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6a83a8acb0578ebfbbf74a04004906f0b3b48a9093fc2d55e2f4733702f072`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.0 KB (1997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6773eb84c78cfadd6e06f80b284436019002b456c7ea2bb8b81fbe5219146c9a`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.5 MB (2474277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a0bc5664d45720bf4c190c4942f6c7af8305ab159e7195acfaa0258fede977`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 1.1 MB (1085802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d90e9fb115424b03824f81931655679424f7a09b346b82ac7f9c7a58dae7d25`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a35c4e134d5e978513a8d459c79bdfa96c7e47caaf87483ce6fcfe092471d43`  
		Last Modified: Wed, 03 Apr 2019 09:22:50 GMT  
		Size: 2.0 KB (1997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e731f5b312583fbf746a8a86cf43d93d6875379ff41e6a80d5b627e9d1a2b97a`  
		Last Modified: Sat, 06 Apr 2019 08:45:33 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87c2166fec4d23bd6d3dd17864016e2139fdfee531796f8feaf4a0cd7277189`  
		Last Modified: Sat, 06 Apr 2019 08:46:14 GMT  
		Size: 111.2 MB (111175699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef1181f962075cf90d785a2180c9041fdee828494e375ce67d03b7cf87a43fc`  
		Last Modified: Sat, 06 Apr 2019 08:45:33 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed411897eb9874a09c46bd0994ffbdc6da8c7355ff462a801092860f4945801`  
		Last Modified: Sat, 06 Apr 2019 08:45:33 GMT  
		Size: 3.9 KB (3912 bytes)  
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
$ docker pull mongo@sha256:84cb47c343d59e942b00baf070f09c1fa69eccc74cb44be05fccab46f8e1912b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:3-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:7f5b264468c4f09088269fb09b28df57eb3060451860bb6bd8916b732c0e30ab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164593492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c7a2b269761317a3b1a5080829234bed47726cabae1b8dd40481b90d6e96fa6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:16:49 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Mar 2019 01:16:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 02 Apr 2019 23:43:32 GMT
ENV GOSU_VERSION=1.11
# Tue, 02 Apr 2019 23:43:32 GMT
ENV JSYAML_VERSION=3.13.0
# Tue, 02 Apr 2019 23:43:39 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 02 Apr 2019 23:43:40 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 02 Apr 2019 23:44:10 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 02 Apr 2019 23:44:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 02 Apr 2019 23:44:11 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 02 Apr 2019 23:44:11 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:44:12 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:44:12 GMT
ENV MONGO_MAJOR=3.6
# Sat, 06 Apr 2019 00:19:46 GMT
ENV MONGO_VERSION=3.6.12
# Sat, 06 Apr 2019 00:19:46 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 06 Apr 2019 00:20:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 06 Apr 2019 00:20:10 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 06 Apr 2019 00:20:10 GMT
VOLUME [/data/db /data/configdb]
# Sat, 06 Apr 2019 00:20:11 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Sat, 06 Apr 2019 00:20:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 00:20:11 GMT
EXPOSE 27017
# Sat, 06 Apr 2019 00:20:11 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7833eaffdda8c479f372f8bed51dfa22ad2a41ec187c8905248a67fdfae69c7`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8287cb5b9dafe7dbf0714f034c3ce7027cc9d68ff4a95d4c2711402e873217b6`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.9 MB (2945588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92d9c8d3bef70013346dcb29e55cf69e24455a658de9f6ecc716f667c81bd2`  
		Last Modified: Tue, 02 Apr 2019 23:46:28 GMT  
		Size: 1.2 MB (1151290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a99ed0412704a07ccebf7b67a323e37292c6635c1ecab51c489054f41995c2`  
		Last Modified: Tue, 02 Apr 2019 23:46:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119319870601de4fd38e2c98abf90ab3441f289b7d8a60903da8219ca4f7bafe`  
		Last Modified: Tue, 02 Apr 2019 23:46:53 GMT  
		Size: 2.0 KB (1998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5ca3634decbf69a33c73b791cd1a4496df508229abb53b3e00a03934ba24c1`  
		Last Modified: Sat, 06 Apr 2019 00:20:33 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53796206f021bb7c027b98c43bfeb1377cbdaf389fcdded33828d4db1d6f800b`  
		Last Modified: Sat, 06 Apr 2019 00:20:53 GMT  
		Size: 116.9 MB (116925184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e048abfbedb0d511ac9e1312c89a466b5433c8d6f0219dfa4f6e509342186dbf`  
		Last Modified: Sat, 06 Apr 2019 00:20:33 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e96e0de338211e2d23e333e2b0d014afa2bcf375af472aecbd116ea95a3ca4`  
		Last Modified: Sat, 06 Apr 2019 00:20:33 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:78cc7b1b0bc2c8ab597aba097bb5c3159cf69199089ed1d5519ac20f0cb387be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.3 MB (154328635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8075c38227fc12e1f666c1eeaea4accfa22747a9b4d74655ad937ec13d57cca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 13:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 14 Mar 2019 13:13:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 09:11:53 GMT
ENV GOSU_VERSION=1.11
# Wed, 03 Apr 2019 09:11:54 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 03 Apr 2019 09:12:20 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 03 Apr 2019 09:12:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 03 Apr 2019 09:13:56 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 03 Apr 2019 09:14:00 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 03 Apr 2019 09:14:01 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 03 Apr 2019 09:14:02 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:14:03 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:14:04 GMT
ENV MONGO_MAJOR=3.6
# Sat, 06 Apr 2019 08:43:26 GMT
ENV MONGO_VERSION=3.6.12
# Sat, 06 Apr 2019 08:43:28 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 06 Apr 2019 08:44:32 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 06 Apr 2019 08:44:35 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 06 Apr 2019 08:44:36 GMT
VOLUME [/data/db /data/configdb]
# Sat, 06 Apr 2019 08:44:36 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:44:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 08:44:38 GMT
EXPOSE 27017
# Sat, 06 Apr 2019 08:44:39 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6a83a8acb0578ebfbbf74a04004906f0b3b48a9093fc2d55e2f4733702f072`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.0 KB (1997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6773eb84c78cfadd6e06f80b284436019002b456c7ea2bb8b81fbe5219146c9a`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.5 MB (2474277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a0bc5664d45720bf4c190c4942f6c7af8305ab159e7195acfaa0258fede977`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 1.1 MB (1085802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d90e9fb115424b03824f81931655679424f7a09b346b82ac7f9c7a58dae7d25`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a35c4e134d5e978513a8d459c79bdfa96c7e47caaf87483ce6fcfe092471d43`  
		Last Modified: Wed, 03 Apr 2019 09:22:50 GMT  
		Size: 2.0 KB (1997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e731f5b312583fbf746a8a86cf43d93d6875379ff41e6a80d5b627e9d1a2b97a`  
		Last Modified: Sat, 06 Apr 2019 08:45:33 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87c2166fec4d23bd6d3dd17864016e2139fdfee531796f8feaf4a0cd7277189`  
		Last Modified: Sat, 06 Apr 2019 08:46:14 GMT  
		Size: 111.2 MB (111175699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef1181f962075cf90d785a2180c9041fdee828494e375ce67d03b7cf87a43fc`  
		Last Modified: Sat, 06 Apr 2019 08:45:33 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed411897eb9874a09c46bd0994ffbdc6da8c7355ff462a801092860f4945801`  
		Last Modified: Sat, 06 Apr 2019 08:45:33 GMT  
		Size: 3.9 KB (3912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4`

```console
$ docker pull mongo@sha256:68209a50d83c8e37f3f2dca6d2a69b1c84c57dbae7d74a47640434f2678ae13a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64

### `mongo:4` - linux; amd64

```console
$ docker pull mongo@sha256:43ebe367bb2c17fd4787a32e2824141a6e229cab8139871aaf8b7893d561fd93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152382959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1c8142b3efc0b00c32c57a4095366a48a5b769b94f243ddf2bac4d44ad242c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:16:49 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Mar 2019 01:16:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 02 Apr 2019 23:43:32 GMT
ENV GOSU_VERSION=1.11
# Tue, 02 Apr 2019 23:43:32 GMT
ENV JSYAML_VERSION=3.13.0
# Tue, 02 Apr 2019 23:43:39 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 02 Apr 2019 23:43:40 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 02 Apr 2019 23:44:42 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Tue, 02 Apr 2019 23:44:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 02 Apr 2019 23:44:43 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 02 Apr 2019 23:44:43 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:44:43 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:44:43 GMT
ENV MONGO_MAJOR=4.0
# Fri, 12 Apr 2019 00:21:14 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 00:21:15 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 00:21:48 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 00:21:49 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 00:21:49 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 00:21:49 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 00:21:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 00:21:50 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 00:21:50 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7833eaffdda8c479f372f8bed51dfa22ad2a41ec187c8905248a67fdfae69c7`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8287cb5b9dafe7dbf0714f034c3ce7027cc9d68ff4a95d4c2711402e873217b6`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.9 MB (2945588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92d9c8d3bef70013346dcb29e55cf69e24455a658de9f6ecc716f667c81bd2`  
		Last Modified: Tue, 02 Apr 2019 23:46:28 GMT  
		Size: 1.2 MB (1151290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a99ed0412704a07ccebf7b67a323e37292c6635c1ecab51c489054f41995c2`  
		Last Modified: Tue, 02 Apr 2019 23:46:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c26ac89d7363507ee99af3b49f300510574a46a8945d72f8b2714ac46b8ac61`  
		Last Modified: Tue, 02 Apr 2019 23:47:18 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f01a3e0a56a41a6f789455b5839d017ae4ecb0e71b10baf02ebd9c9921d784`  
		Last Modified: Fri, 12 Apr 2019 00:22:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff5825a76fb66af59bd62427db8e29038f20a2bb2e2a921cf7683a4e038da7d8`  
		Last Modified: Fri, 12 Apr 2019 00:23:01 GMT  
		Size: 104.7 MB (104715220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af8892a044b9bfe0c5a4c801be29e6ded473b996ca7ff860f53e56b96c812cb`  
		Last Modified: Fri, 12 Apr 2019 00:22:41 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33eada78dbf20eb76f28b59b013b2e0d4607067bee3599e880fbf6dcbe468bab`  
		Last Modified: Fri, 12 Apr 2019 00:22:41 GMT  
		Size: 3.9 KB (3915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:4d57e5c3e6411989294726b5ec9c270dff4b5a69ae35592cb3b01fa9450cd7cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.3 MB (142341683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e70cd15d7bbffc3f22cdeebacf4c52231923f2632e2223502c4b87033a2d3370`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 13:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 14 Mar 2019 13:13:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 09:11:53 GMT
ENV GOSU_VERSION=1.11
# Wed, 03 Apr 2019 09:11:54 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 03 Apr 2019 09:12:20 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 03 Apr 2019 09:12:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 03 Apr 2019 09:15:28 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 03 Apr 2019 09:15:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 03 Apr 2019 09:15:33 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 03 Apr 2019 09:15:34 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:15:35 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:15:36 GMT
ENV MONGO_MAJOR=4.0
# Fri, 12 Apr 2019 08:56:14 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 08:56:16 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 08:57:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 08:57:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 08:57:16 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 08:57:17 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 08:57:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 08:57:18 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 08:57:19 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6a83a8acb0578ebfbbf74a04004906f0b3b48a9093fc2d55e2f4733702f072`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.0 KB (1997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6773eb84c78cfadd6e06f80b284436019002b456c7ea2bb8b81fbe5219146c9a`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.5 MB (2474277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a0bc5664d45720bf4c190c4942f6c7af8305ab159e7195acfaa0258fede977`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 1.1 MB (1085802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d90e9fb115424b03824f81931655679424f7a09b346b82ac7f9c7a58dae7d25`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620e2f2c134ec045536dbf36bf0c0d26665bf08254948f0fc2e4ab1b88c2e071`  
		Last Modified: Wed, 03 Apr 2019 09:23:41 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1657faff5cf9942c59e9be2b414088cd853feb7d52cc9ed334033f5fac084ef`  
		Last Modified: Fri, 12 Apr 2019 08:59:06 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda8969b171ba51b0987988905cb49129dac1aae886b6a98cf3d82bd5f0d612a`  
		Last Modified: Fri, 12 Apr 2019 08:59:39 GMT  
		Size: 99.2 MB (99189313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49c0b88c1b3281accb3c1c91794de0dbc0520147a0ecb130255335e05705257`  
		Last Modified: Fri, 12 Apr 2019 08:59:06 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bfda2e1ac428dbcdfb39f965ee7517f677d55a1ec96a5c3bf462ededb200506`  
		Last Modified: Fri, 12 Apr 2019 08:59:06 GMT  
		Size: 3.9 KB (3914 bytes)  
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
$ docker pull mongo@sha256:68209a50d83c8e37f3f2dca6d2a69b1c84c57dbae7d74a47640434f2678ae13a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64

### `mongo:4.0` - linux; amd64

```console
$ docker pull mongo@sha256:43ebe367bb2c17fd4787a32e2824141a6e229cab8139871aaf8b7893d561fd93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152382959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1c8142b3efc0b00c32c57a4095366a48a5b769b94f243ddf2bac4d44ad242c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:16:49 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Mar 2019 01:16:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 02 Apr 2019 23:43:32 GMT
ENV GOSU_VERSION=1.11
# Tue, 02 Apr 2019 23:43:32 GMT
ENV JSYAML_VERSION=3.13.0
# Tue, 02 Apr 2019 23:43:39 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 02 Apr 2019 23:43:40 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 02 Apr 2019 23:44:42 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Tue, 02 Apr 2019 23:44:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 02 Apr 2019 23:44:43 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 02 Apr 2019 23:44:43 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:44:43 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:44:43 GMT
ENV MONGO_MAJOR=4.0
# Fri, 12 Apr 2019 00:21:14 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 00:21:15 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 00:21:48 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 00:21:49 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 00:21:49 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 00:21:49 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 00:21:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 00:21:50 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 00:21:50 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7833eaffdda8c479f372f8bed51dfa22ad2a41ec187c8905248a67fdfae69c7`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8287cb5b9dafe7dbf0714f034c3ce7027cc9d68ff4a95d4c2711402e873217b6`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.9 MB (2945588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92d9c8d3bef70013346dcb29e55cf69e24455a658de9f6ecc716f667c81bd2`  
		Last Modified: Tue, 02 Apr 2019 23:46:28 GMT  
		Size: 1.2 MB (1151290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a99ed0412704a07ccebf7b67a323e37292c6635c1ecab51c489054f41995c2`  
		Last Modified: Tue, 02 Apr 2019 23:46:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c26ac89d7363507ee99af3b49f300510574a46a8945d72f8b2714ac46b8ac61`  
		Last Modified: Tue, 02 Apr 2019 23:47:18 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f01a3e0a56a41a6f789455b5839d017ae4ecb0e71b10baf02ebd9c9921d784`  
		Last Modified: Fri, 12 Apr 2019 00:22:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff5825a76fb66af59bd62427db8e29038f20a2bb2e2a921cf7683a4e038da7d8`  
		Last Modified: Fri, 12 Apr 2019 00:23:01 GMT  
		Size: 104.7 MB (104715220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af8892a044b9bfe0c5a4c801be29e6ded473b996ca7ff860f53e56b96c812cb`  
		Last Modified: Fri, 12 Apr 2019 00:22:41 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33eada78dbf20eb76f28b59b013b2e0d4607067bee3599e880fbf6dcbe468bab`  
		Last Modified: Fri, 12 Apr 2019 00:22:41 GMT  
		Size: 3.9 KB (3915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:4d57e5c3e6411989294726b5ec9c270dff4b5a69ae35592cb3b01fa9450cd7cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.3 MB (142341683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e70cd15d7bbffc3f22cdeebacf4c52231923f2632e2223502c4b87033a2d3370`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 13:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 14 Mar 2019 13:13:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 09:11:53 GMT
ENV GOSU_VERSION=1.11
# Wed, 03 Apr 2019 09:11:54 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 03 Apr 2019 09:12:20 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 03 Apr 2019 09:12:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 03 Apr 2019 09:15:28 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 03 Apr 2019 09:15:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 03 Apr 2019 09:15:33 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 03 Apr 2019 09:15:34 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:15:35 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:15:36 GMT
ENV MONGO_MAJOR=4.0
# Fri, 12 Apr 2019 08:56:14 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 08:56:16 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 08:57:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 08:57:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 08:57:16 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 08:57:17 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 08:57:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 08:57:18 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 08:57:19 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6a83a8acb0578ebfbbf74a04004906f0b3b48a9093fc2d55e2f4733702f072`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.0 KB (1997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6773eb84c78cfadd6e06f80b284436019002b456c7ea2bb8b81fbe5219146c9a`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.5 MB (2474277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a0bc5664d45720bf4c190c4942f6c7af8305ab159e7195acfaa0258fede977`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 1.1 MB (1085802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d90e9fb115424b03824f81931655679424f7a09b346b82ac7f9c7a58dae7d25`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620e2f2c134ec045536dbf36bf0c0d26665bf08254948f0fc2e4ab1b88c2e071`  
		Last Modified: Wed, 03 Apr 2019 09:23:41 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1657faff5cf9942c59e9be2b414088cd853feb7d52cc9ed334033f5fac084ef`  
		Last Modified: Fri, 12 Apr 2019 08:59:06 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda8969b171ba51b0987988905cb49129dac1aae886b6a98cf3d82bd5f0d612a`  
		Last Modified: Fri, 12 Apr 2019 08:59:39 GMT  
		Size: 99.2 MB (99189313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49c0b88c1b3281accb3c1c91794de0dbc0520147a0ecb130255335e05705257`  
		Last Modified: Fri, 12 Apr 2019 08:59:06 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bfda2e1ac428dbcdfb39f965ee7517f677d55a1ec96a5c3bf462ededb200506`  
		Last Modified: Fri, 12 Apr 2019 08:59:06 GMT  
		Size: 3.9 KB (3914 bytes)  
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
$ docker pull mongo@sha256:68209a50d83c8e37f3f2dca6d2a69b1c84c57dbae7d74a47640434f2678ae13a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64

### `mongo:4.0.9` - linux; amd64

```console
$ docker pull mongo@sha256:43ebe367bb2c17fd4787a32e2824141a6e229cab8139871aaf8b7893d561fd93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152382959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1c8142b3efc0b00c32c57a4095366a48a5b769b94f243ddf2bac4d44ad242c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:16:49 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Mar 2019 01:16:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 02 Apr 2019 23:43:32 GMT
ENV GOSU_VERSION=1.11
# Tue, 02 Apr 2019 23:43:32 GMT
ENV JSYAML_VERSION=3.13.0
# Tue, 02 Apr 2019 23:43:39 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 02 Apr 2019 23:43:40 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 02 Apr 2019 23:44:42 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Tue, 02 Apr 2019 23:44:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 02 Apr 2019 23:44:43 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 02 Apr 2019 23:44:43 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:44:43 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:44:43 GMT
ENV MONGO_MAJOR=4.0
# Fri, 12 Apr 2019 00:21:14 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 00:21:15 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 00:21:48 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 00:21:49 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 00:21:49 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 00:21:49 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 00:21:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 00:21:50 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 00:21:50 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7833eaffdda8c479f372f8bed51dfa22ad2a41ec187c8905248a67fdfae69c7`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8287cb5b9dafe7dbf0714f034c3ce7027cc9d68ff4a95d4c2711402e873217b6`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.9 MB (2945588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92d9c8d3bef70013346dcb29e55cf69e24455a658de9f6ecc716f667c81bd2`  
		Last Modified: Tue, 02 Apr 2019 23:46:28 GMT  
		Size: 1.2 MB (1151290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a99ed0412704a07ccebf7b67a323e37292c6635c1ecab51c489054f41995c2`  
		Last Modified: Tue, 02 Apr 2019 23:46:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c26ac89d7363507ee99af3b49f300510574a46a8945d72f8b2714ac46b8ac61`  
		Last Modified: Tue, 02 Apr 2019 23:47:18 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f01a3e0a56a41a6f789455b5839d017ae4ecb0e71b10baf02ebd9c9921d784`  
		Last Modified: Fri, 12 Apr 2019 00:22:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff5825a76fb66af59bd62427db8e29038f20a2bb2e2a921cf7683a4e038da7d8`  
		Last Modified: Fri, 12 Apr 2019 00:23:01 GMT  
		Size: 104.7 MB (104715220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af8892a044b9bfe0c5a4c801be29e6ded473b996ca7ff860f53e56b96c812cb`  
		Last Modified: Fri, 12 Apr 2019 00:22:41 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33eada78dbf20eb76f28b59b013b2e0d4607067bee3599e880fbf6dcbe468bab`  
		Last Modified: Fri, 12 Apr 2019 00:22:41 GMT  
		Size: 3.9 KB (3915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0.9` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:4d57e5c3e6411989294726b5ec9c270dff4b5a69ae35592cb3b01fa9450cd7cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.3 MB (142341683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e70cd15d7bbffc3f22cdeebacf4c52231923f2632e2223502c4b87033a2d3370`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 13:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 14 Mar 2019 13:13:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 09:11:53 GMT
ENV GOSU_VERSION=1.11
# Wed, 03 Apr 2019 09:11:54 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 03 Apr 2019 09:12:20 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 03 Apr 2019 09:12:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 03 Apr 2019 09:15:28 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 03 Apr 2019 09:15:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 03 Apr 2019 09:15:33 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 03 Apr 2019 09:15:34 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:15:35 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:15:36 GMT
ENV MONGO_MAJOR=4.0
# Fri, 12 Apr 2019 08:56:14 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 08:56:16 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 08:57:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 08:57:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 08:57:16 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 08:57:17 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 08:57:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 08:57:18 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 08:57:19 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6a83a8acb0578ebfbbf74a04004906f0b3b48a9093fc2d55e2f4733702f072`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.0 KB (1997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6773eb84c78cfadd6e06f80b284436019002b456c7ea2bb8b81fbe5219146c9a`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.5 MB (2474277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a0bc5664d45720bf4c190c4942f6c7af8305ab159e7195acfaa0258fede977`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 1.1 MB (1085802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d90e9fb115424b03824f81931655679424f7a09b346b82ac7f9c7a58dae7d25`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620e2f2c134ec045536dbf36bf0c0d26665bf08254948f0fc2e4ab1b88c2e071`  
		Last Modified: Wed, 03 Apr 2019 09:23:41 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1657faff5cf9942c59e9be2b414088cd853feb7d52cc9ed334033f5fac084ef`  
		Last Modified: Fri, 12 Apr 2019 08:59:06 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda8969b171ba51b0987988905cb49129dac1aae886b6a98cf3d82bd5f0d612a`  
		Last Modified: Fri, 12 Apr 2019 08:59:39 GMT  
		Size: 99.2 MB (99189313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49c0b88c1b3281accb3c1c91794de0dbc0520147a0ecb130255335e05705257`  
		Last Modified: Fri, 12 Apr 2019 08:59:06 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bfda2e1ac428dbcdfb39f965ee7517f677d55a1ec96a5c3bf462ededb200506`  
		Last Modified: Fri, 12 Apr 2019 08:59:06 GMT  
		Size: 3.9 KB (3914 bytes)  
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
$ docker pull mongo@sha256:8bfdfc2f169d934a2deef860ff74a6d97731f31250addb3d62f28c6008745f78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:4.0.9-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:43ebe367bb2c17fd4787a32e2824141a6e229cab8139871aaf8b7893d561fd93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152382959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1c8142b3efc0b00c32c57a4095366a48a5b769b94f243ddf2bac4d44ad242c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:16:49 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Mar 2019 01:16:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 02 Apr 2019 23:43:32 GMT
ENV GOSU_VERSION=1.11
# Tue, 02 Apr 2019 23:43:32 GMT
ENV JSYAML_VERSION=3.13.0
# Tue, 02 Apr 2019 23:43:39 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 02 Apr 2019 23:43:40 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 02 Apr 2019 23:44:42 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Tue, 02 Apr 2019 23:44:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 02 Apr 2019 23:44:43 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 02 Apr 2019 23:44:43 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:44:43 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:44:43 GMT
ENV MONGO_MAJOR=4.0
# Fri, 12 Apr 2019 00:21:14 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 00:21:15 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 00:21:48 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 00:21:49 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 00:21:49 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 00:21:49 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 00:21:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 00:21:50 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 00:21:50 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7833eaffdda8c479f372f8bed51dfa22ad2a41ec187c8905248a67fdfae69c7`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8287cb5b9dafe7dbf0714f034c3ce7027cc9d68ff4a95d4c2711402e873217b6`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.9 MB (2945588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92d9c8d3bef70013346dcb29e55cf69e24455a658de9f6ecc716f667c81bd2`  
		Last Modified: Tue, 02 Apr 2019 23:46:28 GMT  
		Size: 1.2 MB (1151290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a99ed0412704a07ccebf7b67a323e37292c6635c1ecab51c489054f41995c2`  
		Last Modified: Tue, 02 Apr 2019 23:46:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c26ac89d7363507ee99af3b49f300510574a46a8945d72f8b2714ac46b8ac61`  
		Last Modified: Tue, 02 Apr 2019 23:47:18 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f01a3e0a56a41a6f789455b5839d017ae4ecb0e71b10baf02ebd9c9921d784`  
		Last Modified: Fri, 12 Apr 2019 00:22:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff5825a76fb66af59bd62427db8e29038f20a2bb2e2a921cf7683a4e038da7d8`  
		Last Modified: Fri, 12 Apr 2019 00:23:01 GMT  
		Size: 104.7 MB (104715220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af8892a044b9bfe0c5a4c801be29e6ded473b996ca7ff860f53e56b96c812cb`  
		Last Modified: Fri, 12 Apr 2019 00:22:41 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33eada78dbf20eb76f28b59b013b2e0d4607067bee3599e880fbf6dcbe468bab`  
		Last Modified: Fri, 12 Apr 2019 00:22:41 GMT  
		Size: 3.9 KB (3915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0.9-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:4d57e5c3e6411989294726b5ec9c270dff4b5a69ae35592cb3b01fa9450cd7cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.3 MB (142341683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e70cd15d7bbffc3f22cdeebacf4c52231923f2632e2223502c4b87033a2d3370`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 13:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 14 Mar 2019 13:13:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 09:11:53 GMT
ENV GOSU_VERSION=1.11
# Wed, 03 Apr 2019 09:11:54 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 03 Apr 2019 09:12:20 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 03 Apr 2019 09:12:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 03 Apr 2019 09:15:28 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 03 Apr 2019 09:15:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 03 Apr 2019 09:15:33 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 03 Apr 2019 09:15:34 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:15:35 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:15:36 GMT
ENV MONGO_MAJOR=4.0
# Fri, 12 Apr 2019 08:56:14 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 08:56:16 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 08:57:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 08:57:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 08:57:16 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 08:57:17 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 08:57:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 08:57:18 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 08:57:19 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6a83a8acb0578ebfbbf74a04004906f0b3b48a9093fc2d55e2f4733702f072`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.0 KB (1997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6773eb84c78cfadd6e06f80b284436019002b456c7ea2bb8b81fbe5219146c9a`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.5 MB (2474277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a0bc5664d45720bf4c190c4942f6c7af8305ab159e7195acfaa0258fede977`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 1.1 MB (1085802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d90e9fb115424b03824f81931655679424f7a09b346b82ac7f9c7a58dae7d25`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620e2f2c134ec045536dbf36bf0c0d26665bf08254948f0fc2e4ab1b88c2e071`  
		Last Modified: Wed, 03 Apr 2019 09:23:41 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1657faff5cf9942c59e9be2b414088cd853feb7d52cc9ed334033f5fac084ef`  
		Last Modified: Fri, 12 Apr 2019 08:59:06 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda8969b171ba51b0987988905cb49129dac1aae886b6a98cf3d82bd5f0d612a`  
		Last Modified: Fri, 12 Apr 2019 08:59:39 GMT  
		Size: 99.2 MB (99189313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49c0b88c1b3281accb3c1c91794de0dbc0520147a0ecb130255335e05705257`  
		Last Modified: Fri, 12 Apr 2019 08:59:06 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bfda2e1ac428dbcdfb39f965ee7517f677d55a1ec96a5c3bf462ededb200506`  
		Last Modified: Fri, 12 Apr 2019 08:59:06 GMT  
		Size: 3.9 KB (3914 bytes)  
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
$ docker pull mongo@sha256:8bfdfc2f169d934a2deef860ff74a6d97731f31250addb3d62f28c6008745f78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:4.0-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:43ebe367bb2c17fd4787a32e2824141a6e229cab8139871aaf8b7893d561fd93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152382959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1c8142b3efc0b00c32c57a4095366a48a5b769b94f243ddf2bac4d44ad242c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:16:49 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Mar 2019 01:16:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 02 Apr 2019 23:43:32 GMT
ENV GOSU_VERSION=1.11
# Tue, 02 Apr 2019 23:43:32 GMT
ENV JSYAML_VERSION=3.13.0
# Tue, 02 Apr 2019 23:43:39 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 02 Apr 2019 23:43:40 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 02 Apr 2019 23:44:42 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Tue, 02 Apr 2019 23:44:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 02 Apr 2019 23:44:43 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 02 Apr 2019 23:44:43 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:44:43 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:44:43 GMT
ENV MONGO_MAJOR=4.0
# Fri, 12 Apr 2019 00:21:14 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 00:21:15 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 00:21:48 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 00:21:49 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 00:21:49 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 00:21:49 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 00:21:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 00:21:50 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 00:21:50 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7833eaffdda8c479f372f8bed51dfa22ad2a41ec187c8905248a67fdfae69c7`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8287cb5b9dafe7dbf0714f034c3ce7027cc9d68ff4a95d4c2711402e873217b6`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.9 MB (2945588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92d9c8d3bef70013346dcb29e55cf69e24455a658de9f6ecc716f667c81bd2`  
		Last Modified: Tue, 02 Apr 2019 23:46:28 GMT  
		Size: 1.2 MB (1151290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a99ed0412704a07ccebf7b67a323e37292c6635c1ecab51c489054f41995c2`  
		Last Modified: Tue, 02 Apr 2019 23:46:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c26ac89d7363507ee99af3b49f300510574a46a8945d72f8b2714ac46b8ac61`  
		Last Modified: Tue, 02 Apr 2019 23:47:18 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f01a3e0a56a41a6f789455b5839d017ae4ecb0e71b10baf02ebd9c9921d784`  
		Last Modified: Fri, 12 Apr 2019 00:22:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff5825a76fb66af59bd62427db8e29038f20a2bb2e2a921cf7683a4e038da7d8`  
		Last Modified: Fri, 12 Apr 2019 00:23:01 GMT  
		Size: 104.7 MB (104715220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af8892a044b9bfe0c5a4c801be29e6ded473b996ca7ff860f53e56b96c812cb`  
		Last Modified: Fri, 12 Apr 2019 00:22:41 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33eada78dbf20eb76f28b59b013b2e0d4607067bee3599e880fbf6dcbe468bab`  
		Last Modified: Fri, 12 Apr 2019 00:22:41 GMT  
		Size: 3.9 KB (3915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:4d57e5c3e6411989294726b5ec9c270dff4b5a69ae35592cb3b01fa9450cd7cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.3 MB (142341683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e70cd15d7bbffc3f22cdeebacf4c52231923f2632e2223502c4b87033a2d3370`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 13:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 14 Mar 2019 13:13:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 09:11:53 GMT
ENV GOSU_VERSION=1.11
# Wed, 03 Apr 2019 09:11:54 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 03 Apr 2019 09:12:20 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 03 Apr 2019 09:12:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 03 Apr 2019 09:15:28 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 03 Apr 2019 09:15:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 03 Apr 2019 09:15:33 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 03 Apr 2019 09:15:34 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:15:35 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:15:36 GMT
ENV MONGO_MAJOR=4.0
# Fri, 12 Apr 2019 08:56:14 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 08:56:16 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 08:57:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 08:57:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 08:57:16 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 08:57:17 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 08:57:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 08:57:18 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 08:57:19 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6a83a8acb0578ebfbbf74a04004906f0b3b48a9093fc2d55e2f4733702f072`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.0 KB (1997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6773eb84c78cfadd6e06f80b284436019002b456c7ea2bb8b81fbe5219146c9a`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.5 MB (2474277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a0bc5664d45720bf4c190c4942f6c7af8305ab159e7195acfaa0258fede977`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 1.1 MB (1085802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d90e9fb115424b03824f81931655679424f7a09b346b82ac7f9c7a58dae7d25`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620e2f2c134ec045536dbf36bf0c0d26665bf08254948f0fc2e4ab1b88c2e071`  
		Last Modified: Wed, 03 Apr 2019 09:23:41 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1657faff5cf9942c59e9be2b414088cd853feb7d52cc9ed334033f5fac084ef`  
		Last Modified: Fri, 12 Apr 2019 08:59:06 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda8969b171ba51b0987988905cb49129dac1aae886b6a98cf3d82bd5f0d612a`  
		Last Modified: Fri, 12 Apr 2019 08:59:39 GMT  
		Size: 99.2 MB (99189313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49c0b88c1b3281accb3c1c91794de0dbc0520147a0ecb130255335e05705257`  
		Last Modified: Fri, 12 Apr 2019 08:59:06 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bfda2e1ac428dbcdfb39f965ee7517f677d55a1ec96a5c3bf462ededb200506`  
		Last Modified: Fri, 12 Apr 2019 08:59:06 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.1`

```console
$ docker pull mongo@sha256:43736c26359fb29af796b0d927697068f278cca08148303ed99997bcee93406e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; s390x
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64

### `mongo:4.1` - linux; amd64

```console
$ docker pull mongo@sha256:0c4f85cde04cfae6d0a30b3f83b7d3d0ba1bad70b53c437c13eac535b1e6d05d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.0 MB (147993545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e8c3b2f0411f02d25170db94b7ec38b3a65848c87519afc4b5a31ea07839c49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 02 Apr 2019 23:45:14 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 02 Apr 2019 23:45:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 02 Apr 2019 23:45:24 GMT
ENV GOSU_VERSION=1.11
# Tue, 02 Apr 2019 23:45:24 GMT
ENV JSYAML_VERSION=3.13.0
# Tue, 02 Apr 2019 23:45:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 02 Apr 2019 23:45:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 02 Apr 2019 23:45:44 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Tue, 02 Apr 2019 23:45:45 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 02 Apr 2019 23:45:45 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Tue, 02 Apr 2019 23:45:45 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:45:46 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:45:46 GMT
ENV MONGO_MAJOR=4.1
# Fri, 12 Apr 2019 00:21:59 GMT
ENV MONGO_VERSION=4.1.10
# Fri, 12 Apr 2019 00:22:00 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 00:22:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 00:22:26 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 00:22:27 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 00:22:27 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 00:22:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 00:22:27 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 00:22:27 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af087a0122119e941b0988a5e01f79b2e54250ed4ea766b260b589e492a042e`  
		Last Modified: Tue, 02 Apr 2019 23:47:42 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7483b00c3d9f272517ef770ded04048c6ee6547daad58f7d2d46e1c162ea2e5`  
		Last Modified: Tue, 02 Apr 2019 23:47:43 GMT  
		Size: 2.7 MB (2732289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3546fdf9877eeb6af3edb71b4c6c345f4eeb1a9901da55638c962bf3a30a52a6`  
		Last Modified: Tue, 02 Apr 2019 23:47:43 GMT  
		Size: 5.8 MB (5758826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8181a5f463390d3a638286b0b5e334e1b7fdcae20cb7aa09ac03ae7a36bf61`  
		Last Modified: Tue, 02 Apr 2019 23:47:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f641c6abe09ddc045993b48c2a5935a3693e7b31e77ca750a1238a609cab9b68`  
		Last Modified: Tue, 02 Apr 2019 23:47:41 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095830294a4481fc87bb6468e9d7555565fdc19a0e4e9694133724c8514a0604`  
		Last Modified: Fri, 12 Apr 2019 00:23:07 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8a8d3ac40d9a89e928f7b5a29fcb1da6f0bdba756c32a6240d27c00e419c44`  
		Last Modified: Fri, 12 Apr 2019 00:23:24 GMT  
		Size: 107.0 MB (107026575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e31f0c3ef73e4b51528651c1a1a589f952a282b82d193e23a2dfbc33b2e447e`  
		Last Modified: Fri, 12 Apr 2019 00:23:07 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405434eb1cb5146920d604bd783d0fdab7c0d2c511d847999d56cf17b65820eb`  
		Last Modified: Fri, 12 Apr 2019 00:23:07 GMT  
		Size: 3.9 KB (3918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:e327252072ccc6fb744119403dc5b0e8c0389ba51ad4a8226e2d63125f95ea89
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.6 MB (138648865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb5e6594a7e60ba4e0b92863b10fc82564d0a77a0f50977380930978b6bc9b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 14 Mar 2019 09:34:18 GMT
ADD file:4cccf4e4a71783b1ac058bcfcabe23b3901e829c3859551be9d7e732cb9e3f86 in / 
# Thu, 14 Mar 2019 09:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:34:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:34:32 GMT
CMD ["/bin/bash"]
# Wed, 03 Apr 2019 09:17:17 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 03 Apr 2019 09:17:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 09:17:56 GMT
ENV GOSU_VERSION=1.11
# Wed, 03 Apr 2019 09:17:56 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 03 Apr 2019 09:19:24 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 03 Apr 2019 09:19:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 03 Apr 2019 09:19:30 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Wed, 03 Apr 2019 09:19:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 03 Apr 2019 09:19:38 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 03 Apr 2019 09:19:40 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:19:42 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:19:45 GMT
ENV MONGO_MAJOR=4.1
# Fri, 12 Apr 2019 08:57:30 GMT
ENV MONGO_VERSION=4.1.10
# Fri, 12 Apr 2019 08:57:33 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 08:58:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 08:58:36 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 08:58:37 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 08:58:37 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 08:58:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 08:58:39 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 08:58:39 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a0ceea30e08b5fa042d10308a43b8b093b67ce44e98a69ea8d277d00077387ab`  
		Last Modified: Fri, 08 Mar 2019 23:47:38 GMT  
		Size: 29.2 MB (29175537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef245d4e8728acd667d550023b9ffbb688c7976f78f72986d132072041e5a1`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb25026742c32e7fe5417efb6bc0ff5ad1eb9963007aebd5f71e9bc333e9ba`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b2948ac15d07c725e6074399d5e49e916e79b2c7738d6ad63e4d1b090db8f`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a951e7204c9366c16e2d7c295430f7db90c41267c81baaf820fe7bb0a59f31`  
		Last Modified: Wed, 03 Apr 2019 09:24:50 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e09a9e16547979770b74f9eaf37eb42a5b4c6bbc0368101a696c85c27d094d6`  
		Last Modified: Wed, 03 Apr 2019 09:24:53 GMT  
		Size: 2.4 MB (2444732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f848dd4349aa92112842e48ffd4b74b7521cd9522c868163a1f3e67cec1ce8a3`  
		Last Modified: Wed, 03 Apr 2019 09:24:55 GMT  
		Size: 5.3 MB (5277968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49e6741e94d85a31436c4fffba0419b3e053c4b6a856d963839141640d270d7`  
		Last Modified: Wed, 03 Apr 2019 09:24:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49d70b56815a04031f1dc049cd460ba0c03255b7fe8204187d881a96f2f9c4b`  
		Last Modified: Wed, 03 Apr 2019 09:24:48 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baece0672d9cbf491e05b04f17975bfe0b763971e619516d2ab3747062057241`  
		Last Modified: Fri, 12 Apr 2019 08:59:54 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3953d8f574254fe36e7c500b7b8d803684aae229b6d3c15268ff2156a4511ef5`  
		Last Modified: Fri, 12 Apr 2019 09:00:26 GMT  
		Size: 101.7 MB (101741354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2936cc6982dbb8fb19728e6bfda731eb276cf8853e476504b860971d0539ab6f`  
		Last Modified: Fri, 12 Apr 2019 08:59:54 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7238eb21900ca3eb15dba10dda1ba7d56e98f0731941676aaf1d840b184dbfb`  
		Last Modified: Fri, 12 Apr 2019 08:59:55 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1` - linux; s390x

```console
$ docker pull mongo@sha256:8373fabcce1ddc6981982dc90d1621cf4dcd4cc13aa93f360f8c0e4f258de111
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142882184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:626981a8e99cc81e462a7d03367443230d5c4acbc6b40319ea19299463898cf8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 12:08:47 GMT
ADD file:7b97cdceb7a661db3458df6cd992d2e735fec8613abd86bdff58a949190c355b in / 
# Tue, 12 Mar 2019 12:08:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:08:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:08:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:08:51 GMT
CMD ["/bin/bash"]
# Thu, 04 Apr 2019 11:53:13 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 04 Apr 2019 11:53:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 11:53:37 GMT
ENV GOSU_VERSION=1.11
# Thu, 04 Apr 2019 11:53:37 GMT
ENV JSYAML_VERSION=3.13.0
# Thu, 04 Apr 2019 11:54:03 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 04 Apr 2019 11:54:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 04 Apr 2019 11:54:05 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Thu, 04 Apr 2019 11:54:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 04 Apr 2019 11:54:09 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Thu, 04 Apr 2019 11:54:09 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 04 Apr 2019 11:54:10 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Thu, 04 Apr 2019 11:54:10 GMT
ENV MONGO_MAJOR=4.1
# Fri, 12 Apr 2019 11:45:24 GMT
ENV MONGO_VERSION=4.1.10
# Fri, 12 Apr 2019 11:45:24 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 11:45:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 11:45:57 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 11:45:58 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 11:45:58 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 11:45:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 11:45:58 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 11:45:59 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:ce90edcc3139e116c97e192a11962790422da390b102aca2d617dc565de4d938`  
		Last Modified: Tue, 12 Mar 2019 12:10:06 GMT  
		Size: 30.7 MB (30701859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2794d8d2439572a529e844dce238c278c50debc920730de784f9cbc405a0b51`  
		Last Modified: Tue, 12 Mar 2019 12:09:58 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ecab1b250dd07edb1294b4ad9afbdcb2a5b9bc81e09ae75d2d65dc32c6df0c4`  
		Last Modified: Tue, 12 Mar 2019 12:09:58 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ae8f34b30e3b128ba685424ccf987869098004713c41da34ce3636eb12060e`  
		Last Modified: Tue, 12 Mar 2019 12:09:58 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a316a44e1c9a53943aac6f7d253a52e7b9b068f9de2347a7ef7c002d250cf23`  
		Last Modified: Thu, 04 Apr 2019 11:55:28 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7a77396fba77d74dd6b5c0226b347773cf3b5343afcb660eb8063e98d910bd`  
		Last Modified: Thu, 04 Apr 2019 11:55:29 GMT  
		Size: 2.5 MB (2460421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912eeafa66aa0fa49f3bcf8c352c3a11464c27feb4f3a828fd522b2590a77563`  
		Last Modified: Thu, 04 Apr 2019 11:55:30 GMT  
		Size: 5.7 MB (5680519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58c6f4e7aef9d1718da0231173b562831bfb91239044925f52de32944bc2be4b`  
		Last Modified: Thu, 04 Apr 2019 11:55:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ce9dcdf3737b3cc0a22f26341944c52bc7868607edbc267c803e84f9e4876a`  
		Last Modified: Thu, 04 Apr 2019 11:55:27 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:462aedc7d55e700bfe5dc143e3b1fe3d0ad59e19581763cb9ca4ac65f88bf0df`  
		Last Modified: Fri, 12 Apr 2019 11:46:10 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a81fa5803e6547eb816fe0dd25397bba216a6073ad1981eb7dc1760f070ac0`  
		Last Modified: Fri, 12 Apr 2019 11:46:28 GMT  
		Size: 104.0 MB (104030123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faaf9c7133250abd428ca76053a7b712168b4c3c629ce778b3ded4d1d4bd8e20`  
		Last Modified: Fri, 12 Apr 2019 11:46:10 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9d684f46a4b5e1904a73f7d569d4a6c2d77d5b89e2c1f374bd4b99c1c3689c`  
		Last Modified: Fri, 12 Apr 2019 11:46:10 GMT  
		Size: 3.9 KB (3909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1` - windows version 10.0.14393.2906; amd64

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

### `mongo:4.1` - windows version 10.0.17134.706; amd64

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

## `mongo:4.1.10`

```console
$ docker pull mongo@sha256:43736c26359fb29af796b0d927697068f278cca08148303ed99997bcee93406e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; s390x
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64

### `mongo:4.1.10` - linux; amd64

```console
$ docker pull mongo@sha256:0c4f85cde04cfae6d0a30b3f83b7d3d0ba1bad70b53c437c13eac535b1e6d05d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.0 MB (147993545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e8c3b2f0411f02d25170db94b7ec38b3a65848c87519afc4b5a31ea07839c49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 02 Apr 2019 23:45:14 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 02 Apr 2019 23:45:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 02 Apr 2019 23:45:24 GMT
ENV GOSU_VERSION=1.11
# Tue, 02 Apr 2019 23:45:24 GMT
ENV JSYAML_VERSION=3.13.0
# Tue, 02 Apr 2019 23:45:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 02 Apr 2019 23:45:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 02 Apr 2019 23:45:44 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Tue, 02 Apr 2019 23:45:45 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 02 Apr 2019 23:45:45 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Tue, 02 Apr 2019 23:45:45 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:45:46 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:45:46 GMT
ENV MONGO_MAJOR=4.1
# Fri, 12 Apr 2019 00:21:59 GMT
ENV MONGO_VERSION=4.1.10
# Fri, 12 Apr 2019 00:22:00 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 00:22:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 00:22:26 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 00:22:27 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 00:22:27 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 00:22:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 00:22:27 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 00:22:27 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af087a0122119e941b0988a5e01f79b2e54250ed4ea766b260b589e492a042e`  
		Last Modified: Tue, 02 Apr 2019 23:47:42 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7483b00c3d9f272517ef770ded04048c6ee6547daad58f7d2d46e1c162ea2e5`  
		Last Modified: Tue, 02 Apr 2019 23:47:43 GMT  
		Size: 2.7 MB (2732289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3546fdf9877eeb6af3edb71b4c6c345f4eeb1a9901da55638c962bf3a30a52a6`  
		Last Modified: Tue, 02 Apr 2019 23:47:43 GMT  
		Size: 5.8 MB (5758826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8181a5f463390d3a638286b0b5e334e1b7fdcae20cb7aa09ac03ae7a36bf61`  
		Last Modified: Tue, 02 Apr 2019 23:47:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f641c6abe09ddc045993b48c2a5935a3693e7b31e77ca750a1238a609cab9b68`  
		Last Modified: Tue, 02 Apr 2019 23:47:41 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095830294a4481fc87bb6468e9d7555565fdc19a0e4e9694133724c8514a0604`  
		Last Modified: Fri, 12 Apr 2019 00:23:07 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8a8d3ac40d9a89e928f7b5a29fcb1da6f0bdba756c32a6240d27c00e419c44`  
		Last Modified: Fri, 12 Apr 2019 00:23:24 GMT  
		Size: 107.0 MB (107026575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e31f0c3ef73e4b51528651c1a1a589f952a282b82d193e23a2dfbc33b2e447e`  
		Last Modified: Fri, 12 Apr 2019 00:23:07 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405434eb1cb5146920d604bd783d0fdab7c0d2c511d847999d56cf17b65820eb`  
		Last Modified: Fri, 12 Apr 2019 00:23:07 GMT  
		Size: 3.9 KB (3918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1.10` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:e327252072ccc6fb744119403dc5b0e8c0389ba51ad4a8226e2d63125f95ea89
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.6 MB (138648865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb5e6594a7e60ba4e0b92863b10fc82564d0a77a0f50977380930978b6bc9b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 14 Mar 2019 09:34:18 GMT
ADD file:4cccf4e4a71783b1ac058bcfcabe23b3901e829c3859551be9d7e732cb9e3f86 in / 
# Thu, 14 Mar 2019 09:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:34:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:34:32 GMT
CMD ["/bin/bash"]
# Wed, 03 Apr 2019 09:17:17 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 03 Apr 2019 09:17:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 09:17:56 GMT
ENV GOSU_VERSION=1.11
# Wed, 03 Apr 2019 09:17:56 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 03 Apr 2019 09:19:24 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 03 Apr 2019 09:19:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 03 Apr 2019 09:19:30 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Wed, 03 Apr 2019 09:19:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 03 Apr 2019 09:19:38 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 03 Apr 2019 09:19:40 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:19:42 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:19:45 GMT
ENV MONGO_MAJOR=4.1
# Fri, 12 Apr 2019 08:57:30 GMT
ENV MONGO_VERSION=4.1.10
# Fri, 12 Apr 2019 08:57:33 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 08:58:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 08:58:36 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 08:58:37 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 08:58:37 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 08:58:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 08:58:39 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 08:58:39 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a0ceea30e08b5fa042d10308a43b8b093b67ce44e98a69ea8d277d00077387ab`  
		Last Modified: Fri, 08 Mar 2019 23:47:38 GMT  
		Size: 29.2 MB (29175537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef245d4e8728acd667d550023b9ffbb688c7976f78f72986d132072041e5a1`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb25026742c32e7fe5417efb6bc0ff5ad1eb9963007aebd5f71e9bc333e9ba`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b2948ac15d07c725e6074399d5e49e916e79b2c7738d6ad63e4d1b090db8f`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a951e7204c9366c16e2d7c295430f7db90c41267c81baaf820fe7bb0a59f31`  
		Last Modified: Wed, 03 Apr 2019 09:24:50 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e09a9e16547979770b74f9eaf37eb42a5b4c6bbc0368101a696c85c27d094d6`  
		Last Modified: Wed, 03 Apr 2019 09:24:53 GMT  
		Size: 2.4 MB (2444732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f848dd4349aa92112842e48ffd4b74b7521cd9522c868163a1f3e67cec1ce8a3`  
		Last Modified: Wed, 03 Apr 2019 09:24:55 GMT  
		Size: 5.3 MB (5277968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49e6741e94d85a31436c4fffba0419b3e053c4b6a856d963839141640d270d7`  
		Last Modified: Wed, 03 Apr 2019 09:24:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49d70b56815a04031f1dc049cd460ba0c03255b7fe8204187d881a96f2f9c4b`  
		Last Modified: Wed, 03 Apr 2019 09:24:48 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baece0672d9cbf491e05b04f17975bfe0b763971e619516d2ab3747062057241`  
		Last Modified: Fri, 12 Apr 2019 08:59:54 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3953d8f574254fe36e7c500b7b8d803684aae229b6d3c15268ff2156a4511ef5`  
		Last Modified: Fri, 12 Apr 2019 09:00:26 GMT  
		Size: 101.7 MB (101741354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2936cc6982dbb8fb19728e6bfda731eb276cf8853e476504b860971d0539ab6f`  
		Last Modified: Fri, 12 Apr 2019 08:59:54 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7238eb21900ca3eb15dba10dda1ba7d56e98f0731941676aaf1d840b184dbfb`  
		Last Modified: Fri, 12 Apr 2019 08:59:55 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1.10` - linux; s390x

```console
$ docker pull mongo@sha256:8373fabcce1ddc6981982dc90d1621cf4dcd4cc13aa93f360f8c0e4f258de111
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142882184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:626981a8e99cc81e462a7d03367443230d5c4acbc6b40319ea19299463898cf8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 12:08:47 GMT
ADD file:7b97cdceb7a661db3458df6cd992d2e735fec8613abd86bdff58a949190c355b in / 
# Tue, 12 Mar 2019 12:08:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:08:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:08:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:08:51 GMT
CMD ["/bin/bash"]
# Thu, 04 Apr 2019 11:53:13 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 04 Apr 2019 11:53:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 11:53:37 GMT
ENV GOSU_VERSION=1.11
# Thu, 04 Apr 2019 11:53:37 GMT
ENV JSYAML_VERSION=3.13.0
# Thu, 04 Apr 2019 11:54:03 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 04 Apr 2019 11:54:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 04 Apr 2019 11:54:05 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Thu, 04 Apr 2019 11:54:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 04 Apr 2019 11:54:09 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Thu, 04 Apr 2019 11:54:09 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 04 Apr 2019 11:54:10 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Thu, 04 Apr 2019 11:54:10 GMT
ENV MONGO_MAJOR=4.1
# Fri, 12 Apr 2019 11:45:24 GMT
ENV MONGO_VERSION=4.1.10
# Fri, 12 Apr 2019 11:45:24 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 11:45:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 11:45:57 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 11:45:58 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 11:45:58 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 11:45:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 11:45:58 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 11:45:59 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:ce90edcc3139e116c97e192a11962790422da390b102aca2d617dc565de4d938`  
		Last Modified: Tue, 12 Mar 2019 12:10:06 GMT  
		Size: 30.7 MB (30701859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2794d8d2439572a529e844dce238c278c50debc920730de784f9cbc405a0b51`  
		Last Modified: Tue, 12 Mar 2019 12:09:58 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ecab1b250dd07edb1294b4ad9afbdcb2a5b9bc81e09ae75d2d65dc32c6df0c4`  
		Last Modified: Tue, 12 Mar 2019 12:09:58 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ae8f34b30e3b128ba685424ccf987869098004713c41da34ce3636eb12060e`  
		Last Modified: Tue, 12 Mar 2019 12:09:58 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a316a44e1c9a53943aac6f7d253a52e7b9b068f9de2347a7ef7c002d250cf23`  
		Last Modified: Thu, 04 Apr 2019 11:55:28 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7a77396fba77d74dd6b5c0226b347773cf3b5343afcb660eb8063e98d910bd`  
		Last Modified: Thu, 04 Apr 2019 11:55:29 GMT  
		Size: 2.5 MB (2460421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912eeafa66aa0fa49f3bcf8c352c3a11464c27feb4f3a828fd522b2590a77563`  
		Last Modified: Thu, 04 Apr 2019 11:55:30 GMT  
		Size: 5.7 MB (5680519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58c6f4e7aef9d1718da0231173b562831bfb91239044925f52de32944bc2be4b`  
		Last Modified: Thu, 04 Apr 2019 11:55:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ce9dcdf3737b3cc0a22f26341944c52bc7868607edbc267c803e84f9e4876a`  
		Last Modified: Thu, 04 Apr 2019 11:55:27 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:462aedc7d55e700bfe5dc143e3b1fe3d0ad59e19581763cb9ca4ac65f88bf0df`  
		Last Modified: Fri, 12 Apr 2019 11:46:10 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a81fa5803e6547eb816fe0dd25397bba216a6073ad1981eb7dc1760f070ac0`  
		Last Modified: Fri, 12 Apr 2019 11:46:28 GMT  
		Size: 104.0 MB (104030123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faaf9c7133250abd428ca76053a7b712168b4c3c629ce778b3ded4d1d4bd8e20`  
		Last Modified: Fri, 12 Apr 2019 11:46:10 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9d684f46a4b5e1904a73f7d569d4a6c2d77d5b89e2c1f374bd4b99c1c3689c`  
		Last Modified: Fri, 12 Apr 2019 11:46:10 GMT  
		Size: 3.9 KB (3909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1.10` - windows version 10.0.14393.2906; amd64

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

### `mongo:4.1.10` - windows version 10.0.17134.706; amd64

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

## `mongo:4.1.10-bionic`

```console
$ docker pull mongo@sha256:fa130121b52b9bced4cf6c7e7ccabac9251f9c35aeda1a24a28744c0128743b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; s390x

### `mongo:4.1.10-bionic` - linux; amd64

```console
$ docker pull mongo@sha256:0c4f85cde04cfae6d0a30b3f83b7d3d0ba1bad70b53c437c13eac535b1e6d05d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.0 MB (147993545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e8c3b2f0411f02d25170db94b7ec38b3a65848c87519afc4b5a31ea07839c49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 02 Apr 2019 23:45:14 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 02 Apr 2019 23:45:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 02 Apr 2019 23:45:24 GMT
ENV GOSU_VERSION=1.11
# Tue, 02 Apr 2019 23:45:24 GMT
ENV JSYAML_VERSION=3.13.0
# Tue, 02 Apr 2019 23:45:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 02 Apr 2019 23:45:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 02 Apr 2019 23:45:44 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Tue, 02 Apr 2019 23:45:45 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 02 Apr 2019 23:45:45 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Tue, 02 Apr 2019 23:45:45 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:45:46 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:45:46 GMT
ENV MONGO_MAJOR=4.1
# Fri, 12 Apr 2019 00:21:59 GMT
ENV MONGO_VERSION=4.1.10
# Fri, 12 Apr 2019 00:22:00 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 00:22:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 00:22:26 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 00:22:27 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 00:22:27 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 00:22:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 00:22:27 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 00:22:27 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af087a0122119e941b0988a5e01f79b2e54250ed4ea766b260b589e492a042e`  
		Last Modified: Tue, 02 Apr 2019 23:47:42 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7483b00c3d9f272517ef770ded04048c6ee6547daad58f7d2d46e1c162ea2e5`  
		Last Modified: Tue, 02 Apr 2019 23:47:43 GMT  
		Size: 2.7 MB (2732289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3546fdf9877eeb6af3edb71b4c6c345f4eeb1a9901da55638c962bf3a30a52a6`  
		Last Modified: Tue, 02 Apr 2019 23:47:43 GMT  
		Size: 5.8 MB (5758826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8181a5f463390d3a638286b0b5e334e1b7fdcae20cb7aa09ac03ae7a36bf61`  
		Last Modified: Tue, 02 Apr 2019 23:47:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f641c6abe09ddc045993b48c2a5935a3693e7b31e77ca750a1238a609cab9b68`  
		Last Modified: Tue, 02 Apr 2019 23:47:41 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095830294a4481fc87bb6468e9d7555565fdc19a0e4e9694133724c8514a0604`  
		Last Modified: Fri, 12 Apr 2019 00:23:07 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8a8d3ac40d9a89e928f7b5a29fcb1da6f0bdba756c32a6240d27c00e419c44`  
		Last Modified: Fri, 12 Apr 2019 00:23:24 GMT  
		Size: 107.0 MB (107026575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e31f0c3ef73e4b51528651c1a1a589f952a282b82d193e23a2dfbc33b2e447e`  
		Last Modified: Fri, 12 Apr 2019 00:23:07 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405434eb1cb5146920d604bd783d0fdab7c0d2c511d847999d56cf17b65820eb`  
		Last Modified: Fri, 12 Apr 2019 00:23:07 GMT  
		Size: 3.9 KB (3918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1.10-bionic` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:e327252072ccc6fb744119403dc5b0e8c0389ba51ad4a8226e2d63125f95ea89
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.6 MB (138648865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb5e6594a7e60ba4e0b92863b10fc82564d0a77a0f50977380930978b6bc9b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 14 Mar 2019 09:34:18 GMT
ADD file:4cccf4e4a71783b1ac058bcfcabe23b3901e829c3859551be9d7e732cb9e3f86 in / 
# Thu, 14 Mar 2019 09:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:34:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:34:32 GMT
CMD ["/bin/bash"]
# Wed, 03 Apr 2019 09:17:17 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 03 Apr 2019 09:17:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 09:17:56 GMT
ENV GOSU_VERSION=1.11
# Wed, 03 Apr 2019 09:17:56 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 03 Apr 2019 09:19:24 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 03 Apr 2019 09:19:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 03 Apr 2019 09:19:30 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Wed, 03 Apr 2019 09:19:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 03 Apr 2019 09:19:38 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 03 Apr 2019 09:19:40 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:19:42 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:19:45 GMT
ENV MONGO_MAJOR=4.1
# Fri, 12 Apr 2019 08:57:30 GMT
ENV MONGO_VERSION=4.1.10
# Fri, 12 Apr 2019 08:57:33 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 08:58:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 08:58:36 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 08:58:37 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 08:58:37 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 08:58:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 08:58:39 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 08:58:39 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a0ceea30e08b5fa042d10308a43b8b093b67ce44e98a69ea8d277d00077387ab`  
		Last Modified: Fri, 08 Mar 2019 23:47:38 GMT  
		Size: 29.2 MB (29175537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef245d4e8728acd667d550023b9ffbb688c7976f78f72986d132072041e5a1`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb25026742c32e7fe5417efb6bc0ff5ad1eb9963007aebd5f71e9bc333e9ba`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b2948ac15d07c725e6074399d5e49e916e79b2c7738d6ad63e4d1b090db8f`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a951e7204c9366c16e2d7c295430f7db90c41267c81baaf820fe7bb0a59f31`  
		Last Modified: Wed, 03 Apr 2019 09:24:50 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e09a9e16547979770b74f9eaf37eb42a5b4c6bbc0368101a696c85c27d094d6`  
		Last Modified: Wed, 03 Apr 2019 09:24:53 GMT  
		Size: 2.4 MB (2444732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f848dd4349aa92112842e48ffd4b74b7521cd9522c868163a1f3e67cec1ce8a3`  
		Last Modified: Wed, 03 Apr 2019 09:24:55 GMT  
		Size: 5.3 MB (5277968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49e6741e94d85a31436c4fffba0419b3e053c4b6a856d963839141640d270d7`  
		Last Modified: Wed, 03 Apr 2019 09:24:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49d70b56815a04031f1dc049cd460ba0c03255b7fe8204187d881a96f2f9c4b`  
		Last Modified: Wed, 03 Apr 2019 09:24:48 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baece0672d9cbf491e05b04f17975bfe0b763971e619516d2ab3747062057241`  
		Last Modified: Fri, 12 Apr 2019 08:59:54 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3953d8f574254fe36e7c500b7b8d803684aae229b6d3c15268ff2156a4511ef5`  
		Last Modified: Fri, 12 Apr 2019 09:00:26 GMT  
		Size: 101.7 MB (101741354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2936cc6982dbb8fb19728e6bfda731eb276cf8853e476504b860971d0539ab6f`  
		Last Modified: Fri, 12 Apr 2019 08:59:54 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7238eb21900ca3eb15dba10dda1ba7d56e98f0731941676aaf1d840b184dbfb`  
		Last Modified: Fri, 12 Apr 2019 08:59:55 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1.10-bionic` - linux; s390x

```console
$ docker pull mongo@sha256:8373fabcce1ddc6981982dc90d1621cf4dcd4cc13aa93f360f8c0e4f258de111
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142882184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:626981a8e99cc81e462a7d03367443230d5c4acbc6b40319ea19299463898cf8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 12:08:47 GMT
ADD file:7b97cdceb7a661db3458df6cd992d2e735fec8613abd86bdff58a949190c355b in / 
# Tue, 12 Mar 2019 12:08:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:08:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:08:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:08:51 GMT
CMD ["/bin/bash"]
# Thu, 04 Apr 2019 11:53:13 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 04 Apr 2019 11:53:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 11:53:37 GMT
ENV GOSU_VERSION=1.11
# Thu, 04 Apr 2019 11:53:37 GMT
ENV JSYAML_VERSION=3.13.0
# Thu, 04 Apr 2019 11:54:03 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 04 Apr 2019 11:54:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 04 Apr 2019 11:54:05 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Thu, 04 Apr 2019 11:54:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 04 Apr 2019 11:54:09 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Thu, 04 Apr 2019 11:54:09 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 04 Apr 2019 11:54:10 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Thu, 04 Apr 2019 11:54:10 GMT
ENV MONGO_MAJOR=4.1
# Fri, 12 Apr 2019 11:45:24 GMT
ENV MONGO_VERSION=4.1.10
# Fri, 12 Apr 2019 11:45:24 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 11:45:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 11:45:57 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 11:45:58 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 11:45:58 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 11:45:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 11:45:58 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 11:45:59 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:ce90edcc3139e116c97e192a11962790422da390b102aca2d617dc565de4d938`  
		Last Modified: Tue, 12 Mar 2019 12:10:06 GMT  
		Size: 30.7 MB (30701859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2794d8d2439572a529e844dce238c278c50debc920730de784f9cbc405a0b51`  
		Last Modified: Tue, 12 Mar 2019 12:09:58 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ecab1b250dd07edb1294b4ad9afbdcb2a5b9bc81e09ae75d2d65dc32c6df0c4`  
		Last Modified: Tue, 12 Mar 2019 12:09:58 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ae8f34b30e3b128ba685424ccf987869098004713c41da34ce3636eb12060e`  
		Last Modified: Tue, 12 Mar 2019 12:09:58 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a316a44e1c9a53943aac6f7d253a52e7b9b068f9de2347a7ef7c002d250cf23`  
		Last Modified: Thu, 04 Apr 2019 11:55:28 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7a77396fba77d74dd6b5c0226b347773cf3b5343afcb660eb8063e98d910bd`  
		Last Modified: Thu, 04 Apr 2019 11:55:29 GMT  
		Size: 2.5 MB (2460421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912eeafa66aa0fa49f3bcf8c352c3a11464c27feb4f3a828fd522b2590a77563`  
		Last Modified: Thu, 04 Apr 2019 11:55:30 GMT  
		Size: 5.7 MB (5680519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58c6f4e7aef9d1718da0231173b562831bfb91239044925f52de32944bc2be4b`  
		Last Modified: Thu, 04 Apr 2019 11:55:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ce9dcdf3737b3cc0a22f26341944c52bc7868607edbc267c803e84f9e4876a`  
		Last Modified: Thu, 04 Apr 2019 11:55:27 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:462aedc7d55e700bfe5dc143e3b1fe3d0ad59e19581763cb9ca4ac65f88bf0df`  
		Last Modified: Fri, 12 Apr 2019 11:46:10 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a81fa5803e6547eb816fe0dd25397bba216a6073ad1981eb7dc1760f070ac0`  
		Last Modified: Fri, 12 Apr 2019 11:46:28 GMT  
		Size: 104.0 MB (104030123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faaf9c7133250abd428ca76053a7b712168b4c3c629ce778b3ded4d1d4bd8e20`  
		Last Modified: Fri, 12 Apr 2019 11:46:10 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9d684f46a4b5e1904a73f7d569d4a6c2d77d5b89e2c1f374bd4b99c1c3689c`  
		Last Modified: Fri, 12 Apr 2019 11:46:10 GMT  
		Size: 3.9 KB (3909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.1.10-windowsservercore`

```console
$ docker pull mongo@sha256:6608b4e7e8c3b5dd9025dfe0aca05e6076bcf971e61e6a16fe036bfca3ceab25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64

### `mongo:4.1.10-windowsservercore` - windows version 10.0.14393.2906; amd64

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

### `mongo:4.1.10-windowsservercore` - windows version 10.0.17134.706; amd64

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

## `mongo:4.1.10-windowsservercore-1803`

```console
$ docker pull mongo@sha256:e4fa8d7170161ea54e7df4cfafd6db9eab4a7cf41934e261183e9af3d6e92cde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.706; amd64

### `mongo:4.1.10-windowsservercore-1803` - windows version 10.0.17134.706; amd64

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

## `mongo:4.1.10-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:dba82ce9c2265a9beb25dbb05357d336329c8128a7a0c8f560e99a0b744ca0e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64

### `mongo:4.1.10-windowsservercore-ltsc2016` - windows version 10.0.14393.2906; amd64

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

## `mongo:4.1-bionic`

```console
$ docker pull mongo@sha256:fa130121b52b9bced4cf6c7e7ccabac9251f9c35aeda1a24a28744c0128743b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; s390x

### `mongo:4.1-bionic` - linux; amd64

```console
$ docker pull mongo@sha256:0c4f85cde04cfae6d0a30b3f83b7d3d0ba1bad70b53c437c13eac535b1e6d05d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.0 MB (147993545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e8c3b2f0411f02d25170db94b7ec38b3a65848c87519afc4b5a31ea07839c49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 02 Apr 2019 23:45:14 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 02 Apr 2019 23:45:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 02 Apr 2019 23:45:24 GMT
ENV GOSU_VERSION=1.11
# Tue, 02 Apr 2019 23:45:24 GMT
ENV JSYAML_VERSION=3.13.0
# Tue, 02 Apr 2019 23:45:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 02 Apr 2019 23:45:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 02 Apr 2019 23:45:44 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Tue, 02 Apr 2019 23:45:45 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 02 Apr 2019 23:45:45 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Tue, 02 Apr 2019 23:45:45 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:45:46 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:45:46 GMT
ENV MONGO_MAJOR=4.1
# Fri, 12 Apr 2019 00:21:59 GMT
ENV MONGO_VERSION=4.1.10
# Fri, 12 Apr 2019 00:22:00 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 00:22:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 00:22:26 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 00:22:27 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 00:22:27 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 00:22:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 00:22:27 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 00:22:27 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af087a0122119e941b0988a5e01f79b2e54250ed4ea766b260b589e492a042e`  
		Last Modified: Tue, 02 Apr 2019 23:47:42 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7483b00c3d9f272517ef770ded04048c6ee6547daad58f7d2d46e1c162ea2e5`  
		Last Modified: Tue, 02 Apr 2019 23:47:43 GMT  
		Size: 2.7 MB (2732289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3546fdf9877eeb6af3edb71b4c6c345f4eeb1a9901da55638c962bf3a30a52a6`  
		Last Modified: Tue, 02 Apr 2019 23:47:43 GMT  
		Size: 5.8 MB (5758826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8181a5f463390d3a638286b0b5e334e1b7fdcae20cb7aa09ac03ae7a36bf61`  
		Last Modified: Tue, 02 Apr 2019 23:47:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f641c6abe09ddc045993b48c2a5935a3693e7b31e77ca750a1238a609cab9b68`  
		Last Modified: Tue, 02 Apr 2019 23:47:41 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095830294a4481fc87bb6468e9d7555565fdc19a0e4e9694133724c8514a0604`  
		Last Modified: Fri, 12 Apr 2019 00:23:07 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8a8d3ac40d9a89e928f7b5a29fcb1da6f0bdba756c32a6240d27c00e419c44`  
		Last Modified: Fri, 12 Apr 2019 00:23:24 GMT  
		Size: 107.0 MB (107026575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e31f0c3ef73e4b51528651c1a1a589f952a282b82d193e23a2dfbc33b2e447e`  
		Last Modified: Fri, 12 Apr 2019 00:23:07 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405434eb1cb5146920d604bd783d0fdab7c0d2c511d847999d56cf17b65820eb`  
		Last Modified: Fri, 12 Apr 2019 00:23:07 GMT  
		Size: 3.9 KB (3918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1-bionic` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:e327252072ccc6fb744119403dc5b0e8c0389ba51ad4a8226e2d63125f95ea89
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.6 MB (138648865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb5e6594a7e60ba4e0b92863b10fc82564d0a77a0f50977380930978b6bc9b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 14 Mar 2019 09:34:18 GMT
ADD file:4cccf4e4a71783b1ac058bcfcabe23b3901e829c3859551be9d7e732cb9e3f86 in / 
# Thu, 14 Mar 2019 09:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:34:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:34:32 GMT
CMD ["/bin/bash"]
# Wed, 03 Apr 2019 09:17:17 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 03 Apr 2019 09:17:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 09:17:56 GMT
ENV GOSU_VERSION=1.11
# Wed, 03 Apr 2019 09:17:56 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 03 Apr 2019 09:19:24 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 03 Apr 2019 09:19:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 03 Apr 2019 09:19:30 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Wed, 03 Apr 2019 09:19:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 03 Apr 2019 09:19:38 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 03 Apr 2019 09:19:40 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:19:42 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:19:45 GMT
ENV MONGO_MAJOR=4.1
# Fri, 12 Apr 2019 08:57:30 GMT
ENV MONGO_VERSION=4.1.10
# Fri, 12 Apr 2019 08:57:33 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 08:58:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 08:58:36 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 08:58:37 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 08:58:37 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 08:58:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 08:58:39 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 08:58:39 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a0ceea30e08b5fa042d10308a43b8b093b67ce44e98a69ea8d277d00077387ab`  
		Last Modified: Fri, 08 Mar 2019 23:47:38 GMT  
		Size: 29.2 MB (29175537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef245d4e8728acd667d550023b9ffbb688c7976f78f72986d132072041e5a1`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb25026742c32e7fe5417efb6bc0ff5ad1eb9963007aebd5f71e9bc333e9ba`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b2948ac15d07c725e6074399d5e49e916e79b2c7738d6ad63e4d1b090db8f`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a951e7204c9366c16e2d7c295430f7db90c41267c81baaf820fe7bb0a59f31`  
		Last Modified: Wed, 03 Apr 2019 09:24:50 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e09a9e16547979770b74f9eaf37eb42a5b4c6bbc0368101a696c85c27d094d6`  
		Last Modified: Wed, 03 Apr 2019 09:24:53 GMT  
		Size: 2.4 MB (2444732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f848dd4349aa92112842e48ffd4b74b7521cd9522c868163a1f3e67cec1ce8a3`  
		Last Modified: Wed, 03 Apr 2019 09:24:55 GMT  
		Size: 5.3 MB (5277968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49e6741e94d85a31436c4fffba0419b3e053c4b6a856d963839141640d270d7`  
		Last Modified: Wed, 03 Apr 2019 09:24:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49d70b56815a04031f1dc049cd460ba0c03255b7fe8204187d881a96f2f9c4b`  
		Last Modified: Wed, 03 Apr 2019 09:24:48 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baece0672d9cbf491e05b04f17975bfe0b763971e619516d2ab3747062057241`  
		Last Modified: Fri, 12 Apr 2019 08:59:54 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3953d8f574254fe36e7c500b7b8d803684aae229b6d3c15268ff2156a4511ef5`  
		Last Modified: Fri, 12 Apr 2019 09:00:26 GMT  
		Size: 101.7 MB (101741354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2936cc6982dbb8fb19728e6bfda731eb276cf8853e476504b860971d0539ab6f`  
		Last Modified: Fri, 12 Apr 2019 08:59:54 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7238eb21900ca3eb15dba10dda1ba7d56e98f0731941676aaf1d840b184dbfb`  
		Last Modified: Fri, 12 Apr 2019 08:59:55 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.1-bionic` - linux; s390x

```console
$ docker pull mongo@sha256:8373fabcce1ddc6981982dc90d1621cf4dcd4cc13aa93f360f8c0e4f258de111
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142882184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:626981a8e99cc81e462a7d03367443230d5c4acbc6b40319ea19299463898cf8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 12:08:47 GMT
ADD file:7b97cdceb7a661db3458df6cd992d2e735fec8613abd86bdff58a949190c355b in / 
# Tue, 12 Mar 2019 12:08:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:08:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:08:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:08:51 GMT
CMD ["/bin/bash"]
# Thu, 04 Apr 2019 11:53:13 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 04 Apr 2019 11:53:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 11:53:37 GMT
ENV GOSU_VERSION=1.11
# Thu, 04 Apr 2019 11:53:37 GMT
ENV JSYAML_VERSION=3.13.0
# Thu, 04 Apr 2019 11:54:03 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 04 Apr 2019 11:54:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 04 Apr 2019 11:54:05 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Thu, 04 Apr 2019 11:54:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 04 Apr 2019 11:54:09 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Thu, 04 Apr 2019 11:54:09 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 04 Apr 2019 11:54:10 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Thu, 04 Apr 2019 11:54:10 GMT
ENV MONGO_MAJOR=4.1
# Fri, 12 Apr 2019 11:45:24 GMT
ENV MONGO_VERSION=4.1.10
# Fri, 12 Apr 2019 11:45:24 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 11:45:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 11:45:57 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 11:45:58 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 11:45:58 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 11:45:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 11:45:58 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 11:45:59 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:ce90edcc3139e116c97e192a11962790422da390b102aca2d617dc565de4d938`  
		Last Modified: Tue, 12 Mar 2019 12:10:06 GMT  
		Size: 30.7 MB (30701859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2794d8d2439572a529e844dce238c278c50debc920730de784f9cbc405a0b51`  
		Last Modified: Tue, 12 Mar 2019 12:09:58 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ecab1b250dd07edb1294b4ad9afbdcb2a5b9bc81e09ae75d2d65dc32c6df0c4`  
		Last Modified: Tue, 12 Mar 2019 12:09:58 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ae8f34b30e3b128ba685424ccf987869098004713c41da34ce3636eb12060e`  
		Last Modified: Tue, 12 Mar 2019 12:09:58 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a316a44e1c9a53943aac6f7d253a52e7b9b068f9de2347a7ef7c002d250cf23`  
		Last Modified: Thu, 04 Apr 2019 11:55:28 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7a77396fba77d74dd6b5c0226b347773cf3b5343afcb660eb8063e98d910bd`  
		Last Modified: Thu, 04 Apr 2019 11:55:29 GMT  
		Size: 2.5 MB (2460421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912eeafa66aa0fa49f3bcf8c352c3a11464c27feb4f3a828fd522b2590a77563`  
		Last Modified: Thu, 04 Apr 2019 11:55:30 GMT  
		Size: 5.7 MB (5680519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58c6f4e7aef9d1718da0231173b562831bfb91239044925f52de32944bc2be4b`  
		Last Modified: Thu, 04 Apr 2019 11:55:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ce9dcdf3737b3cc0a22f26341944c52bc7868607edbc267c803e84f9e4876a`  
		Last Modified: Thu, 04 Apr 2019 11:55:27 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:462aedc7d55e700bfe5dc143e3b1fe3d0ad59e19581763cb9ca4ac65f88bf0df`  
		Last Modified: Fri, 12 Apr 2019 11:46:10 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a81fa5803e6547eb816fe0dd25397bba216a6073ad1981eb7dc1760f070ac0`  
		Last Modified: Fri, 12 Apr 2019 11:46:28 GMT  
		Size: 104.0 MB (104030123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faaf9c7133250abd428ca76053a7b712168b4c3c629ce778b3ded4d1d4bd8e20`  
		Last Modified: Fri, 12 Apr 2019 11:46:10 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9d684f46a4b5e1904a73f7d569d4a6c2d77d5b89e2c1f374bd4b99c1c3689c`  
		Last Modified: Fri, 12 Apr 2019 11:46:10 GMT  
		Size: 3.9 KB (3909 bytes)  
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
$ docker pull mongo@sha256:8bfdfc2f169d934a2deef860ff74a6d97731f31250addb3d62f28c6008745f78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:4-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:43ebe367bb2c17fd4787a32e2824141a6e229cab8139871aaf8b7893d561fd93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152382959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1c8142b3efc0b00c32c57a4095366a48a5b769b94f243ddf2bac4d44ad242c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:16:49 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Mar 2019 01:16:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 02 Apr 2019 23:43:32 GMT
ENV GOSU_VERSION=1.11
# Tue, 02 Apr 2019 23:43:32 GMT
ENV JSYAML_VERSION=3.13.0
# Tue, 02 Apr 2019 23:43:39 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 02 Apr 2019 23:43:40 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 02 Apr 2019 23:44:42 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Tue, 02 Apr 2019 23:44:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 02 Apr 2019 23:44:43 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 02 Apr 2019 23:44:43 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:44:43 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:44:43 GMT
ENV MONGO_MAJOR=4.0
# Fri, 12 Apr 2019 00:21:14 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 00:21:15 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 00:21:48 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 00:21:49 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 00:21:49 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 00:21:49 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 00:21:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 00:21:50 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 00:21:50 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7833eaffdda8c479f372f8bed51dfa22ad2a41ec187c8905248a67fdfae69c7`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8287cb5b9dafe7dbf0714f034c3ce7027cc9d68ff4a95d4c2711402e873217b6`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.9 MB (2945588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92d9c8d3bef70013346dcb29e55cf69e24455a658de9f6ecc716f667c81bd2`  
		Last Modified: Tue, 02 Apr 2019 23:46:28 GMT  
		Size: 1.2 MB (1151290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a99ed0412704a07ccebf7b67a323e37292c6635c1ecab51c489054f41995c2`  
		Last Modified: Tue, 02 Apr 2019 23:46:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c26ac89d7363507ee99af3b49f300510574a46a8945d72f8b2714ac46b8ac61`  
		Last Modified: Tue, 02 Apr 2019 23:47:18 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f01a3e0a56a41a6f789455b5839d017ae4ecb0e71b10baf02ebd9c9921d784`  
		Last Modified: Fri, 12 Apr 2019 00:22:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff5825a76fb66af59bd62427db8e29038f20a2bb2e2a921cf7683a4e038da7d8`  
		Last Modified: Fri, 12 Apr 2019 00:23:01 GMT  
		Size: 104.7 MB (104715220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af8892a044b9bfe0c5a4c801be29e6ded473b996ca7ff860f53e56b96c812cb`  
		Last Modified: Fri, 12 Apr 2019 00:22:41 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33eada78dbf20eb76f28b59b013b2e0d4607067bee3599e880fbf6dcbe468bab`  
		Last Modified: Fri, 12 Apr 2019 00:22:41 GMT  
		Size: 3.9 KB (3915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:4d57e5c3e6411989294726b5ec9c270dff4b5a69ae35592cb3b01fa9450cd7cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.3 MB (142341683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e70cd15d7bbffc3f22cdeebacf4c52231923f2632e2223502c4b87033a2d3370`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 13:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 14 Mar 2019 13:13:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 09:11:53 GMT
ENV GOSU_VERSION=1.11
# Wed, 03 Apr 2019 09:11:54 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 03 Apr 2019 09:12:20 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 03 Apr 2019 09:12:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 03 Apr 2019 09:15:28 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 03 Apr 2019 09:15:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 03 Apr 2019 09:15:33 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 03 Apr 2019 09:15:34 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:15:35 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:15:36 GMT
ENV MONGO_MAJOR=4.0
# Fri, 12 Apr 2019 08:56:14 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 08:56:16 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 08:57:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 08:57:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 08:57:16 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 08:57:17 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 08:57:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 08:57:18 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 08:57:19 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6a83a8acb0578ebfbbf74a04004906f0b3b48a9093fc2d55e2f4733702f072`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.0 KB (1997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6773eb84c78cfadd6e06f80b284436019002b456c7ea2bb8b81fbe5219146c9a`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.5 MB (2474277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a0bc5664d45720bf4c190c4942f6c7af8305ab159e7195acfaa0258fede977`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 1.1 MB (1085802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d90e9fb115424b03824f81931655679424f7a09b346b82ac7f9c7a58dae7d25`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620e2f2c134ec045536dbf36bf0c0d26665bf08254948f0fc2e4ab1b88c2e071`  
		Last Modified: Wed, 03 Apr 2019 09:23:41 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1657faff5cf9942c59e9be2b414088cd853feb7d52cc9ed334033f5fac084ef`  
		Last Modified: Fri, 12 Apr 2019 08:59:06 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda8969b171ba51b0987988905cb49129dac1aae886b6a98cf3d82bd5f0d612a`  
		Last Modified: Fri, 12 Apr 2019 08:59:39 GMT  
		Size: 99.2 MB (99189313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49c0b88c1b3281accb3c1c91794de0dbc0520147a0ecb130255335e05705257`  
		Last Modified: Fri, 12 Apr 2019 08:59:06 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bfda2e1ac428dbcdfb39f965ee7517f677d55a1ec96a5c3bf462ededb200506`  
		Last Modified: Fri, 12 Apr 2019 08:59:06 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:68209a50d83c8e37f3f2dca6d2a69b1c84c57dbae7d74a47640434f2678ae13a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64

### `mongo:latest` - linux; amd64

```console
$ docker pull mongo@sha256:43ebe367bb2c17fd4787a32e2824141a6e229cab8139871aaf8b7893d561fd93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152382959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1c8142b3efc0b00c32c57a4095366a48a5b769b94f243ddf2bac4d44ad242c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:16:49 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Mar 2019 01:16:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 02 Apr 2019 23:43:32 GMT
ENV GOSU_VERSION=1.11
# Tue, 02 Apr 2019 23:43:32 GMT
ENV JSYAML_VERSION=3.13.0
# Tue, 02 Apr 2019 23:43:39 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 02 Apr 2019 23:43:40 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 02 Apr 2019 23:44:42 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Tue, 02 Apr 2019 23:44:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 02 Apr 2019 23:44:43 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 02 Apr 2019 23:44:43 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:44:43 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:44:43 GMT
ENV MONGO_MAJOR=4.0
# Fri, 12 Apr 2019 00:21:14 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 00:21:15 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 00:21:48 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 00:21:49 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 00:21:49 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 00:21:49 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 00:21:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 00:21:50 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 00:21:50 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7833eaffdda8c479f372f8bed51dfa22ad2a41ec187c8905248a67fdfae69c7`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8287cb5b9dafe7dbf0714f034c3ce7027cc9d68ff4a95d4c2711402e873217b6`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.9 MB (2945588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92d9c8d3bef70013346dcb29e55cf69e24455a658de9f6ecc716f667c81bd2`  
		Last Modified: Tue, 02 Apr 2019 23:46:28 GMT  
		Size: 1.2 MB (1151290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a99ed0412704a07ccebf7b67a323e37292c6635c1ecab51c489054f41995c2`  
		Last Modified: Tue, 02 Apr 2019 23:46:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c26ac89d7363507ee99af3b49f300510574a46a8945d72f8b2714ac46b8ac61`  
		Last Modified: Tue, 02 Apr 2019 23:47:18 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f01a3e0a56a41a6f789455b5839d017ae4ecb0e71b10baf02ebd9c9921d784`  
		Last Modified: Fri, 12 Apr 2019 00:22:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff5825a76fb66af59bd62427db8e29038f20a2bb2e2a921cf7683a4e038da7d8`  
		Last Modified: Fri, 12 Apr 2019 00:23:01 GMT  
		Size: 104.7 MB (104715220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af8892a044b9bfe0c5a4c801be29e6ded473b996ca7ff860f53e56b96c812cb`  
		Last Modified: Fri, 12 Apr 2019 00:22:41 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33eada78dbf20eb76f28b59b013b2e0d4607067bee3599e880fbf6dcbe468bab`  
		Last Modified: Fri, 12 Apr 2019 00:22:41 GMT  
		Size: 3.9 KB (3915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:4d57e5c3e6411989294726b5ec9c270dff4b5a69ae35592cb3b01fa9450cd7cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.3 MB (142341683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e70cd15d7bbffc3f22cdeebacf4c52231923f2632e2223502c4b87033a2d3370`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 13:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 14 Mar 2019 13:13:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 09:11:53 GMT
ENV GOSU_VERSION=1.11
# Wed, 03 Apr 2019 09:11:54 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 03 Apr 2019 09:12:20 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 03 Apr 2019 09:12:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 03 Apr 2019 09:15:28 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 03 Apr 2019 09:15:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 03 Apr 2019 09:15:33 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 03 Apr 2019 09:15:34 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:15:35 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:15:36 GMT
ENV MONGO_MAJOR=4.0
# Fri, 12 Apr 2019 08:56:14 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 08:56:16 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 08:57:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 08:57:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 08:57:16 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 08:57:17 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 08:57:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 08:57:18 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 08:57:19 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6a83a8acb0578ebfbbf74a04004906f0b3b48a9093fc2d55e2f4733702f072`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.0 KB (1997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6773eb84c78cfadd6e06f80b284436019002b456c7ea2bb8b81fbe5219146c9a`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.5 MB (2474277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a0bc5664d45720bf4c190c4942f6c7af8305ab159e7195acfaa0258fede977`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 1.1 MB (1085802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d90e9fb115424b03824f81931655679424f7a09b346b82ac7f9c7a58dae7d25`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620e2f2c134ec045536dbf36bf0c0d26665bf08254948f0fc2e4ab1b88c2e071`  
		Last Modified: Wed, 03 Apr 2019 09:23:41 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1657faff5cf9942c59e9be2b414088cd853feb7d52cc9ed334033f5fac084ef`  
		Last Modified: Fri, 12 Apr 2019 08:59:06 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda8969b171ba51b0987988905cb49129dac1aae886b6a98cf3d82bd5f0d612a`  
		Last Modified: Fri, 12 Apr 2019 08:59:39 GMT  
		Size: 99.2 MB (99189313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49c0b88c1b3281accb3c1c91794de0dbc0520147a0ecb130255335e05705257`  
		Last Modified: Fri, 12 Apr 2019 08:59:06 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bfda2e1ac428dbcdfb39f965ee7517f677d55a1ec96a5c3bf462ededb200506`  
		Last Modified: Fri, 12 Apr 2019 08:59:06 GMT  
		Size: 3.9 KB (3914 bytes)  
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
$ docker pull mongo@sha256:43736c26359fb29af796b0d927697068f278cca08148303ed99997bcee93406e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; s390x
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64

### `mongo:unstable` - linux; amd64

```console
$ docker pull mongo@sha256:0c4f85cde04cfae6d0a30b3f83b7d3d0ba1bad70b53c437c13eac535b1e6d05d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.0 MB (147993545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e8c3b2f0411f02d25170db94b7ec38b3a65848c87519afc4b5a31ea07839c49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 02 Apr 2019 23:45:14 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 02 Apr 2019 23:45:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 02 Apr 2019 23:45:24 GMT
ENV GOSU_VERSION=1.11
# Tue, 02 Apr 2019 23:45:24 GMT
ENV JSYAML_VERSION=3.13.0
# Tue, 02 Apr 2019 23:45:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 02 Apr 2019 23:45:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 02 Apr 2019 23:45:44 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Tue, 02 Apr 2019 23:45:45 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 02 Apr 2019 23:45:45 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Tue, 02 Apr 2019 23:45:45 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:45:46 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:45:46 GMT
ENV MONGO_MAJOR=4.1
# Fri, 12 Apr 2019 00:21:59 GMT
ENV MONGO_VERSION=4.1.10
# Fri, 12 Apr 2019 00:22:00 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 00:22:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 00:22:26 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 00:22:27 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 00:22:27 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 00:22:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 00:22:27 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 00:22:27 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af087a0122119e941b0988a5e01f79b2e54250ed4ea766b260b589e492a042e`  
		Last Modified: Tue, 02 Apr 2019 23:47:42 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7483b00c3d9f272517ef770ded04048c6ee6547daad58f7d2d46e1c162ea2e5`  
		Last Modified: Tue, 02 Apr 2019 23:47:43 GMT  
		Size: 2.7 MB (2732289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3546fdf9877eeb6af3edb71b4c6c345f4eeb1a9901da55638c962bf3a30a52a6`  
		Last Modified: Tue, 02 Apr 2019 23:47:43 GMT  
		Size: 5.8 MB (5758826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8181a5f463390d3a638286b0b5e334e1b7fdcae20cb7aa09ac03ae7a36bf61`  
		Last Modified: Tue, 02 Apr 2019 23:47:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f641c6abe09ddc045993b48c2a5935a3693e7b31e77ca750a1238a609cab9b68`  
		Last Modified: Tue, 02 Apr 2019 23:47:41 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095830294a4481fc87bb6468e9d7555565fdc19a0e4e9694133724c8514a0604`  
		Last Modified: Fri, 12 Apr 2019 00:23:07 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8a8d3ac40d9a89e928f7b5a29fcb1da6f0bdba756c32a6240d27c00e419c44`  
		Last Modified: Fri, 12 Apr 2019 00:23:24 GMT  
		Size: 107.0 MB (107026575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e31f0c3ef73e4b51528651c1a1a589f952a282b82d193e23a2dfbc33b2e447e`  
		Last Modified: Fri, 12 Apr 2019 00:23:07 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405434eb1cb5146920d604bd783d0fdab7c0d2c511d847999d56cf17b65820eb`  
		Last Modified: Fri, 12 Apr 2019 00:23:07 GMT  
		Size: 3.9 KB (3918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:e327252072ccc6fb744119403dc5b0e8c0389ba51ad4a8226e2d63125f95ea89
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.6 MB (138648865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb5e6594a7e60ba4e0b92863b10fc82564d0a77a0f50977380930978b6bc9b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 14 Mar 2019 09:34:18 GMT
ADD file:4cccf4e4a71783b1ac058bcfcabe23b3901e829c3859551be9d7e732cb9e3f86 in / 
# Thu, 14 Mar 2019 09:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:34:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:34:32 GMT
CMD ["/bin/bash"]
# Wed, 03 Apr 2019 09:17:17 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 03 Apr 2019 09:17:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 09:17:56 GMT
ENV GOSU_VERSION=1.11
# Wed, 03 Apr 2019 09:17:56 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 03 Apr 2019 09:19:24 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 03 Apr 2019 09:19:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 03 Apr 2019 09:19:30 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Wed, 03 Apr 2019 09:19:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 03 Apr 2019 09:19:38 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 03 Apr 2019 09:19:40 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:19:42 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:19:45 GMT
ENV MONGO_MAJOR=4.1
# Fri, 12 Apr 2019 08:57:30 GMT
ENV MONGO_VERSION=4.1.10
# Fri, 12 Apr 2019 08:57:33 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 08:58:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 08:58:36 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 08:58:37 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 08:58:37 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 08:58:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 08:58:39 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 08:58:39 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a0ceea30e08b5fa042d10308a43b8b093b67ce44e98a69ea8d277d00077387ab`  
		Last Modified: Fri, 08 Mar 2019 23:47:38 GMT  
		Size: 29.2 MB (29175537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef245d4e8728acd667d550023b9ffbb688c7976f78f72986d132072041e5a1`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb25026742c32e7fe5417efb6bc0ff5ad1eb9963007aebd5f71e9bc333e9ba`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b2948ac15d07c725e6074399d5e49e916e79b2c7738d6ad63e4d1b090db8f`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a951e7204c9366c16e2d7c295430f7db90c41267c81baaf820fe7bb0a59f31`  
		Last Modified: Wed, 03 Apr 2019 09:24:50 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e09a9e16547979770b74f9eaf37eb42a5b4c6bbc0368101a696c85c27d094d6`  
		Last Modified: Wed, 03 Apr 2019 09:24:53 GMT  
		Size: 2.4 MB (2444732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f848dd4349aa92112842e48ffd4b74b7521cd9522c868163a1f3e67cec1ce8a3`  
		Last Modified: Wed, 03 Apr 2019 09:24:55 GMT  
		Size: 5.3 MB (5277968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49e6741e94d85a31436c4fffba0419b3e053c4b6a856d963839141640d270d7`  
		Last Modified: Wed, 03 Apr 2019 09:24:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49d70b56815a04031f1dc049cd460ba0c03255b7fe8204187d881a96f2f9c4b`  
		Last Modified: Wed, 03 Apr 2019 09:24:48 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baece0672d9cbf491e05b04f17975bfe0b763971e619516d2ab3747062057241`  
		Last Modified: Fri, 12 Apr 2019 08:59:54 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3953d8f574254fe36e7c500b7b8d803684aae229b6d3c15268ff2156a4511ef5`  
		Last Modified: Fri, 12 Apr 2019 09:00:26 GMT  
		Size: 101.7 MB (101741354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2936cc6982dbb8fb19728e6bfda731eb276cf8853e476504b860971d0539ab6f`  
		Last Modified: Fri, 12 Apr 2019 08:59:54 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7238eb21900ca3eb15dba10dda1ba7d56e98f0731941676aaf1d840b184dbfb`  
		Last Modified: Fri, 12 Apr 2019 08:59:55 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - linux; s390x

```console
$ docker pull mongo@sha256:8373fabcce1ddc6981982dc90d1621cf4dcd4cc13aa93f360f8c0e4f258de111
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142882184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:626981a8e99cc81e462a7d03367443230d5c4acbc6b40319ea19299463898cf8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 12:08:47 GMT
ADD file:7b97cdceb7a661db3458df6cd992d2e735fec8613abd86bdff58a949190c355b in / 
# Tue, 12 Mar 2019 12:08:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:08:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:08:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:08:51 GMT
CMD ["/bin/bash"]
# Thu, 04 Apr 2019 11:53:13 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 04 Apr 2019 11:53:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 11:53:37 GMT
ENV GOSU_VERSION=1.11
# Thu, 04 Apr 2019 11:53:37 GMT
ENV JSYAML_VERSION=3.13.0
# Thu, 04 Apr 2019 11:54:03 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 04 Apr 2019 11:54:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 04 Apr 2019 11:54:05 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Thu, 04 Apr 2019 11:54:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 04 Apr 2019 11:54:09 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Thu, 04 Apr 2019 11:54:09 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 04 Apr 2019 11:54:10 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Thu, 04 Apr 2019 11:54:10 GMT
ENV MONGO_MAJOR=4.1
# Fri, 12 Apr 2019 11:45:24 GMT
ENV MONGO_VERSION=4.1.10
# Fri, 12 Apr 2019 11:45:24 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 11:45:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 11:45:57 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 11:45:58 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 11:45:58 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 11:45:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 11:45:58 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 11:45:59 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:ce90edcc3139e116c97e192a11962790422da390b102aca2d617dc565de4d938`  
		Last Modified: Tue, 12 Mar 2019 12:10:06 GMT  
		Size: 30.7 MB (30701859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2794d8d2439572a529e844dce238c278c50debc920730de784f9cbc405a0b51`  
		Last Modified: Tue, 12 Mar 2019 12:09:58 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ecab1b250dd07edb1294b4ad9afbdcb2a5b9bc81e09ae75d2d65dc32c6df0c4`  
		Last Modified: Tue, 12 Mar 2019 12:09:58 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ae8f34b30e3b128ba685424ccf987869098004713c41da34ce3636eb12060e`  
		Last Modified: Tue, 12 Mar 2019 12:09:58 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a316a44e1c9a53943aac6f7d253a52e7b9b068f9de2347a7ef7c002d250cf23`  
		Last Modified: Thu, 04 Apr 2019 11:55:28 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7a77396fba77d74dd6b5c0226b347773cf3b5343afcb660eb8063e98d910bd`  
		Last Modified: Thu, 04 Apr 2019 11:55:29 GMT  
		Size: 2.5 MB (2460421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912eeafa66aa0fa49f3bcf8c352c3a11464c27feb4f3a828fd522b2590a77563`  
		Last Modified: Thu, 04 Apr 2019 11:55:30 GMT  
		Size: 5.7 MB (5680519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58c6f4e7aef9d1718da0231173b562831bfb91239044925f52de32944bc2be4b`  
		Last Modified: Thu, 04 Apr 2019 11:55:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ce9dcdf3737b3cc0a22f26341944c52bc7868607edbc267c803e84f9e4876a`  
		Last Modified: Thu, 04 Apr 2019 11:55:27 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:462aedc7d55e700bfe5dc143e3b1fe3d0ad59e19581763cb9ca4ac65f88bf0df`  
		Last Modified: Fri, 12 Apr 2019 11:46:10 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a81fa5803e6547eb816fe0dd25397bba216a6073ad1981eb7dc1760f070ac0`  
		Last Modified: Fri, 12 Apr 2019 11:46:28 GMT  
		Size: 104.0 MB (104030123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faaf9c7133250abd428ca76053a7b712168b4c3c629ce778b3ded4d1d4bd8e20`  
		Last Modified: Fri, 12 Apr 2019 11:46:10 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9d684f46a4b5e1904a73f7d569d4a6c2d77d5b89e2c1f374bd4b99c1c3689c`  
		Last Modified: Fri, 12 Apr 2019 11:46:10 GMT  
		Size: 3.9 KB (3909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - windows version 10.0.14393.2906; amd64

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

### `mongo:unstable` - windows version 10.0.17134.706; amd64

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

## `mongo:unstable-bionic`

```console
$ docker pull mongo@sha256:fa130121b52b9bced4cf6c7e7ccabac9251f9c35aeda1a24a28744c0128743b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; s390x

### `mongo:unstable-bionic` - linux; amd64

```console
$ docker pull mongo@sha256:0c4f85cde04cfae6d0a30b3f83b7d3d0ba1bad70b53c437c13eac535b1e6d05d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.0 MB (147993545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e8c3b2f0411f02d25170db94b7ec38b3a65848c87519afc4b5a31ea07839c49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 02 Apr 2019 23:45:14 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 02 Apr 2019 23:45:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 02 Apr 2019 23:45:24 GMT
ENV GOSU_VERSION=1.11
# Tue, 02 Apr 2019 23:45:24 GMT
ENV JSYAML_VERSION=3.13.0
# Tue, 02 Apr 2019 23:45:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 02 Apr 2019 23:45:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 02 Apr 2019 23:45:44 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Tue, 02 Apr 2019 23:45:45 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 02 Apr 2019 23:45:45 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Tue, 02 Apr 2019 23:45:45 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:45:46 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:45:46 GMT
ENV MONGO_MAJOR=4.1
# Fri, 12 Apr 2019 00:21:59 GMT
ENV MONGO_VERSION=4.1.10
# Fri, 12 Apr 2019 00:22:00 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 00:22:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 00:22:26 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 00:22:27 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 00:22:27 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 00:22:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 00:22:27 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 00:22:27 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af087a0122119e941b0988a5e01f79b2e54250ed4ea766b260b589e492a042e`  
		Last Modified: Tue, 02 Apr 2019 23:47:42 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7483b00c3d9f272517ef770ded04048c6ee6547daad58f7d2d46e1c162ea2e5`  
		Last Modified: Tue, 02 Apr 2019 23:47:43 GMT  
		Size: 2.7 MB (2732289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3546fdf9877eeb6af3edb71b4c6c345f4eeb1a9901da55638c962bf3a30a52a6`  
		Last Modified: Tue, 02 Apr 2019 23:47:43 GMT  
		Size: 5.8 MB (5758826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8181a5f463390d3a638286b0b5e334e1b7fdcae20cb7aa09ac03ae7a36bf61`  
		Last Modified: Tue, 02 Apr 2019 23:47:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f641c6abe09ddc045993b48c2a5935a3693e7b31e77ca750a1238a609cab9b68`  
		Last Modified: Tue, 02 Apr 2019 23:47:41 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095830294a4481fc87bb6468e9d7555565fdc19a0e4e9694133724c8514a0604`  
		Last Modified: Fri, 12 Apr 2019 00:23:07 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8a8d3ac40d9a89e928f7b5a29fcb1da6f0bdba756c32a6240d27c00e419c44`  
		Last Modified: Fri, 12 Apr 2019 00:23:24 GMT  
		Size: 107.0 MB (107026575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e31f0c3ef73e4b51528651c1a1a589f952a282b82d193e23a2dfbc33b2e447e`  
		Last Modified: Fri, 12 Apr 2019 00:23:07 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405434eb1cb5146920d604bd783d0fdab7c0d2c511d847999d56cf17b65820eb`  
		Last Modified: Fri, 12 Apr 2019 00:23:07 GMT  
		Size: 3.9 KB (3918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable-bionic` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:e327252072ccc6fb744119403dc5b0e8c0389ba51ad4a8226e2d63125f95ea89
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.6 MB (138648865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb5e6594a7e60ba4e0b92863b10fc82564d0a77a0f50977380930978b6bc9b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 14 Mar 2019 09:34:18 GMT
ADD file:4cccf4e4a71783b1ac058bcfcabe23b3901e829c3859551be9d7e732cb9e3f86 in / 
# Thu, 14 Mar 2019 09:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:34:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:34:32 GMT
CMD ["/bin/bash"]
# Wed, 03 Apr 2019 09:17:17 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 03 Apr 2019 09:17:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 09:17:56 GMT
ENV GOSU_VERSION=1.11
# Wed, 03 Apr 2019 09:17:56 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 03 Apr 2019 09:19:24 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 03 Apr 2019 09:19:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 03 Apr 2019 09:19:30 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Wed, 03 Apr 2019 09:19:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 03 Apr 2019 09:19:38 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 03 Apr 2019 09:19:40 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:19:42 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:19:45 GMT
ENV MONGO_MAJOR=4.1
# Fri, 12 Apr 2019 08:57:30 GMT
ENV MONGO_VERSION=4.1.10
# Fri, 12 Apr 2019 08:57:33 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 08:58:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 08:58:36 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 08:58:37 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 08:58:37 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 08:58:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 08:58:39 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 08:58:39 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a0ceea30e08b5fa042d10308a43b8b093b67ce44e98a69ea8d277d00077387ab`  
		Last Modified: Fri, 08 Mar 2019 23:47:38 GMT  
		Size: 29.2 MB (29175537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef245d4e8728acd667d550023b9ffbb688c7976f78f72986d132072041e5a1`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb25026742c32e7fe5417efb6bc0ff5ad1eb9963007aebd5f71e9bc333e9ba`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b2948ac15d07c725e6074399d5e49e916e79b2c7738d6ad63e4d1b090db8f`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a951e7204c9366c16e2d7c295430f7db90c41267c81baaf820fe7bb0a59f31`  
		Last Modified: Wed, 03 Apr 2019 09:24:50 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e09a9e16547979770b74f9eaf37eb42a5b4c6bbc0368101a696c85c27d094d6`  
		Last Modified: Wed, 03 Apr 2019 09:24:53 GMT  
		Size: 2.4 MB (2444732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f848dd4349aa92112842e48ffd4b74b7521cd9522c868163a1f3e67cec1ce8a3`  
		Last Modified: Wed, 03 Apr 2019 09:24:55 GMT  
		Size: 5.3 MB (5277968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49e6741e94d85a31436c4fffba0419b3e053c4b6a856d963839141640d270d7`  
		Last Modified: Wed, 03 Apr 2019 09:24:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49d70b56815a04031f1dc049cd460ba0c03255b7fe8204187d881a96f2f9c4b`  
		Last Modified: Wed, 03 Apr 2019 09:24:48 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baece0672d9cbf491e05b04f17975bfe0b763971e619516d2ab3747062057241`  
		Last Modified: Fri, 12 Apr 2019 08:59:54 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3953d8f574254fe36e7c500b7b8d803684aae229b6d3c15268ff2156a4511ef5`  
		Last Modified: Fri, 12 Apr 2019 09:00:26 GMT  
		Size: 101.7 MB (101741354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2936cc6982dbb8fb19728e6bfda731eb276cf8853e476504b860971d0539ab6f`  
		Last Modified: Fri, 12 Apr 2019 08:59:54 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7238eb21900ca3eb15dba10dda1ba7d56e98f0731941676aaf1d840b184dbfb`  
		Last Modified: Fri, 12 Apr 2019 08:59:55 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable-bionic` - linux; s390x

```console
$ docker pull mongo@sha256:8373fabcce1ddc6981982dc90d1621cf4dcd4cc13aa93f360f8c0e4f258de111
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142882184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:626981a8e99cc81e462a7d03367443230d5c4acbc6b40319ea19299463898cf8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 12:08:47 GMT
ADD file:7b97cdceb7a661db3458df6cd992d2e735fec8613abd86bdff58a949190c355b in / 
# Tue, 12 Mar 2019 12:08:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:08:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:08:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:08:51 GMT
CMD ["/bin/bash"]
# Thu, 04 Apr 2019 11:53:13 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 04 Apr 2019 11:53:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 11:53:37 GMT
ENV GOSU_VERSION=1.11
# Thu, 04 Apr 2019 11:53:37 GMT
ENV JSYAML_VERSION=3.13.0
# Thu, 04 Apr 2019 11:54:03 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 04 Apr 2019 11:54:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 04 Apr 2019 11:54:05 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Thu, 04 Apr 2019 11:54:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 04 Apr 2019 11:54:09 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Thu, 04 Apr 2019 11:54:09 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 04 Apr 2019 11:54:10 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Thu, 04 Apr 2019 11:54:10 GMT
ENV MONGO_MAJOR=4.1
# Fri, 12 Apr 2019 11:45:24 GMT
ENV MONGO_VERSION=4.1.10
# Fri, 12 Apr 2019 11:45:24 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 11:45:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 11:45:57 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 11:45:58 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 11:45:58 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 11:45:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 11:45:58 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 11:45:59 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:ce90edcc3139e116c97e192a11962790422da390b102aca2d617dc565de4d938`  
		Last Modified: Tue, 12 Mar 2019 12:10:06 GMT  
		Size: 30.7 MB (30701859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2794d8d2439572a529e844dce238c278c50debc920730de784f9cbc405a0b51`  
		Last Modified: Tue, 12 Mar 2019 12:09:58 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ecab1b250dd07edb1294b4ad9afbdcb2a5b9bc81e09ae75d2d65dc32c6df0c4`  
		Last Modified: Tue, 12 Mar 2019 12:09:58 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ae8f34b30e3b128ba685424ccf987869098004713c41da34ce3636eb12060e`  
		Last Modified: Tue, 12 Mar 2019 12:09:58 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a316a44e1c9a53943aac6f7d253a52e7b9b068f9de2347a7ef7c002d250cf23`  
		Last Modified: Thu, 04 Apr 2019 11:55:28 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7a77396fba77d74dd6b5c0226b347773cf3b5343afcb660eb8063e98d910bd`  
		Last Modified: Thu, 04 Apr 2019 11:55:29 GMT  
		Size: 2.5 MB (2460421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912eeafa66aa0fa49f3bcf8c352c3a11464c27feb4f3a828fd522b2590a77563`  
		Last Modified: Thu, 04 Apr 2019 11:55:30 GMT  
		Size: 5.7 MB (5680519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58c6f4e7aef9d1718da0231173b562831bfb91239044925f52de32944bc2be4b`  
		Last Modified: Thu, 04 Apr 2019 11:55:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ce9dcdf3737b3cc0a22f26341944c52bc7868607edbc267c803e84f9e4876a`  
		Last Modified: Thu, 04 Apr 2019 11:55:27 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:462aedc7d55e700bfe5dc143e3b1fe3d0ad59e19581763cb9ca4ac65f88bf0df`  
		Last Modified: Fri, 12 Apr 2019 11:46:10 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a81fa5803e6547eb816fe0dd25397bba216a6073ad1981eb7dc1760f070ac0`  
		Last Modified: Fri, 12 Apr 2019 11:46:28 GMT  
		Size: 104.0 MB (104030123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faaf9c7133250abd428ca76053a7b712168b4c3c629ce778b3ded4d1d4bd8e20`  
		Last Modified: Fri, 12 Apr 2019 11:46:10 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9d684f46a4b5e1904a73f7d569d4a6c2d77d5b89e2c1f374bd4b99c1c3689c`  
		Last Modified: Fri, 12 Apr 2019 11:46:10 GMT  
		Size: 3.9 KB (3909 bytes)  
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
$ docker pull mongo@sha256:8bfdfc2f169d934a2deef860ff74a6d97731f31250addb3d62f28c6008745f78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:xenial` - linux; amd64

```console
$ docker pull mongo@sha256:43ebe367bb2c17fd4787a32e2824141a6e229cab8139871aaf8b7893d561fd93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152382959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1c8142b3efc0b00c32c57a4095366a48a5b769b94f243ddf2bac4d44ad242c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:16:49 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Mar 2019 01:16:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 02 Apr 2019 23:43:32 GMT
ENV GOSU_VERSION=1.11
# Tue, 02 Apr 2019 23:43:32 GMT
ENV JSYAML_VERSION=3.13.0
# Tue, 02 Apr 2019 23:43:39 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 02 Apr 2019 23:43:40 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 02 Apr 2019 23:44:42 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Tue, 02 Apr 2019 23:44:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 02 Apr 2019 23:44:43 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 02 Apr 2019 23:44:43 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:44:43 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:44:43 GMT
ENV MONGO_MAJOR=4.0
# Fri, 12 Apr 2019 00:21:14 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 00:21:15 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 00:21:48 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 00:21:49 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 00:21:49 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 00:21:49 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 00:21:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 00:21:50 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 00:21:50 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7833eaffdda8c479f372f8bed51dfa22ad2a41ec187c8905248a67fdfae69c7`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8287cb5b9dafe7dbf0714f034c3ce7027cc9d68ff4a95d4c2711402e873217b6`  
		Last Modified: Tue, 12 Mar 2019 01:18:11 GMT  
		Size: 2.9 MB (2945588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92d9c8d3bef70013346dcb29e55cf69e24455a658de9f6ecc716f667c81bd2`  
		Last Modified: Tue, 02 Apr 2019 23:46:28 GMT  
		Size: 1.2 MB (1151290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a99ed0412704a07ccebf7b67a323e37292c6635c1ecab51c489054f41995c2`  
		Last Modified: Tue, 02 Apr 2019 23:46:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c26ac89d7363507ee99af3b49f300510574a46a8945d72f8b2714ac46b8ac61`  
		Last Modified: Tue, 02 Apr 2019 23:47:18 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f01a3e0a56a41a6f789455b5839d017ae4ecb0e71b10baf02ebd9c9921d784`  
		Last Modified: Fri, 12 Apr 2019 00:22:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff5825a76fb66af59bd62427db8e29038f20a2bb2e2a921cf7683a4e038da7d8`  
		Last Modified: Fri, 12 Apr 2019 00:23:01 GMT  
		Size: 104.7 MB (104715220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af8892a044b9bfe0c5a4c801be29e6ded473b996ca7ff860f53e56b96c812cb`  
		Last Modified: Fri, 12 Apr 2019 00:22:41 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33eada78dbf20eb76f28b59b013b2e0d4607067bee3599e880fbf6dcbe468bab`  
		Last Modified: Fri, 12 Apr 2019 00:22:41 GMT  
		Size: 3.9 KB (3915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:4d57e5c3e6411989294726b5ec9c270dff4b5a69ae35592cb3b01fa9450cd7cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.3 MB (142341683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e70cd15d7bbffc3f22cdeebacf4c52231923f2632e2223502c4b87033a2d3370`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 13:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 14 Mar 2019 13:13:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 09:11:53 GMT
ENV GOSU_VERSION=1.11
# Wed, 03 Apr 2019 09:11:54 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 03 Apr 2019 09:12:20 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 03 Apr 2019 09:12:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 03 Apr 2019 09:15:28 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 03 Apr 2019 09:15:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 03 Apr 2019 09:15:33 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 03 Apr 2019 09:15:34 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:15:35 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:15:36 GMT
ENV MONGO_MAJOR=4.0
# Fri, 12 Apr 2019 08:56:14 GMT
ENV MONGO_VERSION=4.0.9
# Fri, 12 Apr 2019 08:56:16 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 12 Apr 2019 08:57:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 12 Apr 2019 08:57:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 12 Apr 2019 08:57:16 GMT
VOLUME [/data/db /data/configdb]
# Fri, 12 Apr 2019 08:57:17 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Fri, 12 Apr 2019 08:57:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 08:57:18 GMT
EXPOSE 27017
# Fri, 12 Apr 2019 08:57:19 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6a83a8acb0578ebfbbf74a04004906f0b3b48a9093fc2d55e2f4733702f072`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.0 KB (1997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6773eb84c78cfadd6e06f80b284436019002b456c7ea2bb8b81fbe5219146c9a`  
		Last Modified: Thu, 14 Mar 2019 13:20:23 GMT  
		Size: 2.5 MB (2474277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a0bc5664d45720bf4c190c4942f6c7af8305ab159e7195acfaa0258fede977`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 1.1 MB (1085802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d90e9fb115424b03824f81931655679424f7a09b346b82ac7f9c7a58dae7d25`  
		Last Modified: Wed, 03 Apr 2019 09:22:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620e2f2c134ec045536dbf36bf0c0d26665bf08254948f0fc2e4ab1b88c2e071`  
		Last Modified: Wed, 03 Apr 2019 09:23:41 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1657faff5cf9942c59e9be2b414088cd853feb7d52cc9ed334033f5fac084ef`  
		Last Modified: Fri, 12 Apr 2019 08:59:06 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda8969b171ba51b0987988905cb49129dac1aae886b6a98cf3d82bd5f0d612a`  
		Last Modified: Fri, 12 Apr 2019 08:59:39 GMT  
		Size: 99.2 MB (99189313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49c0b88c1b3281accb3c1c91794de0dbc0520147a0ecb130255335e05705257`  
		Last Modified: Fri, 12 Apr 2019 08:59:06 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bfda2e1ac428dbcdfb39f965ee7517f677d55a1ec96a5c3bf462ededb200506`  
		Last Modified: Fri, 12 Apr 2019 08:59:06 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
