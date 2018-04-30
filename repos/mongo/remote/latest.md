## `mongo:latest`

```console
$ docker pull mongo@sha256:c6d2b2f8c054210db26b492bab81ffab171ee54eb58925fa98fabb4faca3a9cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

```console
$ docker pull mongo@sha256:54fc224fa13069fcd198d26644d7f298fbdd55a0b6011959397ffc2d9c781624
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130640079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14c497d5c758b7b6c57e1e585f26869ddce663c2725f7cc9b9e882b06b9127b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 18:58:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 30 Apr 2018 18:59:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 18:59:13 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 18:59:14 GMT
ENV JSYAML_VERSION=3.10.0
# Mon, 30 Apr 2018 18:59:38 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Mon, 30 Apr 2018 18:59:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 19:18:05 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Mon, 30 Apr 2018 19:18:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 19:18:11 GMT
ARG MONGO_PACKAGE=mongodb-org
# Mon, 30 Apr 2018 19:18:12 GMT
ARG MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:18:12 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:18:12 GMT
ENV MONGO_MAJOR=3.6
# Mon, 30 Apr 2018 19:18:12 GMT
ENV MONGO_VERSION=3.6.4
# Mon, 30 Apr 2018 19:18:13 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 30 Apr 2018 19:18:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 30 Apr 2018 19:18:39 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 30 Apr 2018 19:18:39 GMT
VOLUME [/data/db /data/configdb]
# Mon, 30 Apr 2018 19:18:40 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Mon, 30 Apr 2018 19:18:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 19:18:41 GMT
EXPOSE 27017/tcp
# Mon, 30 Apr 2018 19:18:41 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2ecd7fdbddfcc251ab599e16b502ec10102e84c4e89ca5422ea19fd1cee30`  
		Last Modified: Mon, 30 Apr 2018 19:55:04 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a86da34d0f2d1360deeec92b8b73c9c2df70505c243c676d5407c61eb803f5`  
		Last Modified: Mon, 30 Apr 2018 19:55:05 GMT  
		Size: 2.4 MB (2398014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b1f447e4202f1b47a8d280dee75a7e029a44e8936357df17885b450f6b6760`  
		Last Modified: Mon, 30 Apr 2018 19:55:03 GMT  
		Size: 816.7 KB (816709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e820834b36f2c711e769427f07b84dcd6fbe125de1751a9e7ddeec2a7bdf75`  
		Last Modified: Mon, 30 Apr 2018 19:55:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa34fa64bf4973f1435723ffdd5cd867f25579dfdcccc3d1fae452f79bd9ab7`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63127ea58ee0b859bbc59fe6e7ca7f68f07d4751c5524fed7c163d2b047c51a5`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb46836c59830f9fe909bd4325abc135aa33bb2a57e4830bfd2bc7813375018`  
		Last Modified: Mon, 30 Apr 2018 20:20:31 GMT  
		Size: 97.3 MB (97290333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0abf374ec41d5f79e2b61bf624301e57367baddae95193c298e914db0a8270`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8b13c8fd3831f0e0314a8cb16acbc174fc24828754e266c9c37bf8cbeee07c`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
