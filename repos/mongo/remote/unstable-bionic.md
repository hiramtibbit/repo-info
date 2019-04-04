## `mongo:unstable-bionic`

```console
$ docker pull mongo@sha256:d0c77ac925cda666fbff4e320f3bdf69bb8fe88e1da4a6a3745ffdb40705d566
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; s390x

### `mongo:unstable-bionic` - linux; amd64

```console
$ docker pull mongo@sha256:45035e8621d26d3753b38338904b919cd67051f9aa5436d239f2f5219de9a119
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147680131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13fd523b4bd11d2b565e0ed102a406fce1cfa55d781af64c0a47e62aa576371e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 02 Apr 2019 23:45:14 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 02 Apr 2019 23:45:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 02 Apr 2019 23:45:24 GMT
ENV GOSU_VERSION=1.11
# Tue, 02 Apr 2019 23:45:24 GMT
ENV JSYAML_VERSION=3.13.0
# Tue, 02 Apr 2019 23:45:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 02 Apr 2019 23:45:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 02 Apr 2019 23:45:44 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Tue, 02 Apr 2019 23:45:45 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 02 Apr 2019 23:45:45 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Tue, 02 Apr 2019 23:45:45 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:45:46 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Tue, 02 Apr 2019 23:45:46 GMT
ENV MONGO_MAJOR=4.1
# Tue, 02 Apr 2019 23:45:46 GMT
ENV MONGO_VERSION=4.1.9
# Tue, 02 Apr 2019 23:45:47 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 02 Apr 2019 23:46:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 02 Apr 2019 23:46:07 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 02 Apr 2019 23:46:07 GMT
VOLUME [/data/db /data/configdb]
# Tue, 02 Apr 2019 23:46:07 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Tue, 02 Apr 2019 23:46:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 02 Apr 2019 23:46:08 GMT
EXPOSE 27017
# Tue, 02 Apr 2019 23:46:08 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af087a0122119e941b0988a5e01f79b2e54250ed4ea766b260b589e492a042e`  
		Last Modified: Tue, 02 Apr 2019 23:47:42 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7483b00c3d9f272517ef770ded04048c6ee6547daad58f7d2d46e1c162ea2e5`  
		Last Modified: Tue, 02 Apr 2019 23:47:43 GMT  
		Size: 2.7 MB (2732289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3546fdf9877eeb6af3edb71b4c6c345f4eeb1a9901da55638c962bf3a30a52a6`  
		Last Modified: Tue, 02 Apr 2019 23:47:43 GMT  
		Size: 5.8 MB (5758826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8181a5f463390d3a638286b0b5e334e1b7fdcae20cb7aa09ac03ae7a36bf61`  
		Last Modified: Tue, 02 Apr 2019 23:47:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f641c6abe09ddc045993b48c2a5935a3693e7b31e77ca750a1238a609cab9b68`  
		Last Modified: Tue, 02 Apr 2019 23:47:41 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:004a180c8bd6265bb8b35cea4521c5d7bf532eff8d18fbea00d583a3c1d11cb2`  
		Last Modified: Tue, 02 Apr 2019 23:47:41 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206da40bb45ed3ca301c2f11c767b1ba54c5ebfd88eb49b9daf846c65d52f4ce`  
		Last Modified: Tue, 02 Apr 2019 23:47:59 GMT  
		Size: 106.7 MB (106713159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18a52029fbea7655efb2860dab8f04ad6bfbd2e1c2f026f1df897c9e93560c0`  
		Last Modified: Tue, 02 Apr 2019 23:47:41 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97932a7b6bbcf8f7c71ecf36c3bed9fbbcc43dbaeecb7cb43d4fd8da97428d5`  
		Last Modified: Tue, 02 Apr 2019 23:47:41 GMT  
		Size: 3.9 KB (3917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable-bionic` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:c0582235aafe7aef4bf9c3ea381016e3bc79b37cb39a74cbe2e852f7dfa27bab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.4 MB (138358732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a49351c9da2fa82f5affc59d1b27e43dafa001fabbcd7c02fe1f5729d1708d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 14 Mar 2019 09:34:18 GMT
ADD file:4cccf4e4a71783b1ac058bcfcabe23b3901e829c3859551be9d7e732cb9e3f86 in / 
# Thu, 14 Mar 2019 09:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:34:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:34:32 GMT
CMD ["/bin/bash"]
# Wed, 03 Apr 2019 09:17:17 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 03 Apr 2019 09:17:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 09:17:56 GMT
ENV GOSU_VERSION=1.11
# Wed, 03 Apr 2019 09:17:56 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 03 Apr 2019 09:19:24 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 03 Apr 2019 09:19:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 03 Apr 2019 09:19:30 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Wed, 03 Apr 2019 09:19:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 03 Apr 2019 09:19:38 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 03 Apr 2019 09:19:40 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:19:42 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 03 Apr 2019 09:19:45 GMT
ENV MONGO_MAJOR=4.1
# Wed, 03 Apr 2019 09:19:47 GMT
ENV MONGO_VERSION=4.1.9
# Wed, 03 Apr 2019 09:19:52 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 03 Apr 2019 09:20:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 03 Apr 2019 09:20:59 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 03 Apr 2019 09:21:00 GMT
VOLUME [/data/db /data/configdb]
# Wed, 03 Apr 2019 09:21:02 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Wed, 03 Apr 2019 09:21:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Apr 2019 09:21:04 GMT
EXPOSE 27017
# Wed, 03 Apr 2019 09:21:05 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a0ceea30e08b5fa042d10308a43b8b093b67ce44e98a69ea8d277d00077387ab`  
		Last Modified: Fri, 08 Mar 2019 23:47:38 GMT  
		Size: 29.2 MB (29175537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef245d4e8728acd667d550023b9ffbb688c7976f78f72986d132072041e5a1`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb25026742c32e7fe5417efb6bc0ff5ad1eb9963007aebd5f71e9bc333e9ba`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b2948ac15d07c725e6074399d5e49e916e79b2c7738d6ad63e4d1b090db8f`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a951e7204c9366c16e2d7c295430f7db90c41267c81baaf820fe7bb0a59f31`  
		Last Modified: Wed, 03 Apr 2019 09:24:50 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e09a9e16547979770b74f9eaf37eb42a5b4c6bbc0368101a696c85c27d094d6`  
		Last Modified: Wed, 03 Apr 2019 09:24:53 GMT  
		Size: 2.4 MB (2444732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f848dd4349aa92112842e48ffd4b74b7521cd9522c868163a1f3e67cec1ce8a3`  
		Last Modified: Wed, 03 Apr 2019 09:24:55 GMT  
		Size: 5.3 MB (5277968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49e6741e94d85a31436c4fffba0419b3e053c4b6a856d963839141640d270d7`  
		Last Modified: Wed, 03 Apr 2019 09:24:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49d70b56815a04031f1dc049cd460ba0c03255b7fe8204187d881a96f2f9c4b`  
		Last Modified: Wed, 03 Apr 2019 09:24:48 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba74876f68b501f95971c6a87b0c03bc16f24e5029908ef4b18ddcb4c7709c0b`  
		Last Modified: Wed, 03 Apr 2019 09:24:48 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4bdf5653d483076e0eaa46e89b44f30570503b63744c7e53891896b42c564c9`  
		Last Modified: Wed, 03 Apr 2019 09:25:41 GMT  
		Size: 101.5 MB (101451217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5ae693bd8106c00a80d8b5f8ff9d2a832805c5a4b230f1c42f8188a2567c9d`  
		Last Modified: Wed, 03 Apr 2019 09:24:48 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60988d8564147ea5faec705629f10ea4db2d80b73d9cbbab1d819f6e74452c26`  
		Last Modified: Wed, 03 Apr 2019 09:24:48 GMT  
		Size: 3.9 KB (3918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable-bionic` - linux; s390x

```console
$ docker pull mongo@sha256:ec3d9e0ce2106cff8fd18d05b46e1c883b638a1abafa5ce2885b47f1af3e261f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.6 MB (142578791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91069de22ce951fe83be1f37d3da202ee8556dce7a6b801e3327e0219a40ed54`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Mar 2019 12:08:47 GMT
ADD file:7b97cdceb7a661db3458df6cd992d2e735fec8613abd86bdff58a949190c355b in / 
# Tue, 12 Mar 2019 12:08:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:08:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:08:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:08:51 GMT
CMD ["/bin/bash"]
# Thu, 04 Apr 2019 11:53:13 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 04 Apr 2019 11:53:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 11:53:37 GMT
ENV GOSU_VERSION=1.11
# Thu, 04 Apr 2019 11:53:37 GMT
ENV JSYAML_VERSION=3.13.0
# Thu, 04 Apr 2019 11:54:03 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 04 Apr 2019 11:54:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 04 Apr 2019 11:54:05 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Thu, 04 Apr 2019 11:54:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 04 Apr 2019 11:54:09 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Thu, 04 Apr 2019 11:54:09 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 04 Apr 2019 11:54:10 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Thu, 04 Apr 2019 11:54:10 GMT
ENV MONGO_MAJOR=4.1
# Thu, 04 Apr 2019 11:54:10 GMT
ENV MONGO_VERSION=4.1.9
# Thu, 04 Apr 2019 11:54:12 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 04 Apr 2019 11:54:51 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 04 Apr 2019 11:54:54 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 04 Apr 2019 11:54:54 GMT
VOLUME [/data/db /data/configdb]
# Thu, 04 Apr 2019 11:54:55 GMT
COPY file:945726c0bedd1f0e5d63724b35b5de1d3c95ead022243ee60a859eba16f592e1 in /usr/local/bin/ 
# Thu, 04 Apr 2019 11:54:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 04 Apr 2019 11:54:56 GMT
EXPOSE 27017
# Thu, 04 Apr 2019 11:54:56 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:ce90edcc3139e116c97e192a11962790422da390b102aca2d617dc565de4d938`  
		Last Modified: Tue, 12 Mar 2019 12:10:06 GMT  
		Size: 30.7 MB (30701859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2794d8d2439572a529e844dce238c278c50debc920730de784f9cbc405a0b51`  
		Last Modified: Tue, 12 Mar 2019 12:09:58 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ecab1b250dd07edb1294b4ad9afbdcb2a5b9bc81e09ae75d2d65dc32c6df0c4`  
		Last Modified: Tue, 12 Mar 2019 12:09:58 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ae8f34b30e3b128ba685424ccf987869098004713c41da34ce3636eb12060e`  
		Last Modified: Tue, 12 Mar 2019 12:09:58 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a316a44e1c9a53943aac6f7d253a52e7b9b068f9de2347a7ef7c002d250cf23`  
		Last Modified: Thu, 04 Apr 2019 11:55:28 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7a77396fba77d74dd6b5c0226b347773cf3b5343afcb660eb8063e98d910bd`  
		Last Modified: Thu, 04 Apr 2019 11:55:29 GMT  
		Size: 2.5 MB (2460421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912eeafa66aa0fa49f3bcf8c352c3a11464c27feb4f3a828fd522b2590a77563`  
		Last Modified: Thu, 04 Apr 2019 11:55:30 GMT  
		Size: 5.7 MB (5680519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58c6f4e7aef9d1718da0231173b562831bfb91239044925f52de32944bc2be4b`  
		Last Modified: Thu, 04 Apr 2019 11:55:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ce9dcdf3737b3cc0a22f26341944c52bc7868607edbc267c803e84f9e4876a`  
		Last Modified: Thu, 04 Apr 2019 11:55:27 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b3f84cd9f72b350eb5c1cad839742fadc11b7ebe3a556cb718078329b2bbc5`  
		Last Modified: Thu, 04 Apr 2019 11:55:26 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6314849643eb4122693046647cdd047e79b01c7df497c1b2cc43cc3a808d60`  
		Last Modified: Thu, 04 Apr 2019 11:55:52 GMT  
		Size: 103.7 MB (103726726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9296b515afc362d7f8fee7b394f7939c7a61362e3c833c56f828efa05a3ef76`  
		Last Modified: Thu, 04 Apr 2019 11:55:26 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7863f6db7ef5e033ddc1030a51b0de9ce6aaf0eb80466237b782f40d6cf64a1c`  
		Last Modified: Thu, 04 Apr 2019 11:55:27 GMT  
		Size: 3.9 KB (3914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
