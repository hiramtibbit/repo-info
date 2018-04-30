<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchdb`

-	[`couchdb:1`](#couchdb1)
-	[`couchdb:1.7`](#couchdb17)
-	[`couchdb:1.7.1`](#couchdb171)
-	[`couchdb:1.7.1-couchperuser`](#couchdb171-couchperuser)
-	[`couchdb:1.7-couchperuser`](#couchdb17-couchperuser)
-	[`couchdb:1-couchperuser`](#couchdb1-couchperuser)
-	[`couchdb:2`](#couchdb2)
-	[`couchdb:2.1`](#couchdb21)
-	[`couchdb:2.1.1`](#couchdb211)
-	[`couchdb:latest`](#couchdblatest)

## `couchdb:1`

```console
$ docker pull couchdb@sha256:a94b75f659770b73dc359ed01aab40ee6cc1cccb4e29e5346c3e10b1e27ec0ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:1` - linux; amd64

```console
$ docker pull couchdb@sha256:14e70171289437f58a63f8012179b7d346e481c37ce30f12a7f52108e58daade
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.3 MB (105342273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3b261099e53760e128aa79e51cfb5d03bf77d2013fd2a5991c8421ed237da5e`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 20:54:53 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Sun, 29 Apr 2018 21:17:01 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Sun, 29 Apr 2018 21:17:27 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 21:17:27 GMT
ENV GOSU_VERSION=1.10
# Sun, 29 Apr 2018 21:17:28 GMT
ENV TINI_VERSION=0.16.1
# Sun, 29 Apr 2018 21:17:49 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends wget;     rm -rf /var/lib/apt/lists/*;         dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')";         wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch";     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;     rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;     chmod +x /usr/local/bin/gosu;     gosu nobody true;         wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch";     wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7;     gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini;     rm -r "$GNUPGHOME" /usr/local/bin/tini.asc;     chmod +x /usr/local/bin/tini;     tini --version;         apt-get purge -y --auto-remove wget
# Sun, 29 Apr 2018 21:17:49 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Sun, 29 Apr 2018 21:17:51 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Sun, 29 Apr 2018 21:17:51 GMT
ENV COUCHDB_VERSION=1.7.1
# Sun, 29 Apr 2018 21:18:59 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL https://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Sun, 29 Apr 2018 21:18:59 GMT
COPY file:5881c18ea19cf9ff03427338ee18f45b99a773da0f61baf103b1ba4166ee1b8f in / 
# Sun, 29 Apr 2018 21:18:59 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Sun, 29 Apr 2018 21:19:00 GMT
EXPOSE 5984/tcp
# Sun, 29 Apr 2018 21:19:00 GMT
WORKDIR /var/lib/couchdb
# Sun, 29 Apr 2018 21:19:00 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 29 Apr 2018 21:19:00 GMT
CMD ["couchdb"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b52d01225738ab8e35b8b7ebe98059a39cbd945360120230008d307a105ba5`  
		Last Modified: Sun, 29 Apr 2018 21:28:44 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6971716611eb6e6f7678a6a42cfb0796bc98a9367105778e7488673eb3fb40`  
		Last Modified: Sun, 29 Apr 2018 21:28:49 GMT  
		Size: 42.1 MB (42106294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0892c47f00f2ac8ddacafaee66fd2c9b414740cc0273fc68f322a3133bd97fdc`  
		Last Modified: Sun, 29 Apr 2018 21:28:43 GMT  
		Size: 826.6 KB (826559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c0943265d571ec3650be4a7424bda787099746e41352b2df0f7aaf7d8daa352`  
		Last Modified: Sun, 29 Apr 2018 21:28:43 GMT  
		Size: 512.9 KB (512880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60a203b72d4278838a4b2ca3a8a79b2c6cd22b6dee249e6fc521ce5a4c1feb4`  
		Last Modified: Sun, 29 Apr 2018 21:28:44 GMT  
		Size: 7.6 MB (7630746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c532aa7bbf9c62e1a7eb007a0867fac11b0c8a63fd1beebb53f8657e5b80d4f`  
		Last Modified: Sun, 29 Apr 2018 21:28:42 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:1.7`

```console
$ docker pull couchdb@sha256:a94b75f659770b73dc359ed01aab40ee6cc1cccb4e29e5346c3e10b1e27ec0ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:1.7` - linux; amd64

```console
$ docker pull couchdb@sha256:14e70171289437f58a63f8012179b7d346e481c37ce30f12a7f52108e58daade
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.3 MB (105342273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3b261099e53760e128aa79e51cfb5d03bf77d2013fd2a5991c8421ed237da5e`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 20:54:53 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Sun, 29 Apr 2018 21:17:01 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Sun, 29 Apr 2018 21:17:27 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 21:17:27 GMT
ENV GOSU_VERSION=1.10
# Sun, 29 Apr 2018 21:17:28 GMT
ENV TINI_VERSION=0.16.1
# Sun, 29 Apr 2018 21:17:49 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends wget;     rm -rf /var/lib/apt/lists/*;         dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')";         wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch";     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;     rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;     chmod +x /usr/local/bin/gosu;     gosu nobody true;         wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch";     wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7;     gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini;     rm -r "$GNUPGHOME" /usr/local/bin/tini.asc;     chmod +x /usr/local/bin/tini;     tini --version;         apt-get purge -y --auto-remove wget
# Sun, 29 Apr 2018 21:17:49 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Sun, 29 Apr 2018 21:17:51 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Sun, 29 Apr 2018 21:17:51 GMT
ENV COUCHDB_VERSION=1.7.1
# Sun, 29 Apr 2018 21:18:59 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL https://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Sun, 29 Apr 2018 21:18:59 GMT
COPY file:5881c18ea19cf9ff03427338ee18f45b99a773da0f61baf103b1ba4166ee1b8f in / 
# Sun, 29 Apr 2018 21:18:59 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Sun, 29 Apr 2018 21:19:00 GMT
EXPOSE 5984/tcp
# Sun, 29 Apr 2018 21:19:00 GMT
WORKDIR /var/lib/couchdb
# Sun, 29 Apr 2018 21:19:00 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 29 Apr 2018 21:19:00 GMT
CMD ["couchdb"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b52d01225738ab8e35b8b7ebe98059a39cbd945360120230008d307a105ba5`  
		Last Modified: Sun, 29 Apr 2018 21:28:44 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6971716611eb6e6f7678a6a42cfb0796bc98a9367105778e7488673eb3fb40`  
		Last Modified: Sun, 29 Apr 2018 21:28:49 GMT  
		Size: 42.1 MB (42106294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0892c47f00f2ac8ddacafaee66fd2c9b414740cc0273fc68f322a3133bd97fdc`  
		Last Modified: Sun, 29 Apr 2018 21:28:43 GMT  
		Size: 826.6 KB (826559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c0943265d571ec3650be4a7424bda787099746e41352b2df0f7aaf7d8daa352`  
		Last Modified: Sun, 29 Apr 2018 21:28:43 GMT  
		Size: 512.9 KB (512880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60a203b72d4278838a4b2ca3a8a79b2c6cd22b6dee249e6fc521ce5a4c1feb4`  
		Last Modified: Sun, 29 Apr 2018 21:28:44 GMT  
		Size: 7.6 MB (7630746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c532aa7bbf9c62e1a7eb007a0867fac11b0c8a63fd1beebb53f8657e5b80d4f`  
		Last Modified: Sun, 29 Apr 2018 21:28:42 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:1.7.1`

```console
$ docker pull couchdb@sha256:a94b75f659770b73dc359ed01aab40ee6cc1cccb4e29e5346c3e10b1e27ec0ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:1.7.1` - linux; amd64

```console
$ docker pull couchdb@sha256:14e70171289437f58a63f8012179b7d346e481c37ce30f12a7f52108e58daade
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.3 MB (105342273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3b261099e53760e128aa79e51cfb5d03bf77d2013fd2a5991c8421ed237da5e`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 20:54:53 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Sun, 29 Apr 2018 21:17:01 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Sun, 29 Apr 2018 21:17:27 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 21:17:27 GMT
ENV GOSU_VERSION=1.10
# Sun, 29 Apr 2018 21:17:28 GMT
ENV TINI_VERSION=0.16.1
# Sun, 29 Apr 2018 21:17:49 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends wget;     rm -rf /var/lib/apt/lists/*;         dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')";         wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch";     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;     rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;     chmod +x /usr/local/bin/gosu;     gosu nobody true;         wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch";     wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7;     gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini;     rm -r "$GNUPGHOME" /usr/local/bin/tini.asc;     chmod +x /usr/local/bin/tini;     tini --version;         apt-get purge -y --auto-remove wget
# Sun, 29 Apr 2018 21:17:49 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Sun, 29 Apr 2018 21:17:51 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Sun, 29 Apr 2018 21:17:51 GMT
ENV COUCHDB_VERSION=1.7.1
# Sun, 29 Apr 2018 21:18:59 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL https://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Sun, 29 Apr 2018 21:18:59 GMT
COPY file:5881c18ea19cf9ff03427338ee18f45b99a773da0f61baf103b1ba4166ee1b8f in / 
# Sun, 29 Apr 2018 21:18:59 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Sun, 29 Apr 2018 21:19:00 GMT
EXPOSE 5984/tcp
# Sun, 29 Apr 2018 21:19:00 GMT
WORKDIR /var/lib/couchdb
# Sun, 29 Apr 2018 21:19:00 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 29 Apr 2018 21:19:00 GMT
CMD ["couchdb"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b52d01225738ab8e35b8b7ebe98059a39cbd945360120230008d307a105ba5`  
		Last Modified: Sun, 29 Apr 2018 21:28:44 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6971716611eb6e6f7678a6a42cfb0796bc98a9367105778e7488673eb3fb40`  
		Last Modified: Sun, 29 Apr 2018 21:28:49 GMT  
		Size: 42.1 MB (42106294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0892c47f00f2ac8ddacafaee66fd2c9b414740cc0273fc68f322a3133bd97fdc`  
		Last Modified: Sun, 29 Apr 2018 21:28:43 GMT  
		Size: 826.6 KB (826559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c0943265d571ec3650be4a7424bda787099746e41352b2df0f7aaf7d8daa352`  
		Last Modified: Sun, 29 Apr 2018 21:28:43 GMT  
		Size: 512.9 KB (512880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60a203b72d4278838a4b2ca3a8a79b2c6cd22b6dee249e6fc521ce5a4c1feb4`  
		Last Modified: Sun, 29 Apr 2018 21:28:44 GMT  
		Size: 7.6 MB (7630746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c532aa7bbf9c62e1a7eb007a0867fac11b0c8a63fd1beebb53f8657e5b80d4f`  
		Last Modified: Sun, 29 Apr 2018 21:28:42 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:1.7.1-couchperuser`

```console
$ docker pull couchdb@sha256:4f81b22ed94d30baa92f61b0a727460115beff9bc2fb786430b50d73321e6011
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:1.7.1-couchperuser` - linux; amd64

```console
$ docker pull couchdb@sha256:994ef38f56b99a6777a2fa719ca76e41646c06a5aa0760c01cfc0f8584110000
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115756062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24af000ad599e85215f4046104009f8f384f8fe464be307e6020c4a909e329fc`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 20:54:53 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Sun, 29 Apr 2018 21:17:01 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Sun, 29 Apr 2018 21:17:27 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 21:17:27 GMT
ENV GOSU_VERSION=1.10
# Sun, 29 Apr 2018 21:17:28 GMT
ENV TINI_VERSION=0.16.1
# Sun, 29 Apr 2018 21:17:49 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends wget;     rm -rf /var/lib/apt/lists/*;         dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')";         wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch";     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;     rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;     chmod +x /usr/local/bin/gosu;     gosu nobody true;         wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch";     wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7;     gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini;     rm -r "$GNUPGHOME" /usr/local/bin/tini.asc;     chmod +x /usr/local/bin/tini;     tini --version;         apt-get purge -y --auto-remove wget
# Sun, 29 Apr 2018 21:17:49 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Sun, 29 Apr 2018 21:17:51 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Sun, 29 Apr 2018 21:17:51 GMT
ENV COUCHDB_VERSION=1.7.1
# Sun, 29 Apr 2018 21:18:59 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL https://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Sun, 29 Apr 2018 21:18:59 GMT
COPY file:5881c18ea19cf9ff03427338ee18f45b99a773da0f61baf103b1ba4166ee1b8f in / 
# Sun, 29 Apr 2018 21:18:59 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Sun, 29 Apr 2018 21:19:00 GMT
EXPOSE 5984/tcp
# Sun, 29 Apr 2018 21:19:00 GMT
WORKDIR /var/lib/couchdb
# Sun, 29 Apr 2018 21:19:00 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 29 Apr 2018 21:19:00 GMT
CMD ["couchdb"]
# Sun, 29 Apr 2018 21:19:24 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Sun, 29 Apr 2018 21:19:24 GMT
ENV COUCHPERUSER_SHA=5d28db3272eea9619d4391b33aae6030f0319ecc54aa2a2f2b6c6a8d448f03f2
# Sun, 29 Apr 2018 21:20:13 GMT
RUN apt-get update && apt-get install -y rebar make  && mkdir -p /usr/local/lib/couchdb/plugins/couchperuser  && cd /usr/local/lib/couchdb/plugins  && curl -L -o couchperuser.tar.gz https://github.com/etrepum/couchperuser/archive/1.1.0.tar.gz  && echo "$COUCHPERUSER_SHA *couchperuser.tar.gz" | sha256sum -c -  && tar -xzf couchperuser.tar.gz -C couchperuser --strip-components=1  && rm couchperuser.tar.gz  && cd couchperuser  && make  && apt-get purge -y --auto-remove rebar make
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b52d01225738ab8e35b8b7ebe98059a39cbd945360120230008d307a105ba5`  
		Last Modified: Sun, 29 Apr 2018 21:28:44 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6971716611eb6e6f7678a6a42cfb0796bc98a9367105778e7488673eb3fb40`  
		Last Modified: Sun, 29 Apr 2018 21:28:49 GMT  
		Size: 42.1 MB (42106294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0892c47f00f2ac8ddacafaee66fd2c9b414740cc0273fc68f322a3133bd97fdc`  
		Last Modified: Sun, 29 Apr 2018 21:28:43 GMT  
		Size: 826.6 KB (826559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c0943265d571ec3650be4a7424bda787099746e41352b2df0f7aaf7d8daa352`  
		Last Modified: Sun, 29 Apr 2018 21:28:43 GMT  
		Size: 512.9 KB (512880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60a203b72d4278838a4b2ca3a8a79b2c6cd22b6dee249e6fc521ce5a4c1feb4`  
		Last Modified: Sun, 29 Apr 2018 21:28:44 GMT  
		Size: 7.6 MB (7630746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c532aa7bbf9c62e1a7eb007a0867fac11b0c8a63fd1beebb53f8657e5b80d4f`  
		Last Modified: Sun, 29 Apr 2018 21:28:42 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154712700683791325a1aee72a01843aa7d049fe79b13e33d4439c1174b12eff`  
		Last Modified: Sun, 29 Apr 2018 21:47:02 GMT  
		Size: 10.4 MB (10413789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:1.7-couchperuser`

```console
$ docker pull couchdb@sha256:4f81b22ed94d30baa92f61b0a727460115beff9bc2fb786430b50d73321e6011
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:1.7-couchperuser` - linux; amd64

```console
$ docker pull couchdb@sha256:994ef38f56b99a6777a2fa719ca76e41646c06a5aa0760c01cfc0f8584110000
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115756062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24af000ad599e85215f4046104009f8f384f8fe464be307e6020c4a909e329fc`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 20:54:53 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Sun, 29 Apr 2018 21:17:01 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Sun, 29 Apr 2018 21:17:27 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 21:17:27 GMT
ENV GOSU_VERSION=1.10
# Sun, 29 Apr 2018 21:17:28 GMT
ENV TINI_VERSION=0.16.1
# Sun, 29 Apr 2018 21:17:49 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends wget;     rm -rf /var/lib/apt/lists/*;         dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')";         wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch";     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;     rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;     chmod +x /usr/local/bin/gosu;     gosu nobody true;         wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch";     wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7;     gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini;     rm -r "$GNUPGHOME" /usr/local/bin/tini.asc;     chmod +x /usr/local/bin/tini;     tini --version;         apt-get purge -y --auto-remove wget
# Sun, 29 Apr 2018 21:17:49 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Sun, 29 Apr 2018 21:17:51 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Sun, 29 Apr 2018 21:17:51 GMT
ENV COUCHDB_VERSION=1.7.1
# Sun, 29 Apr 2018 21:18:59 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL https://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Sun, 29 Apr 2018 21:18:59 GMT
COPY file:5881c18ea19cf9ff03427338ee18f45b99a773da0f61baf103b1ba4166ee1b8f in / 
# Sun, 29 Apr 2018 21:18:59 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Sun, 29 Apr 2018 21:19:00 GMT
EXPOSE 5984/tcp
# Sun, 29 Apr 2018 21:19:00 GMT
WORKDIR /var/lib/couchdb
# Sun, 29 Apr 2018 21:19:00 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 29 Apr 2018 21:19:00 GMT
CMD ["couchdb"]
# Sun, 29 Apr 2018 21:19:24 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Sun, 29 Apr 2018 21:19:24 GMT
ENV COUCHPERUSER_SHA=5d28db3272eea9619d4391b33aae6030f0319ecc54aa2a2f2b6c6a8d448f03f2
# Sun, 29 Apr 2018 21:20:13 GMT
RUN apt-get update && apt-get install -y rebar make  && mkdir -p /usr/local/lib/couchdb/plugins/couchperuser  && cd /usr/local/lib/couchdb/plugins  && curl -L -o couchperuser.tar.gz https://github.com/etrepum/couchperuser/archive/1.1.0.tar.gz  && echo "$COUCHPERUSER_SHA *couchperuser.tar.gz" | sha256sum -c -  && tar -xzf couchperuser.tar.gz -C couchperuser --strip-components=1  && rm couchperuser.tar.gz  && cd couchperuser  && make  && apt-get purge -y --auto-remove rebar make
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b52d01225738ab8e35b8b7ebe98059a39cbd945360120230008d307a105ba5`  
		Last Modified: Sun, 29 Apr 2018 21:28:44 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6971716611eb6e6f7678a6a42cfb0796bc98a9367105778e7488673eb3fb40`  
		Last Modified: Sun, 29 Apr 2018 21:28:49 GMT  
		Size: 42.1 MB (42106294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0892c47f00f2ac8ddacafaee66fd2c9b414740cc0273fc68f322a3133bd97fdc`  
		Last Modified: Sun, 29 Apr 2018 21:28:43 GMT  
		Size: 826.6 KB (826559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c0943265d571ec3650be4a7424bda787099746e41352b2df0f7aaf7d8daa352`  
		Last Modified: Sun, 29 Apr 2018 21:28:43 GMT  
		Size: 512.9 KB (512880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60a203b72d4278838a4b2ca3a8a79b2c6cd22b6dee249e6fc521ce5a4c1feb4`  
		Last Modified: Sun, 29 Apr 2018 21:28:44 GMT  
		Size: 7.6 MB (7630746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c532aa7bbf9c62e1a7eb007a0867fac11b0c8a63fd1beebb53f8657e5b80d4f`  
		Last Modified: Sun, 29 Apr 2018 21:28:42 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154712700683791325a1aee72a01843aa7d049fe79b13e33d4439c1174b12eff`  
		Last Modified: Sun, 29 Apr 2018 21:47:02 GMT  
		Size: 10.4 MB (10413789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:1-couchperuser`

```console
$ docker pull couchdb@sha256:4f81b22ed94d30baa92f61b0a727460115beff9bc2fb786430b50d73321e6011
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:1-couchperuser` - linux; amd64

```console
$ docker pull couchdb@sha256:994ef38f56b99a6777a2fa719ca76e41646c06a5aa0760c01cfc0f8584110000
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115756062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24af000ad599e85215f4046104009f8f384f8fe464be307e6020c4a909e329fc`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 20:54:53 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Sun, 29 Apr 2018 21:17:01 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Sun, 29 Apr 2018 21:17:27 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 21:17:27 GMT
ENV GOSU_VERSION=1.10
# Sun, 29 Apr 2018 21:17:28 GMT
ENV TINI_VERSION=0.16.1
# Sun, 29 Apr 2018 21:17:49 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends wget;     rm -rf /var/lib/apt/lists/*;         dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')";         wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch";     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;     rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;     chmod +x /usr/local/bin/gosu;     gosu nobody true;         wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch";     wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7;     gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini;     rm -r "$GNUPGHOME" /usr/local/bin/tini.asc;     chmod +x /usr/local/bin/tini;     tini --version;         apt-get purge -y --auto-remove wget
# Sun, 29 Apr 2018 21:17:49 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Sun, 29 Apr 2018 21:17:51 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Sun, 29 Apr 2018 21:17:51 GMT
ENV COUCHDB_VERSION=1.7.1
# Sun, 29 Apr 2018 21:18:59 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL https://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Sun, 29 Apr 2018 21:18:59 GMT
COPY file:5881c18ea19cf9ff03427338ee18f45b99a773da0f61baf103b1ba4166ee1b8f in / 
# Sun, 29 Apr 2018 21:18:59 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Sun, 29 Apr 2018 21:19:00 GMT
EXPOSE 5984/tcp
# Sun, 29 Apr 2018 21:19:00 GMT
WORKDIR /var/lib/couchdb
# Sun, 29 Apr 2018 21:19:00 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 29 Apr 2018 21:19:00 GMT
CMD ["couchdb"]
# Sun, 29 Apr 2018 21:19:24 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Sun, 29 Apr 2018 21:19:24 GMT
ENV COUCHPERUSER_SHA=5d28db3272eea9619d4391b33aae6030f0319ecc54aa2a2f2b6c6a8d448f03f2
# Sun, 29 Apr 2018 21:20:13 GMT
RUN apt-get update && apt-get install -y rebar make  && mkdir -p /usr/local/lib/couchdb/plugins/couchperuser  && cd /usr/local/lib/couchdb/plugins  && curl -L -o couchperuser.tar.gz https://github.com/etrepum/couchperuser/archive/1.1.0.tar.gz  && echo "$COUCHPERUSER_SHA *couchperuser.tar.gz" | sha256sum -c -  && tar -xzf couchperuser.tar.gz -C couchperuser --strip-components=1  && rm couchperuser.tar.gz  && cd couchperuser  && make  && apt-get purge -y --auto-remove rebar make
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b52d01225738ab8e35b8b7ebe98059a39cbd945360120230008d307a105ba5`  
		Last Modified: Sun, 29 Apr 2018 21:28:44 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6971716611eb6e6f7678a6a42cfb0796bc98a9367105778e7488673eb3fb40`  
		Last Modified: Sun, 29 Apr 2018 21:28:49 GMT  
		Size: 42.1 MB (42106294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0892c47f00f2ac8ddacafaee66fd2c9b414740cc0273fc68f322a3133bd97fdc`  
		Last Modified: Sun, 29 Apr 2018 21:28:43 GMT  
		Size: 826.6 KB (826559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c0943265d571ec3650be4a7424bda787099746e41352b2df0f7aaf7d8daa352`  
		Last Modified: Sun, 29 Apr 2018 21:28:43 GMT  
		Size: 512.9 KB (512880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60a203b72d4278838a4b2ca3a8a79b2c6cd22b6dee249e6fc521ce5a4c1feb4`  
		Last Modified: Sun, 29 Apr 2018 21:28:44 GMT  
		Size: 7.6 MB (7630746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c532aa7bbf9c62e1a7eb007a0867fac11b0c8a63fd1beebb53f8657e5b80d4f`  
		Last Modified: Sun, 29 Apr 2018 21:28:42 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154712700683791325a1aee72a01843aa7d049fe79b13e33d4439c1174b12eff`  
		Last Modified: Sun, 29 Apr 2018 21:47:02 GMT  
		Size: 10.4 MB (10413789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:2`

```console
$ docker pull couchdb@sha256:7bff6cce6812bd1fe7a9d985d1e7d27ee8351e255a66d847a231cf31384ee4ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2` - linux; amd64

```console
$ docker pull couchdb@sha256:bae3d8afb785d11485c2e0d26a0e8c4491bda40141cc674ae8d948c4f2fbce33
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.3 MB (155278442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6240cb1c911172f76165493768794c52eb42660fe31400ad9ef542b4b853833e`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 20:54:53 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Sun, 29 Apr 2018 20:54:55 GMT
RUN groupadd -r couchdb && useradd -d /opt/couchdb -g couchdb couchdb
# Sun, 29 Apr 2018 20:55:52 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     erlang-reltool     haproxy     libicu52     libmozjs185-1.0     openssl   && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 20:55:52 GMT
ENV GOSU_VERSION=1.10
# Sun, 29 Apr 2018 20:55:53 GMT
ENV TINI_VERSION=0.16.1
# Sun, 29 Apr 2018 20:56:16 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini --version; 		apt-get purge -y --auto-remove wget
# Sun, 29 Apr 2018 20:56:17 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B   29E4F38113DF707D722A6EF91FE9AF73118F1A7C   2EC788AE3F239FA13E82D215CDE711289384AE37
# Sun, 29 Apr 2018 20:56:19 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Sun, 29 Apr 2018 20:56:19 GMT
ENV COUCHDB_VERSION=2.1.1
# Sun, 29 Apr 2018 20:57:37 GMT
RUN buildDeps='     apt-transport-https     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     make   '  && apt-get update -y -qq && apt-get install -y --no-install-recommends $buildDeps  && cd /usr/src && mkdir couchdb  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc  && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz  && tar -xzf couchdb.tar.gz -C couchdb --strip-components=1  && cd couchdb  && ./configure --disable-docs  && make release  && mv /usr/src/couchdb/rel/couchdb /opt/  && apt-get purge -y --auto-remove $buildDeps  && rm -rf /var/lib/apt/lists/* /usr/src/couchdb*  && mkdir /opt/couchdb/data  && chown -R couchdb:couchdb /opt/couchdb
# Sun, 29 Apr 2018 20:57:38 GMT
COPY file:6e48edd87a901be3cfaa928bf5b42264b4e3173d6c817b46878bf1104dcff208 in /opt/couchdb/etc/local.d/ 
# Sun, 29 Apr 2018 20:57:38 GMT
COPY file:92f7c74ebcdab3f422f19b237777e707346b0b921cecac100009f5e1e9918e1e in /opt/couchdb/etc/ 
# Sun, 29 Apr 2018 20:57:39 GMT
COPY file:4b6c87a451132457c240370120ddfb8a03af930f0acadd3c8522f18f4c9b7398 in / 
# Sun, 29 Apr 2018 20:57:40 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/local.d/ /opt/couchdb/etc/vm.args
# Sun, 29 Apr 2018 20:57:40 GMT
WORKDIR /opt/couchdb
# Sun, 29 Apr 2018 20:57:40 GMT
EXPOSE 4369/tcp 5984/tcp 9100/tcp
# Sun, 29 Apr 2018 20:57:41 GMT
VOLUME [/opt/couchdb/data]
# Sun, 29 Apr 2018 20:57:41 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 29 Apr 2018 20:57:41 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5294cddac6970aa91d2fedd8cfda1098b4acfe379d8d9265106736b51b81b7`  
		Last Modified: Sun, 29 Apr 2018 21:20:50 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6a85336cac9aeb58f8074c7b7a0873fc14c776585d73c98b85fbf09c855f7b`  
		Last Modified: Sun, 29 Apr 2018 21:21:08 GMT  
		Size: 82.4 MB (82366260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d87d5e171c0a6ab9576617043db972676e44ba73df716b44a93b6c18416947c`  
		Last Modified: Sun, 29 Apr 2018 21:20:50 GMT  
		Size: 911.9 KB (911880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716589880c72e8d7e4791d70d9f0b50db3dfc6ac8a360ce22318ccc2722e062a`  
		Last Modified: Sun, 29 Apr 2018 21:20:50 GMT  
		Size: 527.9 KB (527923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bc8aeaccb112b0d83db405e1c750d412d0531458b08a5b7dcb210216149b396`  
		Last Modified: Sun, 29 Apr 2018 21:20:51 GMT  
		Size: 17.2 MB (17204207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611d52946287424c8deab9ec7445bc7c0e73f6de7745a4a898f99cc87be660e5`  
		Last Modified: Sun, 29 Apr 2018 21:20:47 GMT  
		Size: 382.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7fd7924444673cf1f1838055116420133202c20bd93912c56fb217caae279c`  
		Last Modified: Sun, 29 Apr 2018 21:20:47 GMT  
		Size: 769.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802d849cbebeb1257c8ad7942d30730883eee5f3b2f7ebea17b7420a9a5e264f`  
		Last Modified: Sun, 29 Apr 2018 21:20:48 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46ff06b42b71fb93e883b1e2f5b8a1a96acd5fe3c21254ca66cec87a1f6a4c1`  
		Last Modified: Sun, 29 Apr 2018 21:20:47 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:2.1`

```console
$ docker pull couchdb@sha256:7bff6cce6812bd1fe7a9d985d1e7d27ee8351e255a66d847a231cf31384ee4ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2.1` - linux; amd64

```console
$ docker pull couchdb@sha256:bae3d8afb785d11485c2e0d26a0e8c4491bda40141cc674ae8d948c4f2fbce33
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.3 MB (155278442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6240cb1c911172f76165493768794c52eb42660fe31400ad9ef542b4b853833e`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 20:54:53 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Sun, 29 Apr 2018 20:54:55 GMT
RUN groupadd -r couchdb && useradd -d /opt/couchdb -g couchdb couchdb
# Sun, 29 Apr 2018 20:55:52 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     erlang-reltool     haproxy     libicu52     libmozjs185-1.0     openssl   && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 20:55:52 GMT
ENV GOSU_VERSION=1.10
# Sun, 29 Apr 2018 20:55:53 GMT
ENV TINI_VERSION=0.16.1
# Sun, 29 Apr 2018 20:56:16 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini --version; 		apt-get purge -y --auto-remove wget
# Sun, 29 Apr 2018 20:56:17 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B   29E4F38113DF707D722A6EF91FE9AF73118F1A7C   2EC788AE3F239FA13E82D215CDE711289384AE37
# Sun, 29 Apr 2018 20:56:19 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Sun, 29 Apr 2018 20:56:19 GMT
ENV COUCHDB_VERSION=2.1.1
# Sun, 29 Apr 2018 20:57:37 GMT
RUN buildDeps='     apt-transport-https     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     make   '  && apt-get update -y -qq && apt-get install -y --no-install-recommends $buildDeps  && cd /usr/src && mkdir couchdb  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc  && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz  && tar -xzf couchdb.tar.gz -C couchdb --strip-components=1  && cd couchdb  && ./configure --disable-docs  && make release  && mv /usr/src/couchdb/rel/couchdb /opt/  && apt-get purge -y --auto-remove $buildDeps  && rm -rf /var/lib/apt/lists/* /usr/src/couchdb*  && mkdir /opt/couchdb/data  && chown -R couchdb:couchdb /opt/couchdb
# Sun, 29 Apr 2018 20:57:38 GMT
COPY file:6e48edd87a901be3cfaa928bf5b42264b4e3173d6c817b46878bf1104dcff208 in /opt/couchdb/etc/local.d/ 
# Sun, 29 Apr 2018 20:57:38 GMT
COPY file:92f7c74ebcdab3f422f19b237777e707346b0b921cecac100009f5e1e9918e1e in /opt/couchdb/etc/ 
# Sun, 29 Apr 2018 20:57:39 GMT
COPY file:4b6c87a451132457c240370120ddfb8a03af930f0acadd3c8522f18f4c9b7398 in / 
# Sun, 29 Apr 2018 20:57:40 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/local.d/ /opt/couchdb/etc/vm.args
# Sun, 29 Apr 2018 20:57:40 GMT
WORKDIR /opt/couchdb
# Sun, 29 Apr 2018 20:57:40 GMT
EXPOSE 4369/tcp 5984/tcp 9100/tcp
# Sun, 29 Apr 2018 20:57:41 GMT
VOLUME [/opt/couchdb/data]
# Sun, 29 Apr 2018 20:57:41 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 29 Apr 2018 20:57:41 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5294cddac6970aa91d2fedd8cfda1098b4acfe379d8d9265106736b51b81b7`  
		Last Modified: Sun, 29 Apr 2018 21:20:50 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6a85336cac9aeb58f8074c7b7a0873fc14c776585d73c98b85fbf09c855f7b`  
		Last Modified: Sun, 29 Apr 2018 21:21:08 GMT  
		Size: 82.4 MB (82366260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d87d5e171c0a6ab9576617043db972676e44ba73df716b44a93b6c18416947c`  
		Last Modified: Sun, 29 Apr 2018 21:20:50 GMT  
		Size: 911.9 KB (911880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716589880c72e8d7e4791d70d9f0b50db3dfc6ac8a360ce22318ccc2722e062a`  
		Last Modified: Sun, 29 Apr 2018 21:20:50 GMT  
		Size: 527.9 KB (527923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bc8aeaccb112b0d83db405e1c750d412d0531458b08a5b7dcb210216149b396`  
		Last Modified: Sun, 29 Apr 2018 21:20:51 GMT  
		Size: 17.2 MB (17204207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611d52946287424c8deab9ec7445bc7c0e73f6de7745a4a898f99cc87be660e5`  
		Last Modified: Sun, 29 Apr 2018 21:20:47 GMT  
		Size: 382.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7fd7924444673cf1f1838055116420133202c20bd93912c56fb217caae279c`  
		Last Modified: Sun, 29 Apr 2018 21:20:47 GMT  
		Size: 769.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802d849cbebeb1257c8ad7942d30730883eee5f3b2f7ebea17b7420a9a5e264f`  
		Last Modified: Sun, 29 Apr 2018 21:20:48 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46ff06b42b71fb93e883b1e2f5b8a1a96acd5fe3c21254ca66cec87a1f6a4c1`  
		Last Modified: Sun, 29 Apr 2018 21:20:47 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:2.1.1`

```console
$ docker pull couchdb@sha256:7bff6cce6812bd1fe7a9d985d1e7d27ee8351e255a66d847a231cf31384ee4ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2.1.1` - linux; amd64

```console
$ docker pull couchdb@sha256:bae3d8afb785d11485c2e0d26a0e8c4491bda40141cc674ae8d948c4f2fbce33
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.3 MB (155278442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6240cb1c911172f76165493768794c52eb42660fe31400ad9ef542b4b853833e`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 20:54:53 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Sun, 29 Apr 2018 20:54:55 GMT
RUN groupadd -r couchdb && useradd -d /opt/couchdb -g couchdb couchdb
# Sun, 29 Apr 2018 20:55:52 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     erlang-reltool     haproxy     libicu52     libmozjs185-1.0     openssl   && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 20:55:52 GMT
ENV GOSU_VERSION=1.10
# Sun, 29 Apr 2018 20:55:53 GMT
ENV TINI_VERSION=0.16.1
# Sun, 29 Apr 2018 20:56:16 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini --version; 		apt-get purge -y --auto-remove wget
# Sun, 29 Apr 2018 20:56:17 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B   29E4F38113DF707D722A6EF91FE9AF73118F1A7C   2EC788AE3F239FA13E82D215CDE711289384AE37
# Sun, 29 Apr 2018 20:56:19 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Sun, 29 Apr 2018 20:56:19 GMT
ENV COUCHDB_VERSION=2.1.1
# Sun, 29 Apr 2018 20:57:37 GMT
RUN buildDeps='     apt-transport-https     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     make   '  && apt-get update -y -qq && apt-get install -y --no-install-recommends $buildDeps  && cd /usr/src && mkdir couchdb  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc  && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz  && tar -xzf couchdb.tar.gz -C couchdb --strip-components=1  && cd couchdb  && ./configure --disable-docs  && make release  && mv /usr/src/couchdb/rel/couchdb /opt/  && apt-get purge -y --auto-remove $buildDeps  && rm -rf /var/lib/apt/lists/* /usr/src/couchdb*  && mkdir /opt/couchdb/data  && chown -R couchdb:couchdb /opt/couchdb
# Sun, 29 Apr 2018 20:57:38 GMT
COPY file:6e48edd87a901be3cfaa928bf5b42264b4e3173d6c817b46878bf1104dcff208 in /opt/couchdb/etc/local.d/ 
# Sun, 29 Apr 2018 20:57:38 GMT
COPY file:92f7c74ebcdab3f422f19b237777e707346b0b921cecac100009f5e1e9918e1e in /opt/couchdb/etc/ 
# Sun, 29 Apr 2018 20:57:39 GMT
COPY file:4b6c87a451132457c240370120ddfb8a03af930f0acadd3c8522f18f4c9b7398 in / 
# Sun, 29 Apr 2018 20:57:40 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/local.d/ /opt/couchdb/etc/vm.args
# Sun, 29 Apr 2018 20:57:40 GMT
WORKDIR /opt/couchdb
# Sun, 29 Apr 2018 20:57:40 GMT
EXPOSE 4369/tcp 5984/tcp 9100/tcp
# Sun, 29 Apr 2018 20:57:41 GMT
VOLUME [/opt/couchdb/data]
# Sun, 29 Apr 2018 20:57:41 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 29 Apr 2018 20:57:41 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5294cddac6970aa91d2fedd8cfda1098b4acfe379d8d9265106736b51b81b7`  
		Last Modified: Sun, 29 Apr 2018 21:20:50 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6a85336cac9aeb58f8074c7b7a0873fc14c776585d73c98b85fbf09c855f7b`  
		Last Modified: Sun, 29 Apr 2018 21:21:08 GMT  
		Size: 82.4 MB (82366260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d87d5e171c0a6ab9576617043db972676e44ba73df716b44a93b6c18416947c`  
		Last Modified: Sun, 29 Apr 2018 21:20:50 GMT  
		Size: 911.9 KB (911880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716589880c72e8d7e4791d70d9f0b50db3dfc6ac8a360ce22318ccc2722e062a`  
		Last Modified: Sun, 29 Apr 2018 21:20:50 GMT  
		Size: 527.9 KB (527923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bc8aeaccb112b0d83db405e1c750d412d0531458b08a5b7dcb210216149b396`  
		Last Modified: Sun, 29 Apr 2018 21:20:51 GMT  
		Size: 17.2 MB (17204207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611d52946287424c8deab9ec7445bc7c0e73f6de7745a4a898f99cc87be660e5`  
		Last Modified: Sun, 29 Apr 2018 21:20:47 GMT  
		Size: 382.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7fd7924444673cf1f1838055116420133202c20bd93912c56fb217caae279c`  
		Last Modified: Sun, 29 Apr 2018 21:20:47 GMT  
		Size: 769.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802d849cbebeb1257c8ad7942d30730883eee5f3b2f7ebea17b7420a9a5e264f`  
		Last Modified: Sun, 29 Apr 2018 21:20:48 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46ff06b42b71fb93e883b1e2f5b8a1a96acd5fe3c21254ca66cec87a1f6a4c1`  
		Last Modified: Sun, 29 Apr 2018 21:20:47 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:latest`

```console
$ docker pull couchdb@sha256:7bff6cce6812bd1fe7a9d985d1e7d27ee8351e255a66d847a231cf31384ee4ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:latest` - linux; amd64

```console
$ docker pull couchdb@sha256:bae3d8afb785d11485c2e0d26a0e8c4491bda40141cc674ae8d948c4f2fbce33
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.3 MB (155278442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6240cb1c911172f76165493768794c52eb42660fe31400ad9ef542b4b853833e`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 20:54:53 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Sun, 29 Apr 2018 20:54:55 GMT
RUN groupadd -r couchdb && useradd -d /opt/couchdb -g couchdb couchdb
# Sun, 29 Apr 2018 20:55:52 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     erlang-reltool     haproxy     libicu52     libmozjs185-1.0     openssl   && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 20:55:52 GMT
ENV GOSU_VERSION=1.10
# Sun, 29 Apr 2018 20:55:53 GMT
ENV TINI_VERSION=0.16.1
# Sun, 29 Apr 2018 20:56:16 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini --version; 		apt-get purge -y --auto-remove wget
# Sun, 29 Apr 2018 20:56:17 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B   29E4F38113DF707D722A6EF91FE9AF73118F1A7C   2EC788AE3F239FA13E82D215CDE711289384AE37
# Sun, 29 Apr 2018 20:56:19 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Sun, 29 Apr 2018 20:56:19 GMT
ENV COUCHDB_VERSION=2.1.1
# Sun, 29 Apr 2018 20:57:37 GMT
RUN buildDeps='     apt-transport-https     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     make   '  && apt-get update -y -qq && apt-get install -y --no-install-recommends $buildDeps  && cd /usr/src && mkdir couchdb  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc  && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz  && tar -xzf couchdb.tar.gz -C couchdb --strip-components=1  && cd couchdb  && ./configure --disable-docs  && make release  && mv /usr/src/couchdb/rel/couchdb /opt/  && apt-get purge -y --auto-remove $buildDeps  && rm -rf /var/lib/apt/lists/* /usr/src/couchdb*  && mkdir /opt/couchdb/data  && chown -R couchdb:couchdb /opt/couchdb
# Sun, 29 Apr 2018 20:57:38 GMT
COPY file:6e48edd87a901be3cfaa928bf5b42264b4e3173d6c817b46878bf1104dcff208 in /opt/couchdb/etc/local.d/ 
# Sun, 29 Apr 2018 20:57:38 GMT
COPY file:92f7c74ebcdab3f422f19b237777e707346b0b921cecac100009f5e1e9918e1e in /opt/couchdb/etc/ 
# Sun, 29 Apr 2018 20:57:39 GMT
COPY file:4b6c87a451132457c240370120ddfb8a03af930f0acadd3c8522f18f4c9b7398 in / 
# Sun, 29 Apr 2018 20:57:40 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/local.d/ /opt/couchdb/etc/vm.args
# Sun, 29 Apr 2018 20:57:40 GMT
WORKDIR /opt/couchdb
# Sun, 29 Apr 2018 20:57:40 GMT
EXPOSE 4369/tcp 5984/tcp 9100/tcp
# Sun, 29 Apr 2018 20:57:41 GMT
VOLUME [/opt/couchdb/data]
# Sun, 29 Apr 2018 20:57:41 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 29 Apr 2018 20:57:41 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5294cddac6970aa91d2fedd8cfda1098b4acfe379d8d9265106736b51b81b7`  
		Last Modified: Sun, 29 Apr 2018 21:20:50 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6a85336cac9aeb58f8074c7b7a0873fc14c776585d73c98b85fbf09c855f7b`  
		Last Modified: Sun, 29 Apr 2018 21:21:08 GMT  
		Size: 82.4 MB (82366260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d87d5e171c0a6ab9576617043db972676e44ba73df716b44a93b6c18416947c`  
		Last Modified: Sun, 29 Apr 2018 21:20:50 GMT  
		Size: 911.9 KB (911880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716589880c72e8d7e4791d70d9f0b50db3dfc6ac8a360ce22318ccc2722e062a`  
		Last Modified: Sun, 29 Apr 2018 21:20:50 GMT  
		Size: 527.9 KB (527923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bc8aeaccb112b0d83db405e1c750d412d0531458b08a5b7dcb210216149b396`  
		Last Modified: Sun, 29 Apr 2018 21:20:51 GMT  
		Size: 17.2 MB (17204207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611d52946287424c8deab9ec7445bc7c0e73f6de7745a4a898f99cc87be660e5`  
		Last Modified: Sun, 29 Apr 2018 21:20:47 GMT  
		Size: 382.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7fd7924444673cf1f1838055116420133202c20bd93912c56fb217caae279c`  
		Last Modified: Sun, 29 Apr 2018 21:20:47 GMT  
		Size: 769.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802d849cbebeb1257c8ad7942d30730883eee5f3b2f7ebea17b7420a9a5e264f`  
		Last Modified: Sun, 29 Apr 2018 21:20:48 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46ff06b42b71fb93e883b1e2f5b8a1a96acd5fe3c21254ca66cec87a1f6a4c1`  
		Last Modified: Sun, 29 Apr 2018 21:20:47 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
