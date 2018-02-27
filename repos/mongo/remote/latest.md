## `mongo:latest`

```console
$ docker pull mongo@sha256:05fd4fd3710a84dcf12e5880a5fc225a245792d2d9b6156722c5f4c0fab74d86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

```console
$ docker pull mongo@sha256:b79128c6f4f10e717ad23a8c88bf60606c1d0cf89847a87c9381445b75a30b13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130528704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43099507792a5214bd452a0eba3482e8da488b0008525578f309f040c2f7704e`
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
# Thu, 15 Feb 2018 04:58:16 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Thu, 15 Feb 2018 04:58:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 04:58:30 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 15 Feb 2018 04:58:30 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:58:31 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:58:31 GMT
ENV MONGO_MAJOR=3.6
# Mon, 26 Feb 2018 23:58:42 GMT
ENV MONGO_VERSION=3.6.3
# Mon, 26 Feb 2018 23:58:43 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 26 Feb 2018 23:59:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 26 Feb 2018 23:59:13 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 26 Feb 2018 23:59:14 GMT
VOLUME [/data/db /data/configdb]
# Mon, 26 Feb 2018 23:59:14 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Mon, 26 Feb 2018 23:59:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Feb 2018 23:59:14 GMT
EXPOSE 27017/tcp
# Mon, 26 Feb 2018 23:59:15 GMT
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
	-	`sha256:0e6fe40bb4bd24bd8f021f7bac8a759da57e233c16d2c9ae2fb7715746e33a05`  
		Last Modified: Thu, 15 Feb 2018 05:31:41 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fca9be9954ebf01cdf383cb6a75dd0deea93ee6dbdedbea8061c15fc3fec1f43`  
		Last Modified: Mon, 26 Feb 2018 23:59:41 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3de1a5bb8230accdab79d4f6e17ca2527f54058abfb044db2943bebc877db7`  
		Last Modified: Mon, 26 Feb 2018 23:59:55 GMT  
		Size: 97.2 MB (97184121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e423513a19e1d24f5e9b69273d006c92d74ddce7034785a79b89bef7eb2732c`  
		Last Modified: Mon, 26 Feb 2018 23:59:40 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fcd12f78f7c18b6753243d85d0478c61180ca71b88f9f7eed977eaaa246a31b`  
		Last Modified: Mon, 26 Feb 2018 23:59:40 GMT  
		Size: 3.7 KB (3714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
