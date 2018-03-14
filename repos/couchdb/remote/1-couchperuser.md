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
