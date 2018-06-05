## `mongo:rc-xenial`

```console
$ docker pull mongo@sha256:6319aab346715193d1ec1cbe0c367dffca1a10fc098bf88650a3ae28040872cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:rc-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:cebe89a1968ec9fec65ee102cb4715ac6d191ad6db35400f55f0a582410ebaff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133194064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b37a329662497b8bec12085bd278d3685f47e25ad0b8052c6f3efb05ce6d451`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 22:17:46 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 05 Jun 2018 22:18:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:18:03 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Jun 2018 22:18:03 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 05 Jun 2018 22:18:14 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 05 Jun 2018 22:18:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Jun 2018 22:18:55 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Tue, 05 Jun 2018 22:18:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 05 Jun 2018 22:18:56 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 05 Jun 2018 22:18:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:18:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:18:56 GMT
ENV MONGO_MAJOR=testing
# Tue, 05 Jun 2018 22:18:56 GMT
ENV MONGO_VERSION=4.0.0~rc0
# Tue, 05 Jun 2018 22:18:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 05 Jun 2018 22:19:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 05 Jun 2018 22:19:32 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 05 Jun 2018 22:19:32 GMT
VOLUME [/data/db /data/configdb]
# Tue, 05 Jun 2018 22:19:32 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 05 Jun 2018 22:19:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Jun 2018 22:19:32 GMT
EXPOSE 27017/tcp
# Tue, 05 Jun 2018 22:19:33 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81ef705874ba41139fb9e3e738890926d3b288a7bcb95ad4a221dca803bee64`  
		Last Modified: Tue, 05 Jun 2018 22:22:21 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03aae48954c67da71e6660e9e9a7d998f1091136f2a9fbb12ff1cd2b1007025`  
		Last Modified: Tue, 05 Jun 2018 22:22:23 GMT  
		Size: 2.9 MB (2946140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f5018fd172c8d359b998fb99d68bea25ebac4863591020c4a140bdf6d3dda8`  
		Last Modified: Tue, 05 Jun 2018 22:22:23 GMT  
		Size: 750.9 KB (750919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a113ac70b9a14fa4f056d53b06fef4996af9097c8ab7e7e73d8511c79b6e6b3`  
		Last Modified: Tue, 05 Jun 2018 22:22:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5de9f6f5aca92a32077d8ea3c392759667ed649ba98c2afd35cb9009b24fdd`  
		Last Modified: Tue, 05 Jun 2018 22:23:09 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdd0b89af778344ca0a118a849864ba1ffdb7ade214e39cdaaa2c8d35fb4888`  
		Last Modified: Tue, 05 Jun 2018 22:23:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95bce0c187be379e5ac2ed8e2fb3c533a8429d9eaf83c51ea64672f5b185ec13`  
		Last Modified: Tue, 05 Jun 2018 22:23:48 GMT  
		Size: 86.4 MB (86364419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853c59a37c1830ce57625c2790371de7181d519b410eac0aee47d2c7a903b955`  
		Last Modified: Tue, 05 Jun 2018 22:23:09 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96824def85a179bb2e0407f11c55f7581dc6aae2c0d56e1f91718c49ef4f8d2f`  
		Last Modified: Tue, 05 Jun 2018 22:23:09 GMT  
		Size: 3.7 KB (3709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:rc-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:788bd9049eca93459222e0e0f356e15ffe3d8ad02ee8a8c118294e1bdce81862
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153203708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63a84be5d65968ab10235900084fd435fecc90fc4bd177ab45cfbdf150b190dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 01 May 2018 01:12:52 GMT
ADD file:fef3655a03a1c7f1533148016797b982955b3d5556f32c777214b8426028509b in / 
# Tue, 01 May 2018 01:12:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 01 May 2018 01:13:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 01:13:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 01 May 2018 01:13:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 01 May 2018 01:13:20 GMT
CMD ["/bin/bash"]
# Fri, 25 May 2018 08:40:04 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 25 May 2018 08:40:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 08:40:29 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 08:40:30 GMT
ENV JSYAML_VERSION=3.10.0
# Fri, 25 May 2018 08:40:50 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Fri, 25 May 2018 08:40:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 25 May 2018 08:42:51 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Fri, 25 May 2018 08:42:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 25 May 2018 08:42:54 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 25 May 2018 08:42:54 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 25 May 2018 08:42:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 25 May 2018 08:42:57 GMT
ENV MONGO_MAJOR=testing
# Fri, 25 May 2018 08:42:58 GMT
ENV MONGO_VERSION=4.0.0~rc0
# Fri, 25 May 2018 08:43:00 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 25 May 2018 08:44:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 25 May 2018 08:44:20 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 25 May 2018 08:44:21 GMT
VOLUME [/data/db /data/configdb]
# Fri, 25 May 2018 08:44:23 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Fri, 25 May 2018 08:44:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 08:44:26 GMT
EXPOSE 27017/tcp
# Fri, 25 May 2018 08:44:27 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:83c016a9a148a71d05469a3994d54eb7eb9c3d40a65e07bf68788018a71d951b`  
		Last Modified: Mon, 23 Apr 2018 14:56:07 GMT  
		Size: 39.2 MB (39223827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a1976297de94ed1f5c4c0f13b0b25199c6d6ca003ddfc3e873938aa2f8e86b`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167d83417bbef32ed4713f4224bcb9f9573597ee6d91174dc7403ce457f145d2`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2544c5c45beca34c948aca9c981d56b587a973354727e4c97dc99d88227fb6a`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb92ef1d410a96b276ec1425b000d80d5c1d914688aae8bce3e6f20d8a5a7a5f`  
		Last Modified: Tue, 01 May 2018 01:17:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55133372d30b5944da324c510c56a654de356b4e50a127fcffb7beb74c1e0da7`  
		Last Modified: Fri, 25 May 2018 08:45:02 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70081c1c602ffca6670e61e1b7452b02b1e74bed8f4e68074f4ac921de5d6f0e`  
		Last Modified: Fri, 25 May 2018 08:45:03 GMT  
		Size: 2.5 MB (2475007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4003ba073adbd4c4c25a0dbcff1d4094a220a088a69810b784ea59e8932a59ec`  
		Last Modified: Fri, 25 May 2018 08:45:01 GMT  
		Size: 717.9 KB (717880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08920d2e7cf333d5a15d9325cd13ff6864e8863c26ae0327244cf9bea134875`  
		Last Modified: Fri, 25 May 2018 08:45:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f1763e2454a49b74370492e8227f5f2e03602515ffdd73a1527182c47f3a74`  
		Last Modified: Fri, 25 May 2018 08:47:01 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0693304e27ca5ebf608e88e4aa07825265894d4ff15d328787b4313296f71d`  
		Last Modified: Fri, 25 May 2018 08:47:01 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c26cb6ff019522ea8829a40d4d1e897b5ebb897fb798fd4cc073b480b98fb6`  
		Last Modified: Fri, 25 May 2018 08:48:15 GMT  
		Size: 110.8 MB (110776876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44f56a7c163ce792aa841d56e41c6c50eb6239e42acc1cc846e5aa930929497`  
		Last Modified: Fri, 25 May 2018 08:47:01 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c6c9c99bb5f883ee6e0fb1a4ab72e401712e3650630153ee0d2ecd6c0d72b7`  
		Last Modified: Fri, 25 May 2018 08:47:01 GMT  
		Size: 3.7 KB (3708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
