## `mongo:3-stretch`

```console
$ docker pull mongo@sha256:820d4d3ba9240968ee94d50b1f99db686447a2e6228cadba25ca122ae42fcf6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3-stretch` - linux; amd64

```console
$ docker pull mongo@sha256:41d4490dc0ed13f62afe82b8a01382c6415e8d6f5dfdd79ae819a8bb2dea7bd6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.5 MB (145534852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3258f72452165172372dd72300b82d79c58f9dcdacedf45e0369c9e3a017ead6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:32:40 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 05 Mar 2019 03:32:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:32:50 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:32:50 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 05 Mar 2019 03:33:00 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 05 Mar 2019 03:33:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Mar 2019 03:33:01 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 05 Mar 2019 03:33:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 03:33:04 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 05 Mar 2019 03:33:04 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 05 Mar 2019 03:33:05 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 05 Mar 2019 03:33:05 GMT
ENV MONGO_MAJOR=3.6
# Tue, 05 Mar 2019 03:33:05 GMT
ENV MONGO_VERSION=3.6.11
# Tue, 05 Mar 2019 03:33:06 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian stretch/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 05 Mar 2019 03:33:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 05 Mar 2019 03:33:23 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 05 Mar 2019 03:33:23 GMT
VOLUME [/data/db /data/configdb]
# Tue, 05 Mar 2019 03:33:23 GMT
COPY file:aede91d254349505ddabe55af4cf4debc6cc3f959f945a489b8864e520f193e8 in /usr/local/bin/ 
# Tue, 05 Mar 2019 03:33:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 03:33:24 GMT
EXPOSE 27017
# Tue, 05 Mar 2019 03:33:24 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83448b21643b08c2422bd861c5715a8c2bb176040cef649884d354855c72d732`  
		Last Modified: Tue, 05 Mar 2019 03:34:13 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dea061159a08c53a64c643b219d1966a857d6f3bd96c38518c4298bffe8305a`  
		Last Modified: Tue, 05 Mar 2019 03:34:14 GMT  
		Size: 3.2 MB (3225447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e98f1e3318466e5389d5f8580f273ba3a159fe9188d61e17cf98079a53019b`  
		Last Modified: Tue, 05 Mar 2019 03:34:14 GMT  
		Size: 5.1 MB (5057200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:019ce9c7359a1f8f727fc9d95204787b9eee1863dd5a474492e603eb1fa147c1`  
		Last Modified: Tue, 05 Mar 2019 03:34:13 GMT  
		Size: 112.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:766651adeb0a7894942f86b277258b49e46d763701f8d805ee05daa3965696ca`  
		Last Modified: Tue, 05 Mar 2019 03:34:12 GMT  
		Size: 2.0 KB (1993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e038b477eb03bc7c2e3d6670bbe06c8a0f7d0d23628daaa1267287e36796c6b`  
		Last Modified: Tue, 05 Mar 2019 03:34:12 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea9c514fbe7d4ee39eb8ab136e0622531c5c67326935f34fb892c8d7a532fd19`  
		Last Modified: Tue, 05 Mar 2019 03:34:32 GMT  
		Size: 114.7 MB (114748151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84ea5e37d9c5349addfad3d236f57fcc829b2aedbc8915276f921b36a2f92328`  
		Last Modified: Tue, 05 Mar 2019 03:34:12 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ba4727e25775f4d693c3014b408025f30afde706c88a0cdc174b50cdf41544`  
		Last Modified: Tue, 05 Mar 2019 03:34:12 GMT  
		Size: 3.8 KB (3803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
