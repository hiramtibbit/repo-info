## `mongo:4-bionic`

```console
$ docker pull mongo@sha256:da941f8779a9225d12a9e03c929b10732df4223719b7b59ec7ec227cf91e4b49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:4-bionic` - linux; amd64

```console
$ docker pull mongo@sha256:f1764a070c2e5d4c24275934d4386582df1e035c58cc71b859a963635bab011b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122366275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae5085a13e31fe967861f7408685ee0f3b34e0133687f998aa5385738e985e35`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 22 Aug 2018 17:28:39 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 22 Aug 2018 17:28:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:28:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:28:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:28:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:28:57 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 22:54:13 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 22 Aug 2018 22:55:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		gnupg dirmngr 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 22:55:00 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Aug 2018 22:55:01 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 22 Aug 2018 22:55:14 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 22 Aug 2018 22:55:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 22 Aug 2018 22:55:15 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 22 Aug 2018 22:55:16 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	gpgconf --kill all; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 22 Aug 2018 22:55:17 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 22 Aug 2018 22:55:17 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 22 Aug 2018 22:55:17 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 22 Aug 2018 22:55:17 GMT
ENV MONGO_MAJOR=4.0
# Wed, 22 Aug 2018 22:55:18 GMT
ENV MONGO_VERSION=4.0.1
# Wed, 22 Aug 2018 22:55:19 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu bionic/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 22 Aug 2018 22:55:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 22 Aug 2018 22:55:48 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 22 Aug 2018 22:55:49 GMT
VOLUME [/data/db /data/configdb]
# Wed, 22 Aug 2018 22:55:49 GMT
COPY file:432f09fb61dea3ba52524ce5b165c30e7e96b5b711f3dc56c2c47cf8a79211d3 in /usr/local/bin/ 
# Wed, 22 Aug 2018 22:55:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Aug 2018 22:55:50 GMT
EXPOSE 27017/tcp
# Wed, 22 Aug 2018 22:55:50 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebc019eb4e2bbd192e61bce91038048924216d72dfe6ac3255322caaeb70144`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac0825f7ffbea2ddf119026b0d6c4c453dfa38edb5c2abbe59bdba6ffdb3b9f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b0bb65d1bfb978cd646dcd653164f74b7e8656aa1b3a87657b8d244b56d324`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3b655c7f887451d42e45a04c2d13478171e4d451419bc8cf76c635f509532f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7390dfec61b2668dd019074a86e41f3d8fbdd269329e8060e09c915bbf1b9841`  
		Last Modified: Wed, 22 Aug 2018 23:00:54 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d69d17b8aec7c7b82eb9e4835a46e50f0d5fc2ce28553acdd77f1abc876b25`  
		Last Modified: Wed, 22 Aug 2018 23:00:57 GMT  
		Size: 7.3 MB (7337391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1361c44993d16f9581ea06e61f361c2cafa8147a5e5a6cf1733080118f1951`  
		Last Modified: Wed, 22 Aug 2018 23:00:55 GMT  
		Size: 773.1 KB (773124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4803d25be6fa9ebd428665289ba3a24a09c7c346fa58164471ac63429f31aa5f`  
		Last Modified: Wed, 22 Aug 2018 23:00:54 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d886a5975bd2265f28df3972e5c67d1a3e6b7ce504841b2e4ae2e187aec8ca5b`  
		Last Modified: Wed, 22 Aug 2018 23:00:52 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfada64c4b00703c7304b278ad5505f771cb326a9671f7c30c3922b7626fe15a`  
		Last Modified: Wed, 22 Aug 2018 23:00:52 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40efead10b68ade7c7d976d22b922fc30589d680b5d09db985d36680ccf94b80`  
		Last Modified: Wed, 22 Aug 2018 23:01:24 GMT  
		Size: 82.5 MB (82488564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179020b066d6961148ab9c9c3b1c099b266c6860e3c350350c18693d2216ed54`  
		Last Modified: Wed, 22 Aug 2018 23:00:52 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d442d3a039f1947c0e9cdb6092603edacb5724d9b00294a4d9b29943b2290ce3`  
		Last Modified: Wed, 22 Aug 2018 23:00:52 GMT  
		Size: 3.7 KB (3710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
