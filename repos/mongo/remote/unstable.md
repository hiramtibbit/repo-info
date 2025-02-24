## `mongo:unstable`

```console
$ docker pull mongo@sha256:102c58fe4d07a5acf99abc278d253357f197d375fa9b861ff1abdde3d4040b91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.3025; amd64
	-	windows version 10.0.17134.829; amd64

### `mongo:unstable` - linux; amd64

```console
$ docker pull mongo@sha256:ca1fb7c7e24ec839ab3ccd53dd65f3c1185fa4f602a81ad1108685e86f4ca48a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145572684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a371a342f0b34bed395ad6924c5f8b621b6ee0ee49f8c8b16eed38b0896d9a2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 18 Jun 2019 22:51:33 GMT
ADD file:4e6b5d9ca371eb881c581574b8dc4f5391eff2872db364af0f8d9804e4890098 in / 
# Tue, 18 Jun 2019 22:51:35 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:51:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:51:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:51:38 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 02:53:57 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 19 Jun 2019 02:54:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 02:54:07 GMT
ENV GOSU_VERSION=1.11
# Wed, 19 Jun 2019 02:54:07 GMT
ENV JSYAML_VERSION=3.13.0
# Wed, 19 Jun 2019 02:54:25 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 19 Jun 2019 02:54:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 19 Jun 2019 02:54:26 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Wed, 19 Jun 2019 02:54:27 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 19 Jun 2019 02:54:27 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 19 Jun 2019 02:54:27 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 19 Jun 2019 02:54:27 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 19 Jun 2019 02:54:27 GMT
ENV MONGO_MAJOR=4.1
# Wed, 19 Jun 2019 02:54:28 GMT
ENV MONGO_VERSION=4.1.13
# Wed, 19 Jun 2019 02:54:28 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 19 Jun 2019 02:54:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 19 Jun 2019 02:54:50 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 19 Jun 2019 02:54:50 GMT
VOLUME [/data/db /data/configdb]
# Wed, 19 Jun 2019 02:54:50 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Wed, 19 Jun 2019 02:54:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Jun 2019 02:54:51 GMT
EXPOSE 27017
# Wed, 19 Jun 2019 02:54:51 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5b7339215d1d5f8e68622d584a224f60339f5bef41dbd74330d081e912f0cddd`  
		Last Modified: Thu, 13 Jun 2019 00:24:57 GMT  
		Size: 26.7 MB (26684508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ca88e9f6723ce82bc14b241cda8634f6d19677184691d086662641ab96fe68`  
		Last Modified: Tue, 18 Jun 2019 22:53:58 GMT  
		Size: 35.4 KB (35352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31c3b1caad473a474d574283741f880e37c708cc06ee620d3e93fa602125ee0`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b054a26005b7f3b032577f811421fab5ec3b42ce45a4012dfa00cf6ed6191b0f`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5efa5dbd15c6cba5c77f98b32761f0ea799ef618f1a9d952557d3d22dc405d4a`  
		Last Modified: Wed, 19 Jun 2019 02:57:04 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bf868b78e8d18b191d319638097f510fb8223706146fd7dd58f69483ddeb46`  
		Last Modified: Wed, 19 Jun 2019 02:57:05 GMT  
		Size: 3.0 MB (2973924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:925562f87d164dddc06b822208c3af62ecbbf43f1aae5f32c3b810f0d8fd6849`  
		Last Modified: Wed, 19 Jun 2019 02:57:04 GMT  
		Size: 5.8 MB (5759688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbde063b2555283fab953b0ddaa30819e40617e85d3b7704d8e1bed62c88b320`  
		Last Modified: Wed, 19 Jun 2019 02:57:03 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8d5b6b5b74c49629c8b767768ff4884f25aab5e081c87e09dbdfeaccb42014`  
		Last Modified: Wed, 19 Jun 2019 02:57:03 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d91651a0b7363567dd1bff6a8bde25426f0b76814bdbf2853efd748133ecc70`  
		Last Modified: Wed, 19 Jun 2019 02:57:02 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003a34c5a4d171c25b1c5f8443931bf51b1c22183df01b7da1faacdd3f999f7c`  
		Last Modified: Wed, 19 Jun 2019 02:57:21 GMT  
		Size: 110.1 MB (110110488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8068f8f62f5924b5c5da82c2de0aea788660039963a3b023c9f04799a49f81a0`  
		Last Modified: Wed, 19 Jun 2019 02:57:01 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f478cc4ac1a47c43f89942bbe054ef01e096b0f7122bb8268bd07d9f8a0671b`  
		Last Modified: Wed, 19 Jun 2019 02:57:01 GMT  
		Size: 3.9 KB (3915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:28acf75cd0e0c3c0c63df7d8160c6d03a9c101af0db1d331c2577f73bf08c126
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134855220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7199763abe228e4fe815868b6fe1717f4a906d6e82989a61729a6256f682b85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 23:11:39 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 18 Jun 2019 23:11:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:11:59 GMT
ENV GOSU_VERSION=1.11
# Tue, 18 Jun 2019 23:11:59 GMT
ENV JSYAML_VERSION=3.13.0
# Tue, 18 Jun 2019 23:12:25 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 18 Jun 2019 23:12:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 18 Jun 2019 23:12:27 GMT
ENV GPG_KEYS=E162F504A20CDF15827F718D4B7C549A058F8B6B
# Tue, 18 Jun 2019 23:12:31 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 18 Jun 2019 23:12:32 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Tue, 18 Jun 2019 23:12:33 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 18 Jun 2019 23:12:33 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Tue, 18 Jun 2019 23:12:34 GMT
ENV MONGO_MAJOR=4.1
# Tue, 18 Jun 2019 23:12:35 GMT
ENV MONGO_VERSION=4.1.13
# Tue, 18 Jun 2019 23:12:36 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 18 Jun 2019 23:13:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 18 Jun 2019 23:13:14 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 18 Jun 2019 23:13:14 GMT
VOLUME [/data/db /data/configdb]
# Tue, 18 Jun 2019 23:13:15 GMT
COPY file:682bc81a6b321113167ccc9c2cb99cf3a0f4779def53434fb44bb886f7ab8724 in /usr/local/bin/ 
# Tue, 18 Jun 2019 23:13:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Jun 2019 23:13:16 GMT
EXPOSE 27017
# Tue, 18 Jun 2019 23:13:16 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1749408d43f113d12d152ab4dd576d5d29636646168a1eef8ad09ddd40763a3`  
		Last Modified: Tue, 18 Jun 2019 23:17:07 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:291d9ab7c59d5f26afe9e4900b789db5bdc1dcce9603e6cb1751243332a21eb9`  
		Last Modified: Tue, 18 Jun 2019 23:17:06 GMT  
		Size: 2.7 MB (2666582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de608279602a0294a2b33e70a10fe0b3661cc02c1e0dc47d12e612b6f2222b1`  
		Last Modified: Tue, 18 Jun 2019 23:17:05 GMT  
		Size: 5.3 MB (5279174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e2f716fe39f2427e35742bbeab398fd6bcf8c7d4d4e938e17ddf106bb89d87`  
		Last Modified: Tue, 18 Jun 2019 23:17:02 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61707a40366e94f0ac48d45ce467e0ce4ea8069ad7bf92d95e47130cfe2efb23`  
		Last Modified: Tue, 18 Jun 2019 23:17:01 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a9a77d601caa700b4479a6aba216fa691f7fb7bb80c90faa751fe084cd523c`  
		Last Modified: Tue, 18 Jun 2019 23:17:00 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75095b0c324e3ff8ab7759c7bb62f94a5c1472c7c9851292a87cb86689fbab60`  
		Last Modified: Tue, 18 Jun 2019 23:17:28 GMT  
		Size: 103.2 MB (103161111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbbf74568b5f43c0fb2beb1d58d2e73eced294af2cebcabe9364d7426c669183`  
		Last Modified: Tue, 18 Jun 2019 23:16:57 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea5f67145e06d0644580d46eb5a464ae49ff13e27c812aace6da4ca720373cb`  
		Last Modified: Tue, 18 Jun 2019 23:16:57 GMT  
		Size: 3.9 KB (3920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - windows version 10.0.14393.3025; amd64

```console
$ docker pull mongo@sha256:922875195debe723a3afee469c49633f9cc27c5fdd66ef29d40b4d504b911c68
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5801712411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93720a73e3db8fdba2846a3365ed3aad2407d63a1e8e0621a99affaade207f00`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 16:02:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Jun 2019 16:43:27 GMT
ENV MONGO_VERSION=4.1.13
# Wed, 12 Jun 2019 16:43:29 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.13-signed.msi
# Wed, 12 Jun 2019 16:43:30 GMT
ENV MONGO_DOWNLOAD_SHA256=682c5913d551d3508cb3446fe4929ae97552b5a344469855b58c9473f4f58dd6
# Wed, 12 Jun 2019 16:53:13 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 16:53:15 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Jun 2019 16:53:17 GMT
EXPOSE 27017
# Wed, 12 Jun 2019 16:53:19 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a93a9306787f35923544db17afaac32adba5f64cbbb54158d169119bec4293a0`  
		Last Modified: Wed, 12 Jun 2019 17:13:38 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26195b00ff51f381fc71869094b8abde8cfcf7bd813440db471ac1e7715f7cb0`  
		Last Modified: Wed, 12 Jun 2019 17:19:22 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebae717adca945af2af4110ecee43f157c9531cbc17f3bfc81e544d4cfdc12ca`  
		Last Modified: Wed, 12 Jun 2019 17:19:22 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4107e2fd4478899e0e99faf4c0079363132b14de5f8d104e822a08c0a88d8b`  
		Last Modified: Wed, 12 Jun 2019 17:19:20 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdb139437e498ed2d180635909e9eeb68d902d606660249b0afe87860bb28c65`  
		Last Modified: Wed, 12 Jun 2019 17:19:59 GMT  
		Size: 91.7 MB (91729431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd1a1b88242b029a8a84bf66a35253ae82e3e587d4898b844e593805aa2fe82`  
		Last Modified: Wed, 12 Jun 2019 17:19:20 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce9f981e524e1500cad1f9a2f0405bddc1ab5819119d0ab2159a7616b652fb5`  
		Last Modified: Wed, 12 Jun 2019 17:19:20 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a792b47a4f3f8433201b26b0ce3b3150f8784c02b8b48120c317982e4eba1411`  
		Last Modified: Wed, 12 Jun 2019 17:19:20 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - windows version 10.0.17134.829; amd64

```console
$ docker pull mongo@sha256:3c9905914eb338fe82ef9ab80cc2f61f80f1eaa6fdcdc0035f8651fe99811958
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2794970256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a516fb883b5ba5c4edacdf0aee72b55114ff4ecd987ccd4c59023671f05932a2`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 16:24:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Jun 2019 16:53:28 GMT
ENV MONGO_VERSION=4.1.13
# Wed, 12 Jun 2019 16:53:30 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.13-signed.msi
# Wed, 12 Jun 2019 16:53:31 GMT
ENV MONGO_DOWNLOAD_SHA256=682c5913d551d3508cb3446fe4929ae97552b5a344469855b58c9473f4f58dd6
# Wed, 12 Jun 2019 17:12:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 17:12:48 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Jun 2019 17:12:49 GMT
EXPOSE 27017
# Wed, 12 Jun 2019 17:12:51 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:076b435f3942cf91d0426105dffd7d0bde44033a5dc272f9f96d6322a9c22972`  
		Last Modified: Wed, 12 Jun 2019 17:16:06 GMT  
		Size: 1.1 KB (1148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c14d217ad5fe54c2e2644298ff0a0a52e2a9c4d73d686a23f0a5af0004ea826`  
		Last Modified: Wed, 12 Jun 2019 17:20:24 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a408475ff5867bcc00ebb42fc5f8f55fb3b393c894fc349676e4ebc655d9fa99`  
		Last Modified: Wed, 12 Jun 2019 17:20:24 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c53d5b4cbcf4743ff4a833b4735e469e9278e70005ada7d1f3b3a278e80483dc`  
		Last Modified: Wed, 12 Jun 2019 17:20:22 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0157ea4ea870b920cec42dc66f35358bef5ea9ca0785d3478f86435635160011`  
		Last Modified: Wed, 12 Jun 2019 17:23:13 GMT  
		Size: 486.8 MB (486755378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b47e7cb342739ccc57c0c357b7a07aa3fc6b06e022eb23e421b80149b5dc6d6`  
		Last Modified: Wed, 12 Jun 2019 17:20:22 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bce0c3b008dcf1e0c32a6d0f449de9bd4e0666929df9e476dd6762e141d36cd`  
		Last Modified: Wed, 12 Jun 2019 17:20:22 GMT  
		Size: 1.1 KB (1143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f84c8846fb68d6c8128cc8da00f9861fc62c2252fbd9ea214f9d05320f01681`  
		Last Modified: Wed, 12 Jun 2019 17:20:22 GMT  
		Size: 1.1 KB (1142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
