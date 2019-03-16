## `mongo:unstable`

```console
$ docker pull mongo@sha256:df50c31127e2917ea7c008f52e6d8df17ad55cf3fdc6799a6d436d794005ca49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2848; amd64
	-	windows version 10.0.16299.1029; amd64
	-	windows version 10.0.17134.648; amd64

### `mongo:unstable` - linux; amd64

```console
$ docker pull mongo@sha256:35877f56db11577b84468aa5d775f6884f976b6d13f81eef1f47e54e6b93209d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158199732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ba621a984c06a7dc8002a7d3eed9fab9761947340328e5489a1be0050d91922`
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
# Tue, 12 Mar 2019 01:16:58 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:16:58 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 12 Mar 2019 01:17:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 12 Mar 2019 01:17:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:17:33 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Tue, 12 Mar 2019 01:17:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:17:34 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Tue, 12 Mar 2019 01:17:34 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Mar 2019 01:17:35 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Tue, 12 Mar 2019 01:17:35 GMT
ENV MONGO_MAJOR=4.1
# Fri, 15 Mar 2019 20:25:17 GMT
ENV MONGO_VERSION=4.1.9
# Fri, 15 Mar 2019 20:25:18 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 15 Mar 2019 20:25:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 15 Mar 2019 20:25:59 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 15 Mar 2019 20:25:59 GMT
VOLUME [/data/db /data/configdb]
# Fri, 15 Mar 2019 20:26:00 GMT
COPY file:aede91d254349505ddabe55af4cf4debc6cc3f959f945a489b8864e520f193e8 in /usr/local/bin/ 
# Fri, 15 Mar 2019 20:26:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Mar 2019 20:26:00 GMT
EXPOSE 27017
# Fri, 15 Mar 2019 20:26:00 GMT
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
	-	`sha256:ea00040a145a5a74da994779a79cf7f0458106c029355e878c6400ac7e765acc`  
		Last Modified: Tue, 12 Mar 2019 01:18:10 GMT  
		Size: 751.0 KB (750990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb70119a2bab1d44069f5418c9179869ea681a6dfd32251d7e96c4f0cd64461`  
		Last Modified: Tue, 12 Mar 2019 01:18:10 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a445e1756be404bed1054310fdbaba0330785b74b9dcf2b5856a26d351e73b5`  
		Last Modified: Tue, 12 Mar 2019 01:18:32 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92196d591c51662ffa1dbabffc6fed73438aa33df3c53d6f6a7884e20da1aad`  
		Last Modified: Fri, 15 Mar 2019 20:26:28 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfda9535dbe597fc71761a29cf358e858ab3a911e029bace5c45d277985d3234`  
		Last Modified: Fri, 15 Mar 2019 20:26:52 GMT  
		Size: 110.9 MB (110932409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5fd007167ec94235afc5293f141aebf51bebba22a0500a1a6aa0155a605ac92`  
		Last Modified: Fri, 15 Mar 2019 20:26:28 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968fa11027c9fd317b2ad1dcb9e750fd6314e40d2e49d0062db2f307b6c34303`  
		Last Modified: Fri, 15 Mar 2019 20:26:29 GMT  
		Size: 3.8 KB (3795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:a50789b591e7ce87f62c86ab0d741dc1949fdda6ca0f108292f90bec3288299a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.0 MB (148038208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dea21c498a5409fc39e7773568c7176b86a637c2d707583ae2e39f0d5eaf090`
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
# Thu, 14 Mar 2019 13:13:20 GMT
ENV GOSU_VERSION=1.10
# Thu, 14 Mar 2019 13:13:21 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 14 Mar 2019 13:13:44 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 14 Mar 2019 13:13:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 14 Mar 2019 13:16:52 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Thu, 14 Mar 2019 13:16:59 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 14 Mar 2019 13:17:03 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Thu, 14 Mar 2019 13:17:06 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 14 Mar 2019 13:17:10 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Thu, 14 Mar 2019 13:17:13 GMT
ENV MONGO_MAJOR=4.1
# Sat, 16 Mar 2019 08:43:06 GMT
ENV MONGO_VERSION=4.1.9
# Sat, 16 Mar 2019 08:43:08 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 16 Mar 2019 08:44:11 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 16 Mar 2019 08:44:14 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 16 Mar 2019 08:44:14 GMT
VOLUME [/data/db /data/configdb]
# Sat, 16 Mar 2019 08:44:16 GMT
COPY file:aede91d254349505ddabe55af4cf4debc6cc3f959f945a489b8864e520f193e8 in /usr/local/bin/ 
# Sat, 16 Mar 2019 08:44:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Mar 2019 08:44:17 GMT
EXPOSE 27017
# Sat, 16 Mar 2019 08:44:19 GMT
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
	-	`sha256:b2a538e879e8a26897c1716d1c301b66c85530083b5137a6ccb0abbe32a5f51b`  
		Last Modified: Thu, 14 Mar 2019 13:20:21 GMT  
		Size: 718.1 KB (718082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6856a236296df8cef10779b7ab402b013110d8e673ac47c03306659e10b030e`  
		Last Modified: Thu, 14 Mar 2019 13:20:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00bd01f7e39824e2ffbdfc35b0ffd3ec0ab917b15b79e2ae2800a03a1c01792b`  
		Last Modified: Thu, 14 Mar 2019 13:21:03 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3488bb95b25aceb615b293420fe66b55b4ecec94c8012499003c79d12a68abf`  
		Last Modified: Sat, 16 Mar 2019 08:44:49 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411b39669c4ec7b0c0c8c7c7a00ffc7c9a5e8623968fb13f59e5b5410be376c4`  
		Last Modified: Sat, 16 Mar 2019 08:45:22 GMT  
		Size: 105.3 MB (105253671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58417a855d42c1af5fa85193a658f6edd771e056bd2925b7001ab544cb350b54`  
		Last Modified: Sat, 16 Mar 2019 08:44:48 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec195691ae216ddd3f3f260eb08f200c1a523343b1b5efc960f27e647596b406`  
		Last Modified: Sat, 16 Mar 2019 08:44:49 GMT  
		Size: 3.8 KB (3794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - windows version 10.0.14393.2848; amd64

```console
$ docker pull mongo@sha256:1c3d3322f0e35d3a30b77a5bf88304f857a0840b3b3c9006f06c2925720045e2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5729053939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40975317c2ce78ef1fe1803cc559dc27490f1a20ecb38790f390cf6ad396184b`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Mar 2019 20:57:18 GMT
RUN Install update 10.0.14393.2848
# Fri, 15 Mar 2019 09:43:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Mar 2019 10:40:22 GMT
ENV MONGO_VERSION=4.1.8
# Fri, 15 Mar 2019 10:40:23 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.8-signed.msi
# Fri, 15 Mar 2019 10:40:24 GMT
ENV MONGO_DOWNLOAD_SHA256=b0de0cc0e3b1af73435e4b11a61776af4ee178339abdd2d31674d14ab7f1bbc0
# Fri, 15 Mar 2019 10:44:05 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Mar 2019 10:44:07 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Mar 2019 10:44:09 GMT
EXPOSE 27017
# Fri, 15 Mar 2019 10:44:11 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e0718b11f51220dd85c47a1d225be81c5ba343fbb45f9b43fe3d762c0a20300a`  
		Last Modified: Mon, 11 Mar 2019 20:57:18 GMT  
		Size: 1.6 GB (1569132556 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bd9434e109d6b126a4267e7a896a255b46d8aea977aa40868a6927bbcb9b4a2e`  
		Last Modified: Fri, 15 Mar 2019 10:52:51 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646ba65b80df51c5d1dcfab3e35c1d061a6eb8cb8cf8f36d626f5066970b7367`  
		Last Modified: Fri, 15 Mar 2019 11:03:29 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf30a81a7fc80d8cbeffc452cf1c3b57c50e2c2a557bb887352539b98d98209`  
		Last Modified: Fri, 15 Mar 2019 11:03:29 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1218e61f8ceb9e55bff65f64d58228edf27d24cd7855b39c6f691236d80902dc`  
		Last Modified: Fri, 15 Mar 2019 11:03:27 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3dea7d39a137e3fc870aa8baac60a87ae7edb8ae0562b871ef9021ee4bba0f`  
		Last Modified: Fri, 15 Mar 2019 11:04:05 GMT  
		Size: 89.9 MB (89927013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7646e13c32bdb1fec6b49d6fe143ba8ae21f26cfadc6a502492f3c4460143eae`  
		Last Modified: Fri, 15 Mar 2019 11:03:27 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279131bc5d93b8d5a4d9b7b78b83e574a6b41fa8e8933a9d452b4511f1c13a5c`  
		Last Modified: Fri, 15 Mar 2019 11:03:27 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec0d353a7510d8348f2295dbdf542f95e9809d5e02fabc2af625326d54d1bc08`  
		Last Modified: Fri, 15 Mar 2019 11:03:27 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - windows version 10.0.16299.1029; amd64

```console
$ docker pull mongo@sha256:969ce07b148bdd62e55c40c5e2fa0bb390426468809ba589dda26f043af78c24
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3295683409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f87cd71b9f6aee63569e844d2dbcdc0ac573e5520bda1b312767064199c4411b`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Mar 2019 05:26:00 GMT
RUN Install update 10.0.16299.1029
# Fri, 15 Mar 2019 09:46:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Mar 2019 10:44:20 GMT
ENV MONGO_VERSION=4.1.8
# Fri, 15 Mar 2019 10:44:21 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.8-signed.msi
# Fri, 15 Mar 2019 10:44:22 GMT
ENV MONGO_DOWNLOAD_SHA256=b0de0cc0e3b1af73435e4b11a61776af4ee178339abdd2d31674d14ab7f1bbc0
# Fri, 15 Mar 2019 10:48:04 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Mar 2019 10:48:06 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Mar 2019 10:48:08 GMT
EXPOSE 27017
# Fri, 15 Mar 2019 10:48:10 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:7f4a716683dc03db3521ed040924c24ea9bd17c7f134c09bf22e33f6af33ade8`  
		Last Modified: Mon, 11 Mar 2019 21:13:17 GMT  
		Size: 936.6 MB (936551125 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b217250878f40ff58563b56494c3225f606f7bde90c1be1e82385924187428f2`  
		Last Modified: Fri, 15 Mar 2019 10:53:26 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858acf7445626e91cdc30b45e8ebc914cb225681392fbf2f97f7cb3eeb43ca13`  
		Last Modified: Fri, 15 Mar 2019 11:04:22 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e62e42cb09b00a3166bdc2d39370ca89bc613c49c8cd4c75427f75d1456086`  
		Last Modified: Fri, 15 Mar 2019 11:04:22 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ac3521eab79573ccd986e6ac3530ea4b0e6f292831fd30795a2a810dc39dfa`  
		Last Modified: Fri, 15 Mar 2019 11:04:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494eb4ba0307045eecbff0de3d1c18cd816a4839d7edcefc9d205b68f68a26a8`  
		Last Modified: Fri, 15 Mar 2019 11:04:46 GMT  
		Size: 84.8 MB (84823257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdedc19f3633f2bc28d2e1972ab2eba21c745531cde8217e33e1227e8480703`  
		Last Modified: Fri, 15 Mar 2019 11:04:21 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d185e7e2dc7839ea420af948fa28de0345da5f9e1de2660b88296283934e7654`  
		Last Modified: Fri, 15 Mar 2019 11:04:20 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7722ac83d974ee896d7d17f4f459290434599396c41e059167d7f8972a136adc`  
		Last Modified: Fri, 15 Mar 2019 11:04:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - windows version 10.0.17134.648; amd64

```console
$ docker pull mongo@sha256:417c412fe990ee3b60066efb030b797781819edb156d75592087d4f5ef41bb0a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2337765830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eba5063da5cb7dee3023d536773c6655efd229db40ac08dd67d8a806715a762`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 08 Mar 2019 23:20:01 GMT
RUN Install update 10.0.17134.648
# Fri, 15 Mar 2019 10:36:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Mar 2019 10:48:18 GMT
ENV MONGO_VERSION=4.1.8
# Fri, 15 Mar 2019 10:48:19 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.8-signed.msi
# Fri, 15 Mar 2019 10:48:20 GMT
ENV MONGO_DOWNLOAD_SHA256=b0de0cc0e3b1af73435e4b11a61776af4ee178339abdd2d31674d14ab7f1bbc0
# Fri, 15 Mar 2019 10:51:40 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Mar 2019 10:51:42 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Mar 2019 10:51:44 GMT
EXPOSE 27017
# Fri, 15 Mar 2019 10:51:45 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:be86bca8de59067e592a8becc2e83ed2465a6d9bce324043e434aa4a15493b00`  
		Last Modified: Mon, 11 Mar 2019 21:17:02 GMT  
		Size: 593.3 MB (593288046 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:82981f58be95926db2383949a2f5a368e6a47da5ecef767833272099e4524a63`  
		Last Modified: Fri, 15 Mar 2019 11:02:36 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1c25d9d1ff9ed5803df40101a26eb53167b0634ff51fc1a7bdd0e80b6b249b`  
		Last Modified: Fri, 15 Mar 2019 11:05:09 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d1506f1f3735176b3ff4e37a1b3189f23054e0487f5b84bd65793e83e7f359`  
		Last Modified: Fri, 15 Mar 2019 11:05:09 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad837bf6ec8fc80d1771f388a97f018cac5aacb185c61cf88f88787fe50291a`  
		Last Modified: Fri, 15 Mar 2019 11:05:06 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc1e02462b185350b2def9a92bd1cfbd3af6043b100b2a5306ff711a6229473d`  
		Last Modified: Fri, 15 Mar 2019 11:05:26 GMT  
		Size: 84.8 MB (84781086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4af4f87871e0e2d7f8189ba30fd1288681a14815425024e6c734a071d4addf9`  
		Last Modified: Fri, 15 Mar 2019 11:05:06 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c40ef5a224503ce41f00ba7ffd8a6d4971a47bcbead7591a72820cb296746159`  
		Last Modified: Fri, 15 Mar 2019 11:05:06 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade1f0f637df62e8a96cdc9e07c705aa95f1224bd8d476b49a6c0ae169d31401`  
		Last Modified: Fri, 15 Mar 2019 11:05:07 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
