## `mongo:unstable-xenial`

```console
$ docker pull mongo@sha256:f112d1521373afcce44548b9b906f66e460c87abaa52fcb3ed049e030b35b254
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:unstable-xenial` - linux; amd64

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

### `mongo:unstable-xenial` - linux; arm64 variant v8

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
