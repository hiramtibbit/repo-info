<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchdb`

-	[`couchdb:2`](#couchdb2)
-	[`couchdb:2.2`](#couchdb22)
-	[`couchdb:2.2.0`](#couchdb220)
-	[`couchdb:latest`](#couchdblatest)

## `couchdb:2`

```console
$ docker pull couchdb@sha256:da7747455c268b93d9f20348b31faba986b405d90d0224072bc6a32b70f9945a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2` - linux; amd64

```console
$ docker pull couchdb@sha256:cd682d8fc93976963547c8ca9307f865f5b5e1ebbee6d12c46a9a57d9a103889
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.3 MB (112322973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44b2522e3e4a951855417d999f89c58e607ec92862d810b4c2be3ad569c6a8c1`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 23:01:34 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Tue, 04 Sep 2018 23:01:34 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Tue, 04 Sep 2018 23:01:54 GMT
RUN apt-get update -y && apt-get install -y         apt-transport-https         ca-certificates         curl         dirmngr         gnupg         libicu57         libssl1.1         openssl         python     && echo "deb https://apache.bintray.com/couchdb-deb stretch main"         | tee /etc/apt/sources.list.d/couchdb.list     && cat /etc/apt/sources.list.d/couchdb.list     && for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys 8756C4F765C9AC3CB6B85D62379CE192D401AB61 && break || : ;         done     && gpg -a --export 8756C4F765C9AC3CB6B85D62379CE192D401AB61 > /etc/apt/trusted.gpg.d/couchdb.gpg.asc     && apt-get update -y && apt-get install -y --no-install-recommends couch-libmozjs185-1.0     && rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 23:01:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 04 Sep 2018 23:01:55 GMT
ENV TINI_VERSION=0.16.1
# Tue, 04 Sep 2018 23:02:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true;     	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini --version; 		apt-get purge -y --auto-remove wget
# Tue, 04 Sep 2018 23:02:04 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B   29E4F38113DF707D722A6EF91FE9AF73118F1A7C   2EC788AE3F239FA13E82D215CDE711289384AE37
# Tue, 04 Sep 2018 23:02:09 GMT
RUN set -xe     && for key in $GPG_KEYS; do         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys "$key" && break || : ;         done;     done
# Tue, 04 Sep 2018 23:02:09 GMT
ENV COUCHDB_VERSION=2.2.0
# Tue, 04 Sep 2018 23:03:25 GMT
RUN buildDeps='         apt-transport-https         build-essential         couch-libmozjs185-dev         erlang-dev         erlang-nox         erlang-reltool         libcurl4-openssl-dev         libicu-dev         make         libssl-dev     '     && apt-get update -y -qq && apt-get install -y --no-install-recommends $buildDeps     && cd /usr/src && mkdir couchdb     && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz     && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc     && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz     && tar -xzf couchdb.tar.gz -C couchdb --strip-components=1     && cd couchdb     && ./configure     && make release     && mv /usr/src/couchdb/rel/couchdb /opt/     && apt-get purge -y --auto-remove $buildDeps     && rm -rf /var/lib/apt/lists/* /usr/src/couchdb*     && mkdir /opt/couchdb/data     && chown -R couchdb:couchdb /opt/couchdb
# Tue, 04 Sep 2018 23:03:25 GMT
COPY file:685eafac1271ddd108d5f96fc015621edb77d0f0eb84aa212decbca6bbc0ce7d in /opt/couchdb/etc/default.d/ 
# Tue, 04 Sep 2018 23:03:25 GMT
COPY file:92f7c74ebcdab3f422f19b237777e707346b0b921cecac100009f5e1e9918e1e in /opt/couchdb/etc/ 
# Tue, 04 Sep 2018 23:03:26 GMT
COPY file:0e908f7191b7d800707344317fb9b373883834ca37ea3d666670daae2225bb7f in / 
# Tue, 04 Sep 2018 23:03:26 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/default.d/ /opt/couchdb/etc/vm.args
# Tue, 04 Sep 2018 23:03:26 GMT
WORKDIR /opt/couchdb
# Tue, 04 Sep 2018 23:03:27 GMT
EXPOSE 4369/tcp 5984/tcp 9100/tcp
# Tue, 04 Sep 2018 23:03:27 GMT
VOLUME [/opt/couchdb/data]
# Tue, 04 Sep 2018 23:03:27 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 04 Sep 2018 23:03:27 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2395130c11a5265d8d942d78b2103ad64f928784cebcd7dfe8347544b7248d47`  
		Last Modified: Tue, 04 Sep 2018 23:03:38 GMT  
		Size: 3.4 KB (3412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9047dfbeba5939d346df82f1a7539cac92bfdd1085b668bc96b2b63aa6b12e0f`  
		Last Modified: Tue, 04 Sep 2018 23:03:46 GMT  
		Size: 38.9 MB (38889022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d08aae80b2624ddc2c049b01364f3a79b80008887f7e926d93265130be9192`  
		Last Modified: Tue, 04 Sep 2018 23:03:39 GMT  
		Size: 820.1 KB (820106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91473b21478bf5dcc7646de2b86bc6ec6b545a6bc605a95f69b5fcb1f27d1422`  
		Last Modified: Tue, 04 Sep 2018 23:03:38 GMT  
		Size: 530.2 KB (530190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa85a92c618d4d0825040dc86b18888d3c4c4631eefff023470c57221cac6ca`  
		Last Modified: Tue, 04 Sep 2018 23:03:41 GMT  
		Size: 26.8 MB (26766529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337b2d223a0c3a8ac66ec70c56ad353baf6a35dc5ca40e96a4b73c6ac662e73f`  
		Last Modified: Tue, 04 Sep 2018 23:03:37 GMT  
		Size: 387.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b001e784f643336c6141ade206b352fa9e10abec396dced2669a98e7410d17d1`  
		Last Modified: Tue, 04 Sep 2018 23:03:37 GMT  
		Size: 763.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29bbac4a1df9202445ac7f0db234680ba644eab6fe7bf56bdc421ae52cf1fdfa`  
		Last Modified: Tue, 04 Sep 2018 23:03:37 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43a9b02f564f250195be94090c8fc2d8113ae887db58b60b711ff85b488159c`  
		Last Modified: Tue, 04 Sep 2018 23:03:37 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:2.2`

```console
$ docker pull couchdb@sha256:da7747455c268b93d9f20348b31faba986b405d90d0224072bc6a32b70f9945a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2.2` - linux; amd64

```console
$ docker pull couchdb@sha256:cd682d8fc93976963547c8ca9307f865f5b5e1ebbee6d12c46a9a57d9a103889
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.3 MB (112322973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44b2522e3e4a951855417d999f89c58e607ec92862d810b4c2be3ad569c6a8c1`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 23:01:34 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Tue, 04 Sep 2018 23:01:34 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Tue, 04 Sep 2018 23:01:54 GMT
RUN apt-get update -y && apt-get install -y         apt-transport-https         ca-certificates         curl         dirmngr         gnupg         libicu57         libssl1.1         openssl         python     && echo "deb https://apache.bintray.com/couchdb-deb stretch main"         | tee /etc/apt/sources.list.d/couchdb.list     && cat /etc/apt/sources.list.d/couchdb.list     && for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys 8756C4F765C9AC3CB6B85D62379CE192D401AB61 && break || : ;         done     && gpg -a --export 8756C4F765C9AC3CB6B85D62379CE192D401AB61 > /etc/apt/trusted.gpg.d/couchdb.gpg.asc     && apt-get update -y && apt-get install -y --no-install-recommends couch-libmozjs185-1.0     && rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 23:01:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 04 Sep 2018 23:01:55 GMT
ENV TINI_VERSION=0.16.1
# Tue, 04 Sep 2018 23:02:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true;     	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini --version; 		apt-get purge -y --auto-remove wget
# Tue, 04 Sep 2018 23:02:04 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B   29E4F38113DF707D722A6EF91FE9AF73118F1A7C   2EC788AE3F239FA13E82D215CDE711289384AE37
# Tue, 04 Sep 2018 23:02:09 GMT
RUN set -xe     && for key in $GPG_KEYS; do         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys "$key" && break || : ;         done;     done
# Tue, 04 Sep 2018 23:02:09 GMT
ENV COUCHDB_VERSION=2.2.0
# Tue, 04 Sep 2018 23:03:25 GMT
RUN buildDeps='         apt-transport-https         build-essential         couch-libmozjs185-dev         erlang-dev         erlang-nox         erlang-reltool         libcurl4-openssl-dev         libicu-dev         make         libssl-dev     '     && apt-get update -y -qq && apt-get install -y --no-install-recommends $buildDeps     && cd /usr/src && mkdir couchdb     && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz     && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc     && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz     && tar -xzf couchdb.tar.gz -C couchdb --strip-components=1     && cd couchdb     && ./configure     && make release     && mv /usr/src/couchdb/rel/couchdb /opt/     && apt-get purge -y --auto-remove $buildDeps     && rm -rf /var/lib/apt/lists/* /usr/src/couchdb*     && mkdir /opt/couchdb/data     && chown -R couchdb:couchdb /opt/couchdb
# Tue, 04 Sep 2018 23:03:25 GMT
COPY file:685eafac1271ddd108d5f96fc015621edb77d0f0eb84aa212decbca6bbc0ce7d in /opt/couchdb/etc/default.d/ 
# Tue, 04 Sep 2018 23:03:25 GMT
COPY file:92f7c74ebcdab3f422f19b237777e707346b0b921cecac100009f5e1e9918e1e in /opt/couchdb/etc/ 
# Tue, 04 Sep 2018 23:03:26 GMT
COPY file:0e908f7191b7d800707344317fb9b373883834ca37ea3d666670daae2225bb7f in / 
# Tue, 04 Sep 2018 23:03:26 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/default.d/ /opt/couchdb/etc/vm.args
# Tue, 04 Sep 2018 23:03:26 GMT
WORKDIR /opt/couchdb
# Tue, 04 Sep 2018 23:03:27 GMT
EXPOSE 4369/tcp 5984/tcp 9100/tcp
# Tue, 04 Sep 2018 23:03:27 GMT
VOLUME [/opt/couchdb/data]
# Tue, 04 Sep 2018 23:03:27 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 04 Sep 2018 23:03:27 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2395130c11a5265d8d942d78b2103ad64f928784cebcd7dfe8347544b7248d47`  
		Last Modified: Tue, 04 Sep 2018 23:03:38 GMT  
		Size: 3.4 KB (3412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9047dfbeba5939d346df82f1a7539cac92bfdd1085b668bc96b2b63aa6b12e0f`  
		Last Modified: Tue, 04 Sep 2018 23:03:46 GMT  
		Size: 38.9 MB (38889022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d08aae80b2624ddc2c049b01364f3a79b80008887f7e926d93265130be9192`  
		Last Modified: Tue, 04 Sep 2018 23:03:39 GMT  
		Size: 820.1 KB (820106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91473b21478bf5dcc7646de2b86bc6ec6b545a6bc605a95f69b5fcb1f27d1422`  
		Last Modified: Tue, 04 Sep 2018 23:03:38 GMT  
		Size: 530.2 KB (530190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa85a92c618d4d0825040dc86b18888d3c4c4631eefff023470c57221cac6ca`  
		Last Modified: Tue, 04 Sep 2018 23:03:41 GMT  
		Size: 26.8 MB (26766529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337b2d223a0c3a8ac66ec70c56ad353baf6a35dc5ca40e96a4b73c6ac662e73f`  
		Last Modified: Tue, 04 Sep 2018 23:03:37 GMT  
		Size: 387.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b001e784f643336c6141ade206b352fa9e10abec396dced2669a98e7410d17d1`  
		Last Modified: Tue, 04 Sep 2018 23:03:37 GMT  
		Size: 763.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29bbac4a1df9202445ac7f0db234680ba644eab6fe7bf56bdc421ae52cf1fdfa`  
		Last Modified: Tue, 04 Sep 2018 23:03:37 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43a9b02f564f250195be94090c8fc2d8113ae887db58b60b711ff85b488159c`  
		Last Modified: Tue, 04 Sep 2018 23:03:37 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:2.2.0`

```console
$ docker pull couchdb@sha256:da7747455c268b93d9f20348b31faba986b405d90d0224072bc6a32b70f9945a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2.2.0` - linux; amd64

```console
$ docker pull couchdb@sha256:cd682d8fc93976963547c8ca9307f865f5b5e1ebbee6d12c46a9a57d9a103889
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.3 MB (112322973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44b2522e3e4a951855417d999f89c58e607ec92862d810b4c2be3ad569c6a8c1`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 23:01:34 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Tue, 04 Sep 2018 23:01:34 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Tue, 04 Sep 2018 23:01:54 GMT
RUN apt-get update -y && apt-get install -y         apt-transport-https         ca-certificates         curl         dirmngr         gnupg         libicu57         libssl1.1         openssl         python     && echo "deb https://apache.bintray.com/couchdb-deb stretch main"         | tee /etc/apt/sources.list.d/couchdb.list     && cat /etc/apt/sources.list.d/couchdb.list     && for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys 8756C4F765C9AC3CB6B85D62379CE192D401AB61 && break || : ;         done     && gpg -a --export 8756C4F765C9AC3CB6B85D62379CE192D401AB61 > /etc/apt/trusted.gpg.d/couchdb.gpg.asc     && apt-get update -y && apt-get install -y --no-install-recommends couch-libmozjs185-1.0     && rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 23:01:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 04 Sep 2018 23:01:55 GMT
ENV TINI_VERSION=0.16.1
# Tue, 04 Sep 2018 23:02:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true;     	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini --version; 		apt-get purge -y --auto-remove wget
# Tue, 04 Sep 2018 23:02:04 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B   29E4F38113DF707D722A6EF91FE9AF73118F1A7C   2EC788AE3F239FA13E82D215CDE711289384AE37
# Tue, 04 Sep 2018 23:02:09 GMT
RUN set -xe     && for key in $GPG_KEYS; do         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys "$key" && break || : ;         done;     done
# Tue, 04 Sep 2018 23:02:09 GMT
ENV COUCHDB_VERSION=2.2.0
# Tue, 04 Sep 2018 23:03:25 GMT
RUN buildDeps='         apt-transport-https         build-essential         couch-libmozjs185-dev         erlang-dev         erlang-nox         erlang-reltool         libcurl4-openssl-dev         libicu-dev         make         libssl-dev     '     && apt-get update -y -qq && apt-get install -y --no-install-recommends $buildDeps     && cd /usr/src && mkdir couchdb     && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz     && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc     && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz     && tar -xzf couchdb.tar.gz -C couchdb --strip-components=1     && cd couchdb     && ./configure     && make release     && mv /usr/src/couchdb/rel/couchdb /opt/     && apt-get purge -y --auto-remove $buildDeps     && rm -rf /var/lib/apt/lists/* /usr/src/couchdb*     && mkdir /opt/couchdb/data     && chown -R couchdb:couchdb /opt/couchdb
# Tue, 04 Sep 2018 23:03:25 GMT
COPY file:685eafac1271ddd108d5f96fc015621edb77d0f0eb84aa212decbca6bbc0ce7d in /opt/couchdb/etc/default.d/ 
# Tue, 04 Sep 2018 23:03:25 GMT
COPY file:92f7c74ebcdab3f422f19b237777e707346b0b921cecac100009f5e1e9918e1e in /opt/couchdb/etc/ 
# Tue, 04 Sep 2018 23:03:26 GMT
COPY file:0e908f7191b7d800707344317fb9b373883834ca37ea3d666670daae2225bb7f in / 
# Tue, 04 Sep 2018 23:03:26 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/default.d/ /opt/couchdb/etc/vm.args
# Tue, 04 Sep 2018 23:03:26 GMT
WORKDIR /opt/couchdb
# Tue, 04 Sep 2018 23:03:27 GMT
EXPOSE 4369/tcp 5984/tcp 9100/tcp
# Tue, 04 Sep 2018 23:03:27 GMT
VOLUME [/opt/couchdb/data]
# Tue, 04 Sep 2018 23:03:27 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 04 Sep 2018 23:03:27 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2395130c11a5265d8d942d78b2103ad64f928784cebcd7dfe8347544b7248d47`  
		Last Modified: Tue, 04 Sep 2018 23:03:38 GMT  
		Size: 3.4 KB (3412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9047dfbeba5939d346df82f1a7539cac92bfdd1085b668bc96b2b63aa6b12e0f`  
		Last Modified: Tue, 04 Sep 2018 23:03:46 GMT  
		Size: 38.9 MB (38889022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d08aae80b2624ddc2c049b01364f3a79b80008887f7e926d93265130be9192`  
		Last Modified: Tue, 04 Sep 2018 23:03:39 GMT  
		Size: 820.1 KB (820106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91473b21478bf5dcc7646de2b86bc6ec6b545a6bc605a95f69b5fcb1f27d1422`  
		Last Modified: Tue, 04 Sep 2018 23:03:38 GMT  
		Size: 530.2 KB (530190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa85a92c618d4d0825040dc86b18888d3c4c4631eefff023470c57221cac6ca`  
		Last Modified: Tue, 04 Sep 2018 23:03:41 GMT  
		Size: 26.8 MB (26766529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337b2d223a0c3a8ac66ec70c56ad353baf6a35dc5ca40e96a4b73c6ac662e73f`  
		Last Modified: Tue, 04 Sep 2018 23:03:37 GMT  
		Size: 387.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b001e784f643336c6141ade206b352fa9e10abec396dced2669a98e7410d17d1`  
		Last Modified: Tue, 04 Sep 2018 23:03:37 GMT  
		Size: 763.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29bbac4a1df9202445ac7f0db234680ba644eab6fe7bf56bdc421ae52cf1fdfa`  
		Last Modified: Tue, 04 Sep 2018 23:03:37 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43a9b02f564f250195be94090c8fc2d8113ae887db58b60b711ff85b488159c`  
		Last Modified: Tue, 04 Sep 2018 23:03:37 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:latest`

```console
$ docker pull couchdb@sha256:da7747455c268b93d9f20348b31faba986b405d90d0224072bc6a32b70f9945a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:latest` - linux; amd64

```console
$ docker pull couchdb@sha256:cd682d8fc93976963547c8ca9307f865f5b5e1ebbee6d12c46a9a57d9a103889
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.3 MB (112322973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44b2522e3e4a951855417d999f89c58e607ec92862d810b4c2be3ad569c6a8c1`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 23:01:34 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Tue, 04 Sep 2018 23:01:34 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Tue, 04 Sep 2018 23:01:54 GMT
RUN apt-get update -y && apt-get install -y         apt-transport-https         ca-certificates         curl         dirmngr         gnupg         libicu57         libssl1.1         openssl         python     && echo "deb https://apache.bintray.com/couchdb-deb stretch main"         | tee /etc/apt/sources.list.d/couchdb.list     && cat /etc/apt/sources.list.d/couchdb.list     && for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys 8756C4F765C9AC3CB6B85D62379CE192D401AB61 && break || : ;         done     && gpg -a --export 8756C4F765C9AC3CB6B85D62379CE192D401AB61 > /etc/apt/trusted.gpg.d/couchdb.gpg.asc     && apt-get update -y && apt-get install -y --no-install-recommends couch-libmozjs185-1.0     && rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 23:01:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 04 Sep 2018 23:01:55 GMT
ENV TINI_VERSION=0.16.1
# Tue, 04 Sep 2018 23:02:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true;     	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini --version; 		apt-get purge -y --auto-remove wget
# Tue, 04 Sep 2018 23:02:04 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B   29E4F38113DF707D722A6EF91FE9AF73118F1A7C   2EC788AE3F239FA13E82D215CDE711289384AE37
# Tue, 04 Sep 2018 23:02:09 GMT
RUN set -xe     && for key in $GPG_KEYS; do         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --keyserver $server --recv-keys "$key" && break || : ;         done;     done
# Tue, 04 Sep 2018 23:02:09 GMT
ENV COUCHDB_VERSION=2.2.0
# Tue, 04 Sep 2018 23:03:25 GMT
RUN buildDeps='         apt-transport-https         build-essential         couch-libmozjs185-dev         erlang-dev         erlang-nox         erlang-reltool         libcurl4-openssl-dev         libicu-dev         make         libssl-dev     '     && apt-get update -y -qq && apt-get install -y --no-install-recommends $buildDeps     && cd /usr/src && mkdir couchdb     && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz     && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc     && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz     && tar -xzf couchdb.tar.gz -C couchdb --strip-components=1     && cd couchdb     && ./configure     && make release     && mv /usr/src/couchdb/rel/couchdb /opt/     && apt-get purge -y --auto-remove $buildDeps     && rm -rf /var/lib/apt/lists/* /usr/src/couchdb*     && mkdir /opt/couchdb/data     && chown -R couchdb:couchdb /opt/couchdb
# Tue, 04 Sep 2018 23:03:25 GMT
COPY file:685eafac1271ddd108d5f96fc015621edb77d0f0eb84aa212decbca6bbc0ce7d in /opt/couchdb/etc/default.d/ 
# Tue, 04 Sep 2018 23:03:25 GMT
COPY file:92f7c74ebcdab3f422f19b237777e707346b0b921cecac100009f5e1e9918e1e in /opt/couchdb/etc/ 
# Tue, 04 Sep 2018 23:03:26 GMT
COPY file:0e908f7191b7d800707344317fb9b373883834ca37ea3d666670daae2225bb7f in / 
# Tue, 04 Sep 2018 23:03:26 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/default.d/ /opt/couchdb/etc/vm.args
# Tue, 04 Sep 2018 23:03:26 GMT
WORKDIR /opt/couchdb
# Tue, 04 Sep 2018 23:03:27 GMT
EXPOSE 4369/tcp 5984/tcp 9100/tcp
# Tue, 04 Sep 2018 23:03:27 GMT
VOLUME [/opt/couchdb/data]
# Tue, 04 Sep 2018 23:03:27 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 04 Sep 2018 23:03:27 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2395130c11a5265d8d942d78b2103ad64f928784cebcd7dfe8347544b7248d47`  
		Last Modified: Tue, 04 Sep 2018 23:03:38 GMT  
		Size: 3.4 KB (3412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9047dfbeba5939d346df82f1a7539cac92bfdd1085b668bc96b2b63aa6b12e0f`  
		Last Modified: Tue, 04 Sep 2018 23:03:46 GMT  
		Size: 38.9 MB (38889022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d08aae80b2624ddc2c049b01364f3a79b80008887f7e926d93265130be9192`  
		Last Modified: Tue, 04 Sep 2018 23:03:39 GMT  
		Size: 820.1 KB (820106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91473b21478bf5dcc7646de2b86bc6ec6b545a6bc605a95f69b5fcb1f27d1422`  
		Last Modified: Tue, 04 Sep 2018 23:03:38 GMT  
		Size: 530.2 KB (530190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa85a92c618d4d0825040dc86b18888d3c4c4631eefff023470c57221cac6ca`  
		Last Modified: Tue, 04 Sep 2018 23:03:41 GMT  
		Size: 26.8 MB (26766529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337b2d223a0c3a8ac66ec70c56ad353baf6a35dc5ca40e96a4b73c6ac662e73f`  
		Last Modified: Tue, 04 Sep 2018 23:03:37 GMT  
		Size: 387.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b001e784f643336c6141ade206b352fa9e10abec396dced2669a98e7410d17d1`  
		Last Modified: Tue, 04 Sep 2018 23:03:37 GMT  
		Size: 763.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29bbac4a1df9202445ac7f0db234680ba644eab6fe7bf56bdc421ae52cf1fdfa`  
		Last Modified: Tue, 04 Sep 2018 23:03:37 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43a9b02f564f250195be94090c8fc2d8113ae887db58b60b711ff85b488159c`  
		Last Modified: Tue, 04 Sep 2018 23:03:37 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
