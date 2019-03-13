<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchdb`

-	[`couchdb:2`](#couchdb2)
-	[`couchdb:2.3`](#couchdb23)
-	[`couchdb:2.3.0`](#couchdb230)
-	[`couchdb:2.3.1`](#couchdb231)
-	[`couchdb:latest`](#couchdblatest)

## `couchdb:2`

```console
$ docker pull couchdb@sha256:7ec437b7083d439d4858fb7a4de68a85b73375caf7eefdde9fcebb8537d83bf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2` - linux; amd64

```console
$ docker pull couchdb@sha256:688c51b96f3274588afff6cb90bec3a30d6529b22ea3196b7f2f282c91b73edf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82407435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2285736c6d2830b5ee4ba1fe14b62c9f456289bf3ae641561e9a202cb9235335`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Wed, 13 Mar 2019 00:19:22 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 13 Mar 2019 00:19:23 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Wed, 13 Mar 2019 00:19:38 GMT
RUN set -ex;         apt-get update;         apt-get install -y --no-install-recommends                 apt-transport-https                 ca-certificates                 dirmngr                 gnupg         ;         rm -rf /var/lib/apt/lists/*
# Wed, 13 Mar 2019 00:19:38 GMT
ENV GOSU_VERSION=1.11
# Wed, 13 Mar 2019 00:19:38 GMT
ENV TINI_VERSION=0.18.0
# Wed, 13 Mar 2019 00:19:48 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true;     	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini;         apt-get purge -y --auto-remove wget; 	tini --version
# Wed, 13 Mar 2019 00:19:49 GMT
ENV GPG_COUCH_KEY=8756C4F765C9AC3CB6B85D62379CE192D401AB61
# Wed, 13 Mar 2019 00:24:52 GMT
RUN set -xe;         export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do                 gpg --batch --keyserver $server --recv-keys $GPG_COUCH_KEY && break || : ;         done;         gpg --batch --export $GPG_COUCH_KEY > /etc/apt/trusted.gpg.d/couchdb.gpg;         command -v gpgconf && gpgconf --kill all || :;         rm -rf "$GNUPGHOME";         apt-key list
# Wed, 13 Mar 2019 00:24:52 GMT
ENV COUCHDB_VERSION=2.3.1
# Wed, 13 Mar 2019 00:24:53 GMT
RUN echo "deb https://apache.bintray.com/couchdb-deb stretch main" > /etc/apt/sources.list.d/couchdb.list
# Wed, 13 Mar 2019 00:25:30 GMT
RUN set -xe;         apt-get update;                 echo "couchdb couchdb/mode select none" | debconf-set-selections;         DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages                 couchdb="$COUCHDB_VERSION"~stretch         ;         rmdir /var/lib/couchdb /var/log/couchdb;         rm /opt/couchdb/data /opt/couchdb/var/log;         mkdir -p /opt/couchdb/data /opt/couchdb/var/log;         chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;         chmod 777 /opt/couchdb/data /opt/couchdb/var/log;         rm /opt/couchdb/etc/default.d/10-filelog.ini;         rm -rf /var/lib/apt/lists/*
# Wed, 13 Mar 2019 00:25:31 GMT
COPY file:74a26e2e31f9b408e93e4a065004a86e00211d06a4ce6ab1fbc23640bd92a929 in /opt/couchdb/etc/default.d/ 
# Wed, 13 Mar 2019 00:25:31 GMT
COPY file:f98e48e4254cb3ec4a766f3b9bd3260f16676a310eb0356ee9775c62edb3e8f3 in /opt/couchdb/etc/ 
# Wed, 13 Mar 2019 00:25:31 GMT
COPY file:fc62f0c3f2a39a070ec3c03ac9e1f9ae02b94364cb5492a733584c34458af969 in /usr/local/bin 
# Wed, 13 Mar 2019 00:25:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Wed, 13 Mar 2019 00:25:32 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 13 Mar 2019 00:25:33 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/default.d/ /opt/couchdb/etc/vm.args
# Wed, 13 Mar 2019 00:25:33 GMT
VOLUME [/opt/couchdb/data]
# Wed, 13 Mar 2019 00:25:33 GMT
EXPOSE 4369 5984 9100
# Wed, 13 Mar 2019 00:25:33 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1dc9342ecfda172ab91428abd10c808ba622bcf7c392da28ce61a3d0bb71b19`  
		Last Modified: Wed, 13 Mar 2019 00:26:47 GMT  
		Size: 3.4 KB (3414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093e8fe6a67ec58cc2f2f7c1949c0de0483a873974d95968c3257da71be1cf8a`  
		Last Modified: Wed, 13 Mar 2019 00:26:48 GMT  
		Size: 8.5 MB (8507897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f98f7a1dc6cbc943259d78e36ce9b3203dc67985bc627aaf1a0d3579c044b0`  
		Last Modified: Wed, 13 Mar 2019 00:26:46 GMT  
		Size: 1.2 MB (1190535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d580b2b48056e3f8df8af8fa9b6a175a28d92faf6ec597f558c6fb8c994f93a`  
		Last Modified: Wed, 13 Mar 2019 00:26:46 GMT  
		Size: 2.5 KB (2492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7f105232e7fdbb53cc1762da701a28c36f6616f4b25f947b95684ddc9aed24`  
		Last Modified: Wed, 13 Mar 2019 00:26:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8d8841138b2ad79a96c2e5174c6023326a60dcdd12f7bf29fc7c7d7e68f84d`  
		Last Modified: Wed, 13 Mar 2019 00:26:54 GMT  
		Size: 50.2 MB (50202525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074b983ba5b0ba1e29c41f75bec99d6f5de4e451d1e181bf837d76e297dd56e5`  
		Last Modified: Wed, 13 Mar 2019 00:26:45 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87ad29dd898121cb1ec4aee019a08131e537ca4dd95a9e770aaf7309be7e7785`  
		Last Modified: Wed, 13 Mar 2019 00:26:45 GMT  
		Size: 765.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a104eedc51fb63661e8a88eded716b64c8379d8b727ba4cfaeffe3e30740add4`  
		Last Modified: Wed, 13 Mar 2019 00:26:45 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6660c923fabd07eb4472861825784abee05808f5c141b4a5b72c01897596932f`  
		Last Modified: Wed, 13 Mar 2019 00:26:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abcffdbe8402208ae9eeef6ef6078f539b71249470853b804faef9dae4ed4a5`  
		Last Modified: Wed, 13 Mar 2019 00:26:45 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:2.3`

```console
$ docker pull couchdb@sha256:7ec437b7083d439d4858fb7a4de68a85b73375caf7eefdde9fcebb8537d83bf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2.3` - linux; amd64

```console
$ docker pull couchdb@sha256:688c51b96f3274588afff6cb90bec3a30d6529b22ea3196b7f2f282c91b73edf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82407435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2285736c6d2830b5ee4ba1fe14b62c9f456289bf3ae641561e9a202cb9235335`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Wed, 13 Mar 2019 00:19:22 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 13 Mar 2019 00:19:23 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Wed, 13 Mar 2019 00:19:38 GMT
RUN set -ex;         apt-get update;         apt-get install -y --no-install-recommends                 apt-transport-https                 ca-certificates                 dirmngr                 gnupg         ;         rm -rf /var/lib/apt/lists/*
# Wed, 13 Mar 2019 00:19:38 GMT
ENV GOSU_VERSION=1.11
# Wed, 13 Mar 2019 00:19:38 GMT
ENV TINI_VERSION=0.18.0
# Wed, 13 Mar 2019 00:19:48 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true;     	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini;         apt-get purge -y --auto-remove wget; 	tini --version
# Wed, 13 Mar 2019 00:19:49 GMT
ENV GPG_COUCH_KEY=8756C4F765C9AC3CB6B85D62379CE192D401AB61
# Wed, 13 Mar 2019 00:24:52 GMT
RUN set -xe;         export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do                 gpg --batch --keyserver $server --recv-keys $GPG_COUCH_KEY && break || : ;         done;         gpg --batch --export $GPG_COUCH_KEY > /etc/apt/trusted.gpg.d/couchdb.gpg;         command -v gpgconf && gpgconf --kill all || :;         rm -rf "$GNUPGHOME";         apt-key list
# Wed, 13 Mar 2019 00:24:52 GMT
ENV COUCHDB_VERSION=2.3.1
# Wed, 13 Mar 2019 00:24:53 GMT
RUN echo "deb https://apache.bintray.com/couchdb-deb stretch main" > /etc/apt/sources.list.d/couchdb.list
# Wed, 13 Mar 2019 00:25:30 GMT
RUN set -xe;         apt-get update;                 echo "couchdb couchdb/mode select none" | debconf-set-selections;         DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages                 couchdb="$COUCHDB_VERSION"~stretch         ;         rmdir /var/lib/couchdb /var/log/couchdb;         rm /opt/couchdb/data /opt/couchdb/var/log;         mkdir -p /opt/couchdb/data /opt/couchdb/var/log;         chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;         chmod 777 /opt/couchdb/data /opt/couchdb/var/log;         rm /opt/couchdb/etc/default.d/10-filelog.ini;         rm -rf /var/lib/apt/lists/*
# Wed, 13 Mar 2019 00:25:31 GMT
COPY file:74a26e2e31f9b408e93e4a065004a86e00211d06a4ce6ab1fbc23640bd92a929 in /opt/couchdb/etc/default.d/ 
# Wed, 13 Mar 2019 00:25:31 GMT
COPY file:f98e48e4254cb3ec4a766f3b9bd3260f16676a310eb0356ee9775c62edb3e8f3 in /opt/couchdb/etc/ 
# Wed, 13 Mar 2019 00:25:31 GMT
COPY file:fc62f0c3f2a39a070ec3c03ac9e1f9ae02b94364cb5492a733584c34458af969 in /usr/local/bin 
# Wed, 13 Mar 2019 00:25:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Wed, 13 Mar 2019 00:25:32 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 13 Mar 2019 00:25:33 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/default.d/ /opt/couchdb/etc/vm.args
# Wed, 13 Mar 2019 00:25:33 GMT
VOLUME [/opt/couchdb/data]
# Wed, 13 Mar 2019 00:25:33 GMT
EXPOSE 4369 5984 9100
# Wed, 13 Mar 2019 00:25:33 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1dc9342ecfda172ab91428abd10c808ba622bcf7c392da28ce61a3d0bb71b19`  
		Last Modified: Wed, 13 Mar 2019 00:26:47 GMT  
		Size: 3.4 KB (3414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093e8fe6a67ec58cc2f2f7c1949c0de0483a873974d95968c3257da71be1cf8a`  
		Last Modified: Wed, 13 Mar 2019 00:26:48 GMT  
		Size: 8.5 MB (8507897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f98f7a1dc6cbc943259d78e36ce9b3203dc67985bc627aaf1a0d3579c044b0`  
		Last Modified: Wed, 13 Mar 2019 00:26:46 GMT  
		Size: 1.2 MB (1190535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d580b2b48056e3f8df8af8fa9b6a175a28d92faf6ec597f558c6fb8c994f93a`  
		Last Modified: Wed, 13 Mar 2019 00:26:46 GMT  
		Size: 2.5 KB (2492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7f105232e7fdbb53cc1762da701a28c36f6616f4b25f947b95684ddc9aed24`  
		Last Modified: Wed, 13 Mar 2019 00:26:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8d8841138b2ad79a96c2e5174c6023326a60dcdd12f7bf29fc7c7d7e68f84d`  
		Last Modified: Wed, 13 Mar 2019 00:26:54 GMT  
		Size: 50.2 MB (50202525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074b983ba5b0ba1e29c41f75bec99d6f5de4e451d1e181bf837d76e297dd56e5`  
		Last Modified: Wed, 13 Mar 2019 00:26:45 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87ad29dd898121cb1ec4aee019a08131e537ca4dd95a9e770aaf7309be7e7785`  
		Last Modified: Wed, 13 Mar 2019 00:26:45 GMT  
		Size: 765.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a104eedc51fb63661e8a88eded716b64c8379d8b727ba4cfaeffe3e30740add4`  
		Last Modified: Wed, 13 Mar 2019 00:26:45 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6660c923fabd07eb4472861825784abee05808f5c141b4a5b72c01897596932f`  
		Last Modified: Wed, 13 Mar 2019 00:26:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abcffdbe8402208ae9eeef6ef6078f539b71249470853b804faef9dae4ed4a5`  
		Last Modified: Wed, 13 Mar 2019 00:26:45 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:2.3.0`

```console
$ docker pull couchdb@sha256:cba86f607d529fe146faa2e4d0575dbaeaba9a37310f4ff2ceb110a7de4dccd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2.3.0` - linux; amd64

```console
$ docker pull couchdb@sha256:51460d6d55b734db07045afd7131f6b76d7acd5527588b206358bf996117b541
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.4 MB (86355170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6fdbc241b33d2909d85d69b4c05abe1d60a665f8efe9825c5a8737d2bbd6f3f`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Wed, 13 Mar 2019 00:19:22 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 13 Mar 2019 00:19:23 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Wed, 13 Mar 2019 00:19:38 GMT
RUN set -ex;         apt-get update;         apt-get install -y --no-install-recommends                 apt-transport-https                 ca-certificates                 dirmngr                 gnupg         ;         rm -rf /var/lib/apt/lists/*
# Wed, 13 Mar 2019 00:19:38 GMT
ENV GOSU_VERSION=1.11
# Wed, 13 Mar 2019 00:19:38 GMT
ENV TINI_VERSION=0.18.0
# Wed, 13 Mar 2019 00:25:48 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true;     	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini;         apt-get purge -y --auto-remove wget; 	tini --version
# Wed, 13 Mar 2019 00:25:48 GMT
ENV GPG_COUCH_KEY=8756C4F765C9AC3CB6B85D62379CE192D401AB61
# Wed, 13 Mar 2019 00:25:51 GMT
RUN set -xe;         export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do                 gpg --batch --keyserver $server --recv-keys $GPG_COUCH_KEY && break || : ;         done;         gpg --batch --export $GPG_COUCH_KEY > /etc/apt/trusted.gpg.d/couchdb.gpg;         command -v gpgconf && gpgconf --kill all || :;         rm -rf "$GNUPGHOME";         apt-key list
# Wed, 13 Mar 2019 00:25:51 GMT
ENV COUCHDB_VERSION=2.3.0
# Wed, 13 Mar 2019 00:25:52 GMT
RUN echo "deb https://apache.bintray.com/couchdb-deb stretch main" > /etc/apt/sources.list.d/couchdb.list
# Wed, 13 Mar 2019 00:26:28 GMT
RUN set -xe;         apt-get update;                 echo "couchdb couchdb/mode select none" | debconf-set-selections;         DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages                 couchdb="$COUCHDB_VERSION"~stretch         ;         rmdir /var/lib/couchdb /var/log/couchdb;         rm /opt/couchdb/data /opt/couchdb/var/log;         mkdir -p /opt/couchdb/data /opt/couchdb/var/log;         chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;         chmod 777 /opt/couchdb/data /opt/couchdb/var/log;         rm /opt/couchdb/etc/default.d/10-filelog.ini;         rm -rf /var/lib/apt/lists/*
# Wed, 13 Mar 2019 00:26:29 GMT
COPY file:74a26e2e31f9b408e93e4a065004a86e00211d06a4ce6ab1fbc23640bd92a929 in /opt/couchdb/etc/default.d/ 
# Wed, 13 Mar 2019 00:26:29 GMT
COPY file:f98e48e4254cb3ec4a766f3b9bd3260f16676a310eb0356ee9775c62edb3e8f3 in /opt/couchdb/etc/ 
# Wed, 13 Mar 2019 00:26:29 GMT
COPY file:fc62f0c3f2a39a070ec3c03ac9e1f9ae02b94364cb5492a733584c34458af969 in /usr/local/bin 
# Wed, 13 Mar 2019 00:26:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Wed, 13 Mar 2019 00:26:30 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 13 Mar 2019 00:26:31 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/default.d/ /opt/couchdb/etc/vm.args
# Wed, 13 Mar 2019 00:26:31 GMT
VOLUME [/opt/couchdb/data]
# Wed, 13 Mar 2019 00:26:31 GMT
EXPOSE 4369 5984 9100
# Wed, 13 Mar 2019 00:26:31 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1dc9342ecfda172ab91428abd10c808ba622bcf7c392da28ce61a3d0bb71b19`  
		Last Modified: Wed, 13 Mar 2019 00:26:47 GMT  
		Size: 3.4 KB (3414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093e8fe6a67ec58cc2f2f7c1949c0de0483a873974d95968c3257da71be1cf8a`  
		Last Modified: Wed, 13 Mar 2019 00:26:48 GMT  
		Size: 8.5 MB (8507897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ff50c534f6b32e73466e981e59a2fa39b36230bdef6f8ff596f31945b5e4ce`  
		Last Modified: Wed, 13 Mar 2019 00:27:00 GMT  
		Size: 1.2 MB (1190549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b85a575d5129d94d2740167b9dc7df265c876994e25a0b176f9ed2dab1e24d`  
		Last Modified: Wed, 13 Mar 2019 00:27:00 GMT  
		Size: 2.5 KB (2494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44a9875f260b0a6a543ddd1111fd69c232564725618b06efb00372f22c8674fc`  
		Last Modified: Wed, 13 Mar 2019 00:27:00 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304357556768f9651eec61ac7e91f9247dc4514fd0801dcede5ea61794116574`  
		Last Modified: Wed, 13 Mar 2019 00:27:08 GMT  
		Size: 54.2 MB (54150245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ce8af5686e364c93a821e770f34f02bf4b5d63737d9ec746fd4359b075078b`  
		Last Modified: Wed, 13 Mar 2019 00:26:59 GMT  
		Size: 386.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4048eb3204672d25b96a8a756091aabd10b9534da8a5b0ec2b62d72ad988c5b`  
		Last Modified: Wed, 13 Mar 2019 00:26:59 GMT  
		Size: 767.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6b24dfe969acad6033f14af9f6f7decf5f5fa4c309f59414ae30645e22de53`  
		Last Modified: Wed, 13 Mar 2019 00:26:59 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e65331ba4e81556faae0082c149a93335b9fb7ec873f6185aa445f7ef46884`  
		Last Modified: Wed, 13 Mar 2019 00:26:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8953b67f83ce3363d4a6c70552831c80b3dc434d5955ea91f1513ffdccdcab`  
		Last Modified: Wed, 13 Mar 2019 00:26:59 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:2.3.1`

```console
$ docker pull couchdb@sha256:7ec437b7083d439d4858fb7a4de68a85b73375caf7eefdde9fcebb8537d83bf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2.3.1` - linux; amd64

```console
$ docker pull couchdb@sha256:688c51b96f3274588afff6cb90bec3a30d6529b22ea3196b7f2f282c91b73edf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82407435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2285736c6d2830b5ee4ba1fe14b62c9f456289bf3ae641561e9a202cb9235335`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Wed, 13 Mar 2019 00:19:22 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 13 Mar 2019 00:19:23 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Wed, 13 Mar 2019 00:19:38 GMT
RUN set -ex;         apt-get update;         apt-get install -y --no-install-recommends                 apt-transport-https                 ca-certificates                 dirmngr                 gnupg         ;         rm -rf /var/lib/apt/lists/*
# Wed, 13 Mar 2019 00:19:38 GMT
ENV GOSU_VERSION=1.11
# Wed, 13 Mar 2019 00:19:38 GMT
ENV TINI_VERSION=0.18.0
# Wed, 13 Mar 2019 00:19:48 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true;     	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini;         apt-get purge -y --auto-remove wget; 	tini --version
# Wed, 13 Mar 2019 00:19:49 GMT
ENV GPG_COUCH_KEY=8756C4F765C9AC3CB6B85D62379CE192D401AB61
# Wed, 13 Mar 2019 00:24:52 GMT
RUN set -xe;         export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do                 gpg --batch --keyserver $server --recv-keys $GPG_COUCH_KEY && break || : ;         done;         gpg --batch --export $GPG_COUCH_KEY > /etc/apt/trusted.gpg.d/couchdb.gpg;         command -v gpgconf && gpgconf --kill all || :;         rm -rf "$GNUPGHOME";         apt-key list
# Wed, 13 Mar 2019 00:24:52 GMT
ENV COUCHDB_VERSION=2.3.1
# Wed, 13 Mar 2019 00:24:53 GMT
RUN echo "deb https://apache.bintray.com/couchdb-deb stretch main" > /etc/apt/sources.list.d/couchdb.list
# Wed, 13 Mar 2019 00:25:30 GMT
RUN set -xe;         apt-get update;                 echo "couchdb couchdb/mode select none" | debconf-set-selections;         DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages                 couchdb="$COUCHDB_VERSION"~stretch         ;         rmdir /var/lib/couchdb /var/log/couchdb;         rm /opt/couchdb/data /opt/couchdb/var/log;         mkdir -p /opt/couchdb/data /opt/couchdb/var/log;         chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;         chmod 777 /opt/couchdb/data /opt/couchdb/var/log;         rm /opt/couchdb/etc/default.d/10-filelog.ini;         rm -rf /var/lib/apt/lists/*
# Wed, 13 Mar 2019 00:25:31 GMT
COPY file:74a26e2e31f9b408e93e4a065004a86e00211d06a4ce6ab1fbc23640bd92a929 in /opt/couchdb/etc/default.d/ 
# Wed, 13 Mar 2019 00:25:31 GMT
COPY file:f98e48e4254cb3ec4a766f3b9bd3260f16676a310eb0356ee9775c62edb3e8f3 in /opt/couchdb/etc/ 
# Wed, 13 Mar 2019 00:25:31 GMT
COPY file:fc62f0c3f2a39a070ec3c03ac9e1f9ae02b94364cb5492a733584c34458af969 in /usr/local/bin 
# Wed, 13 Mar 2019 00:25:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Wed, 13 Mar 2019 00:25:32 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 13 Mar 2019 00:25:33 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/default.d/ /opt/couchdb/etc/vm.args
# Wed, 13 Mar 2019 00:25:33 GMT
VOLUME [/opt/couchdb/data]
# Wed, 13 Mar 2019 00:25:33 GMT
EXPOSE 4369 5984 9100
# Wed, 13 Mar 2019 00:25:33 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1dc9342ecfda172ab91428abd10c808ba622bcf7c392da28ce61a3d0bb71b19`  
		Last Modified: Wed, 13 Mar 2019 00:26:47 GMT  
		Size: 3.4 KB (3414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093e8fe6a67ec58cc2f2f7c1949c0de0483a873974d95968c3257da71be1cf8a`  
		Last Modified: Wed, 13 Mar 2019 00:26:48 GMT  
		Size: 8.5 MB (8507897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f98f7a1dc6cbc943259d78e36ce9b3203dc67985bc627aaf1a0d3579c044b0`  
		Last Modified: Wed, 13 Mar 2019 00:26:46 GMT  
		Size: 1.2 MB (1190535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d580b2b48056e3f8df8af8fa9b6a175a28d92faf6ec597f558c6fb8c994f93a`  
		Last Modified: Wed, 13 Mar 2019 00:26:46 GMT  
		Size: 2.5 KB (2492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7f105232e7fdbb53cc1762da701a28c36f6616f4b25f947b95684ddc9aed24`  
		Last Modified: Wed, 13 Mar 2019 00:26:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8d8841138b2ad79a96c2e5174c6023326a60dcdd12f7bf29fc7c7d7e68f84d`  
		Last Modified: Wed, 13 Mar 2019 00:26:54 GMT  
		Size: 50.2 MB (50202525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074b983ba5b0ba1e29c41f75bec99d6f5de4e451d1e181bf837d76e297dd56e5`  
		Last Modified: Wed, 13 Mar 2019 00:26:45 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87ad29dd898121cb1ec4aee019a08131e537ca4dd95a9e770aaf7309be7e7785`  
		Last Modified: Wed, 13 Mar 2019 00:26:45 GMT  
		Size: 765.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a104eedc51fb63661e8a88eded716b64c8379d8b727ba4cfaeffe3e30740add4`  
		Last Modified: Wed, 13 Mar 2019 00:26:45 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6660c923fabd07eb4472861825784abee05808f5c141b4a5b72c01897596932f`  
		Last Modified: Wed, 13 Mar 2019 00:26:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abcffdbe8402208ae9eeef6ef6078f539b71249470853b804faef9dae4ed4a5`  
		Last Modified: Wed, 13 Mar 2019 00:26:45 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:latest`

```console
$ docker pull couchdb@sha256:7ec437b7083d439d4858fb7a4de68a85b73375caf7eefdde9fcebb8537d83bf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:latest` - linux; amd64

```console
$ docker pull couchdb@sha256:688c51b96f3274588afff6cb90bec3a30d6529b22ea3196b7f2f282c91b73edf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82407435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2285736c6d2830b5ee4ba1fe14b62c9f456289bf3ae641561e9a202cb9235335`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Wed, 13 Mar 2019 00:19:22 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 13 Mar 2019 00:19:23 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Wed, 13 Mar 2019 00:19:38 GMT
RUN set -ex;         apt-get update;         apt-get install -y --no-install-recommends                 apt-transport-https                 ca-certificates                 dirmngr                 gnupg         ;         rm -rf /var/lib/apt/lists/*
# Wed, 13 Mar 2019 00:19:38 GMT
ENV GOSU_VERSION=1.11
# Wed, 13 Mar 2019 00:19:38 GMT
ENV TINI_VERSION=0.18.0
# Wed, 13 Mar 2019 00:19:48 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true;     	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini;         apt-get purge -y --auto-remove wget; 	tini --version
# Wed, 13 Mar 2019 00:19:49 GMT
ENV GPG_COUCH_KEY=8756C4F765C9AC3CB6B85D62379CE192D401AB61
# Wed, 13 Mar 2019 00:24:52 GMT
RUN set -xe;         export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do                 gpg --batch --keyserver $server --recv-keys $GPG_COUCH_KEY && break || : ;         done;         gpg --batch --export $GPG_COUCH_KEY > /etc/apt/trusted.gpg.d/couchdb.gpg;         command -v gpgconf && gpgconf --kill all || :;         rm -rf "$GNUPGHOME";         apt-key list
# Wed, 13 Mar 2019 00:24:52 GMT
ENV COUCHDB_VERSION=2.3.1
# Wed, 13 Mar 2019 00:24:53 GMT
RUN echo "deb https://apache.bintray.com/couchdb-deb stretch main" > /etc/apt/sources.list.d/couchdb.list
# Wed, 13 Mar 2019 00:25:30 GMT
RUN set -xe;         apt-get update;                 echo "couchdb couchdb/mode select none" | debconf-set-selections;         DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages                 couchdb="$COUCHDB_VERSION"~stretch         ;         rmdir /var/lib/couchdb /var/log/couchdb;         rm /opt/couchdb/data /opt/couchdb/var/log;         mkdir -p /opt/couchdb/data /opt/couchdb/var/log;         chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;         chmod 777 /opt/couchdb/data /opt/couchdb/var/log;         rm /opt/couchdb/etc/default.d/10-filelog.ini;         rm -rf /var/lib/apt/lists/*
# Wed, 13 Mar 2019 00:25:31 GMT
COPY file:74a26e2e31f9b408e93e4a065004a86e00211d06a4ce6ab1fbc23640bd92a929 in /opt/couchdb/etc/default.d/ 
# Wed, 13 Mar 2019 00:25:31 GMT
COPY file:f98e48e4254cb3ec4a766f3b9bd3260f16676a310eb0356ee9775c62edb3e8f3 in /opt/couchdb/etc/ 
# Wed, 13 Mar 2019 00:25:31 GMT
COPY file:fc62f0c3f2a39a070ec3c03ac9e1f9ae02b94364cb5492a733584c34458af969 in /usr/local/bin 
# Wed, 13 Mar 2019 00:25:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Wed, 13 Mar 2019 00:25:32 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 13 Mar 2019 00:25:33 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/default.d/ /opt/couchdb/etc/vm.args
# Wed, 13 Mar 2019 00:25:33 GMT
VOLUME [/opt/couchdb/data]
# Wed, 13 Mar 2019 00:25:33 GMT
EXPOSE 4369 5984 9100
# Wed, 13 Mar 2019 00:25:33 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1dc9342ecfda172ab91428abd10c808ba622bcf7c392da28ce61a3d0bb71b19`  
		Last Modified: Wed, 13 Mar 2019 00:26:47 GMT  
		Size: 3.4 KB (3414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093e8fe6a67ec58cc2f2f7c1949c0de0483a873974d95968c3257da71be1cf8a`  
		Last Modified: Wed, 13 Mar 2019 00:26:48 GMT  
		Size: 8.5 MB (8507897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f98f7a1dc6cbc943259d78e36ce9b3203dc67985bc627aaf1a0d3579c044b0`  
		Last Modified: Wed, 13 Mar 2019 00:26:46 GMT  
		Size: 1.2 MB (1190535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d580b2b48056e3f8df8af8fa9b6a175a28d92faf6ec597f558c6fb8c994f93a`  
		Last Modified: Wed, 13 Mar 2019 00:26:46 GMT  
		Size: 2.5 KB (2492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7f105232e7fdbb53cc1762da701a28c36f6616f4b25f947b95684ddc9aed24`  
		Last Modified: Wed, 13 Mar 2019 00:26:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8d8841138b2ad79a96c2e5174c6023326a60dcdd12f7bf29fc7c7d7e68f84d`  
		Last Modified: Wed, 13 Mar 2019 00:26:54 GMT  
		Size: 50.2 MB (50202525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074b983ba5b0ba1e29c41f75bec99d6f5de4e451d1e181bf837d76e297dd56e5`  
		Last Modified: Wed, 13 Mar 2019 00:26:45 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87ad29dd898121cb1ec4aee019a08131e537ca4dd95a9e770aaf7309be7e7785`  
		Last Modified: Wed, 13 Mar 2019 00:26:45 GMT  
		Size: 765.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a104eedc51fb63661e8a88eded716b64c8379d8b727ba4cfaeffe3e30740add4`  
		Last Modified: Wed, 13 Mar 2019 00:26:45 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6660c923fabd07eb4472861825784abee05808f5c141b4a5b72c01897596932f`  
		Last Modified: Wed, 13 Mar 2019 00:26:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abcffdbe8402208ae9eeef6ef6078f539b71249470853b804faef9dae4ed4a5`  
		Last Modified: Wed, 13 Mar 2019 00:26:45 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
