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
$ docker pull couchdb@sha256:152cb5a8eaeb5777930d84a3a9b948fee11d8aedc02c811fbbf5bb2b14bc1556
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:1` - linux; amd64

```console
$ docker pull couchdb@sha256:2235fd49044233dd04ce440ff43edc6e67792b7287fbfe97ade59176d593aeb8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.3 MB (105349715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab618d80098362cdbb805c8551dee0859cec5f309b78986c6263f0773cfa4d8a`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 03:27:59 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Wed, 14 Mar 2018 03:33:47 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Wed, 14 Mar 2018 03:34:20 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 03:34:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 03:34:20 GMT
ENV TINI_VERSION=0.16.1
# Wed, 14 Mar 2018 03:34:44 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends wget;     rm -rf /var/lib/apt/lists/*;         dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')";         wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch";     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;     rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;     chmod +x /usr/local/bin/gosu;     gosu nobody true;         wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch";     wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7;     gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini;     rm -r "$GNUPGHOME" /usr/local/bin/tini.asc;     chmod +x /usr/local/bin/tini;     tini --version;         apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 03:34:44 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Wed, 14 Mar 2018 03:34:52 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 14 Mar 2018 03:34:52 GMT
ENV COUCHDB_VERSION=1.7.1
# Wed, 14 Mar 2018 03:36:03 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL https://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Wed, 14 Mar 2018 03:36:03 GMT
COPY file:5881c18ea19cf9ff03427338ee18f45b99a773da0f61baf103b1ba4166ee1b8f in / 
# Wed, 14 Mar 2018 03:36:03 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Wed, 14 Mar 2018 03:36:03 GMT
EXPOSE 5984/tcp
# Wed, 14 Mar 2018 03:36:04 GMT
WORKDIR /var/lib/couchdb
# Wed, 14 Mar 2018 03:36:04 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 03:36:04 GMT
CMD ["couchdb"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3af4295e9e23224d81afe02f3acd3516f0dbd82b70d09b401e81662c377a7f`  
		Last Modified: Wed, 14 Mar 2018 03:39:03 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65925f3c606e7225b03023eaaf143d33a5d75c530fe2e5a9bb84e7f84d83b651`  
		Last Modified: Wed, 14 Mar 2018 03:39:08 GMT  
		Size: 43.8 MB (43766461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfed9b255cf58184b7d1a3fbb90071a7a8a82bcee065692b17f6068b2a47f08`  
		Last Modified: Wed, 14 Mar 2018 03:39:01 GMT  
		Size: 827.2 KB (827232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b22d8552807c3b5d8c9861b08e784ca209148f90a720364184240b27305e61b9`  
		Last Modified: Wed, 14 Mar 2018 03:39:01 GMT  
		Size: 512.9 KB (512882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b55da321d8e3dfc7161f1a34a2d32029304cacad9f215fcf1ab68ffba5bf05`  
		Last Modified: Wed, 14 Mar 2018 03:39:02 GMT  
		Size: 7.6 MB (7631393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac6677aecee06db6710c19769f32a8cbcb6ba60d8c13aff1d0ef1c95f433055`  
		Last Modified: Wed, 14 Mar 2018 03:39:01 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:1.7`

```console
$ docker pull couchdb@sha256:152cb5a8eaeb5777930d84a3a9b948fee11d8aedc02c811fbbf5bb2b14bc1556
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:1.7` - linux; amd64

```console
$ docker pull couchdb@sha256:2235fd49044233dd04ce440ff43edc6e67792b7287fbfe97ade59176d593aeb8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.3 MB (105349715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab618d80098362cdbb805c8551dee0859cec5f309b78986c6263f0773cfa4d8a`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 03:27:59 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Wed, 14 Mar 2018 03:33:47 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Wed, 14 Mar 2018 03:34:20 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 03:34:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 03:34:20 GMT
ENV TINI_VERSION=0.16.1
# Wed, 14 Mar 2018 03:34:44 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends wget;     rm -rf /var/lib/apt/lists/*;         dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')";         wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch";     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;     rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;     chmod +x /usr/local/bin/gosu;     gosu nobody true;         wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch";     wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7;     gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini;     rm -r "$GNUPGHOME" /usr/local/bin/tini.asc;     chmod +x /usr/local/bin/tini;     tini --version;         apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 03:34:44 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Wed, 14 Mar 2018 03:34:52 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 14 Mar 2018 03:34:52 GMT
ENV COUCHDB_VERSION=1.7.1
# Wed, 14 Mar 2018 03:36:03 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL https://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Wed, 14 Mar 2018 03:36:03 GMT
COPY file:5881c18ea19cf9ff03427338ee18f45b99a773da0f61baf103b1ba4166ee1b8f in / 
# Wed, 14 Mar 2018 03:36:03 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Wed, 14 Mar 2018 03:36:03 GMT
EXPOSE 5984/tcp
# Wed, 14 Mar 2018 03:36:04 GMT
WORKDIR /var/lib/couchdb
# Wed, 14 Mar 2018 03:36:04 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 03:36:04 GMT
CMD ["couchdb"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3af4295e9e23224d81afe02f3acd3516f0dbd82b70d09b401e81662c377a7f`  
		Last Modified: Wed, 14 Mar 2018 03:39:03 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65925f3c606e7225b03023eaaf143d33a5d75c530fe2e5a9bb84e7f84d83b651`  
		Last Modified: Wed, 14 Mar 2018 03:39:08 GMT  
		Size: 43.8 MB (43766461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfed9b255cf58184b7d1a3fbb90071a7a8a82bcee065692b17f6068b2a47f08`  
		Last Modified: Wed, 14 Mar 2018 03:39:01 GMT  
		Size: 827.2 KB (827232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b22d8552807c3b5d8c9861b08e784ca209148f90a720364184240b27305e61b9`  
		Last Modified: Wed, 14 Mar 2018 03:39:01 GMT  
		Size: 512.9 KB (512882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b55da321d8e3dfc7161f1a34a2d32029304cacad9f215fcf1ab68ffba5bf05`  
		Last Modified: Wed, 14 Mar 2018 03:39:02 GMT  
		Size: 7.6 MB (7631393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac6677aecee06db6710c19769f32a8cbcb6ba60d8c13aff1d0ef1c95f433055`  
		Last Modified: Wed, 14 Mar 2018 03:39:01 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:1.7.1`

```console
$ docker pull couchdb@sha256:152cb5a8eaeb5777930d84a3a9b948fee11d8aedc02c811fbbf5bb2b14bc1556
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:1.7.1` - linux; amd64

```console
$ docker pull couchdb@sha256:2235fd49044233dd04ce440ff43edc6e67792b7287fbfe97ade59176d593aeb8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.3 MB (105349715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab618d80098362cdbb805c8551dee0859cec5f309b78986c6263f0773cfa4d8a`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 03:27:59 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Wed, 14 Mar 2018 03:33:47 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Wed, 14 Mar 2018 03:34:20 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 03:34:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 03:34:20 GMT
ENV TINI_VERSION=0.16.1
# Wed, 14 Mar 2018 03:34:44 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends wget;     rm -rf /var/lib/apt/lists/*;         dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')";         wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch";     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;     rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;     chmod +x /usr/local/bin/gosu;     gosu nobody true;         wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch";     wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7;     gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini;     rm -r "$GNUPGHOME" /usr/local/bin/tini.asc;     chmod +x /usr/local/bin/tini;     tini --version;         apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 03:34:44 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Wed, 14 Mar 2018 03:34:52 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 14 Mar 2018 03:34:52 GMT
ENV COUCHDB_VERSION=1.7.1
# Wed, 14 Mar 2018 03:36:03 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL https://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Wed, 14 Mar 2018 03:36:03 GMT
COPY file:5881c18ea19cf9ff03427338ee18f45b99a773da0f61baf103b1ba4166ee1b8f in / 
# Wed, 14 Mar 2018 03:36:03 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Wed, 14 Mar 2018 03:36:03 GMT
EXPOSE 5984/tcp
# Wed, 14 Mar 2018 03:36:04 GMT
WORKDIR /var/lib/couchdb
# Wed, 14 Mar 2018 03:36:04 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 03:36:04 GMT
CMD ["couchdb"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3af4295e9e23224d81afe02f3acd3516f0dbd82b70d09b401e81662c377a7f`  
		Last Modified: Wed, 14 Mar 2018 03:39:03 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65925f3c606e7225b03023eaaf143d33a5d75c530fe2e5a9bb84e7f84d83b651`  
		Last Modified: Wed, 14 Mar 2018 03:39:08 GMT  
		Size: 43.8 MB (43766461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfed9b255cf58184b7d1a3fbb90071a7a8a82bcee065692b17f6068b2a47f08`  
		Last Modified: Wed, 14 Mar 2018 03:39:01 GMT  
		Size: 827.2 KB (827232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b22d8552807c3b5d8c9861b08e784ca209148f90a720364184240b27305e61b9`  
		Last Modified: Wed, 14 Mar 2018 03:39:01 GMT  
		Size: 512.9 KB (512882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b55da321d8e3dfc7161f1a34a2d32029304cacad9f215fcf1ab68ffba5bf05`  
		Last Modified: Wed, 14 Mar 2018 03:39:02 GMT  
		Size: 7.6 MB (7631393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac6677aecee06db6710c19769f32a8cbcb6ba60d8c13aff1d0ef1c95f433055`  
		Last Modified: Wed, 14 Mar 2018 03:39:01 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:1.7.1-couchperuser`

```console
$ docker pull couchdb@sha256:5133eea5d32e5325c84f8e26eac3ec1bd713a590df1fdfd28ade5057ea287d8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:1.7.1-couchperuser` - linux; amd64

```console
$ docker pull couchdb@sha256:e9159b1790fead17091aa97e31d6793819344182337d42a60f9dccb86306ece8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115745312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2422c5578d60f5eb81871de8422f1661612aeac8e631f5ae09bd753f51a1c4c7`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 03:27:59 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Wed, 14 Mar 2018 03:33:47 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Wed, 14 Mar 2018 03:34:20 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 03:34:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 03:34:20 GMT
ENV TINI_VERSION=0.16.1
# Wed, 14 Mar 2018 03:34:44 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends wget;     rm -rf /var/lib/apt/lists/*;         dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')";         wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch";     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;     rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;     chmod +x /usr/local/bin/gosu;     gosu nobody true;         wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch";     wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7;     gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini;     rm -r "$GNUPGHOME" /usr/local/bin/tini.asc;     chmod +x /usr/local/bin/tini;     tini --version;         apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 03:34:44 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Wed, 14 Mar 2018 03:34:52 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 14 Mar 2018 03:34:52 GMT
ENV COUCHDB_VERSION=1.7.1
# Wed, 14 Mar 2018 03:36:03 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL https://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Wed, 14 Mar 2018 03:36:03 GMT
COPY file:5881c18ea19cf9ff03427338ee18f45b99a773da0f61baf103b1ba4166ee1b8f in / 
# Wed, 14 Mar 2018 03:36:03 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Wed, 14 Mar 2018 03:36:03 GMT
EXPOSE 5984/tcp
# Wed, 14 Mar 2018 03:36:04 GMT
WORKDIR /var/lib/couchdb
# Wed, 14 Mar 2018 03:36:04 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 03:36:04 GMT
CMD ["couchdb"]
# Wed, 14 Mar 2018 03:36:20 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Wed, 14 Mar 2018 03:36:20 GMT
ENV COUCHPERUSER_SHA=5d28db3272eea9619d4391b33aae6030f0319ecc54aa2a2f2b6c6a8d448f03f2
# Wed, 14 Mar 2018 03:37:10 GMT
RUN apt-get update && apt-get install -y rebar make  && mkdir -p /usr/local/lib/couchdb/plugins/couchperuser  && cd /usr/local/lib/couchdb/plugins  && curl -L -o couchperuser.tar.gz https://github.com/etrepum/couchperuser/archive/1.1.0.tar.gz  && echo "$COUCHPERUSER_SHA *couchperuser.tar.gz" | sha256sum -c -  && tar -xzf couchperuser.tar.gz -C couchperuser --strip-components=1  && rm couchperuser.tar.gz  && cd couchperuser  && make  && apt-get purge -y --auto-remove rebar make
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3af4295e9e23224d81afe02f3acd3516f0dbd82b70d09b401e81662c377a7f`  
		Last Modified: Wed, 14 Mar 2018 03:39:03 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65925f3c606e7225b03023eaaf143d33a5d75c530fe2e5a9bb84e7f84d83b651`  
		Last Modified: Wed, 14 Mar 2018 03:39:08 GMT  
		Size: 43.8 MB (43766461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfed9b255cf58184b7d1a3fbb90071a7a8a82bcee065692b17f6068b2a47f08`  
		Last Modified: Wed, 14 Mar 2018 03:39:01 GMT  
		Size: 827.2 KB (827232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b22d8552807c3b5d8c9861b08e784ca209148f90a720364184240b27305e61b9`  
		Last Modified: Wed, 14 Mar 2018 03:39:01 GMT  
		Size: 512.9 KB (512882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b55da321d8e3dfc7161f1a34a2d32029304cacad9f215fcf1ab68ffba5bf05`  
		Last Modified: Wed, 14 Mar 2018 03:39:02 GMT  
		Size: 7.6 MB (7631393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac6677aecee06db6710c19769f32a8cbcb6ba60d8c13aff1d0ef1c95f433055`  
		Last Modified: Wed, 14 Mar 2018 03:39:01 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d18d3035e0f46ec6cb8e30bfa757f3422a184b7ba8c1baa83deaf6575162105`  
		Last Modified: Wed, 14 Mar 2018 03:40:03 GMT  
		Size: 10.4 MB (10395597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:1.7-couchperuser`

```console
$ docker pull couchdb@sha256:5133eea5d32e5325c84f8e26eac3ec1bd713a590df1fdfd28ade5057ea287d8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:1.7-couchperuser` - linux; amd64

```console
$ docker pull couchdb@sha256:e9159b1790fead17091aa97e31d6793819344182337d42a60f9dccb86306ece8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115745312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2422c5578d60f5eb81871de8422f1661612aeac8e631f5ae09bd753f51a1c4c7`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 03:27:59 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Wed, 14 Mar 2018 03:33:47 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Wed, 14 Mar 2018 03:34:20 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 03:34:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 03:34:20 GMT
ENV TINI_VERSION=0.16.1
# Wed, 14 Mar 2018 03:34:44 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends wget;     rm -rf /var/lib/apt/lists/*;         dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')";         wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch";     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;     rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;     chmod +x /usr/local/bin/gosu;     gosu nobody true;         wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch";     wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7;     gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini;     rm -r "$GNUPGHOME" /usr/local/bin/tini.asc;     chmod +x /usr/local/bin/tini;     tini --version;         apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 03:34:44 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Wed, 14 Mar 2018 03:34:52 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 14 Mar 2018 03:34:52 GMT
ENV COUCHDB_VERSION=1.7.1
# Wed, 14 Mar 2018 03:36:03 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL https://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Wed, 14 Mar 2018 03:36:03 GMT
COPY file:5881c18ea19cf9ff03427338ee18f45b99a773da0f61baf103b1ba4166ee1b8f in / 
# Wed, 14 Mar 2018 03:36:03 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Wed, 14 Mar 2018 03:36:03 GMT
EXPOSE 5984/tcp
# Wed, 14 Mar 2018 03:36:04 GMT
WORKDIR /var/lib/couchdb
# Wed, 14 Mar 2018 03:36:04 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 03:36:04 GMT
CMD ["couchdb"]
# Wed, 14 Mar 2018 03:36:20 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Wed, 14 Mar 2018 03:36:20 GMT
ENV COUCHPERUSER_SHA=5d28db3272eea9619d4391b33aae6030f0319ecc54aa2a2f2b6c6a8d448f03f2
# Wed, 14 Mar 2018 03:37:10 GMT
RUN apt-get update && apt-get install -y rebar make  && mkdir -p /usr/local/lib/couchdb/plugins/couchperuser  && cd /usr/local/lib/couchdb/plugins  && curl -L -o couchperuser.tar.gz https://github.com/etrepum/couchperuser/archive/1.1.0.tar.gz  && echo "$COUCHPERUSER_SHA *couchperuser.tar.gz" | sha256sum -c -  && tar -xzf couchperuser.tar.gz -C couchperuser --strip-components=1  && rm couchperuser.tar.gz  && cd couchperuser  && make  && apt-get purge -y --auto-remove rebar make
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3af4295e9e23224d81afe02f3acd3516f0dbd82b70d09b401e81662c377a7f`  
		Last Modified: Wed, 14 Mar 2018 03:39:03 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65925f3c606e7225b03023eaaf143d33a5d75c530fe2e5a9bb84e7f84d83b651`  
		Last Modified: Wed, 14 Mar 2018 03:39:08 GMT  
		Size: 43.8 MB (43766461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfed9b255cf58184b7d1a3fbb90071a7a8a82bcee065692b17f6068b2a47f08`  
		Last Modified: Wed, 14 Mar 2018 03:39:01 GMT  
		Size: 827.2 KB (827232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b22d8552807c3b5d8c9861b08e784ca209148f90a720364184240b27305e61b9`  
		Last Modified: Wed, 14 Mar 2018 03:39:01 GMT  
		Size: 512.9 KB (512882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b55da321d8e3dfc7161f1a34a2d32029304cacad9f215fcf1ab68ffba5bf05`  
		Last Modified: Wed, 14 Mar 2018 03:39:02 GMT  
		Size: 7.6 MB (7631393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac6677aecee06db6710c19769f32a8cbcb6ba60d8c13aff1d0ef1c95f433055`  
		Last Modified: Wed, 14 Mar 2018 03:39:01 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d18d3035e0f46ec6cb8e30bfa757f3422a184b7ba8c1baa83deaf6575162105`  
		Last Modified: Wed, 14 Mar 2018 03:40:03 GMT  
		Size: 10.4 MB (10395597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:1-couchperuser`

```console
$ docker pull couchdb@sha256:5133eea5d32e5325c84f8e26eac3ec1bd713a590df1fdfd28ade5057ea287d8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:1-couchperuser` - linux; amd64

```console
$ docker pull couchdb@sha256:e9159b1790fead17091aa97e31d6793819344182337d42a60f9dccb86306ece8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115745312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2422c5578d60f5eb81871de8422f1661612aeac8e631f5ae09bd753f51a1c4c7`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 03:27:59 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Wed, 14 Mar 2018 03:33:47 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Wed, 14 Mar 2018 03:34:20 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 03:34:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 03:34:20 GMT
ENV TINI_VERSION=0.16.1
# Wed, 14 Mar 2018 03:34:44 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends wget;     rm -rf /var/lib/apt/lists/*;         dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')";         wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch";     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;     rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;     chmod +x /usr/local/bin/gosu;     gosu nobody true;         wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch";     wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7;     gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini;     rm -r "$GNUPGHOME" /usr/local/bin/tini.asc;     chmod +x /usr/local/bin/tini;     tini --version;         apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 03:34:44 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Wed, 14 Mar 2018 03:34:52 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 14 Mar 2018 03:34:52 GMT
ENV COUCHDB_VERSION=1.7.1
# Wed, 14 Mar 2018 03:36:03 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL https://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Wed, 14 Mar 2018 03:36:03 GMT
COPY file:5881c18ea19cf9ff03427338ee18f45b99a773da0f61baf103b1ba4166ee1b8f in / 
# Wed, 14 Mar 2018 03:36:03 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Wed, 14 Mar 2018 03:36:03 GMT
EXPOSE 5984/tcp
# Wed, 14 Mar 2018 03:36:04 GMT
WORKDIR /var/lib/couchdb
# Wed, 14 Mar 2018 03:36:04 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 03:36:04 GMT
CMD ["couchdb"]
# Wed, 14 Mar 2018 03:36:20 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Wed, 14 Mar 2018 03:36:20 GMT
ENV COUCHPERUSER_SHA=5d28db3272eea9619d4391b33aae6030f0319ecc54aa2a2f2b6c6a8d448f03f2
# Wed, 14 Mar 2018 03:37:10 GMT
RUN apt-get update && apt-get install -y rebar make  && mkdir -p /usr/local/lib/couchdb/plugins/couchperuser  && cd /usr/local/lib/couchdb/plugins  && curl -L -o couchperuser.tar.gz https://github.com/etrepum/couchperuser/archive/1.1.0.tar.gz  && echo "$COUCHPERUSER_SHA *couchperuser.tar.gz" | sha256sum -c -  && tar -xzf couchperuser.tar.gz -C couchperuser --strip-components=1  && rm couchperuser.tar.gz  && cd couchperuser  && make  && apt-get purge -y --auto-remove rebar make
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3af4295e9e23224d81afe02f3acd3516f0dbd82b70d09b401e81662c377a7f`  
		Last Modified: Wed, 14 Mar 2018 03:39:03 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65925f3c606e7225b03023eaaf143d33a5d75c530fe2e5a9bb84e7f84d83b651`  
		Last Modified: Wed, 14 Mar 2018 03:39:08 GMT  
		Size: 43.8 MB (43766461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfed9b255cf58184b7d1a3fbb90071a7a8a82bcee065692b17f6068b2a47f08`  
		Last Modified: Wed, 14 Mar 2018 03:39:01 GMT  
		Size: 827.2 KB (827232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b22d8552807c3b5d8c9861b08e784ca209148f90a720364184240b27305e61b9`  
		Last Modified: Wed, 14 Mar 2018 03:39:01 GMT  
		Size: 512.9 KB (512882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b55da321d8e3dfc7161f1a34a2d32029304cacad9f215fcf1ab68ffba5bf05`  
		Last Modified: Wed, 14 Mar 2018 03:39:02 GMT  
		Size: 7.6 MB (7631393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac6677aecee06db6710c19769f32a8cbcb6ba60d8c13aff1d0ef1c95f433055`  
		Last Modified: Wed, 14 Mar 2018 03:39:01 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d18d3035e0f46ec6cb8e30bfa757f3422a184b7ba8c1baa83deaf6575162105`  
		Last Modified: Wed, 14 Mar 2018 03:40:03 GMT  
		Size: 10.4 MB (10395597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:2`

```console
$ docker pull couchdb@sha256:91d0e1fcd8ee367af230d2c5e2c2d98ac9082c54ef979c4c48952b4313c8d9b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2` - linux; amd64

```console
$ docker pull couchdb@sha256:3651ab6d91ed08632261eb8be0ccd02148ecdd15747340b7dbdc2b3aba165451
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.3 MB (155328364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:612df5f2561639ffb508a6533e66e630019d4f3775c093ca77d124552da21d7e`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 03:27:59 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Wed, 14 Mar 2018 03:28:00 GMT
RUN groupadd -r couchdb && useradd -d /opt/couchdb -g couchdb couchdb
# Wed, 14 Mar 2018 03:29:01 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     erlang-reltool     haproxy     libicu52     libmozjs185-1.0     openssl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 03:29:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 03:29:02 GMT
ENV TINI_VERSION=0.16.1
# Wed, 14 Mar 2018 03:29:28 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini --version; 		apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 03:29:28 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B   29E4F38113DF707D722A6EF91FE9AF73118F1A7C   2EC788AE3F239FA13E82D215CDE711289384AE37
# Wed, 14 Mar 2018 03:29:38 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 14 Mar 2018 03:29:38 GMT
ENV COUCHDB_VERSION=2.1.1
# Wed, 14 Mar 2018 03:30:53 GMT
RUN buildDeps='     apt-transport-https     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     make   '  && apt-get update -y -qq && apt-get install -y --no-install-recommends $buildDeps  && cd /usr/src && mkdir couchdb  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc  && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz  && tar -xzf couchdb.tar.gz -C couchdb --strip-components=1  && cd couchdb  && ./configure --disable-docs  && make release  && mv /usr/src/couchdb/rel/couchdb /opt/  && apt-get purge -y --auto-remove $buildDeps  && rm -rf /var/lib/apt/lists/* /usr/src/couchdb*  && mkdir /opt/couchdb/data  && chown -R couchdb:couchdb /opt/couchdb
# Wed, 14 Mar 2018 03:30:53 GMT
COPY file:6e48edd87a901be3cfaa928bf5b42264b4e3173d6c817b46878bf1104dcff208 in /opt/couchdb/etc/local.d/ 
# Wed, 14 Mar 2018 03:30:53 GMT
COPY file:92f7c74ebcdab3f422f19b237777e707346b0b921cecac100009f5e1e9918e1e in /opt/couchdb/etc/ 
# Wed, 14 Mar 2018 03:30:54 GMT
COPY file:4b6c87a451132457c240370120ddfb8a03af930f0acadd3c8522f18f4c9b7398 in / 
# Wed, 14 Mar 2018 03:30:55 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/local.d/ /opt/couchdb/etc/vm.args
# Wed, 14 Mar 2018 03:30:55 GMT
WORKDIR /opt/couchdb
# Wed, 14 Mar 2018 03:30:55 GMT
EXPOSE 4369/tcp 5984/tcp 9100/tcp
# Wed, 14 Mar 2018 03:30:55 GMT
VOLUME [/opt/couchdb/data]
# Wed, 14 Mar 2018 03:30:56 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 03:30:56 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc056b9e97a957fea7a0a1cddbdf4b70630a80db512ebd5247aa9e06308bc5e6`  
		Last Modified: Wed, 14 Mar 2018 03:37:41 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a95a5200804dddfb9ebf34af887b8e4db00a54c26e3eb432668f1b6c78c5557`  
		Last Modified: Wed, 14 Mar 2018 03:37:49 GMT  
		Size: 84.1 MB (84068428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e4d1c84e272a7f706ef9229af41a604fa2b08781151787e055f7868f543ccb`  
		Last Modified: Wed, 14 Mar 2018 03:37:40 GMT  
		Size: 912.7 KB (912711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf941ed1c9f4f9538df10d79aedfbe98496d9cb7c651e1779b9c78b0f8e61bc8`  
		Last Modified: Wed, 14 Mar 2018 03:37:39 GMT  
		Size: 527.9 KB (527922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6091a7f82638fe14d503e2e8bac78267067aa37fe275e93c7b38d033bcbba24`  
		Last Modified: Wed, 14 Mar 2018 03:37:39 GMT  
		Size: 17.2 MB (17205181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f99db766caa5e2ab74490c0a449baac805516433642e5ddf320370e4f98254d`  
		Last Modified: Wed, 14 Mar 2018 03:37:37 GMT  
		Size: 382.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330a476295d9a50b976e8d94b709ea45277e261765bea7f130f275f6c324c462`  
		Last Modified: Wed, 14 Mar 2018 03:37:41 GMT  
		Size: 769.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48b64333d7978031d330375dac1118775776bb9f597452df82930c746406b53`  
		Last Modified: Wed, 14 Mar 2018 03:37:37 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a431c76cc2b01eea6703ef8b9ec3c0efa2689af048ff75b0d79e4fa6c8385f0`  
		Last Modified: Wed, 14 Mar 2018 03:37:37 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:2.1`

```console
$ docker pull couchdb@sha256:91d0e1fcd8ee367af230d2c5e2c2d98ac9082c54ef979c4c48952b4313c8d9b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2.1` - linux; amd64

```console
$ docker pull couchdb@sha256:3651ab6d91ed08632261eb8be0ccd02148ecdd15747340b7dbdc2b3aba165451
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.3 MB (155328364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:612df5f2561639ffb508a6533e66e630019d4f3775c093ca77d124552da21d7e`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 03:27:59 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Wed, 14 Mar 2018 03:28:00 GMT
RUN groupadd -r couchdb && useradd -d /opt/couchdb -g couchdb couchdb
# Wed, 14 Mar 2018 03:29:01 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     erlang-reltool     haproxy     libicu52     libmozjs185-1.0     openssl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 03:29:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 03:29:02 GMT
ENV TINI_VERSION=0.16.1
# Wed, 14 Mar 2018 03:29:28 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini --version; 		apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 03:29:28 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B   29E4F38113DF707D722A6EF91FE9AF73118F1A7C   2EC788AE3F239FA13E82D215CDE711289384AE37
# Wed, 14 Mar 2018 03:29:38 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 14 Mar 2018 03:29:38 GMT
ENV COUCHDB_VERSION=2.1.1
# Wed, 14 Mar 2018 03:30:53 GMT
RUN buildDeps='     apt-transport-https     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     make   '  && apt-get update -y -qq && apt-get install -y --no-install-recommends $buildDeps  && cd /usr/src && mkdir couchdb  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc  && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz  && tar -xzf couchdb.tar.gz -C couchdb --strip-components=1  && cd couchdb  && ./configure --disable-docs  && make release  && mv /usr/src/couchdb/rel/couchdb /opt/  && apt-get purge -y --auto-remove $buildDeps  && rm -rf /var/lib/apt/lists/* /usr/src/couchdb*  && mkdir /opt/couchdb/data  && chown -R couchdb:couchdb /opt/couchdb
# Wed, 14 Mar 2018 03:30:53 GMT
COPY file:6e48edd87a901be3cfaa928bf5b42264b4e3173d6c817b46878bf1104dcff208 in /opt/couchdb/etc/local.d/ 
# Wed, 14 Mar 2018 03:30:53 GMT
COPY file:92f7c74ebcdab3f422f19b237777e707346b0b921cecac100009f5e1e9918e1e in /opt/couchdb/etc/ 
# Wed, 14 Mar 2018 03:30:54 GMT
COPY file:4b6c87a451132457c240370120ddfb8a03af930f0acadd3c8522f18f4c9b7398 in / 
# Wed, 14 Mar 2018 03:30:55 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/local.d/ /opt/couchdb/etc/vm.args
# Wed, 14 Mar 2018 03:30:55 GMT
WORKDIR /opt/couchdb
# Wed, 14 Mar 2018 03:30:55 GMT
EXPOSE 4369/tcp 5984/tcp 9100/tcp
# Wed, 14 Mar 2018 03:30:55 GMT
VOLUME [/opt/couchdb/data]
# Wed, 14 Mar 2018 03:30:56 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 03:30:56 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc056b9e97a957fea7a0a1cddbdf4b70630a80db512ebd5247aa9e06308bc5e6`  
		Last Modified: Wed, 14 Mar 2018 03:37:41 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a95a5200804dddfb9ebf34af887b8e4db00a54c26e3eb432668f1b6c78c5557`  
		Last Modified: Wed, 14 Mar 2018 03:37:49 GMT  
		Size: 84.1 MB (84068428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e4d1c84e272a7f706ef9229af41a604fa2b08781151787e055f7868f543ccb`  
		Last Modified: Wed, 14 Mar 2018 03:37:40 GMT  
		Size: 912.7 KB (912711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf941ed1c9f4f9538df10d79aedfbe98496d9cb7c651e1779b9c78b0f8e61bc8`  
		Last Modified: Wed, 14 Mar 2018 03:37:39 GMT  
		Size: 527.9 KB (527922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6091a7f82638fe14d503e2e8bac78267067aa37fe275e93c7b38d033bcbba24`  
		Last Modified: Wed, 14 Mar 2018 03:37:39 GMT  
		Size: 17.2 MB (17205181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f99db766caa5e2ab74490c0a449baac805516433642e5ddf320370e4f98254d`  
		Last Modified: Wed, 14 Mar 2018 03:37:37 GMT  
		Size: 382.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330a476295d9a50b976e8d94b709ea45277e261765bea7f130f275f6c324c462`  
		Last Modified: Wed, 14 Mar 2018 03:37:41 GMT  
		Size: 769.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48b64333d7978031d330375dac1118775776bb9f597452df82930c746406b53`  
		Last Modified: Wed, 14 Mar 2018 03:37:37 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a431c76cc2b01eea6703ef8b9ec3c0efa2689af048ff75b0d79e4fa6c8385f0`  
		Last Modified: Wed, 14 Mar 2018 03:37:37 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:2.1.1`

```console
$ docker pull couchdb@sha256:91d0e1fcd8ee367af230d2c5e2c2d98ac9082c54ef979c4c48952b4313c8d9b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2.1.1` - linux; amd64

```console
$ docker pull couchdb@sha256:3651ab6d91ed08632261eb8be0ccd02148ecdd15747340b7dbdc2b3aba165451
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.3 MB (155328364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:612df5f2561639ffb508a6533e66e630019d4f3775c093ca77d124552da21d7e`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 03:27:59 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Wed, 14 Mar 2018 03:28:00 GMT
RUN groupadd -r couchdb && useradd -d /opt/couchdb -g couchdb couchdb
# Wed, 14 Mar 2018 03:29:01 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     erlang-reltool     haproxy     libicu52     libmozjs185-1.0     openssl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 03:29:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 03:29:02 GMT
ENV TINI_VERSION=0.16.1
# Wed, 14 Mar 2018 03:29:28 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini --version; 		apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 03:29:28 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B   29E4F38113DF707D722A6EF91FE9AF73118F1A7C   2EC788AE3F239FA13E82D215CDE711289384AE37
# Wed, 14 Mar 2018 03:29:38 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 14 Mar 2018 03:29:38 GMT
ENV COUCHDB_VERSION=2.1.1
# Wed, 14 Mar 2018 03:30:53 GMT
RUN buildDeps='     apt-transport-https     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     make   '  && apt-get update -y -qq && apt-get install -y --no-install-recommends $buildDeps  && cd /usr/src && mkdir couchdb  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc  && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz  && tar -xzf couchdb.tar.gz -C couchdb --strip-components=1  && cd couchdb  && ./configure --disable-docs  && make release  && mv /usr/src/couchdb/rel/couchdb /opt/  && apt-get purge -y --auto-remove $buildDeps  && rm -rf /var/lib/apt/lists/* /usr/src/couchdb*  && mkdir /opt/couchdb/data  && chown -R couchdb:couchdb /opt/couchdb
# Wed, 14 Mar 2018 03:30:53 GMT
COPY file:6e48edd87a901be3cfaa928bf5b42264b4e3173d6c817b46878bf1104dcff208 in /opt/couchdb/etc/local.d/ 
# Wed, 14 Mar 2018 03:30:53 GMT
COPY file:92f7c74ebcdab3f422f19b237777e707346b0b921cecac100009f5e1e9918e1e in /opt/couchdb/etc/ 
# Wed, 14 Mar 2018 03:30:54 GMT
COPY file:4b6c87a451132457c240370120ddfb8a03af930f0acadd3c8522f18f4c9b7398 in / 
# Wed, 14 Mar 2018 03:30:55 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/local.d/ /opt/couchdb/etc/vm.args
# Wed, 14 Mar 2018 03:30:55 GMT
WORKDIR /opt/couchdb
# Wed, 14 Mar 2018 03:30:55 GMT
EXPOSE 4369/tcp 5984/tcp 9100/tcp
# Wed, 14 Mar 2018 03:30:55 GMT
VOLUME [/opt/couchdb/data]
# Wed, 14 Mar 2018 03:30:56 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 03:30:56 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc056b9e97a957fea7a0a1cddbdf4b70630a80db512ebd5247aa9e06308bc5e6`  
		Last Modified: Wed, 14 Mar 2018 03:37:41 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a95a5200804dddfb9ebf34af887b8e4db00a54c26e3eb432668f1b6c78c5557`  
		Last Modified: Wed, 14 Mar 2018 03:37:49 GMT  
		Size: 84.1 MB (84068428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e4d1c84e272a7f706ef9229af41a604fa2b08781151787e055f7868f543ccb`  
		Last Modified: Wed, 14 Mar 2018 03:37:40 GMT  
		Size: 912.7 KB (912711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf941ed1c9f4f9538df10d79aedfbe98496d9cb7c651e1779b9c78b0f8e61bc8`  
		Last Modified: Wed, 14 Mar 2018 03:37:39 GMT  
		Size: 527.9 KB (527922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6091a7f82638fe14d503e2e8bac78267067aa37fe275e93c7b38d033bcbba24`  
		Last Modified: Wed, 14 Mar 2018 03:37:39 GMT  
		Size: 17.2 MB (17205181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f99db766caa5e2ab74490c0a449baac805516433642e5ddf320370e4f98254d`  
		Last Modified: Wed, 14 Mar 2018 03:37:37 GMT  
		Size: 382.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330a476295d9a50b976e8d94b709ea45277e261765bea7f130f275f6c324c462`  
		Last Modified: Wed, 14 Mar 2018 03:37:41 GMT  
		Size: 769.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48b64333d7978031d330375dac1118775776bb9f597452df82930c746406b53`  
		Last Modified: Wed, 14 Mar 2018 03:37:37 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a431c76cc2b01eea6703ef8b9ec3c0efa2689af048ff75b0d79e4fa6c8385f0`  
		Last Modified: Wed, 14 Mar 2018 03:37:37 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:latest`

```console
$ docker pull couchdb@sha256:91d0e1fcd8ee367af230d2c5e2c2d98ac9082c54ef979c4c48952b4313c8d9b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:latest` - linux; amd64

```console
$ docker pull couchdb@sha256:3651ab6d91ed08632261eb8be0ccd02148ecdd15747340b7dbdc2b3aba165451
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.3 MB (155328364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:612df5f2561639ffb508a6533e66e630019d4f3775c093ca77d124552da21d7e`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 03:27:59 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Wed, 14 Mar 2018 03:28:00 GMT
RUN groupadd -r couchdb && useradd -d /opt/couchdb -g couchdb couchdb
# Wed, 14 Mar 2018 03:29:01 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     erlang-reltool     haproxy     libicu52     libmozjs185-1.0     openssl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 03:29:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 03:29:02 GMT
ENV TINI_VERSION=0.16.1
# Wed, 14 Mar 2018 03:29:28 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini --version; 		apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 03:29:28 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B   29E4F38113DF707D722A6EF91FE9AF73118F1A7C   2EC788AE3F239FA13E82D215CDE711289384AE37
# Wed, 14 Mar 2018 03:29:38 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 14 Mar 2018 03:29:38 GMT
ENV COUCHDB_VERSION=2.1.1
# Wed, 14 Mar 2018 03:30:53 GMT
RUN buildDeps='     apt-transport-https     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     make   '  && apt-get update -y -qq && apt-get install -y --no-install-recommends $buildDeps  && cd /usr/src && mkdir couchdb  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc  && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz  && tar -xzf couchdb.tar.gz -C couchdb --strip-components=1  && cd couchdb  && ./configure --disable-docs  && make release  && mv /usr/src/couchdb/rel/couchdb /opt/  && apt-get purge -y --auto-remove $buildDeps  && rm -rf /var/lib/apt/lists/* /usr/src/couchdb*  && mkdir /opt/couchdb/data  && chown -R couchdb:couchdb /opt/couchdb
# Wed, 14 Mar 2018 03:30:53 GMT
COPY file:6e48edd87a901be3cfaa928bf5b42264b4e3173d6c817b46878bf1104dcff208 in /opt/couchdb/etc/local.d/ 
# Wed, 14 Mar 2018 03:30:53 GMT
COPY file:92f7c74ebcdab3f422f19b237777e707346b0b921cecac100009f5e1e9918e1e in /opt/couchdb/etc/ 
# Wed, 14 Mar 2018 03:30:54 GMT
COPY file:4b6c87a451132457c240370120ddfb8a03af930f0acadd3c8522f18f4c9b7398 in / 
# Wed, 14 Mar 2018 03:30:55 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/local.d/ /opt/couchdb/etc/vm.args
# Wed, 14 Mar 2018 03:30:55 GMT
WORKDIR /opt/couchdb
# Wed, 14 Mar 2018 03:30:55 GMT
EXPOSE 4369/tcp 5984/tcp 9100/tcp
# Wed, 14 Mar 2018 03:30:55 GMT
VOLUME [/opt/couchdb/data]
# Wed, 14 Mar 2018 03:30:56 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 03:30:56 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc056b9e97a957fea7a0a1cddbdf4b70630a80db512ebd5247aa9e06308bc5e6`  
		Last Modified: Wed, 14 Mar 2018 03:37:41 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a95a5200804dddfb9ebf34af887b8e4db00a54c26e3eb432668f1b6c78c5557`  
		Last Modified: Wed, 14 Mar 2018 03:37:49 GMT  
		Size: 84.1 MB (84068428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e4d1c84e272a7f706ef9229af41a604fa2b08781151787e055f7868f543ccb`  
		Last Modified: Wed, 14 Mar 2018 03:37:40 GMT  
		Size: 912.7 KB (912711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf941ed1c9f4f9538df10d79aedfbe98496d9cb7c651e1779b9c78b0f8e61bc8`  
		Last Modified: Wed, 14 Mar 2018 03:37:39 GMT  
		Size: 527.9 KB (527922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6091a7f82638fe14d503e2e8bac78267067aa37fe275e93c7b38d033bcbba24`  
		Last Modified: Wed, 14 Mar 2018 03:37:39 GMT  
		Size: 17.2 MB (17205181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f99db766caa5e2ab74490c0a449baac805516433642e5ddf320370e4f98254d`  
		Last Modified: Wed, 14 Mar 2018 03:37:37 GMT  
		Size: 382.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330a476295d9a50b976e8d94b709ea45277e261765bea7f130f275f6c324c462`  
		Last Modified: Wed, 14 Mar 2018 03:37:41 GMT  
		Size: 769.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48b64333d7978031d330375dac1118775776bb9f597452df82930c746406b53`  
		Last Modified: Wed, 14 Mar 2018 03:37:37 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a431c76cc2b01eea6703ef8b9ec3c0efa2689af048ff75b0d79e4fa6c8385f0`  
		Last Modified: Wed, 14 Mar 2018 03:37:37 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
