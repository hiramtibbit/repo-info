## `mongo:latest`

```console
$ docker pull mongo@sha256:720cbcd65b0212f312f50cb006ab9058af20962f1de7214158ac74343a891c8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2848; amd64
	-	windows version 10.0.16299.1029; amd64
	-	windows version 10.0.17134.648; amd64

### `mongo:latest` - linux; amd64

```console
$ docker pull mongo@sha256:c663fe3f4aea37503703176fc6b1bed2733a3a13ebf988fe8c04b4893fcd6de1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.1 MB (137136497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3abd47e8d61c923dd1561ad3720af4d948627c524a53d321c2a5bd6f6467060`
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
# Tue, 12 Mar 2019 01:17:04 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Tue, 12 Mar 2019 01:17:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:17:06 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 12 Mar 2019 01:17:06 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Mar 2019 01:17:06 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 12 Mar 2019 01:17:06 GMT
ENV MONGO_MAJOR=4.0
# Tue, 12 Mar 2019 01:17:06 GMT
ENV MONGO_VERSION=4.0.6
# Tue, 12 Mar 2019 01:17:07 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Mar 2019 01:17:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Mar 2019 01:17:25 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Mar 2019 01:17:25 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Mar 2019 01:17:25 GMT
COPY file:aede91d254349505ddabe55af4cf4debc6cc3f959f945a489b8864e520f193e8 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:17:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:17:26 GMT
EXPOSE 27017
# Tue, 12 Mar 2019 01:17:26 GMT
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
	-	`sha256:066b6bd644f88980f805925ba1abfbfdbdf8ea93b3a6e1dcabb0147b4e42377c`  
		Last Modified: Tue, 12 Mar 2019 01:18:09 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39286f4b500dce2d1d55cfef6dd09ad6519d24db5051a8bcfca2f7dcfcd07742`  
		Last Modified: Tue, 12 Mar 2019 01:18:09 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70003b385eb7ca33c01675e0fedea8b48ba2bbeefb10429d60bfb039f867dcce`  
		Last Modified: Tue, 12 Mar 2019 01:18:26 GMT  
		Size: 89.9 MB (89869182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4695c82abc39ca4aabaefce2141f5d744fbed6ab5c49591f3d6bee5b0e40c80e`  
		Last Modified: Tue, 12 Mar 2019 01:18:10 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4371b5ab4de70d4103e8414af97920373f4375433ac54b424c955ce7e2ff3db7`  
		Last Modified: Tue, 12 Mar 2019 01:18:09 GMT  
		Size: 3.8 KB (3792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:eeacc74f56c7667c7b6eabd9c556368bf5dd0adddc12c066748d66c547fb1e92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128140840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db02cf7c25070780e2a789acd19dd34aae36519ec09050859c11e9b107e5d681`
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
# Thu, 14 Mar 2019 13:13:47 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Thu, 14 Mar 2019 13:13:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 14 Mar 2019 13:13:51 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 14 Mar 2019 13:13:51 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 14 Mar 2019 13:13:52 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 14 Mar 2019 13:13:53 GMT
ENV MONGO_MAJOR=4.0
# Thu, 14 Mar 2019 13:13:54 GMT
ENV MONGO_VERSION=4.0.6
# Thu, 14 Mar 2019 13:13:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 14 Mar 2019 13:16:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 14 Mar 2019 13:16:22 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 14 Mar 2019 13:16:25 GMT
VOLUME [/data/db /data/configdb]
# Thu, 14 Mar 2019 13:16:28 GMT
COPY file:aede91d254349505ddabe55af4cf4debc6cc3f959f945a489b8864e520f193e8 in /usr/local/bin/ 
# Thu, 14 Mar 2019 13:16:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Mar 2019 13:16:34 GMT
EXPOSE 27017
# Thu, 14 Mar 2019 13:16:40 GMT
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
	-	`sha256:929d12c7ccf03fc278516f5ec2485fd4ab9047e6814bc922d65860daf5849e2a`  
		Last Modified: Thu, 14 Mar 2019 13:20:19 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ff756547c73c1cf2c41f7b588a16506433630aa083cce8847bdcb60c726634`  
		Last Modified: Thu, 14 Mar 2019 13:20:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e980a8f8f03c0f4bac3d2969f0d36404a743f4652e45c1974bcac497416d66fa`  
		Last Modified: Thu, 14 Mar 2019 13:20:50 GMT  
		Size: 85.4 MB (85356312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44c8a08e7d9a20c81e378bd5e1338bfdc4d4ec49b482d44e55baada1e98fc33`  
		Last Modified: Thu, 14 Mar 2019 13:20:19 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5e138440ae5f51e8d87644fc10940a997b7cae1a6f62a0aab526476c2757b7`  
		Last Modified: Thu, 14 Mar 2019 13:20:19 GMT  
		Size: 3.8 KB (3792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - windows version 10.0.14393.2848; amd64

```console
$ docker pull mongo@sha256:5687df96f0ebe0b52130d5e6b9efabbf63dca95bc97c2b2e3bb078aa48ca9f40
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5714683193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0312c599aa28059baeb01c4b7fc5c56e04673edac74ef7554016ad2976490af7`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Mar 2019 20:57:18 GMT
RUN Install update 10.0.14393.2848
# Fri, 15 Mar 2019 09:43:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Mar 2019 10:09:51 GMT
ENV MONGO_VERSION=4.0.6
# Fri, 15 Mar 2019 10:09:52 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.6-signed.msi
# Fri, 15 Mar 2019 10:09:53 GMT
ENV MONGO_DOWNLOAD_SHA256=aeb91f88930c77828c45f6aa41ad8219a8bb7c90c1a3c308b92329afc907cb1c
# Fri, 15 Mar 2019 10:18:52 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Mar 2019 10:18:53 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Mar 2019 10:18:55 GMT
EXPOSE 27017
# Fri, 15 Mar 2019 10:18:56 GMT
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
	-	`sha256:11844f27a8baf30655d7609d8f9aab53e847d1ae237d97b28b898c3a1ac6c1ef`  
		Last Modified: Fri, 15 Mar 2019 10:57:52 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb70908efff8ca4c7188b891ce288277a19a3c93f1a72182a355423be1fa13e9`  
		Last Modified: Fri, 15 Mar 2019 10:57:52 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c852bbf990da1ddc87cc892b68494d0c716d4dc4c5875bf365836abfc4ef556`  
		Last Modified: Fri, 15 Mar 2019 10:57:50 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:031320e81053a5f69e6d0167a2312eec42afce3f09023e3f15cb3b88bb70da17`  
		Last Modified: Fri, 15 Mar 2019 10:58:09 GMT  
		Size: 75.6 MB (75556264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46550b5002ef9469d6e5e2097c6574ccd858f91eedc7cb9a41a3ee5939f9fa7d`  
		Last Modified: Fri, 15 Mar 2019 10:57:50 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4bacbf7c495a3bca7274f661c6caf61fae8f4d21beeb32fec4ff8d0e7df1adc`  
		Last Modified: Fri, 15 Mar 2019 10:57:50 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9c23e788958803d7ff15e58d74395af7c2b689e0c1bd567eb8d434ca72f4b3`  
		Last Modified: Fri, 15 Mar 2019 10:57:50 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - windows version 10.0.16299.1029; amd64

```console
$ docker pull mongo@sha256:ca7eb9ea0de969ed0215ecdfefa6d6c5aada6adf905c09a8c0bc107fcc91f4f9
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 GB (3684188549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03e9315d376b54b376d20a3e47fe9107ab38240bbe8f567a97c418237aaf2b2f`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Mar 2019 05:26:00 GMT
RUN Install update 10.0.16299.1029
# Fri, 15 Mar 2019 09:46:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Mar 2019 10:19:06 GMT
ENV MONGO_VERSION=4.0.6
# Fri, 15 Mar 2019 10:19:07 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.6-signed.msi
# Fri, 15 Mar 2019 10:19:08 GMT
ENV MONGO_DOWNLOAD_SHA256=aeb91f88930c77828c45f6aa41ad8219a8bb7c90c1a3c308b92329afc907cb1c
# Fri, 15 Mar 2019 10:36:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Mar 2019 10:36:33 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Mar 2019 10:36:35 GMT
EXPOSE 27017
# Fri, 15 Mar 2019 10:36:37 GMT
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
	-	`sha256:4e76d2be1a7b866437071d826877d4fbb899e2959e1994f49fd371d385e2e40a`  
		Last Modified: Fri, 15 Mar 2019 10:58:31 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8ea80ed57aa445edc5373ef4c8197e08efbbc2ffc745bd40a19259bb3668b3`  
		Last Modified: Fri, 15 Mar 2019 10:58:31 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:362cfc3ea74cec02f300d75f414e8a1b113ed58cd13e9fbcd2d3108109e16805`  
		Last Modified: Fri, 15 Mar 2019 10:58:29 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec84acb7124820effb0eacc7ee520b698f61c2cb0c76de7d53266074730af8a`  
		Last Modified: Fri, 15 Mar 2019 11:02:08 GMT  
		Size: 473.3 MB (473328395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfbdac38b8d5413a625de3da7e570747e97195a189f17d5869839a2b22075aa7`  
		Last Modified: Fri, 15 Mar 2019 10:58:29 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b1c6b716345ad366496a27b28bf3120c514550925ee1be04aeffefba23f8c5`  
		Last Modified: Fri, 15 Mar 2019 10:58:29 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8cac98142b377b2103413f686098f6bc8e2bca52bcbdafa771205176d9d3042`  
		Last Modified: Fri, 15 Mar 2019 10:58:29 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - windows version 10.0.17134.648; amd64

```console
$ docker pull mongo@sha256:262dbd2c6a7d2e861de702ac6f1f1a7413c67693fdaacfd084525a0eca803299
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2322267748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68bbcf8c26013d916c8f711aa4157fc9cefac15429b28e53319e9fb2c58a0081`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 08 Mar 2019 23:20:01 GMT
RUN Install update 10.0.17134.648
# Fri, 15 Mar 2019 10:36:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Mar 2019 10:36:56 GMT
ENV MONGO_VERSION=4.0.6
# Fri, 15 Mar 2019 10:36:57 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.6-signed.msi
# Fri, 15 Mar 2019 10:36:58 GMT
ENV MONGO_DOWNLOAD_SHA256=aeb91f88930c77828c45f6aa41ad8219a8bb7c90c1a3c308b92329afc907cb1c
# Fri, 15 Mar 2019 10:40:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Mar 2019 10:40:09 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Mar 2019 10:40:11 GMT
EXPOSE 27017
# Fri, 15 Mar 2019 10:40:13 GMT
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
	-	`sha256:2288b10755fcd7f8153fe9a8a378e277e1b412f74ef7dd9aed55f7e1d0338743`  
		Last Modified: Fri, 15 Mar 2019 11:02:35 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aafcef9d1770a62805d7e929b8f6b9d2cf07ce98f752614e30322e0686324729`  
		Last Modified: Fri, 15 Mar 2019 11:02:35 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149f3604bbc8d33d385112f6f041c8b78b98033195ccfbb8fad186f5de9da5fd`  
		Last Modified: Fri, 15 Mar 2019 11:02:33 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea7b13ef70e7ef5a257afdae6a7c9410232e45f80bfe11c787d9150f02977f4`  
		Last Modified: Fri, 15 Mar 2019 11:03:05 GMT  
		Size: 69.3 MB (69282998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a254cc0ae56cbb86bdd83c36d2dd1364daaaccf4f837be9f5f3a481c4b768b0`  
		Last Modified: Fri, 15 Mar 2019 11:02:33 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47943c551dc7218eb7921e8403e158838c097c466564aadca8b523886732c1ed`  
		Last Modified: Fri, 15 Mar 2019 11:02:33 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f7676168f478177c0a33e504bc582ee512dfeade1934267c1e2a20990273e46`  
		Last Modified: Fri, 15 Mar 2019 11:02:33 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
