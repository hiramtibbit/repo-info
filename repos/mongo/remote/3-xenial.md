## `mongo:3-xenial`

```console
$ docker pull mongo@sha256:c72ee2bb42c32f54e34756fc5117245eca57372b32db4a3593af9a45f6313f3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:3-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:9cfb147149d770da80a4f91bff5f2b6c80cb30b1256aa8506296ef520f77df04
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.9 MB (164916084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b4395fa3fd7eaca52af2133d8be688d4dba1ffdf84401a169c5f103d892949b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:31 GMT
ADD file:24352f4a071cb97b3f111253f3db695ba473c5e7985544889af3e34408ce32ff in / 
# Tue, 18 Jun 2019 22:53:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 02:51:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 19 Jun 2019 02:52:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 02:52:04 GMT
ENV GOSU_VERSION=1.11
# Wed, 19 Jun 2019 02:52:04 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 19 Jun 2019 02:52:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 19 Jun 2019 02:52:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 19 Jun 2019 02:52:46 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 19 Jun 2019 02:52:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 19 Jun 2019 02:52:47 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 19 Jun 2019 02:52:47 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 19 Jun 2019 02:52:47 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 19 Jun 2019 02:52:47 GMT
ENV MONGO_MAJOR=3.6
# Wed, 19 Jun 2019 02:52:48 GMT
ENV MONGO_VERSION=3.6.13
# Wed, 19 Jun 2019 02:52:48 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 19 Jun 2019 02:53:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 19 Jun 2019 02:53:12 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 19 Jun 2019 02:53:12 GMT
VOLUME [/data/db /data/configdb]
# Wed, 19 Jun 2019 02:53:12 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 19 Jun 2019 02:53:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Jun 2019 02:53:13 GMT
EXPOSE 27017
# Wed, 19 Jun 2019 02:53:13 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:35b42117c431dd1e13679a09c3c68bb983578a1cbe0a8d8980f507567ebce76c`  
		Last Modified: Tue, 11 Jun 2019 13:20:32 GMT  
		Size: 43.8 MB (43837758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c569a8d989555892683a932df468cfe294859186790d3f2fb704c3a022e96`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293b44f451623251bf75ce5a72d3cee63706972c88980232217a81026987f63e`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c175077525d1ddec01cb7cf003c2d8b4b6650ae15b504a64914f5eed8d28e50`  
		Last Modified: Tue, 18 Jun 2019 22:54:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e73525b52badf68be842de0e064fc1a6d5c7898f1acd2f44b785b393cf7f549`  
		Last Modified: Wed, 19 Jun 2019 02:55:41 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a22695a3f5e976b16d92020a168d7503a390167a9b3740f53cbcf6bc76c46b2e`  
		Last Modified: Wed, 19 Jun 2019 02:55:42 GMT  
		Size: 2.9 MB (2945634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420eb4b7be5d63d0022c7391cc33068aa006d55664aab6ef2337ef8391a1121e`  
		Last Modified: Wed, 19 Jun 2019 02:55:41 GMT  
		Size: 1.2 MB (1151294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017ec49b70bf8a9a3b765395013be634b89a33137c7cbb82bb59e9a95fb55f01`  
		Last Modified: Wed, 19 Jun 2019 02:55:39 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6ea6c2df65bca0204ee68b58b7469fb5bd3d4ac69d8f013bba15c06053b7bf`  
		Last Modified: Wed, 19 Jun 2019 02:56:09 GMT  
		Size: 2.0 KB (1994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0812b1197bfa4616f2b878d4ef2736307a745c5277a3186a87ac02e0eec3d318`  
		Last Modified: Wed, 19 Jun 2019 02:56:08 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac6b75cbe30c3eda09ee79e421acbc1e7cd12c23ee0c614f89b65d688b09e09`  
		Last Modified: Wed, 19 Jun 2019 02:56:32 GMT  
		Size: 117.0 MB (116971459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4b0f369bc776fa6f7e4d704032e364c1ba5a666adeb5d51a0b200d722d8bf5`  
		Last Modified: Wed, 19 Jun 2019 02:56:07 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:239ebbb821f23879aaa2da828768070b82a85af4a899f7aa2613e094dcd8d681`  
		Last Modified: Wed, 19 Jun 2019 02:56:08 GMT  
		Size: 3.9 KB (3919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:305910bcf2ae3b9c3399a2ebc2c2d15593e7507bac08d053a50dc54fc1be1726
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.5 MB (154549745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5d6796a4ba29056d0e22ec485afdfa380e8b7911c5300c053ec2bb84d003795`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 18 Jun 2019 21:41:24 GMT
ADD file:395b290afad707e76c379d6d1f14f12f1afc596f54a93e6c7b2a9fd7933e67a5 in / 
# Tue, 18 Jun 2019 21:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:41:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:41:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:41:30 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 23:07:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 18 Jun 2019 23:08:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:08:21 GMT
ENV GOSU_VERSION=1.11
# Tue, 18 Jun 2019 23:08:22 GMT
ENV JSYAML_VERSION=3.13.0
# Tue, 18 Jun 2019 23:08:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 18 Jun 2019 23:08:40 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 18 Jun 2019 23:09:35 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 18 Jun 2019 23:09:37 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 18 Jun 2019 23:09:38 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 18 Jun 2019 23:09:39 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 18 Jun 2019 23:09:40 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 18 Jun 2019 23:09:41 GMT
ENV MONGO_MAJOR=3.6
# Tue, 18 Jun 2019 23:09:42 GMT
ENV MONGO_VERSION=3.6.13
# Tue, 18 Jun 2019 23:09:44 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 18 Jun 2019 23:10:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 18 Jun 2019 23:10:19 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 18 Jun 2019 23:10:19 GMT
VOLUME [/data/db /data/configdb]
# Tue, 18 Jun 2019 23:10:20 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 18 Jun 2019 23:10:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Jun 2019 23:10:21 GMT
EXPOSE 27017
# Tue, 18 Jun 2019 23:10:21 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:6d4d0d1f37de0d4417055235ff4a4ce52439ec078835b8d6c91cecd64d192029`  
		Last Modified: Fri, 14 Jun 2019 14:30:02 GMT  
		Size: 39.8 MB (39790979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b10db5fd500822d1d74c2d604ce345b50cbea31db8f3813f5b166633b8042d`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45503012c89a34b797c44068bce23b360a1212b5582d4483553249eba85ce075`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078966f8f5cec9611dad9af01d4b52e898763e22fd0facf8a5dd72d48cbe568f`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecbcb663d50a1ba60a8673846f4d7627273271bf878c2870e5dbff0997f76f7a`  
		Last Modified: Tue, 18 Jun 2019 23:14:41 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6afe3b9698dc5a8d83fbcf31f19da4f73491c6f2273aca5541ebb19ef03bfa`  
		Last Modified: Tue, 18 Jun 2019 23:14:40 GMT  
		Size: 2.5 MB (2474608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0edc996a8a9b504dfb3f3b2633cba24d88bfa50e486b241622e229c9fd83d057`  
		Last Modified: Tue, 18 Jun 2019 23:14:40 GMT  
		Size: 1.1 MB (1085701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041fe4d680aa7a3d241883d5cd3521e00a88ad10f4ad1aafec4bef7e634aa110`  
		Last Modified: Tue, 18 Jun 2019 23:14:39 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3873484817ada33c0e3b826f308d020d45cee335ac4ebbaa97d402b18995d7ce`  
		Last Modified: Tue, 18 Jun 2019 23:15:24 GMT  
		Size: 2.0 KB (2000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba0678c4d183707aa6d482151dbcca13b742a9363de91518fa7d3fccffd364ee`  
		Last Modified: Tue, 18 Jun 2019 23:15:23 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5edf3de96520a490d12fd19fd4517b8dd61be4d00454d27588e5ebca3fcc84aa`  
		Last Modified: Tue, 18 Jun 2019 23:15:57 GMT  
		Size: 111.2 MB (111188496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58948cfe840f1b85971d70ac725a9b55db12959928b005d544e0d9e138141ca`  
		Last Modified: Tue, 18 Jun 2019 23:15:24 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b69ce04fb2b7b841a3ea69bf58793f8862b65baf8e8bfb90f779a4b17230b0cd`  
		Last Modified: Tue, 18 Jun 2019 23:15:24 GMT  
		Size: 3.9 KB (3918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
