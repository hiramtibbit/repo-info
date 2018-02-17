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
$ docker pull couchdb@sha256:5de9259370ae38387b6742f162b36b32533fa7d2a66af7a1d36adf4063266e6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:1` - linux; amd64

```console
$ docker pull couchdb@sha256:9f12560220f96239cdd5822bf8054df281c83e22cb87e1792529c4a3cddd9ca4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.3 MB (105349455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea304ca48adc283f94e12ab7cb1a8d40cc000ffd1ef9949243e1f5706974840d`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:19:16 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Sat, 17 Feb 2018 07:38:40 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Sat, 17 Feb 2018 07:39:06 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:41:28 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Feb 2018 07:41:29 GMT
ENV TINI_VERSION=0.16.1
# Sat, 17 Feb 2018 07:41:44 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends wget;     rm -rf /var/lib/apt/lists/*;         dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')";         wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch";     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;     rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;     chmod +x /usr/local/bin/gosu;     gosu nobody true;         wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch";     wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7;     gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini;     rm -r "$GNUPGHOME" /usr/local/bin/tini.asc;     chmod +x /usr/local/bin/tini;     tini --version;         apt-get purge -y --auto-remove wget
# Sat, 17 Feb 2018 07:41:47 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Sat, 17 Feb 2018 07:41:55 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Sat, 17 Feb 2018 07:41:55 GMT
ENV COUCHDB_VERSION=1.7.1
# Sat, 17 Feb 2018 07:42:57 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL https://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Sat, 17 Feb 2018 07:43:04 GMT
COPY file:5881c18ea19cf9ff03427338ee18f45b99a773da0f61baf103b1ba4166ee1b8f in / 
# Sat, 17 Feb 2018 07:43:04 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Sat, 17 Feb 2018 07:43:05 GMT
EXPOSE 5984/tcp
# Sat, 17 Feb 2018 07:43:05 GMT
WORKDIR /var/lib/couchdb
# Sat, 17 Feb 2018 07:43:05 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 17 Feb 2018 07:43:05 GMT
CMD ["couchdb"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b9d67759b4db2c10ed131e344df94205de930f8540e95c645c0d6401e1b1a2`  
		Last Modified: Sat, 17 Feb 2018 07:58:58 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea3aee64b7e47ba58bacf317cd11676392333a40d549eacc45b0c386e9b98c6`  
		Last Modified: Sat, 17 Feb 2018 07:59:06 GMT  
		Size: 43.8 MB (43766437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6009e0e969e2b80e0e66365947a7cdfbe868a8bfacae069b9882232a8b72617d`  
		Last Modified: Sat, 17 Feb 2018 07:58:56 GMT  
		Size: 827.3 KB (827278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7639048f4549f67b5815fd55f2122dc96a4146fd0488290198914c4596ca59f`  
		Last Modified: Sat, 17 Feb 2018 07:58:56 GMT  
		Size: 512.9 KB (512880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bff60fb420b35f98d45af9602ca737054aac79ae69bd251a91159a6b48c7d7`  
		Last Modified: Sat, 17 Feb 2018 07:58:58 GMT  
		Size: 7.6 MB (7631349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aefb05091c2ebc7d8466c84382ffa83c57fd81477fa0cb2f0059b504b51f794d`  
		Last Modified: Sat, 17 Feb 2018 07:58:56 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:1.7`

```console
$ docker pull couchdb@sha256:5de9259370ae38387b6742f162b36b32533fa7d2a66af7a1d36adf4063266e6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:1.7` - linux; amd64

```console
$ docker pull couchdb@sha256:9f12560220f96239cdd5822bf8054df281c83e22cb87e1792529c4a3cddd9ca4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.3 MB (105349455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea304ca48adc283f94e12ab7cb1a8d40cc000ffd1ef9949243e1f5706974840d`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:19:16 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Sat, 17 Feb 2018 07:38:40 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Sat, 17 Feb 2018 07:39:06 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:41:28 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Feb 2018 07:41:29 GMT
ENV TINI_VERSION=0.16.1
# Sat, 17 Feb 2018 07:41:44 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends wget;     rm -rf /var/lib/apt/lists/*;         dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')";         wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch";     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;     rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;     chmod +x /usr/local/bin/gosu;     gosu nobody true;         wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch";     wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7;     gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini;     rm -r "$GNUPGHOME" /usr/local/bin/tini.asc;     chmod +x /usr/local/bin/tini;     tini --version;         apt-get purge -y --auto-remove wget
# Sat, 17 Feb 2018 07:41:47 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Sat, 17 Feb 2018 07:41:55 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Sat, 17 Feb 2018 07:41:55 GMT
ENV COUCHDB_VERSION=1.7.1
# Sat, 17 Feb 2018 07:42:57 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL https://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Sat, 17 Feb 2018 07:43:04 GMT
COPY file:5881c18ea19cf9ff03427338ee18f45b99a773da0f61baf103b1ba4166ee1b8f in / 
# Sat, 17 Feb 2018 07:43:04 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Sat, 17 Feb 2018 07:43:05 GMT
EXPOSE 5984/tcp
# Sat, 17 Feb 2018 07:43:05 GMT
WORKDIR /var/lib/couchdb
# Sat, 17 Feb 2018 07:43:05 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 17 Feb 2018 07:43:05 GMT
CMD ["couchdb"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b9d67759b4db2c10ed131e344df94205de930f8540e95c645c0d6401e1b1a2`  
		Last Modified: Sat, 17 Feb 2018 07:58:58 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea3aee64b7e47ba58bacf317cd11676392333a40d549eacc45b0c386e9b98c6`  
		Last Modified: Sat, 17 Feb 2018 07:59:06 GMT  
		Size: 43.8 MB (43766437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6009e0e969e2b80e0e66365947a7cdfbe868a8bfacae069b9882232a8b72617d`  
		Last Modified: Sat, 17 Feb 2018 07:58:56 GMT  
		Size: 827.3 KB (827278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7639048f4549f67b5815fd55f2122dc96a4146fd0488290198914c4596ca59f`  
		Last Modified: Sat, 17 Feb 2018 07:58:56 GMT  
		Size: 512.9 KB (512880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bff60fb420b35f98d45af9602ca737054aac79ae69bd251a91159a6b48c7d7`  
		Last Modified: Sat, 17 Feb 2018 07:58:58 GMT  
		Size: 7.6 MB (7631349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aefb05091c2ebc7d8466c84382ffa83c57fd81477fa0cb2f0059b504b51f794d`  
		Last Modified: Sat, 17 Feb 2018 07:58:56 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:1.7.1`

```console
$ docker pull couchdb@sha256:5de9259370ae38387b6742f162b36b32533fa7d2a66af7a1d36adf4063266e6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:1.7.1` - linux; amd64

```console
$ docker pull couchdb@sha256:9f12560220f96239cdd5822bf8054df281c83e22cb87e1792529c4a3cddd9ca4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.3 MB (105349455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea304ca48adc283f94e12ab7cb1a8d40cc000ffd1ef9949243e1f5706974840d`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:19:16 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Sat, 17 Feb 2018 07:38:40 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Sat, 17 Feb 2018 07:39:06 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:41:28 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Feb 2018 07:41:29 GMT
ENV TINI_VERSION=0.16.1
# Sat, 17 Feb 2018 07:41:44 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends wget;     rm -rf /var/lib/apt/lists/*;         dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')";         wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch";     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;     rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;     chmod +x /usr/local/bin/gosu;     gosu nobody true;         wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch";     wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7;     gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini;     rm -r "$GNUPGHOME" /usr/local/bin/tini.asc;     chmod +x /usr/local/bin/tini;     tini --version;         apt-get purge -y --auto-remove wget
# Sat, 17 Feb 2018 07:41:47 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Sat, 17 Feb 2018 07:41:55 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Sat, 17 Feb 2018 07:41:55 GMT
ENV COUCHDB_VERSION=1.7.1
# Sat, 17 Feb 2018 07:42:57 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL https://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Sat, 17 Feb 2018 07:43:04 GMT
COPY file:5881c18ea19cf9ff03427338ee18f45b99a773da0f61baf103b1ba4166ee1b8f in / 
# Sat, 17 Feb 2018 07:43:04 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Sat, 17 Feb 2018 07:43:05 GMT
EXPOSE 5984/tcp
# Sat, 17 Feb 2018 07:43:05 GMT
WORKDIR /var/lib/couchdb
# Sat, 17 Feb 2018 07:43:05 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 17 Feb 2018 07:43:05 GMT
CMD ["couchdb"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b9d67759b4db2c10ed131e344df94205de930f8540e95c645c0d6401e1b1a2`  
		Last Modified: Sat, 17 Feb 2018 07:58:58 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea3aee64b7e47ba58bacf317cd11676392333a40d549eacc45b0c386e9b98c6`  
		Last Modified: Sat, 17 Feb 2018 07:59:06 GMT  
		Size: 43.8 MB (43766437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6009e0e969e2b80e0e66365947a7cdfbe868a8bfacae069b9882232a8b72617d`  
		Last Modified: Sat, 17 Feb 2018 07:58:56 GMT  
		Size: 827.3 KB (827278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7639048f4549f67b5815fd55f2122dc96a4146fd0488290198914c4596ca59f`  
		Last Modified: Sat, 17 Feb 2018 07:58:56 GMT  
		Size: 512.9 KB (512880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bff60fb420b35f98d45af9602ca737054aac79ae69bd251a91159a6b48c7d7`  
		Last Modified: Sat, 17 Feb 2018 07:58:58 GMT  
		Size: 7.6 MB (7631349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aefb05091c2ebc7d8466c84382ffa83c57fd81477fa0cb2f0059b504b51f794d`  
		Last Modified: Sat, 17 Feb 2018 07:58:56 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:1.7.1-couchperuser`

```console
$ docker pull couchdb@sha256:b74ff2e149b7344f7bf7c39e04ae02309aaf96d95e0c6cf72f0499b14dfc9994
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:1.7.1-couchperuser` - linux; amd64

```console
$ docker pull couchdb@sha256:3c340ab4147e93ac8688f60a5a64adfef895fbcca23126937b9a4f8b388c5126
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115721771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eca061efe636710195c5e515706316c557c1a5d05f111c9d18337bb1a01cec0`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:19:16 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Sat, 17 Feb 2018 07:38:40 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Sat, 17 Feb 2018 07:39:06 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:41:28 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Feb 2018 07:41:29 GMT
ENV TINI_VERSION=0.16.1
# Sat, 17 Feb 2018 07:41:44 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends wget;     rm -rf /var/lib/apt/lists/*;         dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')";         wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch";     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;     rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;     chmod +x /usr/local/bin/gosu;     gosu nobody true;         wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch";     wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7;     gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini;     rm -r "$GNUPGHOME" /usr/local/bin/tini.asc;     chmod +x /usr/local/bin/tini;     tini --version;         apt-get purge -y --auto-remove wget
# Sat, 17 Feb 2018 07:41:47 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Sat, 17 Feb 2018 07:41:55 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Sat, 17 Feb 2018 07:41:55 GMT
ENV COUCHDB_VERSION=1.7.1
# Sat, 17 Feb 2018 07:42:57 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL https://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Sat, 17 Feb 2018 07:43:04 GMT
COPY file:5881c18ea19cf9ff03427338ee18f45b99a773da0f61baf103b1ba4166ee1b8f in / 
# Sat, 17 Feb 2018 07:43:04 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Sat, 17 Feb 2018 07:43:05 GMT
EXPOSE 5984/tcp
# Sat, 17 Feb 2018 07:43:05 GMT
WORKDIR /var/lib/couchdb
# Sat, 17 Feb 2018 07:43:05 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 17 Feb 2018 07:43:05 GMT
CMD ["couchdb"]
# Sat, 17 Feb 2018 07:43:39 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Sat, 17 Feb 2018 07:43:40 GMT
ENV COUCHPERUSER_SHA=5d28db3272eea9619d4391b33aae6030f0319ecc54aa2a2f2b6c6a8d448f03f2
# Sat, 17 Feb 2018 07:44:20 GMT
RUN apt-get update && apt-get install -y rebar make  && mkdir -p /usr/local/lib/couchdb/plugins/couchperuser  && cd /usr/local/lib/couchdb/plugins  && curl -L -o couchperuser.tar.gz https://github.com/etrepum/couchperuser/archive/1.1.0.tar.gz  && echo "$COUCHPERUSER_SHA *couchperuser.tar.gz" | sha256sum -c -  && tar -xzf couchperuser.tar.gz -C couchperuser --strip-components=1  && rm couchperuser.tar.gz  && cd couchperuser  && make  && apt-get purge -y --auto-remove rebar make
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b9d67759b4db2c10ed131e344df94205de930f8540e95c645c0d6401e1b1a2`  
		Last Modified: Sat, 17 Feb 2018 07:58:58 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea3aee64b7e47ba58bacf317cd11676392333a40d549eacc45b0c386e9b98c6`  
		Last Modified: Sat, 17 Feb 2018 07:59:06 GMT  
		Size: 43.8 MB (43766437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6009e0e969e2b80e0e66365947a7cdfbe868a8bfacae069b9882232a8b72617d`  
		Last Modified: Sat, 17 Feb 2018 07:58:56 GMT  
		Size: 827.3 KB (827278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7639048f4549f67b5815fd55f2122dc96a4146fd0488290198914c4596ca59f`  
		Last Modified: Sat, 17 Feb 2018 07:58:56 GMT  
		Size: 512.9 KB (512880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bff60fb420b35f98d45af9602ca737054aac79ae69bd251a91159a6b48c7d7`  
		Last Modified: Sat, 17 Feb 2018 07:58:58 GMT  
		Size: 7.6 MB (7631349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aefb05091c2ebc7d8466c84382ffa83c57fd81477fa0cb2f0059b504b51f794d`  
		Last Modified: Sat, 17 Feb 2018 07:58:56 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f3db4c31af0b36061a8c4a6d66c57625b18aa8a61b1f010f13421c45180f5c`  
		Last Modified: Sat, 17 Feb 2018 08:00:11 GMT  
		Size: 10.4 MB (10372316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:1.7-couchperuser`

```console
$ docker pull couchdb@sha256:b74ff2e149b7344f7bf7c39e04ae02309aaf96d95e0c6cf72f0499b14dfc9994
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:1.7-couchperuser` - linux; amd64

```console
$ docker pull couchdb@sha256:3c340ab4147e93ac8688f60a5a64adfef895fbcca23126937b9a4f8b388c5126
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115721771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eca061efe636710195c5e515706316c557c1a5d05f111c9d18337bb1a01cec0`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:19:16 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Sat, 17 Feb 2018 07:38:40 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Sat, 17 Feb 2018 07:39:06 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:41:28 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Feb 2018 07:41:29 GMT
ENV TINI_VERSION=0.16.1
# Sat, 17 Feb 2018 07:41:44 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends wget;     rm -rf /var/lib/apt/lists/*;         dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')";         wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch";     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;     rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;     chmod +x /usr/local/bin/gosu;     gosu nobody true;         wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch";     wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7;     gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini;     rm -r "$GNUPGHOME" /usr/local/bin/tini.asc;     chmod +x /usr/local/bin/tini;     tini --version;         apt-get purge -y --auto-remove wget
# Sat, 17 Feb 2018 07:41:47 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Sat, 17 Feb 2018 07:41:55 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Sat, 17 Feb 2018 07:41:55 GMT
ENV COUCHDB_VERSION=1.7.1
# Sat, 17 Feb 2018 07:42:57 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL https://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Sat, 17 Feb 2018 07:43:04 GMT
COPY file:5881c18ea19cf9ff03427338ee18f45b99a773da0f61baf103b1ba4166ee1b8f in / 
# Sat, 17 Feb 2018 07:43:04 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Sat, 17 Feb 2018 07:43:05 GMT
EXPOSE 5984/tcp
# Sat, 17 Feb 2018 07:43:05 GMT
WORKDIR /var/lib/couchdb
# Sat, 17 Feb 2018 07:43:05 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 17 Feb 2018 07:43:05 GMT
CMD ["couchdb"]
# Sat, 17 Feb 2018 07:43:39 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Sat, 17 Feb 2018 07:43:40 GMT
ENV COUCHPERUSER_SHA=5d28db3272eea9619d4391b33aae6030f0319ecc54aa2a2f2b6c6a8d448f03f2
# Sat, 17 Feb 2018 07:44:20 GMT
RUN apt-get update && apt-get install -y rebar make  && mkdir -p /usr/local/lib/couchdb/plugins/couchperuser  && cd /usr/local/lib/couchdb/plugins  && curl -L -o couchperuser.tar.gz https://github.com/etrepum/couchperuser/archive/1.1.0.tar.gz  && echo "$COUCHPERUSER_SHA *couchperuser.tar.gz" | sha256sum -c -  && tar -xzf couchperuser.tar.gz -C couchperuser --strip-components=1  && rm couchperuser.tar.gz  && cd couchperuser  && make  && apt-get purge -y --auto-remove rebar make
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b9d67759b4db2c10ed131e344df94205de930f8540e95c645c0d6401e1b1a2`  
		Last Modified: Sat, 17 Feb 2018 07:58:58 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea3aee64b7e47ba58bacf317cd11676392333a40d549eacc45b0c386e9b98c6`  
		Last Modified: Sat, 17 Feb 2018 07:59:06 GMT  
		Size: 43.8 MB (43766437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6009e0e969e2b80e0e66365947a7cdfbe868a8bfacae069b9882232a8b72617d`  
		Last Modified: Sat, 17 Feb 2018 07:58:56 GMT  
		Size: 827.3 KB (827278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7639048f4549f67b5815fd55f2122dc96a4146fd0488290198914c4596ca59f`  
		Last Modified: Sat, 17 Feb 2018 07:58:56 GMT  
		Size: 512.9 KB (512880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bff60fb420b35f98d45af9602ca737054aac79ae69bd251a91159a6b48c7d7`  
		Last Modified: Sat, 17 Feb 2018 07:58:58 GMT  
		Size: 7.6 MB (7631349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aefb05091c2ebc7d8466c84382ffa83c57fd81477fa0cb2f0059b504b51f794d`  
		Last Modified: Sat, 17 Feb 2018 07:58:56 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f3db4c31af0b36061a8c4a6d66c57625b18aa8a61b1f010f13421c45180f5c`  
		Last Modified: Sat, 17 Feb 2018 08:00:11 GMT  
		Size: 10.4 MB (10372316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:1-couchperuser`

```console
$ docker pull couchdb@sha256:b74ff2e149b7344f7bf7c39e04ae02309aaf96d95e0c6cf72f0499b14dfc9994
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:1-couchperuser` - linux; amd64

```console
$ docker pull couchdb@sha256:3c340ab4147e93ac8688f60a5a64adfef895fbcca23126937b9a4f8b388c5126
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115721771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eca061efe636710195c5e515706316c557c1a5d05f111c9d18337bb1a01cec0`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:19:16 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Sat, 17 Feb 2018 07:38:40 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Sat, 17 Feb 2018 07:39:06 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:41:28 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Feb 2018 07:41:29 GMT
ENV TINI_VERSION=0.16.1
# Sat, 17 Feb 2018 07:41:44 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends wget;     rm -rf /var/lib/apt/lists/*;         dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')";         wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch";     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;     rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;     chmod +x /usr/local/bin/gosu;     gosu nobody true;         wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch";     wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7;     gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini;     rm -r "$GNUPGHOME" /usr/local/bin/tini.asc;     chmod +x /usr/local/bin/tini;     tini --version;         apt-get purge -y --auto-remove wget
# Sat, 17 Feb 2018 07:41:47 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Sat, 17 Feb 2018 07:41:55 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Sat, 17 Feb 2018 07:41:55 GMT
ENV COUCHDB_VERSION=1.7.1
# Sat, 17 Feb 2018 07:42:57 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL https://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Sat, 17 Feb 2018 07:43:04 GMT
COPY file:5881c18ea19cf9ff03427338ee18f45b99a773da0f61baf103b1ba4166ee1b8f in / 
# Sat, 17 Feb 2018 07:43:04 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Sat, 17 Feb 2018 07:43:05 GMT
EXPOSE 5984/tcp
# Sat, 17 Feb 2018 07:43:05 GMT
WORKDIR /var/lib/couchdb
# Sat, 17 Feb 2018 07:43:05 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 17 Feb 2018 07:43:05 GMT
CMD ["couchdb"]
# Sat, 17 Feb 2018 07:43:39 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Sat, 17 Feb 2018 07:43:40 GMT
ENV COUCHPERUSER_SHA=5d28db3272eea9619d4391b33aae6030f0319ecc54aa2a2f2b6c6a8d448f03f2
# Sat, 17 Feb 2018 07:44:20 GMT
RUN apt-get update && apt-get install -y rebar make  && mkdir -p /usr/local/lib/couchdb/plugins/couchperuser  && cd /usr/local/lib/couchdb/plugins  && curl -L -o couchperuser.tar.gz https://github.com/etrepum/couchperuser/archive/1.1.0.tar.gz  && echo "$COUCHPERUSER_SHA *couchperuser.tar.gz" | sha256sum -c -  && tar -xzf couchperuser.tar.gz -C couchperuser --strip-components=1  && rm couchperuser.tar.gz  && cd couchperuser  && make  && apt-get purge -y --auto-remove rebar make
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b9d67759b4db2c10ed131e344df94205de930f8540e95c645c0d6401e1b1a2`  
		Last Modified: Sat, 17 Feb 2018 07:58:58 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea3aee64b7e47ba58bacf317cd11676392333a40d549eacc45b0c386e9b98c6`  
		Last Modified: Sat, 17 Feb 2018 07:59:06 GMT  
		Size: 43.8 MB (43766437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6009e0e969e2b80e0e66365947a7cdfbe868a8bfacae069b9882232a8b72617d`  
		Last Modified: Sat, 17 Feb 2018 07:58:56 GMT  
		Size: 827.3 KB (827278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7639048f4549f67b5815fd55f2122dc96a4146fd0488290198914c4596ca59f`  
		Last Modified: Sat, 17 Feb 2018 07:58:56 GMT  
		Size: 512.9 KB (512880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bff60fb420b35f98d45af9602ca737054aac79ae69bd251a91159a6b48c7d7`  
		Last Modified: Sat, 17 Feb 2018 07:58:58 GMT  
		Size: 7.6 MB (7631349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aefb05091c2ebc7d8466c84382ffa83c57fd81477fa0cb2f0059b504b51f794d`  
		Last Modified: Sat, 17 Feb 2018 07:58:56 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f3db4c31af0b36061a8c4a6d66c57625b18aa8a61b1f010f13421c45180f5c`  
		Last Modified: Sat, 17 Feb 2018 08:00:11 GMT  
		Size: 10.4 MB (10372316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:2`

```console
$ docker pull couchdb@sha256:b95dce63ab64991640e5c9d4cc1597055690b1c1bb79ab30829d498f5f2301fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2` - linux; amd64

```console
$ docker pull couchdb@sha256:80b69179620f936205c7ef0996cc9d4a92297bed2e356a1ba68d47b9972fcc5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.3 MB (155328099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af415fd5efda805ce0871aa35541d5d69c8f9a8c6db75c062df6b8b50efc6d15`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:19:16 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Sat, 17 Feb 2018 07:19:17 GMT
RUN groupadd -r couchdb && useradd -d /opt/couchdb -g couchdb couchdb
# Sat, 17 Feb 2018 07:20:10 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     erlang-reltool     haproxy     libicu52     libmozjs185-1.0     openssl   && rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:21:00 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Feb 2018 07:21:00 GMT
ENV TINI_VERSION=0.16.1
# Sat, 17 Feb 2018 07:21:17 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini --version; 		apt-get purge -y --auto-remove wget
# Sat, 17 Feb 2018 07:21:17 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B   29E4F38113DF707D722A6EF91FE9AF73118F1A7C   2EC788AE3F239FA13E82D215CDE711289384AE37
# Sat, 17 Feb 2018 07:21:30 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Sat, 17 Feb 2018 07:21:31 GMT
ENV COUCHDB_VERSION=2.1.1
# Sat, 17 Feb 2018 07:22:35 GMT
RUN buildDeps='     apt-transport-https     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     make   '  && apt-get update -y -qq && apt-get install -y --no-install-recommends $buildDeps  && cd /usr/src && mkdir couchdb  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc  && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz  && tar -xzf couchdb.tar.gz -C couchdb --strip-components=1  && cd couchdb  && ./configure --disable-docs  && make release  && mv /usr/src/couchdb/rel/couchdb /opt/  && apt-get purge -y --auto-remove $buildDeps  && rm -rf /var/lib/apt/lists/* /usr/src/couchdb*  && mkdir /opt/couchdb/data  && chown -R couchdb:couchdb /opt/couchdb
# Sat, 17 Feb 2018 07:22:36 GMT
COPY file:6e48edd87a901be3cfaa928bf5b42264b4e3173d6c817b46878bf1104dcff208 in /opt/couchdb/etc/local.d/ 
# Sat, 17 Feb 2018 07:22:36 GMT
COPY file:92f7c74ebcdab3f422f19b237777e707346b0b921cecac100009f5e1e9918e1e in /opt/couchdb/etc/ 
# Sat, 17 Feb 2018 07:22:37 GMT
COPY file:4b6c87a451132457c240370120ddfb8a03af930f0acadd3c8522f18f4c9b7398 in / 
# Sat, 17 Feb 2018 07:22:38 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/local.d/ /opt/couchdb/etc/vm.args
# Sat, 17 Feb 2018 07:22:38 GMT
WORKDIR /opt/couchdb
# Sat, 17 Feb 2018 07:22:38 GMT
EXPOSE 4369/tcp 5984/tcp 9100/tcp
# Sat, 17 Feb 2018 07:22:38 GMT
VOLUME [/opt/couchdb/data]
# Sat, 17 Feb 2018 07:22:39 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 17 Feb 2018 07:22:39 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0a7c71671180fa314bbd715d33922aec024cfa46397179e2c8ccdbd9dd2293`  
		Last Modified: Sat, 17 Feb 2018 07:44:48 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796517a7b990b8d4b3b6d82c25e396850827750d1f414005dc88a7ef87765e06`  
		Last Modified: Sat, 17 Feb 2018 07:45:06 GMT  
		Size: 84.1 MB (84068237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003491b79092e3b868c814ca1388a3dc1f58ce6b5f60d90510d27f2cc5301844`  
		Last Modified: Sat, 17 Feb 2018 07:44:47 GMT  
		Size: 912.7 KB (912714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1502aa8b592555b46ed949ee77bc44c83e0198fb121d2f19a23dcf35c6b0f0b3`  
		Last Modified: Sat, 17 Feb 2018 07:44:46 GMT  
		Size: 527.9 KB (527923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4017d9fa68f9b4fc545f7c530f03b333dc06deb0f9487eb559222f68b02e0cb`  
		Last Modified: Sat, 17 Feb 2018 07:44:48 GMT  
		Size: 17.2 MB (17205332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30bc291a9bfe987d5b5e01508897c80f6476b40e67cc35c4250a669142525a50`  
		Last Modified: Sat, 17 Feb 2018 07:44:44 GMT  
		Size: 383.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4018e1354d8fcd453ce1316378f3c9d36e3eaf4d5a5393a0ead0be1a0436a290`  
		Last Modified: Sat, 17 Feb 2018 07:44:44 GMT  
		Size: 767.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebef40645ea472ff44110229e3055784db2578401110916ace128c39e1c0d8a0`  
		Last Modified: Sat, 17 Feb 2018 07:44:44 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11931e5cbaec92f009894e953617d20672fb8f013a358c0f0049d4ff209e22d`  
		Last Modified: Sat, 17 Feb 2018 07:44:46 GMT  
		Size: 1.1 KB (1138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:2.1`

```console
$ docker pull couchdb@sha256:b95dce63ab64991640e5c9d4cc1597055690b1c1bb79ab30829d498f5f2301fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2.1` - linux; amd64

```console
$ docker pull couchdb@sha256:80b69179620f936205c7ef0996cc9d4a92297bed2e356a1ba68d47b9972fcc5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.3 MB (155328099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af415fd5efda805ce0871aa35541d5d69c8f9a8c6db75c062df6b8b50efc6d15`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:19:16 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Sat, 17 Feb 2018 07:19:17 GMT
RUN groupadd -r couchdb && useradd -d /opt/couchdb -g couchdb couchdb
# Sat, 17 Feb 2018 07:20:10 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     erlang-reltool     haproxy     libicu52     libmozjs185-1.0     openssl   && rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:21:00 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Feb 2018 07:21:00 GMT
ENV TINI_VERSION=0.16.1
# Sat, 17 Feb 2018 07:21:17 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini --version; 		apt-get purge -y --auto-remove wget
# Sat, 17 Feb 2018 07:21:17 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B   29E4F38113DF707D722A6EF91FE9AF73118F1A7C   2EC788AE3F239FA13E82D215CDE711289384AE37
# Sat, 17 Feb 2018 07:21:30 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Sat, 17 Feb 2018 07:21:31 GMT
ENV COUCHDB_VERSION=2.1.1
# Sat, 17 Feb 2018 07:22:35 GMT
RUN buildDeps='     apt-transport-https     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     make   '  && apt-get update -y -qq && apt-get install -y --no-install-recommends $buildDeps  && cd /usr/src && mkdir couchdb  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc  && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz  && tar -xzf couchdb.tar.gz -C couchdb --strip-components=1  && cd couchdb  && ./configure --disable-docs  && make release  && mv /usr/src/couchdb/rel/couchdb /opt/  && apt-get purge -y --auto-remove $buildDeps  && rm -rf /var/lib/apt/lists/* /usr/src/couchdb*  && mkdir /opt/couchdb/data  && chown -R couchdb:couchdb /opt/couchdb
# Sat, 17 Feb 2018 07:22:36 GMT
COPY file:6e48edd87a901be3cfaa928bf5b42264b4e3173d6c817b46878bf1104dcff208 in /opt/couchdb/etc/local.d/ 
# Sat, 17 Feb 2018 07:22:36 GMT
COPY file:92f7c74ebcdab3f422f19b237777e707346b0b921cecac100009f5e1e9918e1e in /opt/couchdb/etc/ 
# Sat, 17 Feb 2018 07:22:37 GMT
COPY file:4b6c87a451132457c240370120ddfb8a03af930f0acadd3c8522f18f4c9b7398 in / 
# Sat, 17 Feb 2018 07:22:38 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/local.d/ /opt/couchdb/etc/vm.args
# Sat, 17 Feb 2018 07:22:38 GMT
WORKDIR /opt/couchdb
# Sat, 17 Feb 2018 07:22:38 GMT
EXPOSE 4369/tcp 5984/tcp 9100/tcp
# Sat, 17 Feb 2018 07:22:38 GMT
VOLUME [/opt/couchdb/data]
# Sat, 17 Feb 2018 07:22:39 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 17 Feb 2018 07:22:39 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0a7c71671180fa314bbd715d33922aec024cfa46397179e2c8ccdbd9dd2293`  
		Last Modified: Sat, 17 Feb 2018 07:44:48 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796517a7b990b8d4b3b6d82c25e396850827750d1f414005dc88a7ef87765e06`  
		Last Modified: Sat, 17 Feb 2018 07:45:06 GMT  
		Size: 84.1 MB (84068237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003491b79092e3b868c814ca1388a3dc1f58ce6b5f60d90510d27f2cc5301844`  
		Last Modified: Sat, 17 Feb 2018 07:44:47 GMT  
		Size: 912.7 KB (912714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1502aa8b592555b46ed949ee77bc44c83e0198fb121d2f19a23dcf35c6b0f0b3`  
		Last Modified: Sat, 17 Feb 2018 07:44:46 GMT  
		Size: 527.9 KB (527923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4017d9fa68f9b4fc545f7c530f03b333dc06deb0f9487eb559222f68b02e0cb`  
		Last Modified: Sat, 17 Feb 2018 07:44:48 GMT  
		Size: 17.2 MB (17205332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30bc291a9bfe987d5b5e01508897c80f6476b40e67cc35c4250a669142525a50`  
		Last Modified: Sat, 17 Feb 2018 07:44:44 GMT  
		Size: 383.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4018e1354d8fcd453ce1316378f3c9d36e3eaf4d5a5393a0ead0be1a0436a290`  
		Last Modified: Sat, 17 Feb 2018 07:44:44 GMT  
		Size: 767.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebef40645ea472ff44110229e3055784db2578401110916ace128c39e1c0d8a0`  
		Last Modified: Sat, 17 Feb 2018 07:44:44 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11931e5cbaec92f009894e953617d20672fb8f013a358c0f0049d4ff209e22d`  
		Last Modified: Sat, 17 Feb 2018 07:44:46 GMT  
		Size: 1.1 KB (1138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:2.1.1`

```console
$ docker pull couchdb@sha256:b95dce63ab64991640e5c9d4cc1597055690b1c1bb79ab30829d498f5f2301fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2.1.1` - linux; amd64

```console
$ docker pull couchdb@sha256:80b69179620f936205c7ef0996cc9d4a92297bed2e356a1ba68d47b9972fcc5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.3 MB (155328099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af415fd5efda805ce0871aa35541d5d69c8f9a8c6db75c062df6b8b50efc6d15`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:19:16 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Sat, 17 Feb 2018 07:19:17 GMT
RUN groupadd -r couchdb && useradd -d /opt/couchdb -g couchdb couchdb
# Sat, 17 Feb 2018 07:20:10 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     erlang-reltool     haproxy     libicu52     libmozjs185-1.0     openssl   && rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:21:00 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Feb 2018 07:21:00 GMT
ENV TINI_VERSION=0.16.1
# Sat, 17 Feb 2018 07:21:17 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini --version; 		apt-get purge -y --auto-remove wget
# Sat, 17 Feb 2018 07:21:17 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B   29E4F38113DF707D722A6EF91FE9AF73118F1A7C   2EC788AE3F239FA13E82D215CDE711289384AE37
# Sat, 17 Feb 2018 07:21:30 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Sat, 17 Feb 2018 07:21:31 GMT
ENV COUCHDB_VERSION=2.1.1
# Sat, 17 Feb 2018 07:22:35 GMT
RUN buildDeps='     apt-transport-https     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     make   '  && apt-get update -y -qq && apt-get install -y --no-install-recommends $buildDeps  && cd /usr/src && mkdir couchdb  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc  && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz  && tar -xzf couchdb.tar.gz -C couchdb --strip-components=1  && cd couchdb  && ./configure --disable-docs  && make release  && mv /usr/src/couchdb/rel/couchdb /opt/  && apt-get purge -y --auto-remove $buildDeps  && rm -rf /var/lib/apt/lists/* /usr/src/couchdb*  && mkdir /opt/couchdb/data  && chown -R couchdb:couchdb /opt/couchdb
# Sat, 17 Feb 2018 07:22:36 GMT
COPY file:6e48edd87a901be3cfaa928bf5b42264b4e3173d6c817b46878bf1104dcff208 in /opt/couchdb/etc/local.d/ 
# Sat, 17 Feb 2018 07:22:36 GMT
COPY file:92f7c74ebcdab3f422f19b237777e707346b0b921cecac100009f5e1e9918e1e in /opt/couchdb/etc/ 
# Sat, 17 Feb 2018 07:22:37 GMT
COPY file:4b6c87a451132457c240370120ddfb8a03af930f0acadd3c8522f18f4c9b7398 in / 
# Sat, 17 Feb 2018 07:22:38 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/local.d/ /opt/couchdb/etc/vm.args
# Sat, 17 Feb 2018 07:22:38 GMT
WORKDIR /opt/couchdb
# Sat, 17 Feb 2018 07:22:38 GMT
EXPOSE 4369/tcp 5984/tcp 9100/tcp
# Sat, 17 Feb 2018 07:22:38 GMT
VOLUME [/opt/couchdb/data]
# Sat, 17 Feb 2018 07:22:39 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 17 Feb 2018 07:22:39 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0a7c71671180fa314bbd715d33922aec024cfa46397179e2c8ccdbd9dd2293`  
		Last Modified: Sat, 17 Feb 2018 07:44:48 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796517a7b990b8d4b3b6d82c25e396850827750d1f414005dc88a7ef87765e06`  
		Last Modified: Sat, 17 Feb 2018 07:45:06 GMT  
		Size: 84.1 MB (84068237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003491b79092e3b868c814ca1388a3dc1f58ce6b5f60d90510d27f2cc5301844`  
		Last Modified: Sat, 17 Feb 2018 07:44:47 GMT  
		Size: 912.7 KB (912714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1502aa8b592555b46ed949ee77bc44c83e0198fb121d2f19a23dcf35c6b0f0b3`  
		Last Modified: Sat, 17 Feb 2018 07:44:46 GMT  
		Size: 527.9 KB (527923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4017d9fa68f9b4fc545f7c530f03b333dc06deb0f9487eb559222f68b02e0cb`  
		Last Modified: Sat, 17 Feb 2018 07:44:48 GMT  
		Size: 17.2 MB (17205332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30bc291a9bfe987d5b5e01508897c80f6476b40e67cc35c4250a669142525a50`  
		Last Modified: Sat, 17 Feb 2018 07:44:44 GMT  
		Size: 383.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4018e1354d8fcd453ce1316378f3c9d36e3eaf4d5a5393a0ead0be1a0436a290`  
		Last Modified: Sat, 17 Feb 2018 07:44:44 GMT  
		Size: 767.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebef40645ea472ff44110229e3055784db2578401110916ace128c39e1c0d8a0`  
		Last Modified: Sat, 17 Feb 2018 07:44:44 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11931e5cbaec92f009894e953617d20672fb8f013a358c0f0049d4ff209e22d`  
		Last Modified: Sat, 17 Feb 2018 07:44:46 GMT  
		Size: 1.1 KB (1138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:latest`

```console
$ docker pull couchdb@sha256:b95dce63ab64991640e5c9d4cc1597055690b1c1bb79ab30829d498f5f2301fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:latest` - linux; amd64

```console
$ docker pull couchdb@sha256:80b69179620f936205c7ef0996cc9d4a92297bed2e356a1ba68d47b9972fcc5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.3 MB (155328099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af415fd5efda805ce0871aa35541d5d69c8f9a8c6db75c062df6b8b50efc6d15`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:19:16 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Sat, 17 Feb 2018 07:19:17 GMT
RUN groupadd -r couchdb && useradd -d /opt/couchdb -g couchdb couchdb
# Sat, 17 Feb 2018 07:20:10 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     erlang-reltool     haproxy     libicu52     libmozjs185-1.0     openssl   && rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:21:00 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Feb 2018 07:21:00 GMT
ENV TINI_VERSION=0.16.1
# Sat, 17 Feb 2018 07:21:17 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini --version; 		apt-get purge -y --auto-remove wget
# Sat, 17 Feb 2018 07:21:17 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B   29E4F38113DF707D722A6EF91FE9AF73118F1A7C   2EC788AE3F239FA13E82D215CDE711289384AE37
# Sat, 17 Feb 2018 07:21:30 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Sat, 17 Feb 2018 07:21:31 GMT
ENV COUCHDB_VERSION=2.1.1
# Sat, 17 Feb 2018 07:22:35 GMT
RUN buildDeps='     apt-transport-https     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     make   '  && apt-get update -y -qq && apt-get install -y --no-install-recommends $buildDeps  && cd /usr/src && mkdir couchdb  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc  && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz  && tar -xzf couchdb.tar.gz -C couchdb --strip-components=1  && cd couchdb  && ./configure --disable-docs  && make release  && mv /usr/src/couchdb/rel/couchdb /opt/  && apt-get purge -y --auto-remove $buildDeps  && rm -rf /var/lib/apt/lists/* /usr/src/couchdb*  && mkdir /opt/couchdb/data  && chown -R couchdb:couchdb /opt/couchdb
# Sat, 17 Feb 2018 07:22:36 GMT
COPY file:6e48edd87a901be3cfaa928bf5b42264b4e3173d6c817b46878bf1104dcff208 in /opt/couchdb/etc/local.d/ 
# Sat, 17 Feb 2018 07:22:36 GMT
COPY file:92f7c74ebcdab3f422f19b237777e707346b0b921cecac100009f5e1e9918e1e in /opt/couchdb/etc/ 
# Sat, 17 Feb 2018 07:22:37 GMT
COPY file:4b6c87a451132457c240370120ddfb8a03af930f0acadd3c8522f18f4c9b7398 in / 
# Sat, 17 Feb 2018 07:22:38 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/local.d/ /opt/couchdb/etc/vm.args
# Sat, 17 Feb 2018 07:22:38 GMT
WORKDIR /opt/couchdb
# Sat, 17 Feb 2018 07:22:38 GMT
EXPOSE 4369/tcp 5984/tcp 9100/tcp
# Sat, 17 Feb 2018 07:22:38 GMT
VOLUME [/opt/couchdb/data]
# Sat, 17 Feb 2018 07:22:39 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 17 Feb 2018 07:22:39 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0a7c71671180fa314bbd715d33922aec024cfa46397179e2c8ccdbd9dd2293`  
		Last Modified: Sat, 17 Feb 2018 07:44:48 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796517a7b990b8d4b3b6d82c25e396850827750d1f414005dc88a7ef87765e06`  
		Last Modified: Sat, 17 Feb 2018 07:45:06 GMT  
		Size: 84.1 MB (84068237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003491b79092e3b868c814ca1388a3dc1f58ce6b5f60d90510d27f2cc5301844`  
		Last Modified: Sat, 17 Feb 2018 07:44:47 GMT  
		Size: 912.7 KB (912714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1502aa8b592555b46ed949ee77bc44c83e0198fb121d2f19a23dcf35c6b0f0b3`  
		Last Modified: Sat, 17 Feb 2018 07:44:46 GMT  
		Size: 527.9 KB (527923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4017d9fa68f9b4fc545f7c530f03b333dc06deb0f9487eb559222f68b02e0cb`  
		Last Modified: Sat, 17 Feb 2018 07:44:48 GMT  
		Size: 17.2 MB (17205332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30bc291a9bfe987d5b5e01508897c80f6476b40e67cc35c4250a669142525a50`  
		Last Modified: Sat, 17 Feb 2018 07:44:44 GMT  
		Size: 383.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4018e1354d8fcd453ce1316378f3c9d36e3eaf4d5a5393a0ead0be1a0436a290`  
		Last Modified: Sat, 17 Feb 2018 07:44:44 GMT  
		Size: 767.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebef40645ea472ff44110229e3055784db2578401110916ace128c39e1c0d8a0`  
		Last Modified: Sat, 17 Feb 2018 07:44:44 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11931e5cbaec92f009894e953617d20672fb8f013a358c0f0049d4ff209e22d`  
		Last Modified: Sat, 17 Feb 2018 07:44:46 GMT  
		Size: 1.1 KB (1138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
