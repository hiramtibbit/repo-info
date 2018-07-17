## `mongo:latest`

```console
$ docker pull mongo@sha256:2e5e54f94429839d4904c9962b6933ef631b1938b6223c1cf84a0442421f111d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:latest` - linux; amd64

```console
$ docker pull mongo@sha256:810e499962b39a05131c5d25230fc92ba385f9353fc44ee8ed27a14ce49c8bac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.4 MB (133354235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af93d1bb9e2a9ff0ac62127421bccc0773a23423b756e1918e8a07c84249d72f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:59 GMT
ADD file:7b8419bb9079c6d91ceeb2d0f35c46bcb8083d9d666eb21fda765ed755a07840 in / 
# Tue, 17 Jul 2018 00:54:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:54:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:54:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:54:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:54:02 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 04:13:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jul 2018 04:13:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:13:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 04:13:54 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 17 Jul 2018 04:14:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 17 Jul 2018 04:14:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:14:05 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Tue, 17 Jul 2018 04:14:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 04:14:06 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 17 Jul 2018 04:14:07 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:14:07 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:14:07 GMT
ENV MONGO_MAJOR=4.0
# Tue, 17 Jul 2018 04:14:07 GMT
ENV MONGO_VERSION=4.0.0
# Tue, 17 Jul 2018 04:14:08 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 17 Jul 2018 04:14:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 17 Jul 2018 04:14:36 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 17 Jul 2018 04:14:36 GMT
VOLUME [/data/db /data/configdb]
# Tue, 17 Jul 2018 04:14:37 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:14:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:14:37 GMT
EXPOSE 27017/tcp
# Tue, 17 Jul 2018 04:14:37 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3620e2d282dce98978bc2ae770aa43121cfa88cafdb8888d552bfd96ade2c857`  
		Last Modified: Mon, 09 Jul 2018 15:05:32 GMT  
		Size: 43.2 MB (43190074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef22f5e4b3b2cfcefabf6ae23afc6eec160c1a9ab32ba72f9117feee454a6dc5`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f229f854da0ebac56b80462718952353fe22745701123dee20cbd24dede33d`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe433abe16a89c38c06a4e91d1db85448407c4783d6cfbde3a03c4d71481d24`  
		Last Modified: Tue, 17 Jul 2018 00:59:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b72a16d85e58632c1b2114dd92916b5c923f697a667ae56fd14a9a9a33869b`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1757e0920c931d89a7bd21c6c8c1a2fdf46dde51618efca1ebc28980179cf08`  
		Last Modified: Tue, 17 Jul 2018 04:19:04 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad61d16333c1e67cf913d1e225e170895ee9551a930fef8a568c97b09a71ed0`  
		Last Modified: Tue, 17 Jul 2018 04:19:03 GMT  
		Size: 2.9 MB (2946412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b55b55716bc598f4d649c91b0c3d5488230836771fe87e12955be7236151cf9`  
		Last Modified: Tue, 17 Jul 2018 04:19:02 GMT  
		Size: 751.0 KB (750984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e1a31a5de88e167f03c1e3d692cae35cae0ebb41ecca648a0e0b628983e5bb`  
		Last Modified: Tue, 17 Jul 2018 04:19:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a871e8da652e6493ad642c0ba31a0374b3c0fca95b6cc17cb5f4d69844db2ed6`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0015ffced2abb51adcd314e55061390aba19478f0c212cdee68ed5cb9a0b73b4`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8e51b51b8ea3a23cf43672a19f4e8a5aafe435c0538207183b67b520979edb`  
		Last Modified: Tue, 17 Jul 2018 04:19:32 GMT  
		Size: 86.5 MB (86456659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210e26b24d82b846a60a8be45e7fb9f982aabc727ed09622cb0b3b5eed098297`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f5ff21092f19c4afc701a131323fb624af8e736a10bf467c5d8c9d32263ccd`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 3.7 KB (3709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:1b8bf8ff2ee640bce76bb2dd0e0713f35db160978a9ec58debeb1efcb333ee9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.4 MB (153400245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2de9565c102337622bbacf0d1fa2f53647a63ff47dc9d8a7cb8393b2d04ed8c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 06 Jun 2018 09:38:27 GMT
ADD file:4d66a098626c376a1c073e0332a6c8d18aa8cc0dbadb329fd506fdfa59793143 in / 
# Wed, 06 Jun 2018 09:38:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:38:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:38:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:38:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:38:37 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:41:32 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 06 Jun 2018 10:42:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:42:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Jun 2018 10:42:12 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 06 Jun 2018 10:42:44 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 06 Jun 2018 10:42:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Jun 2018 10:45:22 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 06 Jun 2018 10:45:25 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 06 Jun 2018 10:45:28 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 06 Jun 2018 10:45:31 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 06 Jun 2018 10:45:34 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 28 Jun 2018 08:54:43 GMT
ENV MONGO_MAJOR=4.0
# Thu, 28 Jun 2018 08:54:44 GMT
ENV MONGO_VERSION=4.0.0
# Thu, 28 Jun 2018 08:54:46 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 28 Jun 2018 08:55:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 28 Jun 2018 08:55:48 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 28 Jun 2018 08:55:49 GMT
VOLUME [/data/db /data/configdb]
# Thu, 28 Jun 2018 08:55:50 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Thu, 28 Jun 2018 08:55:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Jun 2018 08:55:51 GMT
EXPOSE 27017/tcp
# Thu, 28 Jun 2018 08:55:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:21707c5c72669fddc5511cbdced3327d864e1cb7aa4d1d273beb008be29c82dc`  
		Last Modified: Mon, 28 May 2018 14:58:41 GMT  
		Size: 39.3 MB (39283293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b2716544889f4e40c0d32347e352b47046e2b8f272a78cd166f50462a2010a`  
		Last Modified: Wed, 06 Jun 2018 09:43:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a4a881d875be937f4b13c557a03aca52cb7d058d39395da1f896f8feda23`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f138533abd45add28f8a1ca64239b68a83458387b0d2b1066002ca9b94f6215`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992862215acd8daf7477cdc3dea5fbf67934989b013a18828f88e64ea00d70a`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65166e186b0f755bceb763832e7e1c061687a5b6d2fa3dae1f1fce6e19f1e3`  
		Last Modified: Wed, 06 Jun 2018 10:48:14 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03fc6d46aeeb4deb87079ac87fc8579d68283ff85a7a3bc12349c2175230490`  
		Last Modified: Wed, 06 Jun 2018 10:48:17 GMT  
		Size: 2.5 MB (2474969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc1a4d2360f90254ba7da51561477e79e2bb549c3ede15f70b2361117d0e24f`  
		Last Modified: Wed, 06 Jun 2018 10:48:14 GMT  
		Size: 717.9 KB (717900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c801b5777b67a93934e6ac32be46391aa742ad3b0365b6b8d3220a23884df4`  
		Last Modified: Wed, 06 Jun 2018 10:48:12 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f3cc35ee7920cd06f65d5f0909f54e5626231d9e8dfe25eb9f6ce3c05b50e`  
		Last Modified: Wed, 06 Jun 2018 10:49:33 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3614a36961c82b81e5ebcd34185dbfcc29fd8c5657f6779031222d361b61a9`  
		Last Modified: Thu, 28 Jun 2018 08:56:15 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7c4375ba956271dc1ceadb002429a373fb794b488ef598e467312851a16245`  
		Last Modified: Thu, 28 Jun 2018 08:56:57 GMT  
		Size: 110.9 MB (110913974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e954604bb4a970ff9023f2314a45f28c015a352af249ac1191fbd08ba4d479f4`  
		Last Modified: Thu, 28 Jun 2018 08:56:14 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cab44ecd74c0d6968682f859655f7bd87f5ec7e23ec42a5e2db3757a577a6a8`  
		Last Modified: Thu, 28 Jun 2018 08:56:15 GMT  
		Size: 3.7 KB (3711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
