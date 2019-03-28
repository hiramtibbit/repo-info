## `mongo:unstable-xenial`

```console
$ docker pull mongo@sha256:4a63d973ed74166f78284e28236bd45149e6b4d69a104eed6ce26dbac7687d75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:unstable-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:1ee2a4fd31ad319063344d0eef572ea4af553d8a7a7ad86600069ea7b0e89d69
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158199851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19fa5d2cb6db32765125c13062f23ac2af361c9c4b8b528520b502de5d55540d`
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
# Wed, 27 Mar 2019 23:20:02 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Wed, 27 Mar 2019 23:20:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 23:20:02 GMT
EXPOSE 27017
# Wed, 27 Mar 2019 23:20:03 GMT
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
	-	`sha256:32a72e5e04d09e57e3acc34049d0c3e71182b7a92647d0de0ba6bf69f431067a`  
		Last Modified: Wed, 27 Mar 2019 23:20:40 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:4d7aba77e141c8bc4223aafe3fa62f7fa1c7792fa37093b195a56ee34eae0df6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.0 MB (148038325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b514023a0851bd49eb523e8e66126c000a68c1ea2299b2a5f65ef01b1542d88`
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
# Thu, 28 Mar 2019 08:39:52 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Thu, 28 Mar 2019 08:39:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Mar 2019 08:39:53 GMT
EXPOSE 27017
# Thu, 28 Mar 2019 08:39:54 GMT
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
	-	`sha256:e948dc55662ebec0600bcaf0e5e064c535e2a93b20b1db379fe186daacc00161`  
		Last Modified: Thu, 28 Mar 2019 08:40:28 GMT  
		Size: 3.9 KB (3911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
