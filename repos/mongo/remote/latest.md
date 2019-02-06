## `mongo:latest`

```console
$ docker pull mongo@sha256:809b0e46ff69d67c4fef05954f45479d2d97b92834b39033660fb0c07144c525
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2724; amd64
	-	windows version 10.0.16299.904; amd64
	-	windows version 10.0.17134.523; amd64

### `mongo:latest` - linux; amd64

```console
$ docker pull mongo@sha256:7fc5a3a5545f91f79c18fc07ab2f793e9761c69ce79cea857f29f17747d4cfcc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.1 MB (137096436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0da05d84b1fe3b5620c55bf254446fc052e28ccd53d320954fbc593ab701204b`
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
# Wed, 23 Jan 2019 02:02:55 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 23 Jan 2019 02:02:56 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 02:02:56 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 23 Jan 2019 02:02:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 23 Jan 2019 02:02:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 23 Jan 2019 02:02:56 GMT
ENV MONGO_MAJOR=4.0
# Wed, 06 Feb 2019 01:32:13 GMT
ENV MONGO_VERSION=4.0.6
# Wed, 06 Feb 2019 01:32:14 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 06 Feb 2019 01:33:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 06 Feb 2019 01:33:04 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 06 Feb 2019 01:33:04 GMT
VOLUME [/data/db /data/configdb]
# Wed, 06 Feb 2019 01:33:05 GMT
COPY file:aede91d254349505ddabe55af4cf4debc6cc3f959f945a489b8864e520f193e8 in /usr/local/bin/ 
# Wed, 06 Feb 2019 01:33:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 01:33:05 GMT
EXPOSE 27017
# Wed, 06 Feb 2019 01:33:05 GMT
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
	-	`sha256:e5758d5381b11009378d4da247c09c919317b5bca69e9623cdab9dd246c783f2`  
		Last Modified: Wed, 23 Jan 2019 02:05:16 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc553720c5c33f9157379f2faf495fd907164ffef982ed4f42a0735bb0f695bc`  
		Last Modified: Wed, 06 Feb 2019 01:33:29 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67750c781aa28ff73e87b92c6cc5cdfe98ce020245abd8097ae54047b64e0b93`  
		Last Modified: Wed, 06 Feb 2019 01:33:47 GMT  
		Size: 89.9 MB (89869156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00b8942c8276d9f64d7dd4b7e45c3b46f28e0af4511a3e1716c33f239bee674`  
		Last Modified: Wed, 06 Feb 2019 01:33:29 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32201bb8ca69716de253f1f578f09ddc06c6fa5144b77d70d447d27f73072026`  
		Last Modified: Wed, 06 Feb 2019 01:33:28 GMT  
		Size: 3.8 KB (3793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:59b0ca9445d077f5fd039cb4eea2e512ca22c82ab3f0ced480de15662e7d8379
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128115004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d41425c948bc5cc5ba740f2411329e8eeb00e80e2c1082dfac6a92f0fbe2978a`
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
# Wed, 23 Jan 2019 10:28:12 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 23 Jan 2019 10:28:15 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:28:15 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 23 Jan 2019 10:28:16 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 23 Jan 2019 10:28:17 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 23 Jan 2019 10:28:18 GMT
ENV MONGO_MAJOR=4.0
# Wed, 06 Feb 2019 11:45:12 GMT
ENV MONGO_VERSION=4.0.6
# Wed, 06 Feb 2019 11:45:15 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 06 Feb 2019 11:46:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 06 Feb 2019 11:46:17 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 06 Feb 2019 11:46:18 GMT
VOLUME [/data/db /data/configdb]
# Wed, 06 Feb 2019 11:46:19 GMT
COPY file:aede91d254349505ddabe55af4cf4debc6cc3f959f945a489b8864e520f193e8 in /usr/local/bin/ 
# Wed, 06 Feb 2019 11:46:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 11:46:21 GMT
EXPOSE 27017
# Wed, 06 Feb 2019 11:46:22 GMT
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
	-	`sha256:c0dedb1b5e1a21aabcb67ea53bae530ed7ec3362bcc845b35adf743de5d8defa`  
		Last Modified: Wed, 23 Jan 2019 10:32:31 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb5598552df18287f571371292218247245e7b1b8ad938591898da5cd50a4e9`  
		Last Modified: Wed, 06 Feb 2019 11:47:00 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8ca2b797ff35367ffe2a18c5741eeb9928e412ceeccc9ce98c02601d8063d6b`  
		Last Modified: Wed, 06 Feb 2019 11:47:31 GMT  
		Size: 85.4 MB (85355714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ff78a3872eec105cc9e92439a5be863fcab803a1bf1b78891445e0456f1f94`  
		Last Modified: Wed, 06 Feb 2019 11:47:00 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0596dbce669a3dc8d076afcd4d4a56f16a1a3e6df4506b704c946d6b1cc559c3`  
		Last Modified: Wed, 06 Feb 2019 11:47:00 GMT  
		Size: 3.8 KB (3794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - windows version 10.0.14393.2724; amd64

```console
$ docker pull mongo@sha256:9af3bc7d26dfbe4c57776b86ce990d1bae0252c22499d62d6bbc7270c5509f84
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5711391645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b8e9ba79ecd924416d9eac5de05802a13d6d46ada5fc58ab79f9a0e5948910`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Tue, 22 Jan 2019 11:49:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 06 Feb 2019 10:19:24 GMT
ENV MONGO_VERSION=4.0.6
# Wed, 06 Feb 2019 10:19:26 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.6-signed.msi
# Wed, 06 Feb 2019 10:19:27 GMT
ENV MONGO_DOWNLOAD_SHA256=aeb91f88930c77828c45f6aa41ad8219a8bb7c90c1a3c308b92329afc907cb1c
# Wed, 06 Feb 2019 10:29:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 06 Feb 2019 10:29:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 06 Feb 2019 10:29:24 GMT
EXPOSE 27017
# Wed, 06 Feb 2019 10:29:26 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0c71fc8924e632b81de72fba055610c4a5259b2f6723e15f70662f7bc328184`  
		Last Modified: Tue, 08 Jan 2019 17:44:44 GMT  
		Size: 1.6 GB (1565830172 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:17b027d2e81dbd6d79eaa15e958f3abf591a89252f9711b74b706f4f7a4520d5`  
		Last Modified: Tue, 22 Jan 2019 13:31:37 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148f9ba17878d8e96a198d51e4290281e8d27b5146353785660e89f6b03aeab5`  
		Last Modified: Wed, 06 Feb 2019 11:04:30 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974689c12ba103248976e1dfa0d19484021eba58fde6542ef9c8229b12a3a1a5`  
		Last Modified: Wed, 06 Feb 2019 11:04:30 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e639e724906909afeda8fc52a7b629f1b4884d36a672f8d74710e7f49cfb771`  
		Last Modified: Wed, 06 Feb 2019 11:04:28 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce74e25f424ae951d042c4a00b59c98d1eaa970d4c9a5a5d38b6e48362487c0f`  
		Last Modified: Wed, 06 Feb 2019 11:04:45 GMT  
		Size: 75.6 MB (75567092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09b3e5877d3b8e13587c338c5e7eb07c87f2a359d2ab6e70d221a174b3e9850`  
		Last Modified: Wed, 06 Feb 2019 11:04:29 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16250e878785a34afce5737890e0dab13dde0d3b491cb6913f0a657d9292845`  
		Last Modified: Wed, 06 Feb 2019 11:04:28 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0fbe14bec236c32dd37586a24a0b22b1a09480442f5943bed7f67f30e0df98`  
		Last Modified: Wed, 06 Feb 2019 11:04:28 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - windows version 10.0.16299.904; amd64

```console
$ docker pull mongo@sha256:6d4d504c39b935798df3798546ce47410950d59d399d10fbc4732379dfe12af3
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 GB (3718476312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:855317c57b387fd4bf76d2c2d71b8071bd0c34b193c34fc5b1549355ddeb313d`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 03 Jan 2019 04:08:43 GMT
RUN Install update 10.0.16299.904
# Tue, 22 Jan 2019 11:52:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 06 Feb 2019 10:29:39 GMT
ENV MONGO_VERSION=4.0.6
# Wed, 06 Feb 2019 10:29:40 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.6-signed.msi
# Wed, 06 Feb 2019 10:29:41 GMT
ENV MONGO_DOWNLOAD_SHA256=aeb91f88930c77828c45f6aa41ad8219a8bb7c90c1a3c308b92329afc907cb1c
# Wed, 06 Feb 2019 10:50:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 06 Feb 2019 10:50:48 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 06 Feb 2019 10:50:49 GMT
EXPOSE 27017
# Wed, 06 Feb 2019 10:50:51 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ee945370a9b4bb58ea63e33767041df2ecc306b6e73a231fe90d31980e26b05d`  
		Last Modified: Tue, 08 Jan 2019 18:00:22 GMT  
		Size: 872.8 MB (872755280 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b73a0893a2a72f596b0b6e0f0bd7c375cc57a9f8c99eecac91cb183e81a685df`  
		Last Modified: Tue, 22 Jan 2019 13:32:24 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6473ceea802de39743b51a74fe75b978d5b21b0576ab37c991bcb4ef366203a`  
		Last Modified: Wed, 06 Feb 2019 11:05:05 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2e871f3d0508dd2f51ca110bae9719435265a4de92c5d31a7e79261249fa47`  
		Last Modified: Wed, 06 Feb 2019 11:05:05 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7243357279e685c059443c1a419ca870ba603f03fbfa11a5a2432e52a46dc36d`  
		Last Modified: Wed, 06 Feb 2019 11:05:03 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:452ce823dd2fa03aaf1706c5ae2bebea1f995e87e4a3175d18140eea76172aa8`  
		Last Modified: Wed, 06 Feb 2019 11:08:59 GMT  
		Size: 571.4 MB (571412013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8e86034382fdb1c891c32d718501547d9189b7032936c6f31b4d9e7cdd70af`  
		Last Modified: Wed, 06 Feb 2019 11:05:03 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25bad38271f66370215c282ecf9ef18713822952d0d9659949bc2d5fa6804fe`  
		Last Modified: Wed, 06 Feb 2019 11:05:03 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba22de9ed3ca61333a040e5728209b17c684b4a7a29e097f5249ab7d3bcf0339`  
		Last Modified: Wed, 06 Feb 2019 11:05:03 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - windows version 10.0.17134.523; amd64

```console
$ docker pull mongo@sha256:3be17715f14ac6f0834554ab4fc7a7440449690e58d45291dfae420c8d3422f1
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2320526423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d27bf0759d22ac2ac57fb6003275fd070a87b32cb3f9987d4a7d83b55c0468d2`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 04 Jan 2019 22:40:00 GMT
RUN Install update 10.0.17134.523
# Tue, 22 Jan 2019 12:30:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 06 Feb 2019 10:51:44 GMT
ENV MONGO_VERSION=4.0.6
# Wed, 06 Feb 2019 10:51:46 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.6-signed.msi
# Wed, 06 Feb 2019 10:51:47 GMT
ENV MONGO_DOWNLOAD_SHA256=aeb91f88930c77828c45f6aa41ad8219a8bb7c90c1a3c308b92329afc907cb1c
# Wed, 06 Feb 2019 11:03:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 06 Feb 2019 11:03:17 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 06 Feb 2019 11:03:19 GMT
EXPOSE 27017
# Wed, 06 Feb 2019 11:03:21 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:80c309c8f9e2a929c92fe88fafde882006a56d421e9cb306b5a55baefe52c4b6`  
		Last Modified: Tue, 08 Jan 2019 01:38:21 GMT  
		Size: 586.0 MB (585998859 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3902d93500fc2da689f060218ed87190e009c31aebb04140cfa60bfa39c15ace`  
		Last Modified: Tue, 22 Jan 2019 13:39:51 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c857b0771d904e5e9b5cd9127e23ffca592e130d8f1e4147ac471e45c79f061d`  
		Last Modified: Wed, 06 Feb 2019 11:09:39 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0308852ac4cf299b95a493045ff7d2f1927caea337edd236f4ee848f81c687`  
		Last Modified: Wed, 06 Feb 2019 11:09:39 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300f76ac64c42ea22ab53278d5bfd95c971d35d8712227a6f53f671399429d71`  
		Last Modified: Wed, 06 Feb 2019 11:09:36 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c496ae1211b9fe90dcd3241e29ed075d58c77c1e984379ec8fd8858d277acff3`  
		Last Modified: Wed, 06 Feb 2019 11:10:03 GMT  
		Size: 74.8 MB (74830853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857bc5fd17c788cf09e0a0b76c12e4d06420f90f485485df6fde4b287c4ef039`  
		Last Modified: Wed, 06 Feb 2019 11:09:37 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0927f0ae107de1ba056d6264ffca5e2360c920f82b2ebf46c80c44f370dd8f8`  
		Last Modified: Wed, 06 Feb 2019 11:09:37 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ecc6f0f48e424b166a88a06cf10262a1c6438e46a72dcf6f3e1dcb1b1e2f28`  
		Last Modified: Wed, 06 Feb 2019 11:09:36 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
