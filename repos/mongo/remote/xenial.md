## `mongo:xenial`

```console
$ docker pull mongo@sha256:5f4445bc23d4c29e4659a0753b6b5bb70c12a5204b612078e8da35ab484c6f2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:xenial` - linux; amd64

```console
$ docker pull mongo@sha256:e9e97b5cce9bf6d95c79bf3cb23d90e4d79aa8b469854f263fcb18f69af6195a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.0 MB (136967567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7177e01e8c017fc04dad8604f2d870e07a28bd6f5c676c8dbdc2f0ead16fa4a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 00:56:45 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 29 Dec 2018 00:56:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:56:56 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 00:56:57 GMT
ENV JSYAML_VERSION=3.10.0
# Sat, 29 Dec 2018 00:57:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 29 Dec 2018 00:57:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 00:57:05 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Sat, 29 Dec 2018 00:57:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 00:57:06 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 29 Dec 2018 00:57:06 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 29 Dec 2018 00:57:07 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 29 Dec 2018 00:57:08 GMT
ENV MONGO_MAJOR=4.0
# Sat, 29 Dec 2018 00:57:09 GMT
ENV MONGO_VERSION=4.0.5
# Sat, 29 Dec 2018 00:57:09 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 29 Dec 2018 00:57:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 29 Dec 2018 00:57:37 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 29 Dec 2018 00:57:37 GMT
VOLUME [/data/db /data/configdb]
# Sat, 29 Dec 2018 00:57:37 GMT
COPY file:aede91d254349505ddabe55af4cf4debc6cc3f959f945a489b8864e520f193e8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 00:57:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 00:57:37 GMT
EXPOSE 27017
# Sat, 29 Dec 2018 00:57:38 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95dc958d65c64a9847dfe14ddd2f1cfe2382db0c61fadbefa2ebe86c1847110e`  
		Last Modified: Sat, 29 Dec 2018 00:59:10 GMT  
		Size: 2.0 KB (1989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec60d69dd505861f372c1e7d291790863d676d6e1b63e4e0319eda2e66b904f`  
		Last Modified: Sat, 29 Dec 2018 00:59:10 GMT  
		Size: 2.9 MB (2945688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf92a668191371e9f0f7526943b68233cb7a996c83e9077aaf58921717d692f8`  
		Last Modified: Sat, 29 Dec 2018 00:59:10 GMT  
		Size: 750.9 KB (750862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8911fe7d4b3598145a385ae0c2b0850eecb1c1d4222ecbacc430d992aed512e7`  
		Last Modified: Sat, 29 Dec 2018 00:59:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce44114b0600849eab8495356bca811eae6faffb7019317aa5e72d2a5d95d51`  
		Last Modified: Sat, 29 Dec 2018 00:59:09 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a944a194d136c436411f4631cc21f8cf02c2c81df5bda7d48d6563df0d4d173`  
		Last Modified: Sat, 29 Dec 2018 00:59:09 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5519cf0ef45de71eaffce0ddb8de11662acd5d6dc63c905555de9e8e932836d1`  
		Last Modified: Sat, 29 Dec 2018 00:59:27 GMT  
		Size: 89.8 MB (89818788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c688677ac8ef446e85bd87a7086561595576dae0dfac653a67d54c708cea4c9`  
		Last Modified: Sat, 29 Dec 2018 00:59:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f147ac236bb0b38e164f6dc7598b957322967b7ad705c17955ecdd76cbd7423`  
		Last Modified: Sat, 29 Dec 2018 00:59:09 GMT  
		Size: 3.8 KB (3794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:a242c9bd935edc2746d7bd4dd25d8e35c1663b1974e87669de2de7aa3eeae2a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.0 MB (128032547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:136bb229cf2930554476442ed31f68bc3502ea169162878a558722cd04f85720`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 12:07:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 29 Dec 2018 12:08:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:08:30 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 12:08:33 GMT
ENV JSYAML_VERSION=3.10.0
# Sat, 29 Dec 2018 12:09:20 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Sat, 29 Dec 2018 12:09:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 12:09:24 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Sat, 29 Dec 2018 12:09:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 12:09:31 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 29 Dec 2018 12:09:33 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 29 Dec 2018 12:09:34 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 29 Dec 2018 12:09:35 GMT
ENV MONGO_MAJOR=4.0
# Sat, 29 Dec 2018 12:09:36 GMT
ENV MONGO_VERSION=4.0.5
# Sat, 29 Dec 2018 12:09:41 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 29 Dec 2018 12:11:11 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 29 Dec 2018 12:11:25 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 29 Dec 2018 12:11:27 GMT
VOLUME [/data/db /data/configdb]
# Sat, 29 Dec 2018 12:11:28 GMT
COPY file:aede91d254349505ddabe55af4cf4debc6cc3f959f945a489b8864e520f193e8 in /usr/local/bin/ 
# Sat, 29 Dec 2018 12:11:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 12:11:30 GMT
EXPOSE 27017
# Sat, 29 Dec 2018 12:11:31 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a2becb684c7c6e9dc2a2ceafa1517761b2a42b2044498c69ce9e28045f191f2`  
		Last Modified: Sat, 29 Dec 2018 12:14:25 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b632039574c2a768c4270ad1c0a44ef0c7be506303b8b15eccaf7ace4dadc008`  
		Last Modified: Sat, 29 Dec 2018 12:14:26 GMT  
		Size: 2.5 MB (2474558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a4adf5411e1cac983757e61dee87b5bbaf5ceaac4c46c7d1867471ef9b5c0a8`  
		Last Modified: Sat, 29 Dec 2018 12:14:25 GMT  
		Size: 718.0 KB (718005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87e003b16c9415a422e00c96be17f1b78d53abec36e85e948751828b652fbf6`  
		Last Modified: Sat, 29 Dec 2018 12:14:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92056b4bb229dd3e3bb2d163f948e9aec644df1ef4432ed2fad60884e48e6b8e`  
		Last Modified: Sat, 29 Dec 2018 12:14:22 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d6d0dd40f6e2e19dea6e903a7dc5037d2b4081c4f7484a1d785a376f85380b`  
		Last Modified: Sat, 29 Dec 2018 12:14:22 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ff8bd542c0cfb6648901e5a59fb94bb37da716d929992372847dc1da6c6bea`  
		Last Modified: Sat, 29 Dec 2018 12:14:53 GMT  
		Size: 85.3 MB (85323377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c51e8b5fd3bc75693972ecb93919c6427eb89f632a94442ad02cc445a24613`  
		Last Modified: Sat, 29 Dec 2018 12:14:23 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09ab139ac90dd1fe01d1a4a83ee297a666da7b5f93be6dd50154d7af5e837a6`  
		Last Modified: Sat, 29 Dec 2018 12:14:22 GMT  
		Size: 3.8 KB (3796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
