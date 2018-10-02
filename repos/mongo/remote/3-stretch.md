## `mongo:3-stretch`

```console
$ docker pull mongo@sha256:35e84a1d1579f4c9fc8835bc93c1cc84e2f116a7cb6bb46058ac031d6e065295
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3-stretch` - linux; amd64

```console
$ docker pull mongo@sha256:acfc47f4eab2acbe5a9855010c28c309b8126bfc50796c4eb29790e880436c9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.0 MB (128039526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee5fc83ef63f9a678c12aa54c0482de190ab560680a3c0685a1be96f75e1d535`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Mon, 10 Sep 2018 22:22:26 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 10 Sep 2018 22:22:51 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		gnupg dirmngr 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 10 Sep 2018 22:22:52 GMT
ENV GOSU_VERSION=1.10
# Mon, 10 Sep 2018 22:22:52 GMT
ENV JSYAML_VERSION=3.10.0
# Mon, 10 Sep 2018 22:23:00 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Mon, 10 Sep 2018 22:23:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 10 Sep 2018 22:23:02 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Mon, 10 Sep 2018 22:23:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	gpgconf --kill all; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 10 Sep 2018 22:23:05 GMT
ARG MONGO_PACKAGE=mongodb-org
# Mon, 10 Sep 2018 22:23:09 GMT
ARG MONGO_REPO=repo.mongodb.org
# Mon, 10 Sep 2018 22:23:09 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Mon, 10 Sep 2018 22:23:09 GMT
ENV MONGO_MAJOR=3.6
# Thu, 20 Sep 2018 20:24:58 GMT
ENV MONGO_VERSION=3.6.8
# Thu, 20 Sep 2018 20:24:58 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian stretch/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 20 Sep 2018 20:25:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 20 Sep 2018 20:25:18 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 20 Sep 2018 20:25:18 GMT
VOLUME [/data/db /data/configdb]
# Tue, 02 Oct 2018 17:32:07 GMT
COPY file:60abb511d646e0b8b4668acde625346e0976c8ff820e8efa7df9fdb3ed11cab3 in /usr/local/bin/ 
# Tue, 02 Oct 2018 17:32:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 02 Oct 2018 17:32:07 GMT
EXPOSE 27017/tcp
# Tue, 02 Oct 2018 17:32:08 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea0d89f82e872c5ce519eaca009ed275bce144beaf2f3173fbbef8742856ff5`  
		Last Modified: Mon, 10 Sep 2018 22:23:58 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d97c58720bef8dc2e40108e3d555fbb5ac12b07200c04fca3929915afa9f0c31`  
		Last Modified: Mon, 10 Sep 2018 22:24:00 GMT  
		Size: 7.5 MB (7481999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6bb1bae15f41292589b9df0dcf46f282cda3020bbe335c2ab9914e6b9c338f`  
		Last Modified: Mon, 10 Sep 2018 22:23:58 GMT  
		Size: 809.2 KB (809163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23dff40214af34bd8fdb5f6e67257da0bd6c1065f2389d519409f5766a511a9`  
		Last Modified: Mon, 10 Sep 2018 22:23:57 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ccae196e47fd44adab091147004c71d4a407c860fd0c3c67955258686581b18`  
		Last Modified: Mon, 10 Sep 2018 22:23:56 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9e62932ff1671cdb2625da3ff28d0349f2694708a4a79168bd9f75a787078b`  
		Last Modified: Thu, 20 Sep 2018 20:26:48 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec4bea9181718b82cd4ab0b49f5a1158681f5192ba96e701ecae8b641887eafb`  
		Last Modified: Thu, 20 Sep 2018 20:27:12 GMT  
		Size: 97.3 MB (97255007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3faf18351b5d29d05d33b8c1f2e19590ca7861a805d89062285ae23e5b4f5181`  
		Last Modified: Thu, 20 Sep 2018 20:26:48 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3fc75f3a4ace8a74b828520c6267595a1221b49e8413648c6d06e1675b7557`  
		Last Modified: Tue, 02 Oct 2018 17:33:45 GMT  
		Size: 3.7 KB (3731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
