## `mongo:unstable`

```console
$ docker pull mongo@sha256:1f60ed47fccc56e5af2a1d7b2d154466f77167bd689dd80502e283a8b59e2416
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2551; amd64
	-	windows version 10.0.16299.726; amd64
	-	windows version 10.0.17134.345; amd64

### `mongo:unstable` - linux; amd64

```console
$ docker pull mongo@sha256:2e7fd7995f6bb4a33108b8e10ab4d0d109b287930116d126c0fde922dcea1897
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.4 MB (137371838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdcd42ac5ac0da0d85617e7709b31f8e5b770994f2c91c0df8673a4f25222616`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:00:22 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 05 Sep 2018 23:00:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:00:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 23:00:31 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 05 Sep 2018 23:00:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 05 Sep 2018 23:00:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 23:01:09 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Wed, 05 Sep 2018 23:01:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 23:01:10 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 05 Sep 2018 23:01:10 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 05 Sep 2018 23:01:10 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 05 Sep 2018 23:01:10 GMT
ENV MONGO_MAJOR=4.1
# Mon, 15 Oct 2018 18:20:05 GMT
ENV MONGO_VERSION=4.1.4
# Mon, 15 Oct 2018 18:20:06 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 15 Oct 2018 18:20:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 15 Oct 2018 18:20:34 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 15 Oct 2018 18:20:34 GMT
VOLUME [/data/db /data/configdb]
# Mon, 15 Oct 2018 18:20:34 GMT
COPY file:60abb511d646e0b8b4668acde625346e0976c8ff820e8efa7df9fdb3ed11cab3 in /usr/local/bin/ 
# Mon, 15 Oct 2018 18:20:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 Oct 2018 18:20:35 GMT
EXPOSE 27017/tcp
# Mon, 15 Oct 2018 18:20:35 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:004c7a04feb118093a61bd3b439282933d3b785364a67d8f9109d51ddad26195`  
		Last Modified: Wed, 05 Sep 2018 23:01:47 GMT  
		Size: 2.0 KB (1987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:897284d7f64034859fed615454ab6a0012bffeaa22f32f08f34cc5d3fad12ecc`  
		Last Modified: Wed, 05 Sep 2018 23:01:48 GMT  
		Size: 2.9 MB (2945638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4d2dae1422cf234a3bd5a5b1387147bb03ca4704c444f2214d48600ae9d63a`  
		Last Modified: Wed, 05 Sep 2018 23:01:48 GMT  
		Size: 751.0 KB (751043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e988d91970a75ab68db229b952798a2c0ddc5ccad81f586d1576efdfa4051ba`  
		Last Modified: Wed, 05 Sep 2018 23:01:47 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df5304c8cffc6172953bc1b0758bec056ab4e4b0474adc679b3463822f183c8`  
		Last Modified: Wed, 05 Sep 2018 23:02:22 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5cc521fcf12b8baeabf4d0f45386502508e7515a53ee758a40024d2591e23e`  
		Last Modified: Mon, 15 Oct 2018 18:20:52 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d61c002932da25123bd73e45120a178c0ee07cd9ef29fc37febbe5f7945f5b`  
		Last Modified: Mon, 15 Oct 2018 18:21:11 GMT  
		Size: 90.4 MB (90412541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba97ca829c8372531a435d5e93d2b51c4cc5d65d88c20e7e63199308d3da75e5`  
		Last Modified: Mon, 15 Oct 2018 18:20:52 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b739f5f13c224548c9782e9f4d4db9a5302928193dc52e2c16f0d5e1a69f9000`  
		Last Modified: Mon, 15 Oct 2018 18:20:52 GMT  
		Size: 3.7 KB (3726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:b652802ba0ea918df2c35e8bdbcc8814f04cf0d6f1b002e8fa86b071caab35d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.6 MB (116610714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97e3342de1f974fce403145535b1dc73e89a511f1f9f1eb8f8b69d32f3380c1f`
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
# Fri, 24 Aug 2018 08:57:30 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Fri, 24 Aug 2018 08:57:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 24 Aug 2018 08:57:33 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Fri, 24 Aug 2018 08:57:34 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 24 Aug 2018 08:57:34 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Fri, 24 Aug 2018 08:57:35 GMT
ENV MONGO_MAJOR=4.1
# Tue, 16 Oct 2018 09:34:23 GMT
ENV MONGO_VERSION=4.1.4
# Tue, 16 Oct 2018 09:34:25 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 16 Oct 2018 09:35:20 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 16 Oct 2018 09:35:22 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 16 Oct 2018 09:35:22 GMT
VOLUME [/data/db /data/configdb]
# Tue, 16 Oct 2018 09:35:23 GMT
COPY file:60abb511d646e0b8b4668acde625346e0976c8ff820e8efa7df9fdb3ed11cab3 in /usr/local/bin/ 
# Tue, 16 Oct 2018 09:35:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 09:35:25 GMT
EXPOSE 27017/tcp
# Tue, 16 Oct 2018 09:35:26 GMT
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
	-	`sha256:08908ca21311e9af4dff04e0e1c31448a3147be0eb8bac52ca089fcf3d936d08`  
		Last Modified: Fri, 24 Aug 2018 09:01:35 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d872f2da97ce73df2fc79c21bd13e379f983b7b42f222c78c42af7f6f5fd3a`  
		Last Modified: Tue, 16 Oct 2018 09:35:47 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a2215b68e2904b8eb0c772cb8d053325becbbe7455414a9bb17824ab117e97`  
		Last Modified: Tue, 16 Oct 2018 09:36:12 GMT  
		Size: 74.0 MB (74027608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad53a3bd7ae06c39a5e331d0bcdb73887d440e373cc6d1af9d9e5386a27130cd`  
		Last Modified: Tue, 16 Oct 2018 09:35:46 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd790b5d14d27a02f7379029c65109c554a6f8e1adac0189d39d431cd652e80`  
		Last Modified: Tue, 16 Oct 2018 09:35:46 GMT  
		Size: 3.7 KB (3728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - windows version 10.0.14393.2551; amd64

```console
$ docker pull mongo@sha256:68f6457101efc6219934e5b281b5c748a32c659adeeb670b364feb1160ad589f
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5669978504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90eee4f03da20a71f6502c6d1f0b8a27bdd98d6d3f31c959a59ad3d22906946f`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:03:17 GMT
RUN Install update 10.0.14393.2551
# Tue, 16 Oct 2018 09:16:33 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 16 Oct 2018 10:26:34 GMT
ENV MONGO_VERSION=4.1.4
# Tue, 16 Oct 2018 10:26:35 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.4-signed.msi
# Tue, 16 Oct 2018 10:26:36 GMT
ENV MONGO_DOWNLOAD_SHA256=8d706f0e1d19797a2b4f121518d5142b477a31b3d65b4befa14fe68f4b678379
# Tue, 16 Oct 2018 10:30:18 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 16 Oct 2018 10:30:19 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 16 Oct 2018 10:30:21 GMT
EXPOSE 27017/tcp
# Tue, 16 Oct 2018 10:30:22 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c0f6863f3dd498ab56cdd308637630f888fe646de403284f2c5392ba885bdd8e`  
		Last Modified: Tue, 09 Oct 2018 18:03:17 GMT  
		Size: 1.5 GB (1527125035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:50ca338b1fa6c515ebe15efbf13da80d877db4a53da56b2b6e52e3da6426cc63`  
		Last Modified: Tue, 16 Oct 2018 09:55:02 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5bbd87f09acba2e1c35af92035fa1ebb7b20eee09719a1353f999b4ccd1498`  
		Last Modified: Tue, 16 Oct 2018 10:58:44 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa05e85e5103cc896046e8490c8432b272da1589638f1154f45f338cfbf445f`  
		Last Modified: Tue, 16 Oct 2018 10:58:44 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88233ce5e477d6c26188365a3413e1fee32fa5b3f80643f3290b5eca3bb7d54`  
		Last Modified: Tue, 16 Oct 2018 10:58:42 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c49500d2df4dbf64254e6e30f2493849eea52ab342d2028dda25f22e67dc51e`  
		Last Modified: Tue, 16 Oct 2018 10:59:00 GMT  
		Size: 72.9 MB (72859178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03895b6d1c22422af287ca94b82c8120fe1363fcb4303d7450f6bf0ad6f1f4cf`  
		Last Modified: Tue, 16 Oct 2018 10:58:42 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928ab95741a5dcf7a7c5513a684a570534e0242830021f7025b1da3c690e134e`  
		Last Modified: Tue, 16 Oct 2018 10:58:42 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07736d2e96d30654cba6a1cc3acfd2def6c516660c6cf2980a4daf9522a73ef5`  
		Last Modified: Tue, 16 Oct 2018 10:58:42 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - windows version 10.0.16299.726; amd64

```console
$ docker pull mongo@sha256:3be31f42e2ad5f5bae3a408461ebf60f250692b3e67b3dfcdb119218f14c7f5c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3208559701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd05891e1ed53d36f9ddabf3500033a454dec415f7303806b38196739900ba0`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 01 Oct 2018 22:02:14 GMT
RUN Install update 10.0.16299.726
# Tue, 16 Oct 2018 10:03:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 16 Oct 2018 10:30:27 GMT
ENV MONGO_VERSION=4.1.4
# Tue, 16 Oct 2018 10:30:28 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.4-signed.msi
# Tue, 16 Oct 2018 10:30:29 GMT
ENV MONGO_DOWNLOAD_SHA256=8d706f0e1d19797a2b4f121518d5142b477a31b3d65b4befa14fe68f4b678379
# Tue, 16 Oct 2018 10:33:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 16 Oct 2018 10:33:33 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 16 Oct 2018 10:33:36 GMT
EXPOSE 27017/tcp
# Tue, 16 Oct 2018 10:33:37 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ddd7a4737dfbb59b49c30480146e7f0a61842409755bd479b63004c5643d0ed3`  
		Last Modified: Mon, 08 Oct 2018 19:38:11 GMT  
		Size: 866.5 MB (866458210 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bb0cfc3f1dafb85be3cada2e98abf803f8e5eadcc61125fa7266a93c29d873e7`  
		Last Modified: Tue, 16 Oct 2018 10:54:36 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba64f377eaffc1ac7332f064687d105278ee3ba1984b8bfba1d0d572d369e65`  
		Last Modified: Tue, 16 Oct 2018 10:59:17 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428db450e74c3cef6b6520ce9add03c5e9354094adc14705b5286f1a2b4ab9bf`  
		Last Modified: Tue, 16 Oct 2018 10:59:17 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e270338961696ea454f21f34be031be5875d46fa3e25c7798d1f4d0eb08122c7`  
		Last Modified: Tue, 16 Oct 2018 10:59:15 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c67eb4bfee002fd0891df88310d744742b98898030decd55641f1d5ab18b1e8`  
		Last Modified: Tue, 16 Oct 2018 10:59:31 GMT  
		Size: 67.8 MB (67792538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e486a9efa05467a81456cf4d1b9a66b8c81101aa86ba4070ecf0e3762ea85e`  
		Last Modified: Tue, 16 Oct 2018 10:59:15 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ffb1fb18a8ebce1b5966bc9face61ae8fce98a125f3958ced18a66a367a3bc`  
		Last Modified: Tue, 16 Oct 2018 10:59:15 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e046a657a85aa759a39a1f55a9732cadb17614480b35748e8314f5d04535bfb5`  
		Last Modified: Tue, 16 Oct 2018 10:59:15 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - windows version 10.0.17134.345; amd64

```console
$ docker pull mongo@sha256:7aee8dd6d676db69bd22e6c4347bad4f8d33e59b029f698f89b7abf3c224ba2b
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2764778168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:297f01a9551099c1f9d0dec69b8f6b63095811048cbf18b5fb14537ecbbfc183`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Mon, 01 Oct 2018 21:32:36 GMT
RUN Install update 10.0.17134.345
# Tue, 16 Oct 2018 10:23:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 16 Oct 2018 10:33:42 GMT
ENV MONGO_VERSION=4.1.4
# Tue, 16 Oct 2018 10:33:43 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.4-signed.msi
# Tue, 16 Oct 2018 10:33:44 GMT
ENV MONGO_DOWNLOAD_SHA256=8d706f0e1d19797a2b4f121518d5142b477a31b3d65b4befa14fe68f4b678379
# Tue, 16 Oct 2018 10:53:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 16 Oct 2018 10:53:22 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 16 Oct 2018 10:53:25 GMT
EXPOSE 27017/tcp
# Tue, 16 Oct 2018 10:53:26 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:eba07b94d5f77aa900bf02c4247fc580222254782681cc3c74a7cf9566e8890a`  
		Last Modified: Mon, 08 Oct 2018 19:44:48 GMT  
		Size: 570.0 MB (570044587 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:20fe9f55ed528e30fbf4e5f7bec4130d40fc43576c556b10fe710c78e0d8ab2b`  
		Last Modified: Tue, 16 Oct 2018 10:58:11 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f57d13338c72741b0b03e5fdeea03891b7bbb4329e438afd3f0385eed9c51d`  
		Last Modified: Tue, 16 Oct 2018 10:59:52 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465bb29a7c2866e5ce4fa0747ca7ec7b35ea75cbb2903711b8a49d5a6772a72b`  
		Last Modified: Tue, 16 Oct 2018 10:59:51 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57880804397633e3934e3893a21038c65c5e96f0d8f4bbb22c0b44970b05e85b`  
		Last Modified: Tue, 16 Oct 2018 10:59:49 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b01a69c951bfe732b7e134c1dbcc34ca944dc070da9245ecf6fb7f75f49721c`  
		Last Modified: Tue, 16 Oct 2018 11:00:52 GMT  
		Size: 535.0 MB (535036959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10043579eea54de5c42f945051b674eabc0402e6599a2c0a8dd1e44dd6ee1046`  
		Last Modified: Tue, 16 Oct 2018 10:59:49 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9e9c49d36d0d14442aa1184acedaa917f70878b9f36853e92b510c7a5fc583`  
		Last Modified: Tue, 16 Oct 2018 10:59:49 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89889e3f506d02436350b8843ed70fa6c14fffb4231e12bc02746ce3d403096a`  
		Last Modified: Tue, 16 Oct 2018 10:59:49 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
