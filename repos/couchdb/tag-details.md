<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchdb`

-	[`couchdb:2`](#couchdb2)
-	[`couchdb:2.2`](#couchdb22)
-	[`couchdb:2.2.0`](#couchdb220)
-	[`couchdb:latest`](#couchdblatest)

## `couchdb:2`

```console
$ docker pull couchdb@sha256:3e48f270827f6ef61ef04305ff99704f697ee30c78dbff33e4ae1607f0669df7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2` - linux; amd64

```console
$ docker pull couchdb@sha256:903ec257ef3c5bf08a06528c11ce58cc7b1ad6c387ce79a1a38672309241a3da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.3 MB (112322505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54211d9244d7d651fa0e01667d9373d310114427277555290710223e6bf93a9d`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Wed, 08 Aug 2018 22:19:59 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Wed, 08 Aug 2018 22:20:00 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Wed, 08 Aug 2018 22:20:44 GMT
RUN apt-get update -y && apt-get install -y         apt-transport-https         ca-certificates         curl         dirmngr         gnupg         libicu57         libssl1.1         openssl         python     && echo "deb https://apache.bintray.com/couchdb-deb stretch main"         | tee /etc/apt/sources.list.d/couchdb.list     && cat /etc/apt/sources.list.d/couchdb.list     && for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys 8756C4F765C9AC3CB6B85D62379CE192D401AB61 && break || : ;         done     && gpg -a --export 8756C4F765C9AC3CB6B85D62379CE192D401AB61 > /etc/apt/trusted.gpg.d/couchdb.gpg.asc     && apt-get update -y && apt-get install -y --no-install-recommends couch-libmozjs185-1.0     && rm -rf /var/lib/apt/lists/*
# Wed, 08 Aug 2018 22:20:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 Aug 2018 22:20:45 GMT
ENV TINI_VERSION=0.16.1
# Wed, 08 Aug 2018 22:21:02 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true;     	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini --version; 		apt-get purge -y --auto-remove wget
# Wed, 08 Aug 2018 22:21:02 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B   29E4F38113DF707D722A6EF91FE9AF73118F1A7C   2EC788AE3F239FA13E82D215CDE711289384AE37
# Wed, 08 Aug 2018 22:21:08 GMT
RUN set -xe     && for key in $GPG_KEYS; do         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys "$key" && break || : ;         done;     done
# Wed, 08 Aug 2018 22:21:08 GMT
ENV COUCHDB_VERSION=2.2.0
# Wed, 08 Aug 2018 22:23:16 GMT
RUN buildDeps='         apt-transport-https         build-essential         couch-libmozjs185-dev         erlang-dev         erlang-nox         erlang-reltool         libcurl4-openssl-dev         libicu-dev         make         libssl-dev     '     && apt-get update -y -qq && apt-get install -y --no-install-recommends $buildDeps     && cd /usr/src && mkdir couchdb     && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz     && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc     && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz     && tar -xzf couchdb.tar.gz -C couchdb --strip-components=1     && cd couchdb     && ./configure     && make release     && mv /usr/src/couchdb/rel/couchdb /opt/     && apt-get purge -y --auto-remove $buildDeps     && rm -rf /var/lib/apt/lists/* /usr/src/couchdb*     && mkdir /opt/couchdb/data     && chown -R couchdb:couchdb /opt/couchdb
# Wed, 08 Aug 2018 22:23:27 GMT
COPY file:685eafac1271ddd108d5f96fc015621edb77d0f0eb84aa212decbca6bbc0ce7d in /opt/couchdb/etc/default.d/ 
# Wed, 08 Aug 2018 22:23:27 GMT
COPY file:92f7c74ebcdab3f422f19b237777e707346b0b921cecac100009f5e1e9918e1e in /opt/couchdb/etc/ 
# Wed, 08 Aug 2018 22:23:28 GMT
COPY file:0e908f7191b7d800707344317fb9b373883834ca37ea3d666670daae2225bb7f in / 
# Wed, 08 Aug 2018 22:23:29 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/default.d/ /opt/couchdb/etc/vm.args
# Wed, 08 Aug 2018 22:23:29 GMT
WORKDIR /opt/couchdb
# Wed, 08 Aug 2018 22:23:29 GMT
EXPOSE 4369/tcp 5984/tcp 9100/tcp
# Wed, 08 Aug 2018 22:23:30 GMT
VOLUME [/opt/couchdb/data]
# Wed, 08 Aug 2018 22:23:30 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 08 Aug 2018 22:23:30 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e420d6ae8730ece1fa4887976f85f3ed76fac9edd875e24f40d51796d802b9eb`  
		Last Modified: Wed, 08 Aug 2018 22:24:16 GMT  
		Size: 3.4 KB (3414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed0fc4ef5f90c53ced82021f3453f723e47a86e5faeaf830419615321e90790`  
		Last Modified: Wed, 08 Aug 2018 22:24:27 GMT  
		Size: 38.9 MB (38888606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6734fea9f08773d2ef2ef40c6b9547d88159cb0b0b23c0e164bf450453719822`  
		Last Modified: Wed, 08 Aug 2018 22:24:16 GMT  
		Size: 820.1 KB (820110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df286a182c7776d8468c2e22d9c1f5d237e1951c5eee5ea56d1c4c7404ed8807`  
		Last Modified: Wed, 08 Aug 2018 22:24:15 GMT  
		Size: 530.2 KB (530198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf2f648d482cf3f50d99a617ccf8eea9aacc75361066f60e0f86a9dec21d6f41`  
		Last Modified: Wed, 08 Aug 2018 22:24:18 GMT  
		Size: 26.8 MB (26766484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a33a76138ce15ae46e36152228e98b772f45d21892e25fedb17e593ea9445bc`  
		Last Modified: Wed, 08 Aug 2018 22:24:13 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4452c2c59c846956ad1ba0c19f123978598dfabd902aa697cb22919eade781`  
		Last Modified: Wed, 08 Aug 2018 22:24:12 GMT  
		Size: 766.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026b3c3bcb9c16b4a0c97acd75c66f6736f7639f9e87f86476e79ca540a944d0`  
		Last Modified: Wed, 08 Aug 2018 22:24:12 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f48e39c3971c30ecdfb61712c6919c1f62b5fa5bdd25bf06f13ac86224eeed4a`  
		Last Modified: Wed, 08 Aug 2018 22:24:13 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:2.2`

```console
$ docker pull couchdb@sha256:3e48f270827f6ef61ef04305ff99704f697ee30c78dbff33e4ae1607f0669df7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2.2` - linux; amd64

```console
$ docker pull couchdb@sha256:903ec257ef3c5bf08a06528c11ce58cc7b1ad6c387ce79a1a38672309241a3da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.3 MB (112322505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54211d9244d7d651fa0e01667d9373d310114427277555290710223e6bf93a9d`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Wed, 08 Aug 2018 22:19:59 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Wed, 08 Aug 2018 22:20:00 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Wed, 08 Aug 2018 22:20:44 GMT
RUN apt-get update -y && apt-get install -y         apt-transport-https         ca-certificates         curl         dirmngr         gnupg         libicu57         libssl1.1         openssl         python     && echo "deb https://apache.bintray.com/couchdb-deb stretch main"         | tee /etc/apt/sources.list.d/couchdb.list     && cat /etc/apt/sources.list.d/couchdb.list     && for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys 8756C4F765C9AC3CB6B85D62379CE192D401AB61 && break || : ;         done     && gpg -a --export 8756C4F765C9AC3CB6B85D62379CE192D401AB61 > /etc/apt/trusted.gpg.d/couchdb.gpg.asc     && apt-get update -y && apt-get install -y --no-install-recommends couch-libmozjs185-1.0     && rm -rf /var/lib/apt/lists/*
# Wed, 08 Aug 2018 22:20:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 Aug 2018 22:20:45 GMT
ENV TINI_VERSION=0.16.1
# Wed, 08 Aug 2018 22:21:02 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true;     	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini --version; 		apt-get purge -y --auto-remove wget
# Wed, 08 Aug 2018 22:21:02 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B   29E4F38113DF707D722A6EF91FE9AF73118F1A7C   2EC788AE3F239FA13E82D215CDE711289384AE37
# Wed, 08 Aug 2018 22:21:08 GMT
RUN set -xe     && for key in $GPG_KEYS; do         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys "$key" && break || : ;         done;     done
# Wed, 08 Aug 2018 22:21:08 GMT
ENV COUCHDB_VERSION=2.2.0
# Wed, 08 Aug 2018 22:23:16 GMT
RUN buildDeps='         apt-transport-https         build-essential         couch-libmozjs185-dev         erlang-dev         erlang-nox         erlang-reltool         libcurl4-openssl-dev         libicu-dev         make         libssl-dev     '     && apt-get update -y -qq && apt-get install -y --no-install-recommends $buildDeps     && cd /usr/src && mkdir couchdb     && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz     && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc     && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz     && tar -xzf couchdb.tar.gz -C couchdb --strip-components=1     && cd couchdb     && ./configure     && make release     && mv /usr/src/couchdb/rel/couchdb /opt/     && apt-get purge -y --auto-remove $buildDeps     && rm -rf /var/lib/apt/lists/* /usr/src/couchdb*     && mkdir /opt/couchdb/data     && chown -R couchdb:couchdb /opt/couchdb
# Wed, 08 Aug 2018 22:23:27 GMT
COPY file:685eafac1271ddd108d5f96fc015621edb77d0f0eb84aa212decbca6bbc0ce7d in /opt/couchdb/etc/default.d/ 
# Wed, 08 Aug 2018 22:23:27 GMT
COPY file:92f7c74ebcdab3f422f19b237777e707346b0b921cecac100009f5e1e9918e1e in /opt/couchdb/etc/ 
# Wed, 08 Aug 2018 22:23:28 GMT
COPY file:0e908f7191b7d800707344317fb9b373883834ca37ea3d666670daae2225bb7f in / 
# Wed, 08 Aug 2018 22:23:29 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/default.d/ /opt/couchdb/etc/vm.args
# Wed, 08 Aug 2018 22:23:29 GMT
WORKDIR /opt/couchdb
# Wed, 08 Aug 2018 22:23:29 GMT
EXPOSE 4369/tcp 5984/tcp 9100/tcp
# Wed, 08 Aug 2018 22:23:30 GMT
VOLUME [/opt/couchdb/data]
# Wed, 08 Aug 2018 22:23:30 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 08 Aug 2018 22:23:30 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e420d6ae8730ece1fa4887976f85f3ed76fac9edd875e24f40d51796d802b9eb`  
		Last Modified: Wed, 08 Aug 2018 22:24:16 GMT  
		Size: 3.4 KB (3414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed0fc4ef5f90c53ced82021f3453f723e47a86e5faeaf830419615321e90790`  
		Last Modified: Wed, 08 Aug 2018 22:24:27 GMT  
		Size: 38.9 MB (38888606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6734fea9f08773d2ef2ef40c6b9547d88159cb0b0b23c0e164bf450453719822`  
		Last Modified: Wed, 08 Aug 2018 22:24:16 GMT  
		Size: 820.1 KB (820110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df286a182c7776d8468c2e22d9c1f5d237e1951c5eee5ea56d1c4c7404ed8807`  
		Last Modified: Wed, 08 Aug 2018 22:24:15 GMT  
		Size: 530.2 KB (530198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf2f648d482cf3f50d99a617ccf8eea9aacc75361066f60e0f86a9dec21d6f41`  
		Last Modified: Wed, 08 Aug 2018 22:24:18 GMT  
		Size: 26.8 MB (26766484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a33a76138ce15ae46e36152228e98b772f45d21892e25fedb17e593ea9445bc`  
		Last Modified: Wed, 08 Aug 2018 22:24:13 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4452c2c59c846956ad1ba0c19f123978598dfabd902aa697cb22919eade781`  
		Last Modified: Wed, 08 Aug 2018 22:24:12 GMT  
		Size: 766.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026b3c3bcb9c16b4a0c97acd75c66f6736f7639f9e87f86476e79ca540a944d0`  
		Last Modified: Wed, 08 Aug 2018 22:24:12 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f48e39c3971c30ecdfb61712c6919c1f62b5fa5bdd25bf06f13ac86224eeed4a`  
		Last Modified: Wed, 08 Aug 2018 22:24:13 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:2.2.0`

```console
$ docker pull couchdb@sha256:3e48f270827f6ef61ef04305ff99704f697ee30c78dbff33e4ae1607f0669df7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2.2.0` - linux; amd64

```console
$ docker pull couchdb@sha256:903ec257ef3c5bf08a06528c11ce58cc7b1ad6c387ce79a1a38672309241a3da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.3 MB (112322505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54211d9244d7d651fa0e01667d9373d310114427277555290710223e6bf93a9d`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Wed, 08 Aug 2018 22:19:59 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Wed, 08 Aug 2018 22:20:00 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Wed, 08 Aug 2018 22:20:44 GMT
RUN apt-get update -y && apt-get install -y         apt-transport-https         ca-certificates         curl         dirmngr         gnupg         libicu57         libssl1.1         openssl         python     && echo "deb https://apache.bintray.com/couchdb-deb stretch main"         | tee /etc/apt/sources.list.d/couchdb.list     && cat /etc/apt/sources.list.d/couchdb.list     && for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys 8756C4F765C9AC3CB6B85D62379CE192D401AB61 && break || : ;         done     && gpg -a --export 8756C4F765C9AC3CB6B85D62379CE192D401AB61 > /etc/apt/trusted.gpg.d/couchdb.gpg.asc     && apt-get update -y && apt-get install -y --no-install-recommends couch-libmozjs185-1.0     && rm -rf /var/lib/apt/lists/*
# Wed, 08 Aug 2018 22:20:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 Aug 2018 22:20:45 GMT
ENV TINI_VERSION=0.16.1
# Wed, 08 Aug 2018 22:21:02 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true;     	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini --version; 		apt-get purge -y --auto-remove wget
# Wed, 08 Aug 2018 22:21:02 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B   29E4F38113DF707D722A6EF91FE9AF73118F1A7C   2EC788AE3F239FA13E82D215CDE711289384AE37
# Wed, 08 Aug 2018 22:21:08 GMT
RUN set -xe     && for key in $GPG_KEYS; do         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys "$key" && break || : ;         done;     done
# Wed, 08 Aug 2018 22:21:08 GMT
ENV COUCHDB_VERSION=2.2.0
# Wed, 08 Aug 2018 22:23:16 GMT
RUN buildDeps='         apt-transport-https         build-essential         couch-libmozjs185-dev         erlang-dev         erlang-nox         erlang-reltool         libcurl4-openssl-dev         libicu-dev         make         libssl-dev     '     && apt-get update -y -qq && apt-get install -y --no-install-recommends $buildDeps     && cd /usr/src && mkdir couchdb     && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz     && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc     && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz     && tar -xzf couchdb.tar.gz -C couchdb --strip-components=1     && cd couchdb     && ./configure     && make release     && mv /usr/src/couchdb/rel/couchdb /opt/     && apt-get purge -y --auto-remove $buildDeps     && rm -rf /var/lib/apt/lists/* /usr/src/couchdb*     && mkdir /opt/couchdb/data     && chown -R couchdb:couchdb /opt/couchdb
# Wed, 08 Aug 2018 22:23:27 GMT
COPY file:685eafac1271ddd108d5f96fc015621edb77d0f0eb84aa212decbca6bbc0ce7d in /opt/couchdb/etc/default.d/ 
# Wed, 08 Aug 2018 22:23:27 GMT
COPY file:92f7c74ebcdab3f422f19b237777e707346b0b921cecac100009f5e1e9918e1e in /opt/couchdb/etc/ 
# Wed, 08 Aug 2018 22:23:28 GMT
COPY file:0e908f7191b7d800707344317fb9b373883834ca37ea3d666670daae2225bb7f in / 
# Wed, 08 Aug 2018 22:23:29 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/default.d/ /opt/couchdb/etc/vm.args
# Wed, 08 Aug 2018 22:23:29 GMT
WORKDIR /opt/couchdb
# Wed, 08 Aug 2018 22:23:29 GMT
EXPOSE 4369/tcp 5984/tcp 9100/tcp
# Wed, 08 Aug 2018 22:23:30 GMT
VOLUME [/opt/couchdb/data]
# Wed, 08 Aug 2018 22:23:30 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 08 Aug 2018 22:23:30 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e420d6ae8730ece1fa4887976f85f3ed76fac9edd875e24f40d51796d802b9eb`  
		Last Modified: Wed, 08 Aug 2018 22:24:16 GMT  
		Size: 3.4 KB (3414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed0fc4ef5f90c53ced82021f3453f723e47a86e5faeaf830419615321e90790`  
		Last Modified: Wed, 08 Aug 2018 22:24:27 GMT  
		Size: 38.9 MB (38888606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6734fea9f08773d2ef2ef40c6b9547d88159cb0b0b23c0e164bf450453719822`  
		Last Modified: Wed, 08 Aug 2018 22:24:16 GMT  
		Size: 820.1 KB (820110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df286a182c7776d8468c2e22d9c1f5d237e1951c5eee5ea56d1c4c7404ed8807`  
		Last Modified: Wed, 08 Aug 2018 22:24:15 GMT  
		Size: 530.2 KB (530198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf2f648d482cf3f50d99a617ccf8eea9aacc75361066f60e0f86a9dec21d6f41`  
		Last Modified: Wed, 08 Aug 2018 22:24:18 GMT  
		Size: 26.8 MB (26766484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a33a76138ce15ae46e36152228e98b772f45d21892e25fedb17e593ea9445bc`  
		Last Modified: Wed, 08 Aug 2018 22:24:13 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4452c2c59c846956ad1ba0c19f123978598dfabd902aa697cb22919eade781`  
		Last Modified: Wed, 08 Aug 2018 22:24:12 GMT  
		Size: 766.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026b3c3bcb9c16b4a0c97acd75c66f6736f7639f9e87f86476e79ca540a944d0`  
		Last Modified: Wed, 08 Aug 2018 22:24:12 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f48e39c3971c30ecdfb61712c6919c1f62b5fa5bdd25bf06f13ac86224eeed4a`  
		Last Modified: Wed, 08 Aug 2018 22:24:13 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:latest`

```console
$ docker pull couchdb@sha256:3e48f270827f6ef61ef04305ff99704f697ee30c78dbff33e4ae1607f0669df7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:latest` - linux; amd64

```console
$ docker pull couchdb@sha256:903ec257ef3c5bf08a06528c11ce58cc7b1ad6c387ce79a1a38672309241a3da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.3 MB (112322505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54211d9244d7d651fa0e01667d9373d310114427277555290710223e6bf93a9d`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Wed, 08 Aug 2018 22:19:59 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Wed, 08 Aug 2018 22:20:00 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Wed, 08 Aug 2018 22:20:44 GMT
RUN apt-get update -y && apt-get install -y         apt-transport-https         ca-certificates         curl         dirmngr         gnupg         libicu57         libssl1.1         openssl         python     && echo "deb https://apache.bintray.com/couchdb-deb stretch main"         | tee /etc/apt/sources.list.d/couchdb.list     && cat /etc/apt/sources.list.d/couchdb.list     && for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys 8756C4F765C9AC3CB6B85D62379CE192D401AB61 && break || : ;         done     && gpg -a --export 8756C4F765C9AC3CB6B85D62379CE192D401AB61 > /etc/apt/trusted.gpg.d/couchdb.gpg.asc     && apt-get update -y && apt-get install -y --no-install-recommends couch-libmozjs185-1.0     && rm -rf /var/lib/apt/lists/*
# Wed, 08 Aug 2018 22:20:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 Aug 2018 22:20:45 GMT
ENV TINI_VERSION=0.16.1
# Wed, 08 Aug 2018 22:21:02 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true;     	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini --version; 		apt-get purge -y --auto-remove wget
# Wed, 08 Aug 2018 22:21:02 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B   29E4F38113DF707D722A6EF91FE9AF73118F1A7C   2EC788AE3F239FA13E82D215CDE711289384AE37
# Wed, 08 Aug 2018 22:21:08 GMT
RUN set -xe     && for key in $GPG_KEYS; do         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys "$key" && break || : ;         done;     done
# Wed, 08 Aug 2018 22:21:08 GMT
ENV COUCHDB_VERSION=2.2.0
# Wed, 08 Aug 2018 22:23:16 GMT
RUN buildDeps='         apt-transport-https         build-essential         couch-libmozjs185-dev         erlang-dev         erlang-nox         erlang-reltool         libcurl4-openssl-dev         libicu-dev         make         libssl-dev     '     && apt-get update -y -qq && apt-get install -y --no-install-recommends $buildDeps     && cd /usr/src && mkdir couchdb     && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz     && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc     && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz     && tar -xzf couchdb.tar.gz -C couchdb --strip-components=1     && cd couchdb     && ./configure     && make release     && mv /usr/src/couchdb/rel/couchdb /opt/     && apt-get purge -y --auto-remove $buildDeps     && rm -rf /var/lib/apt/lists/* /usr/src/couchdb*     && mkdir /opt/couchdb/data     && chown -R couchdb:couchdb /opt/couchdb
# Wed, 08 Aug 2018 22:23:27 GMT
COPY file:685eafac1271ddd108d5f96fc015621edb77d0f0eb84aa212decbca6bbc0ce7d in /opt/couchdb/etc/default.d/ 
# Wed, 08 Aug 2018 22:23:27 GMT
COPY file:92f7c74ebcdab3f422f19b237777e707346b0b921cecac100009f5e1e9918e1e in /opt/couchdb/etc/ 
# Wed, 08 Aug 2018 22:23:28 GMT
COPY file:0e908f7191b7d800707344317fb9b373883834ca37ea3d666670daae2225bb7f in / 
# Wed, 08 Aug 2018 22:23:29 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/default.d/ /opt/couchdb/etc/vm.args
# Wed, 08 Aug 2018 22:23:29 GMT
WORKDIR /opt/couchdb
# Wed, 08 Aug 2018 22:23:29 GMT
EXPOSE 4369/tcp 5984/tcp 9100/tcp
# Wed, 08 Aug 2018 22:23:30 GMT
VOLUME [/opt/couchdb/data]
# Wed, 08 Aug 2018 22:23:30 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 08 Aug 2018 22:23:30 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e420d6ae8730ece1fa4887976f85f3ed76fac9edd875e24f40d51796d802b9eb`  
		Last Modified: Wed, 08 Aug 2018 22:24:16 GMT  
		Size: 3.4 KB (3414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed0fc4ef5f90c53ced82021f3453f723e47a86e5faeaf830419615321e90790`  
		Last Modified: Wed, 08 Aug 2018 22:24:27 GMT  
		Size: 38.9 MB (38888606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6734fea9f08773d2ef2ef40c6b9547d88159cb0b0b23c0e164bf450453719822`  
		Last Modified: Wed, 08 Aug 2018 22:24:16 GMT  
		Size: 820.1 KB (820110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df286a182c7776d8468c2e22d9c1f5d237e1951c5eee5ea56d1c4c7404ed8807`  
		Last Modified: Wed, 08 Aug 2018 22:24:15 GMT  
		Size: 530.2 KB (530198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf2f648d482cf3f50d99a617ccf8eea9aacc75361066f60e0f86a9dec21d6f41`  
		Last Modified: Wed, 08 Aug 2018 22:24:18 GMT  
		Size: 26.8 MB (26766484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a33a76138ce15ae46e36152228e98b772f45d21892e25fedb17e593ea9445bc`  
		Last Modified: Wed, 08 Aug 2018 22:24:13 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4452c2c59c846956ad1ba0c19f123978598dfabd902aa697cb22919eade781`  
		Last Modified: Wed, 08 Aug 2018 22:24:12 GMT  
		Size: 766.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026b3c3bcb9c16b4a0c97acd75c66f6736f7639f9e87f86476e79ca540a944d0`  
		Last Modified: Wed, 08 Aug 2018 22:24:12 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f48e39c3971c30ecdfb61712c6919c1f62b5fa5bdd25bf06f13ac86224eeed4a`  
		Last Modified: Wed, 08 Aug 2018 22:24:13 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
