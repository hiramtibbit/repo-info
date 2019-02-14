## `mongo:unstable`

```console
$ docker pull mongo@sha256:5aa6f7417c151ab5886d5fc95c2b67566daaa2a9e56ebaf99ce0b0b4fbbcd2df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2791; amd64
	-	windows version 10.0.16299.967; amd64
	-	windows version 10.0.17134.590; amd64

### `mongo:unstable` - linux; amd64

```console
$ docker pull mongo@sha256:13a49621c09fe28d23a6a58bc73a312976a5a52b569fe89fe3e3b8e3ffae71c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.7 MB (157745585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df2f63a3b79308126aaac88f75b1431d0b32db736bc231b7c2e14df92a66beb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 02:02:27 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 23 Jan 2019 02:02:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:02:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 02:02:44 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 23 Jan 2019 02:02:54 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 23 Jan 2019 02:02:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 02:03:41 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Wed, 23 Jan 2019 02:03:42 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 02:03:42 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 23 Jan 2019 02:03:42 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 23 Jan 2019 02:03:42 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 23 Jan 2019 02:03:42 GMT
ENV MONGO_MAJOR=4.1
# Wed, 13 Feb 2019 21:26:32 GMT
ENV MONGO_VERSION=4.1.8
# Wed, 13 Feb 2019 21:26:33 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 13 Feb 2019 21:27:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 13 Feb 2019 21:27:05 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 13 Feb 2019 21:27:05 GMT
VOLUME [/data/db /data/configdb]
# Wed, 13 Feb 2019 21:27:06 GMT
COPY file:aede91d254349505ddabe55af4cf4debc6cc3f959f945a489b8864e520f193e8 in /usr/local/bin/ 
# Wed, 13 Feb 2019 21:27:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Feb 2019 21:27:06 GMT
EXPOSE 27017
# Wed, 13 Feb 2019 21:27:06 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:778aebe6fb26028c1e04c682f4128063ab4ced5c583d6baff6c403cdfa1ba33b`  
		Last Modified: Wed, 23 Jan 2019 02:05:17 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4b1e0b80edad28725ec6d7c7d0e9c45d3b85c67af5d6018991dc89c284c357`  
		Last Modified: Wed, 23 Jan 2019 02:05:17 GMT  
		Size: 2.9 MB (2945594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844ccc42fe7603fde4673ef3be6e3d113c9c3f06a943a6c7fecfc45f826a6719`  
		Last Modified: Wed, 23 Jan 2019 02:05:16 GMT  
		Size: 751.0 KB (751004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab01fe8ebf85fec5c2cecf87d5e8bc808ed4a0f27576760d21adfcb1e1fa22d`  
		Last Modified: Wed, 23 Jan 2019 02:05:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adcbfa42ba19977f7f5a5fe0de1213e2331f7d4110bb151a34dd7eff4b19d7ad`  
		Last Modified: Wed, 23 Jan 2019 02:05:45 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6318883d1ec8160437b8a757e505bbd5fb1844c08a917840513b916763bf07b8`  
		Last Modified: Wed, 13 Feb 2019 21:27:21 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0398164a115a866a730a6f986bfd17e415b243508037ba145476f04237fc7655`  
		Last Modified: Wed, 13 Feb 2019 21:27:40 GMT  
		Size: 110.5 MB (110518308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c875d5c7a9a8b0c24dc64b8d37c76d22872d9e3f9f8b1809f587ab74c59c41`  
		Last Modified: Wed, 13 Feb 2019 21:27:21 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:382b0ce54ba54d762dcc0de0b87b306b28c93d973615e918303a7ecb8bb716e6`  
		Last Modified: Wed, 13 Feb 2019 21:27:21 GMT  
		Size: 3.8 KB (3791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:406e1c9ed00881137d18f93f1341b3ddae64dd6193cf5316ce3349c06a86c270
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.6 MB (147612866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d3a0f0bab3323a5e5ea6a1cdc9d5f018cf8e5ee8f6a8f69ce06335c708e332`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:27:19 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 23 Jan 2019 10:27:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:27:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 10:27:46 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 23 Jan 2019 10:28:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 23 Jan 2019 10:28:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 10:30:00 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Wed, 23 Jan 2019 10:30:03 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:30:03 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 23 Jan 2019 10:30:09 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 23 Jan 2019 10:30:10 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 23 Jan 2019 10:30:10 GMT
ENV MONGO_MAJOR=4.1
# Thu, 14 Feb 2019 10:56:14 GMT
ENV MONGO_VERSION=4.1.8
# Thu, 14 Feb 2019 10:56:16 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 14 Feb 2019 10:57:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 14 Feb 2019 10:57:19 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 14 Feb 2019 10:57:20 GMT
VOLUME [/data/db /data/configdb]
# Thu, 14 Feb 2019 10:57:20 GMT
COPY file:aede91d254349505ddabe55af4cf4debc6cc3f959f945a489b8864e520f193e8 in /usr/local/bin/ 
# Thu, 14 Feb 2019 10:57:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Feb 2019 10:57:22 GMT
EXPOSE 27017
# Thu, 14 Feb 2019 10:57:22 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a654653ff96053073dda6327c23231943628de4f94202c10ab4ccec7919ab9`  
		Last Modified: Wed, 23 Jan 2019 10:32:33 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44ca643d1be3ac3b1dd1746d61d395988a6efa5b686307da63cc9ff7bbdec00`  
		Last Modified: Wed, 23 Jan 2019 10:32:34 GMT  
		Size: 2.5 MB (2474043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe7a83fe338868cfbf2ef099a82569cf0fda400ecd78f7fb15876f8891ea0df`  
		Last Modified: Wed, 23 Jan 2019 10:32:33 GMT  
		Size: 717.9 KB (717850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1054b2783cf18c90ea515dae46fbaad6756479b15d0743cf3fcc02f784367f14`  
		Last Modified: Wed, 23 Jan 2019 10:32:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0092bf4a7671d6565d853c90f7c20d26bd8cf5314c99f0b176d80b9fb79c06c5`  
		Last Modified: Wed, 23 Jan 2019 10:33:21 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4d6f72807dc871c916481da4d4aef6a4a4143eb81cbf367f3431a1f98a0f02`  
		Last Modified: Thu, 14 Feb 2019 10:57:41 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273afecac961b476601c0c093b1b43ce80556e2cf3af9de1921553a2bf2048d3`  
		Last Modified: Thu, 14 Feb 2019 10:58:13 GMT  
		Size: 104.9 MB (104853571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c891e25f7ee0c481867149a8c54b24e7d22ca8f12e5201ce1800d5c61b5aff2`  
		Last Modified: Thu, 14 Feb 2019 10:57:41 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d71da154bedb896b248b6b9b9022904e7260260ecef6b88f854c7f35953d45`  
		Last Modified: Thu, 14 Feb 2019 10:57:41 GMT  
		Size: 3.8 KB (3794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - windows version 10.0.14393.2791; amd64

```console
$ docker pull mongo@sha256:2b29f64179f83512a541894376896db8f48e82e3e1017f88bba830c92db7b7aa
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5731125162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc9c0d53f1e1d0ee265a18e522ca6a2daeb702177bec3650e775c266d43887d5`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Feb 2019 20:08:57 GMT
RUN Install update 10.0.14393.2791
# Thu, 14 Feb 2019 10:15:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 14 Feb 2019 11:54:41 GMT
ENV MONGO_VERSION=4.1.8
# Thu, 14 Feb 2019 11:54:42 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.8-signed.msi
# Thu, 14 Feb 2019 11:54:43 GMT
ENV MONGO_DOWNLOAD_SHA256=b0de0cc0e3b1af73435e4b11a61776af4ee178339abdd2d31674d14ab7f1bbc0
# Thu, 14 Feb 2019 12:04:07 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 14 Feb 2019 12:04:09 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 14 Feb 2019 12:04:11 GMT
EXPOSE 27017
# Thu, 14 Feb 2019 12:04:12 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b479a92ce115faf181c1196d762b00f05ec9aa83dc2fec2b7ca094c8d6e1bfff`  
		Last Modified: Mon, 11 Feb 2019 20:08:57 GMT  
		Size: 1.6 GB (1570061102 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:33e3f629f8e74d92de73bbc723579547f0dd6f434077ae65e3418c97061f6c4f`  
		Last Modified: Thu, 14 Feb 2019 12:49:25 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f55d807795161b8dfc8e3b54e1d74072740eff422c90796eafec4ffa0d7f09b`  
		Last Modified: Thu, 14 Feb 2019 13:19:04 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e480957bdc658162df2a9d6673180948164b07e5415f49bb97c8aaf66d1cae`  
		Last Modified: Thu, 14 Feb 2019 13:19:03 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e610d52b3f2d7b11ae28e4dc53fb28b3734e490deb135d5ca9a08496ed9351b1`  
		Last Modified: Thu, 14 Feb 2019 13:19:01 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d29ab179fe584a88aee127ac6fabc9e0208bddaa5a30ba08e750506036efb8`  
		Last Modified: Thu, 14 Feb 2019 13:20:44 GMT  
		Size: 91.1 MB (91069697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2bf68a70274f79e3669dcffeb5f571e9cef2f0fae4903c562498095c1a1d7d1`  
		Last Modified: Thu, 14 Feb 2019 13:19:01 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411a0792c3f2ec1e862585ff236d31652d0c8bc9c72a34034f05290c28c8f79e`  
		Last Modified: Thu, 14 Feb 2019 13:19:01 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0c15e2001afc0a634d03ac7f9da5e709b0360b4665e5285cda63a846774f3d`  
		Last Modified: Thu, 14 Feb 2019 13:19:01 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - windows version 10.0.16299.967; amd64

```console
$ docker pull mongo@sha256:2fd0361af354423c8f3da602b7d07888e94124f9e50aaaceefb6d20cd26508e7
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 GB (3738414585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:686febf9687b9cb1f8fbcc4d8a7eddaec0161a8fbed2d9a91355f1e13049541f`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Fri, 08 Feb 2019 07:16:29 GMT
RUN Install update 10.0.16299.967
# Thu, 14 Feb 2019 10:18:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 14 Feb 2019 12:04:26 GMT
ENV MONGO_VERSION=4.1.8
# Thu, 14 Feb 2019 12:04:27 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.8-signed.msi
# Thu, 14 Feb 2019 12:04:28 GMT
ENV MONGO_DOWNLOAD_SHA256=b0de0cc0e3b1af73435e4b11a61776af4ee178339abdd2d31674d14ab7f1bbc0
# Thu, 14 Feb 2019 12:26:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 14 Feb 2019 12:26:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 14 Feb 2019 12:26:29 GMT
EXPOSE 27017
# Thu, 14 Feb 2019 12:26:30 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:effca3ebc3a86f19a139eb7047c6e97d2fe4c941737e8d9698820d0491ccf530`  
		Last Modified: Mon, 11 Feb 2019 21:05:02 GMT  
		Size: 873.9 MB (873894336 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c4273f2f648bb455b5339bc8719afa5ca050432c7fd18636bbea664f8f035578`  
		Last Modified: Thu, 14 Feb 2019 12:49:56 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f7663ff0f813f89e3548a37554314fbb5a444e091d778c4457b34dd8647b5e`  
		Last Modified: Thu, 14 Feb 2019 13:21:04 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a39fc11e918e9ed78931d9ccb5337f5d4141dd6786098e49797bb00b520523b`  
		Last Modified: Thu, 14 Feb 2019 13:21:04 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2fdfee48c02a6d143aaea69ba9f30b4aaa29187e80da6cd28d834822c3419d`  
		Last Modified: Thu, 14 Feb 2019 13:21:01 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63969c76683e2fd6604db7b86718ad2e1da8a4b224e58142a3e4b0d4346ffe24`  
		Last Modified: Thu, 14 Feb 2019 13:24:13 GMT  
		Size: 590.2 MB (590211222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7777455bad992e9634d71d1c1b02cd0bc44e3230de1956fd0b80fd6e27528461`  
		Last Modified: Thu, 14 Feb 2019 13:21:01 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195b31dfe5867d1b67c5adc2b84d7f566fb1f31f4f9fc3967f29d96ca58c8b4e`  
		Last Modified: Thu, 14 Feb 2019 13:21:02 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8235efd1b7954956202059a456cdc37937c1df013b06a050c8747e130fe87e3f`  
		Last Modified: Thu, 14 Feb 2019 13:21:01 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - windows version 10.0.17134.590; amd64

```console
$ docker pull mongo@sha256:c9cb8c938e99326acd48d807a367000ca30947871fd3288891c4ff115fdd0523
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2814491714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f762645d44fb0dffa8584c2d08cf317210072e98ecb1e03659caecf7b8b2932e`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Thu, 07 Feb 2019 23:00:02 GMT
RUN Install update 10.0.17134.590
# Thu, 14 Feb 2019 11:32:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 14 Feb 2019 12:26:45 GMT
ENV MONGO_VERSION=4.1.8
# Thu, 14 Feb 2019 12:26:46 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.8-signed.msi
# Thu, 14 Feb 2019 12:26:48 GMT
ENV MONGO_DOWNLOAD_SHA256=b0de0cc0e3b1af73435e4b11a61776af4ee178339abdd2d31674d14ab7f1bbc0
# Thu, 14 Feb 2019 12:48:15 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 14 Feb 2019 12:48:17 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 14 Feb 2019 12:48:19 GMT
EXPOSE 27017
# Thu, 14 Feb 2019 12:48:21 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5e94f7b83ce20c90f9f1b0323c3f9c3c791163e44e7069e47cd76cf50a3a07ef`  
		Last Modified: Mon, 11 Feb 2019 21:11:29 GMT  
		Size: 588.0 MB (587983329 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:608c11b759474cb7931cb0eaa5a61eebd1ead65f3503252a1524d8eb1eda6fc6`  
		Last Modified: Thu, 14 Feb 2019 13:16:08 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94cf96d67d1c6f2af1056bd79de3913e286de3311ec93abda39aab9d5b8c6b48`  
		Last Modified: Thu, 14 Feb 2019 13:24:49 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cbdbda6281af29b548fd0a6ddfe365b8fa8f32e810be94486499518878d254`  
		Last Modified: Thu, 14 Feb 2019 13:24:49 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807ffd1b634e7f7d1c901f4236eb87b8d5f8b2bb6720fd1ce53bb23265711bc0`  
		Last Modified: Thu, 14 Feb 2019 13:24:47 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c58092895b20b39ca4185b0b7b703d1c91e7a3e3bdee4de69d2aeb768bff00`  
		Last Modified: Thu, 14 Feb 2019 13:26:55 GMT  
		Size: 566.8 MB (566811684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16bc3b69b0f0bbaf9c268cc59642ead46e7db79057b4eb925734088864b2291`  
		Last Modified: Thu, 14 Feb 2019 13:24:47 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bb7b70af61ec37a6f8b06acbc418c3c81fb6f52d32cd8bcffe5f735fdbf560`  
		Last Modified: Thu, 14 Feb 2019 13:24:47 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de4d8eaff101fdaa2da9464527170eefd7246bd229b40e897fc64ea6d1e839b`  
		Last Modified: Thu, 14 Feb 2019 13:24:47 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
