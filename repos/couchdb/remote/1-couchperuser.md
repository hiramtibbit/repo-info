## `couchdb:1-couchperuser`

```console
$ docker pull couchdb@sha256:50e43645458f056733caf15a469b5d8f6df860ebd0dfefbec922b38e03b9b8a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:1-couchperuser` - linux; amd64

```console
$ docker pull couchdb@sha256:1c076d039ed4bed1c6d1f094dcf933364f8489968aea8229e97a96799cc46562
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115714645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7486614445585a0fe7f3f6ca8c9e36c0fa3df53bcabacf6132d60e5d07335e48`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 00:19:37 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Wed, 11 Jul 2018 00:19:38 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Wed, 11 Jul 2018 00:25:51 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 00:25:51 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Jul 2018 00:25:51 GMT
ENV TINI_VERSION=0.16.1
# Wed, 11 Jul 2018 00:26:34 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends wget;     rm -rf /var/lib/apt/lists/*;         dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')";         wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch";     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;     rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;     chmod +x /usr/local/bin/gosu;     gosu nobody true;         wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch";     wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7;     gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini;     rm -r "$GNUPGHOME" /usr/local/bin/tini.asc;     chmod +x /usr/local/bin/tini;     tini --version;         apt-get purge -y --auto-remove wget
# Wed, 11 Jul 2018 00:26:35 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Wed, 11 Jul 2018 00:26:38 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 11 Jul 2018 00:26:39 GMT
ENV COUCHDB_VERSION=1.7.2
# Wed, 11 Jul 2018 00:29:23 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL https://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Wed, 11 Jul 2018 00:29:23 GMT
COPY file:f606d0607ab768e5075c660a93ea1c8c4d1306c1d2dff718d4d314268f35517b in / 
# Wed, 11 Jul 2018 00:29:23 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Wed, 11 Jul 2018 00:29:24 GMT
EXPOSE 5984/tcp
# Wed, 11 Jul 2018 00:29:24 GMT
WORKDIR /var/lib/couchdb
# Wed, 11 Jul 2018 00:29:24 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 11 Jul 2018 00:29:24 GMT
CMD ["couchdb"]
# Wed, 11 Jul 2018 00:30:01 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Wed, 11 Jul 2018 00:30:01 GMT
ENV COUCHPERUSER_SHA=5d28db3272eea9619d4391b33aae6030f0319ecc54aa2a2f2b6c6a8d448f03f2
# Wed, 11 Jul 2018 00:31:27 GMT
RUN apt-get update && apt-get install -y rebar make  && mkdir -p /usr/local/lib/couchdb/plugins/couchperuser  && cd /usr/local/lib/couchdb/plugins  && curl -L -o couchperuser.tar.gz https://github.com/etrepum/couchperuser/archive/1.1.0.tar.gz  && echo "$COUCHPERUSER_SHA *couchperuser.tar.gz" | sha256sum -c -  && tar -xzf couchperuser.tar.gz -C couchperuser --strip-components=1  && rm couchperuser.tar.gz  && cd couchperuser  && make  && apt-get purge -y --auto-remove rebar make
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8968407ee22fc563122db05c9fbade127f963ca14b32f3f8753afa628320d54`  
		Last Modified: Wed, 11 Jul 2018 00:31:53 GMT  
		Size: 3.7 KB (3695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1971bfa398cee5c06e7622a61a581c80a8ae9c688523a4a617704263136c57ce`  
		Last Modified: Wed, 11 Jul 2018 00:33:46 GMT  
		Size: 42.1 MB (42065815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726ea755d7a13df36284aa7f9353195a6e9878fb95119fcfe30e4f2d758e9173`  
		Last Modified: Wed, 11 Jul 2018 00:33:36 GMT  
		Size: 826.4 KB (826377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47520a3024e2e6da3f5b7bf607c6b295697f972ae878cff661d2bf97d7b747d`  
		Last Modified: Wed, 11 Jul 2018 00:33:36 GMT  
		Size: 516.1 KB (516127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45469dc232576ab2d4d28a17c7698296845cea6ee6a7db806fff1a610fbf4dcd`  
		Last Modified: Wed, 11 Jul 2018 00:33:38 GMT  
		Size: 7.7 MB (7661403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee79c1a1cf9cc8e9fccc46683214ada0ff2fcf6abf253999ba010f0d544bd3c`  
		Last Modified: Wed, 11 Jul 2018 00:33:36 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb35ccf949a17dc4a5bde6e81f79c79d14a0d6bc1ed72ef248dc1a89418cbe3`  
		Last Modified: Wed, 11 Jul 2018 00:34:35 GMT  
		Size: 10.4 MB (10387920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
