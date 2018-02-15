## `mongo:unstable`

```console
$ docker pull mongo@sha256:76a236a7509c0a2ff566ad805492fde509b6c54eef42d2399a2cbebd5a0f13c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:unstable` - linux; amd64

```console
$ docker pull mongo@sha256:3d8624fcd0f0e374dff419dcab8c60ffa457194574f5b688cd2ab113d211bdd7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.4 MB (130403637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2a6f3858ab78576d42a7767248be3a9f4b63ae4897eccfb2c2397706be36a52`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 04:40:16 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 15 Feb 2018 04:40:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 04:40:39 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 04:40:39 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 15 Feb 2018 04:40:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 15 Feb 2018 04:40:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 04:59:09 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Thu, 15 Feb 2018 04:59:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 04:59:12 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Thu, 15 Feb 2018 04:59:12 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:59:12 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:59:13 GMT
ENV MONGO_MAJOR=3.7
# Thu, 15 Feb 2018 04:59:13 GMT
ENV MONGO_VERSION=3.7.1
# Thu, 15 Feb 2018 04:59:14 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 15 Feb 2018 04:59:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 15 Feb 2018 04:59:38 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 15 Feb 2018 04:59:38 GMT
VOLUME [/data/db /data/configdb]
# Thu, 15 Feb 2018 04:59:38 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Thu, 15 Feb 2018 04:59:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 04:59:39 GMT
EXPOSE 27017/tcp
# Thu, 15 Feb 2018 04:59:39 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb958661291ed53c5b30e758d596c775498893c1269803254b5664e6a6c3bdf`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfa71d101a9723669f0a8b39eba83f6bf5ef357d02d3a4fbf42be5ad1b27040`  
		Last Modified: Thu, 15 Feb 2018 05:16:03 GMT  
		Size: 2.4 MB (2397830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a286579fc2d57ec8df877bf657b1b69b11e9c3aa456e5e72d1363c037a76c5`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 816.6 KB (816644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9441b8e1ae369520d560c7d47299705f2520b8736c5f8959ce6248a8e6a0618d`  
		Last Modified: Thu, 15 Feb 2018 05:16:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e21bf5abd94633c72a5644a41584767637e3fa08b72379839a1636b577c6b39e`  
		Last Modified: Thu, 15 Feb 2018 05:48:46 GMT  
		Size: 1.4 KB (1442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ab4a7de225ce6b1a47c230fb28818a6664f8ba7d9202231a39afb4e7d9705`  
		Last Modified: Thu, 15 Feb 2018 05:48:46 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06da0be5f3da02938b41fb57452af8e69efa536e4fd10e442c7dc44398430471`  
		Last Modified: Thu, 15 Feb 2018 05:49:07 GMT  
		Size: 97.1 MB (97059051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b115e7d6a1d6860bc60c61741daeb65af7314341ffce69798862837871a54444`  
		Last Modified: Thu, 15 Feb 2018 05:48:46 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca007cfac2831b238c8d747fa230d1ec046b09065d6779abc4fdf8efb8d0337`  
		Last Modified: Thu, 15 Feb 2018 05:48:46 GMT  
		Size: 3.7 KB (3716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
