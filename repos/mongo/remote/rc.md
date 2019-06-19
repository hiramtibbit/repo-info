## `mongo:rc`

```console
$ docker pull mongo@sha256:410f21934d4f8840af4523af5e67a0fd5093b4b6ff5ca63889525e580d059612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.3025; amd64
	-	windows version 10.0.17134.829; amd64

### `mongo:rc` - linux; amd64

```console
$ docker pull mongo@sha256:e3af43a35d60fcfe6c7463b899196c553f74d4da25443794f483fac715160160
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.6 MB (147599120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b37fc99e68bf28c71e7c3566b41497f502b7a138dd090d20d09740356dfd1a09`
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
# Fri, 14 Jun 2019 22:33:37 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 14 Jun 2019 22:33:37 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 14 Jun 2019 22:33:37 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 14 Jun 2019 22:33:37 GMT
ENV MONGO_MAJOR=testing
# Fri, 14 Jun 2019 22:33:38 GMT
ENV MONGO_VERSION=4.2.0~rc1
# Fri, 14 Jun 2019 22:33:38 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 14 Jun 2019 22:34:01 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 14 Jun 2019 22:34:02 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 14 Jun 2019 22:34:02 GMT
VOLUME [/data/db /data/configdb]
# Fri, 14 Jun 2019 22:34:03 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:34:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:34:03 GMT
EXPOSE 27017
# Fri, 14 Jun 2019 22:34:03 GMT
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
	-	`sha256:f991a2dfcbf70db7e0815ef93b37abc9d3cd0cfe5df0a43282e4f1858127d8bd`  
		Last Modified: Fri, 14 Jun 2019 22:34:22 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a17fd835ed2d0d29b4270798b3e918490073c674a01957d7bc094aa92992b2`  
		Last Modified: Fri, 14 Jun 2019 22:34:40 GMT  
		Size: 110.2 MB (110243017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103a53583944dd0db8c9e25d95d36429aeaf8ab4d5eb2a850ffc149005ec2666`  
		Last Modified: Fri, 14 Jun 2019 22:34:22 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60aa71b4a0466c3c74142c4343605ae8c9e0578f508f51cfa2d9342bc1dc7c0d`  
		Last Modified: Fri, 14 Jun 2019 22:34:22 GMT  
		Size: 3.9 KB (3915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:rc` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:0cac59cee23add3fd451de0057c578546c133a165c9e2b02efd22e59456486e6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.0 MB (134978962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b516da9af5b89d054be982d8f72ad55e945d8fcdba1d9c2f5bca2f794f5ead73`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 23:11:39 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 18 Jun 2019 23:11:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:11:59 GMT
ENV GOSU_VERSION=1.11
# Tue, 18 Jun 2019 23:11:59 GMT
ENV JSYAML_VERSION=3.13.0
# Tue, 18 Jun 2019 23:12:25 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 18 Jun 2019 23:12:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 18 Jun 2019 23:12:27 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Tue, 18 Jun 2019 23:12:31 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 18 Jun 2019 23:13:21 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 18 Jun 2019 23:13:21 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 18 Jun 2019 23:13:22 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 18 Jun 2019 23:13:22 GMT
ENV MONGO_MAJOR=testing
# Tue, 18 Jun 2019 23:13:23 GMT
ENV MONGO_VERSION=4.2.0~rc1
# Tue, 18 Jun 2019 23:13:25 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 18 Jun 2019 23:13:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 18 Jun 2019 23:14:01 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 18 Jun 2019 23:14:02 GMT
VOLUME [/data/db /data/configdb]
# Tue, 18 Jun 2019 23:14:02 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 18 Jun 2019 23:14:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Jun 2019 23:14:03 GMT
EXPOSE 27017
# Tue, 18 Jun 2019 23:14:03 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1749408d43f113d12d152ab4dd576d5d29636646168a1eef8ad09ddd40763a3`  
		Last Modified: Tue, 18 Jun 2019 23:17:07 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:291d9ab7c59d5f26afe9e4900b789db5bdc1dcce9603e6cb1751243332a21eb9`  
		Last Modified: Tue, 18 Jun 2019 23:17:06 GMT  
		Size: 2.7 MB (2666582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de608279602a0294a2b33e70a10fe0b3661cc02c1e0dc47d12e612b6f2222b1`  
		Last Modified: Tue, 18 Jun 2019 23:17:05 GMT  
		Size: 5.3 MB (5279174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e2f716fe39f2427e35742bbeab398fd6bcf8c7d4d4e938e17ddf106bb89d87`  
		Last Modified: Tue, 18 Jun 2019 23:17:02 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61707a40366e94f0ac48d45ce467e0ce4ea8069ad7bf92d95e47130cfe2efb23`  
		Last Modified: Tue, 18 Jun 2019 23:17:01 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d855eb5b956ecc5adcf13b4766821242cafbb7b2c27a4a9dcae786f5674c826`  
		Last Modified: Tue, 18 Jun 2019 23:17:41 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cae734df3859434644590e547aedbceae0e6e421aa433da66a160208adf9e12`  
		Last Modified: Tue, 18 Jun 2019 23:18:09 GMT  
		Size: 103.3 MB (103284858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2299057a68b45f92ec500422cfdbe23eed91b55295cb571bee9795b92c1ab181`  
		Last Modified: Tue, 18 Jun 2019 23:17:41 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d18f3cfa007065594f1f715a2dba6269719be0014bbe49d3017c6b6fbbfcaa`  
		Last Modified: Tue, 18 Jun 2019 23:17:40 GMT  
		Size: 3.9 KB (3915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:rc` - windows version 10.0.14393.3025; amd64

```console
$ docker pull mongo@sha256:26e83d3a74e0415a86933bfb20b000d41a8c6e78f97738cc5beb786f942638a8
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 GB (6197444322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4baad1f26325de635051ae473931606184c4dc5451c0b599200dba6d20aa6716`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 16:02:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 14 Jun 2019 22:17:09 GMT
ENV MONGO_VERSION=4.2.0-rc1
# Fri, 14 Jun 2019 22:17:10 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.2.0-rc1-signed.msi
# Fri, 14 Jun 2019 22:17:12 GMT
ENV MONGO_DOWNLOAD_SHA256=379bcf1725c19c6ff2f2f159ef4e22c9a4ba32692a994e809457f1053c50066f
# Fri, 14 Jun 2019 22:35:20 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 14 Jun 2019 22:35:24 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 14 Jun 2019 22:35:26 GMT
EXPOSE 27017
# Fri, 14 Jun 2019 22:35:28 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a93a9306787f35923544db17afaac32adba5f64cbbb54158d169119bec4293a0`  
		Last Modified: Wed, 12 Jun 2019 17:13:38 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c9c55f57c1314df0c0ea3bfa0f9828048f1aa4ca1889f889f26b07e6bfabd0`  
		Last Modified: Fri, 14 Jun 2019 22:55:39 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b795d63ca0c60369e3d027e4954c844c6efe95bfd395c873405e10f880562a50`  
		Last Modified: Fri, 14 Jun 2019 22:55:39 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c485f7beb6b0250926a31c4362ecd3d4931aea22fab60066139091f1e655b48`  
		Last Modified: Fri, 14 Jun 2019 22:55:37 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e897bddc85c4048aa769ead4c61124c95cc0e766bc307a9983808764a10f4bec`  
		Last Modified: Fri, 14 Jun 2019 22:58:32 GMT  
		Size: 487.5 MB (487461320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff27079ef190d12fb0e9660f17afc04ca56f6b935845de4a12606074bfff77b`  
		Last Modified: Fri, 14 Jun 2019 22:55:37 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c4b77789be7b96e52e277a1665dd5db601174bb4c7c99f4dae38dcfaccbe3f`  
		Last Modified: Fri, 14 Jun 2019 22:55:37 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd6f8bda3590926cd663d1cd123564075952ee2edb14dc53d817eb7cd05075e`  
		Last Modified: Fri, 14 Jun 2019 22:55:37 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:rc` - windows version 10.0.17134.829; amd64

```console
$ docker pull mongo@sha256:501b43421b75a957e53c3015b3ac0550ca5dfb68b24f9143f4e91a090d4297c9
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2795177701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:969b605442c0ebb44369f1c617dc3bf0cefd297989db8dc4016b73ebb48f4687`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 16:24:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 14 Jun 2019 22:35:44 GMT
ENV MONGO_VERSION=4.2.0-rc1
# Fri, 14 Jun 2019 22:35:45 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.2.0-rc1-signed.msi
# Fri, 14 Jun 2019 22:35:46 GMT
ENV MONGO_DOWNLOAD_SHA256=379bcf1725c19c6ff2f2f159ef4e22c9a4ba32692a994e809457f1053c50066f
# Fri, 14 Jun 2019 22:54:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 14 Jun 2019 22:54:38 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 14 Jun 2019 22:54:39 GMT
EXPOSE 27017
# Fri, 14 Jun 2019 22:54:41 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:076b435f3942cf91d0426105dffd7d0bde44033a5dc272f9f96d6322a9c22972`  
		Last Modified: Wed, 12 Jun 2019 17:16:06 GMT  
		Size: 1.1 KB (1148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb529888e90af7ffe92b08fdfb75af5d27d9f0a355a6bad626c76cf173a3cc4b`  
		Last Modified: Fri, 14 Jun 2019 22:58:56 GMT  
		Size: 1.2 KB (1151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83619adeac618c336e63f993c76e44ee7b6dd0cc2aacd75fe4b5cec7db407a64`  
		Last Modified: Fri, 14 Jun 2019 22:58:56 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb18aa21df25a8384a8629925b5a237f1c5af8c0745a4f921860c9056e52a4e2`  
		Last Modified: Fri, 14 Jun 2019 22:58:53 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f36ed3d3ddfe442ba97893c9e03ea22248beb1547b5002f03c7ccad8af8c368`  
		Last Modified: Fri, 14 Jun 2019 23:01:10 GMT  
		Size: 487.0 MB (486962758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68932ae56df5637bb43976ac08806ffbdcb45a0f54d8c06f76857d02150612aa`  
		Last Modified: Fri, 14 Jun 2019 22:58:53 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e98fb45bdf873c215d73727038ef885cde538e7cacc59f0e8ab1e2447c14ab`  
		Last Modified: Fri, 14 Jun 2019 22:58:53 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349a2b7d1754b924714bd3537fd9fbaeb9f52a8a3fde704fd518175e46b249ea`  
		Last Modified: Fri, 14 Jun 2019 22:58:53 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
