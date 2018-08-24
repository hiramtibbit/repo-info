## `mongo:latest`

```console
$ docker pull mongo@sha256:e40c5b535cb2f1f39dba4687abfd0ecbec89520aba1945484ea00cf8688d4595
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2430; amd64
	-	windows version 10.0.16299.611; amd64
	-	windows version 10.0.17134.228; amd64

### `mongo:latest` - linux; amd64

```console
$ docker pull mongo@sha256:46c2a38a99764e01ce61c239d428024a9f3922cef56f3002166686b7befa3fd8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.7 MB (133678807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a41c82c0998ae9d864cca425a9d333bc405bd8071c1f67e90400d6bceebb77e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 19:15:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 22 Aug 2018 19:15:51 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:15:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Aug 2018 19:15:52 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 22 Aug 2018 19:16:19 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 22 Aug 2018 19:16:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 22 Aug 2018 19:16:20 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 22 Aug 2018 19:16:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 22 Aug 2018 19:16:21 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 22 Aug 2018 19:16:22 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 22 Aug 2018 19:16:22 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 22 Aug 2018 19:16:22 GMT
ENV MONGO_MAJOR=4.0
# Wed, 22 Aug 2018 19:16:22 GMT
ENV MONGO_VERSION=4.0.1
# Wed, 22 Aug 2018 19:16:23 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 22 Aug 2018 19:16:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 22 Aug 2018 19:16:53 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 22 Aug 2018 19:16:53 GMT
VOLUME [/data/db /data/configdb]
# Fri, 24 Aug 2018 01:40:47 GMT
COPY file:432f09fb61dea3ba52524ce5b165c30e7e96b5b711f3dc56c2c47cf8a79211d3 in /usr/local/bin/ 
# Fri, 24 Aug 2018 01:40:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 24 Aug 2018 01:40:47 GMT
EXPOSE 27017/tcp
# Fri, 24 Aug 2018 01:40:48 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9080750e9c81e557a7148b1dfa5974ab3d6be6af687981cdf9acaa2ea8b0eb`  
		Last Modified: Wed, 22 Aug 2018 19:18:24 GMT  
		Size: 2.0 KB (1987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:931490877d834b2b652450c5db819c8cf4fab11f520b8a2b1a24b2c0d99ded59`  
		Last Modified: Wed, 22 Aug 2018 19:18:25 GMT  
		Size: 2.9 MB (2945718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab49899969a76bcbd8dad14f1ac89024367ae89342359e6c9b8b49cf8afbe06c`  
		Last Modified: Wed, 22 Aug 2018 19:18:24 GMT  
		Size: 751.1 KB (751079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ef762c096600748b0e98b51cf17f8a8be6a326e254f6ca39c37947c89bc59b`  
		Last Modified: Wed, 22 Aug 2018 19:18:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa01fee8eab14bbf4e9efece61dd41080fed68bede0b48b0c2eb42d17c02853`  
		Last Modified: Wed, 22 Aug 2018 19:18:20 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35e41e416158857c8e5726111ac3d460e291ba8b149fb7a06251ed04f67eaa8`  
		Last Modified: Wed, 22 Aug 2018 19:18:21 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d923a7371495fd3a3422b08fac3eb8d1dcfed12a73e2fb42c725a15939961bc`  
		Last Modified: Wed, 22 Aug 2018 19:18:53 GMT  
		Size: 86.7 MB (86719406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307ec52f6e87d6b603b367b43cdd51afa7591631edcaaf4e204a36f3c2b57175`  
		Last Modified: Wed, 22 Aug 2018 19:18:20 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87ef7e24f86a3f82ed538ca207839a598954f43deba41145146b85d6f2ad3428`  
		Last Modified: Fri, 24 Aug 2018 01:41:56 GMT  
		Size: 3.7 KB (3706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:28bfa1530625145ef18e2f9126a965a25b88545e8955a2b4a4f4ebcd85b270a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.7 MB (153721895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f853d9d869fb53b8e9651b37adb78b7bc02855b54d9cc7a033ac8fb5c5d8364e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 23 Aug 2018 18:00:02 GMT
ADD file:e5010797ac02efecbf22dd21592880fd5283c01d177c3f0d1274c6397683f8f0 in / 
# Thu, 23 Aug 2018 18:00:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 18:00:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 18:00:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 18:00:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 18:00:11 GMT
CMD ["/bin/bash"]
# Fri, 24 Aug 2018 08:54:57 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 24 Aug 2018 08:55:22 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 24 Aug 2018 08:55:23 GMT
ENV GOSU_VERSION=1.10
# Fri, 24 Aug 2018 08:55:24 GMT
ENV JSYAML_VERSION=3.10.0
# Fri, 24 Aug 2018 08:55:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Fri, 24 Aug 2018 08:55:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 24 Aug 2018 08:55:52 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Fri, 24 Aug 2018 08:55:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 24 Aug 2018 08:55:56 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 24 Aug 2018 08:55:57 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 24 Aug 2018 08:55:57 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 24 Aug 2018 08:55:58 GMT
ENV MONGO_MAJOR=4.0
# Fri, 24 Aug 2018 08:55:59 GMT
ENV MONGO_VERSION=4.0.1
# Fri, 24 Aug 2018 08:56:01 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 24 Aug 2018 08:56:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 24 Aug 2018 08:56:59 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 24 Aug 2018 08:57:00 GMT
VOLUME [/data/db /data/configdb]
# Fri, 24 Aug 2018 08:57:01 GMT
COPY file:432f09fb61dea3ba52524ce5b165c30e7e96b5b711f3dc56c2c47cf8a79211d3 in /usr/local/bin/ 
# Fri, 24 Aug 2018 08:57:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 24 Aug 2018 08:57:02 GMT
EXPOSE 27017/tcp
# Fri, 24 Aug 2018 08:57:03 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:672a69505838a80ab1d16038f6268944bf913e2b9df67785f4f560145b243625`  
		Last Modified: Fri, 10 Aug 2018 22:12:34 GMT  
		Size: 39.4 MB (39381352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958416e5b29b0395ebf84d5442b4a440207871d06ab7b5b475bbfcbc64625d16`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b2df41f722dc826e75f4e3fadac77f1487ed4e1254e92645e664d785662036`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea051153c5ecf9f78bc0528c6f4917ae8a6bb1910be9c1e23926fa80704160a`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bdeb5fe2e665aecb71278bdb333b15048b051370afe97929d4abf456e456a22`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15fac9e7a1e9217efea28bdc59360d587fe52526d856520af174791aaa9482d4`  
		Last Modified: Fri, 24 Aug 2018 08:59:20 GMT  
		Size: 2.0 KB (1993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3eeb76792c8b37bfd7bb5942f1c4b4029090859d62de857b7edda28297dd8e8`  
		Last Modified: Fri, 24 Aug 2018 08:59:21 GMT  
		Size: 2.5 MB (2473841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9068f66fcde87278b5cf021c0211ca7e70f6cae25f39bc4648189edc6595b9f3`  
		Last Modified: Fri, 24 Aug 2018 08:59:20 GMT  
		Size: 717.9 KB (717850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a876e2700369033d228737269c8d45754d96225a523adc2341ac4b144262e14`  
		Last Modified: Fri, 24 Aug 2018 08:59:19 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474ebfe856988e0f49ab02fe47223d3d321c5cfb30e48ac89735bcd0683235d1`  
		Last Modified: Fri, 24 Aug 2018 08:59:17 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacaa91dff96538b040507740bc65cada87a8f5950aa66a3a4bc33b7ff07799a`  
		Last Modified: Fri, 24 Aug 2018 08:59:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df33a279860e914b2e3d34663abaaff62a826e550e81da5fa80e2fab908d4fc3`  
		Last Modified: Fri, 24 Aug 2018 09:00:00 GMT  
		Size: 111.1 MB (111138810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b84975964d389a2e5f4cd18d58dd57e0861c9c25877f6244f5de7617f55c03bb`  
		Last Modified: Fri, 24 Aug 2018 08:59:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d342127e7dcd821770bcd17721974392315ee70406b5c114d87df2dc789da7d6`  
		Last Modified: Fri, 24 Aug 2018 08:59:17 GMT  
		Size: 3.7 KB (3713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - windows version 10.0.14393.2430; amd64

```console
$ docker pull mongo@sha256:364a77c43a05ae9859027816cd9509de7a42e169294dbd2631559b8c05bc7386
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5576445883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd98f9d391a16eec118c802872468beedd981d0aeb0ca156ac119949f10a09a4`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:52:23 GMT
RUN Install update 10.0.14393.2430
# Fri, 17 Aug 2018 09:21:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 17 Aug 2018 09:59:15 GMT
ENV MONGO_VERSION=4.0.1
# Fri, 17 Aug 2018 09:59:16 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.1-signed.msi
# Fri, 17 Aug 2018 09:59:16 GMT
ENV MONGO_DOWNLOAD_SHA256=234bebe451ca4601a8fd5016ede6b3ad424ac059dfcb3d0e76abf934f4143af4
# Fri, 17 Aug 2018 10:05:17 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 17 Aug 2018 10:05:18 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 17 Aug 2018 10:05:20 GMT
EXPOSE 27017/tcp
# Fri, 17 Aug 2018 10:05:21 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6631c2d2a60cd7ee5b334c2725b03e4d4976abb9a19c8e8dc9b806b3752745a6`  
		Last Modified: Mon, 13 Aug 2018 17:52:23 GMT  
		Size: 1.4 GB (1441905067 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b95dd3ea2455375b05a0040130b4b3f2bd839787743ff33b9d31af75610902b1`  
		Last Modified: Fri, 17 Aug 2018 11:36:08 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613699da7918b9244c164a6b34edc1d8f81f36ea1c73b37895bc64f46973c524`  
		Last Modified: Fri, 17 Aug 2018 11:39:58 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ec624b184639b321a30b82d7cd28b3201634b4c070e562fcafdac74406fce4`  
		Last Modified: Fri, 17 Aug 2018 11:39:58 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc6674a391110eacd98702d02952bf2f33b977e1fa1a82c0ceb8a99d3cff1b0`  
		Last Modified: Fri, 17 Aug 2018 11:39:57 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:488e0bf7a36e71e67ea3e8363ca6b36090e214cd3269d038a265ec233adea5a8`  
		Last Modified: Fri, 17 Aug 2018 11:40:12 GMT  
		Size: 64.5 MB (64546524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab18657cf8992f824cf80fa305255450a0324e6e996cf61330f5002d8e58f66`  
		Last Modified: Fri, 17 Aug 2018 11:39:56 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278b98a128297d67c2e57e93bc5a29d5899d2048fe1f8bd8c55f7f48a1d2f987`  
		Last Modified: Fri, 17 Aug 2018 11:39:56 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c802ca1fb2d7c8b32010144a5507a27b18af34c9ae3a93394a5af7c478f75c`  
		Last Modified: Fri, 17 Aug 2018 11:39:56 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - windows version 10.0.16299.611; amd64

```console
$ docker pull mongo@sha256:7a60bbc2ce17280c1a7846b452b697b4195f2f4a073f44de9d14749fc0f1362f
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 GB (3644056628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7488bbb46e80effae86d9b8913da1d6989e71513c14f961b8f8b985e8d6cf9d2`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 08 Aug 2018 23:20:54 GMT
RUN Install update 10.0.16299.611
# Fri, 17 Aug 2018 09:24:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 17 Aug 2018 10:05:28 GMT
ENV MONGO_VERSION=4.0.1
# Fri, 17 Aug 2018 10:05:29 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.1-signed.msi
# Fri, 17 Aug 2018 10:05:30 GMT
ENV MONGO_DOWNLOAD_SHA256=234bebe451ca4601a8fd5016ede6b3ad424ac059dfcb3d0e76abf934f4143af4
# Fri, 17 Aug 2018 10:24:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 17 Aug 2018 10:25:00 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 17 Aug 2018 10:25:03 GMT
EXPOSE 27017/tcp
# Fri, 17 Aug 2018 10:25:04 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c4047f78756c2319eb99557ec7139906cf11af6c91aefcc0e44ac49a5481d8e4`  
		Last Modified: Mon, 13 Aug 2018 18:28:41 GMT  
		Size: 837.8 MB (837835144 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:979b51c3a12a3db81990ebd92c5d5a3325e035f84c0503e987ede3bfd73f44df`  
		Last Modified: Fri, 17 Aug 2018 11:36:35 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490d3e78be7dd54cf05a1933eb26d28162a0ef119fb9f5e4a9b0fb0dcdacd29e`  
		Last Modified: Fri, 17 Aug 2018 11:40:33 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1710f9bc4b79d025d93e70b34c7d748ce328c581162bf5ec5c13d7dd0381e81`  
		Last Modified: Fri, 17 Aug 2018 11:40:32 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f6feb6722d34e1a402cfe5b9eff7029447c8d6ba0ce5ccd8d17624a152c399`  
		Last Modified: Fri, 17 Aug 2018 11:40:30 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05a7db5c13c8fe61ca8391c3a448d41d15b61efba97fcaa5fef9b1f1acaf8ba`  
		Last Modified: Fri, 17 Aug 2018 11:41:37 GMT  
		Size: 531.9 MB (531912563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa45127ee9397c17546b43ed5367b008bc13ce43977db82db76e1a5929f7e295`  
		Last Modified: Fri, 17 Aug 2018 11:40:30 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889a5739e14acf587823ae98ea1cd810a24f924158b61298fb4ba447fc1de2a0`  
		Last Modified: Fri, 17 Aug 2018 11:40:31 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ab75760418c50d5b65ae0e38c90b048064d6aaa951cf815637fd5b2b88b2f3`  
		Last Modified: Fri, 17 Aug 2018 11:40:30 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - windows version 10.0.17134.228; amd64

```console
$ docker pull mongo@sha256:789783680d460c50dff2230958d5479de898994c210f52829d806b9a5ff2c37f
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2720581468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fd7c9d8c05371c584029fb14cfeb322e11d413cc27652991f218bbb17705014`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Mon, 06 Aug 2018 18:21:55 GMT
RUN Install update 10.0.17134.228
# Fri, 17 Aug 2018 10:25:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 17 Aug 2018 10:25:18 GMT
ENV MONGO_VERSION=4.0.1
# Fri, 17 Aug 2018 10:25:19 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.1-signed.msi
# Fri, 17 Aug 2018 10:25:20 GMT
ENV MONGO_DOWNLOAD_SHA256=234bebe451ca4601a8fd5016ede6b3ad424ac059dfcb3d0e76abf934f4143af4
# Fri, 17 Aug 2018 10:44:56 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 17 Aug 2018 10:44:59 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 17 Aug 2018 10:45:00 GMT
EXPOSE 27017/tcp
# Fri, 17 Aug 2018 10:45:01 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Mon, 07 May 2018 21:18:35 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fd59519ea2c2d73a5cba6e562d012a127d08d86dfc5067535eef141406c3750b`  
		Last Modified: Mon, 13 Aug 2018 19:10:18 GMT  
		Size: 530.1 MB (530108736 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2cb0bbe979983a9fd8ce4fd3939699c180783e70bf8f7ab0fae0c03c1e8a6a2c`  
		Last Modified: Fri, 17 Aug 2018 11:42:08 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5f84db3da6912b3b3e04212a24d24fa958ba36d8ac8dda86e872da39c2aadd`  
		Last Modified: Fri, 17 Aug 2018 11:42:08 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee61f94a7e0f6bda83b588a7eb95c808c2a17365a02b80e3a665b5c9c31b737`  
		Last Modified: Fri, 17 Aug 2018 11:42:08 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396b512a9dfc99f2b6ec4a9d5a15c08fa3df8319808646ed89719733c253c60e`  
		Last Modified: Fri, 17 Aug 2018 11:42:06 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09b022e02fd6d99b4cab7a88b94cd92113ae1980f187aeb4436794d569f1cc5`  
		Last Modified: Fri, 17 Aug 2018 11:43:09 GMT  
		Size: 530.8 MB (530776068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f3428525587e2b84e60bd2d66881ac200eaa4c6ec692b4cdcc38359f158a64`  
		Last Modified: Fri, 17 Aug 2018 11:42:06 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2524cf7bab8e93b322a62cc411f5b2d4d613be5be742f9384858643757f506b9`  
		Last Modified: Fri, 17 Aug 2018 11:42:06 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcf465ec26b36a667f1c275d1851c14925c35c977ae7be395d71705d59c1f45`  
		Last Modified: Fri, 17 Aug 2018 11:42:06 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
