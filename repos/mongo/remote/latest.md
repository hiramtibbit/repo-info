## `mongo:latest`

```console
$ docker pull mongo@sha256:60554712435e0790cbcaf68fd75373ce0d31f53a787c2b0a78f906c0ff2d759c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

```console
$ docker pull mongo@sha256:d2a3543d1bcfb6208cde0c1e89df39b51731a249d42fb4c1552f72f817e8507d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.1 MB (134127838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea64410733226dfc2589c2bc35a8f93d5d25f0b59bb45f18f7abe55984fe7724`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 19 Oct 2018 00:49:11 GMT
ADD file:01a5c4f2b1dcc8f8aebe00ce8ed6ceda7038abc31d40caf69273240cdd453b84 in / 
# Fri, 19 Oct 2018 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:49:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:49:14 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:52:20 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 19 Oct 2018 01:52:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:52:30 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 01:52:30 GMT
ENV JSYAML_VERSION=3.10.0
# Fri, 19 Oct 2018 01:52:36 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Fri, 19 Oct 2018 01:52:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 01:52:38 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Fri, 19 Oct 2018 01:52:38 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 01:52:39 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 19 Oct 2018 01:52:39 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 19 Oct 2018 01:52:39 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 19 Oct 2018 01:52:39 GMT
ENV MONGO_MAJOR=4.0
# Fri, 09 Nov 2018 22:39:44 GMT
ENV MONGO_VERSION=4.0.4
# Fri, 09 Nov 2018 22:39:44 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 09 Nov 2018 22:40:11 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 09 Nov 2018 22:40:12 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 09 Nov 2018 22:40:12 GMT
VOLUME [/data/db /data/configdb]
# Fri, 09 Nov 2018 22:40:13 GMT
COPY file:60abb511d646e0b8b4668acde625346e0976c8ff820e8efa7df9fdb3ed11cab3 in /usr/local/bin/ 
# Fri, 09 Nov 2018 22:40:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Nov 2018 22:40:13 GMT
EXPOSE 27017/tcp
# Fri, 09 Nov 2018 22:40:13 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:18d680d616571900d78ee1c8fff0310f2a2afe39c6ed0ba2651ff667af406c3e`  
		Last Modified: Fri, 05 Oct 2018 22:11:59 GMT  
		Size: 43.4 MB (43352848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0addb6fece630456e0ab187b0aa4304d0851ba60576e7f6f9042a97ee908a796`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e58219b215b359fe002f0ca1f416617b75ca9b36cb274c98d7a5f808711179`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6959a66df2ea26a26452ba11f84fb64bb45af90204374862ec71ee59f795e7`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb66a4db707baed22c8a2aa13b77f624be9ce1359953c8833c22d8126efaf7d`  
		Last Modified: Fri, 19 Oct 2018 01:54:24 GMT  
		Size: 2.0 KB (1994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b18fa018e44b557f69a930ac0cc25564ef163c66dc791988f7efa99bd4188e0a`  
		Last Modified: Fri, 19 Oct 2018 01:54:25 GMT  
		Size: 2.9 MB (2945920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0142bcb0dfeb96132e9ec80d507f6789adf524bcff6e62c8f2cd4dba98f891`  
		Last Modified: Fri, 19 Oct 2018 01:54:24 GMT  
		Size: 751.7 KB (751748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db65733de31a71f0fcbab910e6a5f92df9eea63cf2ad1e381504f4b42a9e3c23`  
		Last Modified: Fri, 19 Oct 2018 01:54:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867fe12df2c5ae57d61f9900c5e8f6e8bdf0164845a63dbef8ef7bd5b78939c8`  
		Last Modified: Fri, 19 Oct 2018 01:54:23 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29aa76034f8fc9004d11deaff32abb13841a2c8755b063676b5f700b590459de`  
		Last Modified: Fri, 09 Nov 2018 22:41:57 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e61706e03f24c2df3d3a574dbe03be77d50263f517d7ad680ee4636ec5ad4d`  
		Last Modified: Fri, 09 Nov 2018 22:42:14 GMT  
		Size: 87.1 MB (87068047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ec6a7c0d509ed8a6ad874d29de769376f3cafed47f9cfba5ba25e8c3093f42`  
		Last Modified: Fri, 09 Nov 2018 22:41:57 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c752faaa2e63d51ec39aeb3384ecee51b8953a39870f0ebe05305c33686efe25`  
		Last Modified: Fri, 09 Nov 2018 22:41:57 GMT  
		Size: 3.7 KB (3725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
