## `mongo:3-stretch`

```console
$ docker pull mongo@sha256:12fa374719fcd14a94e431fa7350d752fe5d3691d727ade9ae18c3f87af91d53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3-stretch` - linux; amd64

```console
$ docker pull mongo@sha256:090a02b83226f097a2130a7544a05caf9f5e964baf24404aab298ca337418112
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.2 MB (128198082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae8036b60af2fbb5c38fbe9618f9159e34fbb9d4ccbe68c640bc899df706a067`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 00:57:02 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 27 Dec 2018 23:26:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	; 	if ! command -v ps > /dev/null; then 		apt-get install -y --no-install-recommends procps; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 27 Dec 2018 23:26:21 GMT
ENV GOSU_VERSION=1.10
# Thu, 27 Dec 2018 23:26:21 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 27 Dec 2018 23:26:35 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	if ! command -v gpg > /dev/null; then 		apt-get install -y --no-install-recommends gnupg dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 27 Dec 2018 23:26:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 27 Dec 2018 23:26:36 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Thu, 27 Dec 2018 23:26:39 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 27 Dec 2018 23:26:39 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 27 Dec 2018 23:26:39 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 27 Dec 2018 23:26:39 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 27 Dec 2018 23:26:40 GMT
ENV MONGO_MAJOR=3.6
# Thu, 27 Dec 2018 23:26:40 GMT
ENV MONGO_VERSION=3.6.9
# Thu, 27 Dec 2018 23:26:40 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian stretch/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 27 Dec 2018 23:26:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 27 Dec 2018 23:26:55 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 27 Dec 2018 23:26:55 GMT
VOLUME [/data/db /data/configdb]
# Thu, 27 Dec 2018 23:26:55 GMT
COPY file:aede91d254349505ddabe55af4cf4debc6cc3f959f945a489b8864e520f193e8 in /usr/local/bin/ 
# Thu, 27 Dec 2018 23:26:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 23:26:55 GMT
EXPOSE 27017
# Thu, 27 Dec 2018 23:26:55 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca4c8f620abf418d6849be85724ee79dbef01bfb52bd98c3e0e2f6f1a3e387a`  
		Last Modified: Fri, 16 Nov 2018 01:03:48 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d61311178eebd3519f3e608246c420576ca5bb2a8490a4250e629bd75de05a0`  
		Last Modified: Thu, 27 Dec 2018 23:29:06 GMT  
		Size: 3.2 MB (3225120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3ade343f9d54dfb9f5fad637ff95a483e374c485c5e425e95fd444b2133187`  
		Last Modified: Thu, 27 Dec 2018 23:29:06 GMT  
		Size: 5.1 MB (5057095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18290c300a4c8f1be68153fa4777c2bd0d38b3fe72bff48c952a946fb042f64e`  
		Last Modified: Thu, 27 Dec 2018 23:29:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60b5019c9fd66ec9b35b50f23aa116528e3cc52e393d9cd6dccd4597cc1351f`  
		Last Modified: Thu, 27 Dec 2018 23:29:04 GMT  
		Size: 2.0 KB (2000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc3028d949fe14228949bb697fe8931630227b98ba2ea3e49c57c0fa13ccd6c`  
		Last Modified: Thu, 27 Dec 2018 23:29:04 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0588ea96f129f65d8df6f1f5829361cd346897b39eeb731a4cd19ce3078e48d8`  
		Last Modified: Thu, 27 Dec 2018 23:29:22 GMT  
		Size: 97.4 MB (97421561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a06153e66f918dc02a6eb2e24103ff47f65dd8dbe45b91ccfe00b278a79c89`  
		Last Modified: Thu, 27 Dec 2018 23:29:04 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ec47af42f0d042f99be1b5299af416661ed31972039412fbfa759c4016cfdb`  
		Last Modified: Thu, 27 Dec 2018 23:29:04 GMT  
		Size: 3.8 KB (3801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
