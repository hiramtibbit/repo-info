## `couchdb:latest`

```console
$ docker pull couchdb@sha256:4a7408c3ecc0a806b7dad038e67af921d10708460593a2129dc50c8fbdcd05c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:latest` - linux; amd64

```console
$ docker pull couchdb@sha256:46bb12c5cb7e6b36de88af6598ce239ba2625009bbe9c4bcac83aa264f362162
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.6 MB (154565453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fce90359efc489dbb2b72befea3588a3e4300b8f2732e770f0ed58956c717220`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 00:19:37 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Wed, 11 Jul 2018 00:19:38 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Wed, 11 Jul 2018 00:21:13 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     erlang-reltool     libicu52     libmozjs185-1.0     openssl   && rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 00:21:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Jul 2018 00:21:20 GMT
ENV TINI_VERSION=0.16.1
# Wed, 11 Jul 2018 00:22:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini --version; 		apt-get purge -y --auto-remove wget
# Wed, 11 Jul 2018 00:22:04 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B   29E4F38113DF707D722A6EF91FE9AF73118F1A7C   2EC788AE3F239FA13E82D215CDE711289384AE37
# Wed, 11 Jul 2018 00:22:08 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 11 Jul 2018 00:22:08 GMT
ENV COUCHDB_VERSION=2.1.2
# Wed, 11 Jul 2018 00:24:37 GMT
RUN buildDeps='     apt-transport-https     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     make   '  && apt-get update -y -qq && apt-get install -y --no-install-recommends $buildDeps  && cd /usr/src && mkdir couchdb  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc  && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz  && tar -xzf couchdb.tar.gz -C couchdb --strip-components=1  && cd couchdb  && ./configure --disable-docs  && make release  && mv /usr/src/couchdb/rel/couchdb /opt/  && apt-get purge -y --auto-remove $buildDeps  && rm -rf /var/lib/apt/lists/* /usr/src/couchdb*  && mkdir /opt/couchdb/data  && chown -R couchdb:couchdb /opt/couchdb
# Wed, 11 Jul 2018 00:24:38 GMT
COPY file:685eafac1271ddd108d5f96fc015621edb77d0f0eb84aa212decbca6bbc0ce7d in /opt/couchdb/etc/default.d/ 
# Wed, 11 Jul 2018 00:24:38 GMT
COPY file:92f7c74ebcdab3f422f19b237777e707346b0b921cecac100009f5e1e9918e1e in /opt/couchdb/etc/ 
# Wed, 11 Jul 2018 00:24:38 GMT
COPY file:c34a944e0394fb8baa27e913a71e429de439dbddb536947e994a166ae87df262 in / 
# Wed, 11 Jul 2018 00:24:39 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/default.d/ /opt/couchdb/etc/vm.args
# Wed, 11 Jul 2018 00:24:39 GMT
WORKDIR /opt/couchdb
# Wed, 11 Jul 2018 00:24:40 GMT
EXPOSE 4369/tcp 5984/tcp 9100/tcp
# Wed, 11 Jul 2018 00:24:40 GMT
VOLUME [/opt/couchdb/data]
# Wed, 11 Jul 2018 00:24:40 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 11 Jul 2018 00:24:40 GMT
CMD ["/opt/couchdb/bin/couchdb"]
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
	-	`sha256:fc5b35597c32ea9ecf378561151f8c6989b06cffe160bb01434ae96ee82cf981`  
		Last Modified: Wed, 11 Jul 2018 00:32:15 GMT  
		Size: 81.6 MB (81607450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1cf8bd3458756c6569fbd739e1fd1e6a4fc391155bf5f1a637f2e2527579c2`  
		Last Modified: Wed, 11 Jul 2018 00:31:54 GMT  
		Size: 910.1 KB (910056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a3af740f0dfb969bdb1d37f5eb4ff37571935f4cb7760258e2022191e674e0c`  
		Last Modified: Wed, 11 Jul 2018 00:31:53 GMT  
		Size: 531.2 KB (531248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf45f0aa5a7e5e57de58d9f148bd278611ca651eb28540f55625368cb76a13d`  
		Last Modified: Wed, 11 Jul 2018 00:31:54 GMT  
		Size: 17.3 MB (17257309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d607c6f4bad09c0e3c5fc751875276f90a315069ed55e98bcf6ed409408e6e45`  
		Last Modified: Wed, 11 Jul 2018 00:31:50 GMT  
		Size: 389.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8a1c518043ab25c7ed35ab3135324431186f9ae889631b4356a7f053b3aa15`  
		Last Modified: Wed, 11 Jul 2018 00:31:50 GMT  
		Size: 768.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c89bde75af7633655004fcd76f266188abe52d7312c832d2580871c6d7a869`  
		Last Modified: Wed, 11 Jul 2018 00:31:50 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ec6f9deda907580885539cd59da1319d4b32c6a05296fe80f0d352876ed3570`  
		Last Modified: Wed, 11 Jul 2018 00:31:50 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
