<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchdb`

-	[`couchdb:2`](#couchdb2)
-	[`couchdb:2.3`](#couchdb23)
-	[`couchdb:2.3.0`](#couchdb230)
-	[`couchdb:latest`](#couchdblatest)

## `couchdb:2`

```console
$ docker pull couchdb@sha256:3d151a4ded7f64c715de44e5e730e565e5e5a0e33b5ff5b586dab4e0ce72db67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2` - linux; amd64

```console
$ docker pull couchdb@sha256:6ec79eca5d53132a619c21a82874ef2a54a4671e9dcca62c165b8afc87eecfd8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.4 MB (86357968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd2c76c87ae5dfc78f728aa985752a9bc68e37c07b51aaaab0677458825f88b9`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:17:21 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Wed, 06 Feb 2019 05:17:21 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Wed, 06 Feb 2019 05:17:33 GMT
RUN set -ex;         apt-get update;         apt-get install -y --no-install-recommends                 apt-transport-https                 ca-certificates                 dirmngr                 gnupg         ;         rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:17:33 GMT
ENV GOSU_VERSION=1.11
# Wed, 06 Feb 2019 05:17:33 GMT
ENV TINI_VERSION=0.18.0
# Wed, 06 Feb 2019 05:17:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true;     	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini;         apt-get purge -y --auto-remove wget; 	tini --version
# Wed, 06 Feb 2019 05:17:43 GMT
ENV GPG_COUCH_KEY=8756C4F765C9AC3CB6B85D62379CE192D401AB61
# Wed, 06 Feb 2019 05:17:46 GMT
RUN set -xe;         export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do                 gpg --batch --keyserver $server --recv-keys $GPG_COUCH_KEY && break || : ;         done;         gpg --batch --export $GPG_COUCH_KEY > /etc/apt/trusted.gpg.d/couchdb.gpg;         command -v gpgconf && gpgconf --kill all || :;         rm -rf "$GNUPGHOME";         apt-key list
# Wed, 06 Feb 2019 05:17:46 GMT
ENV COUCHDB_VERSION=2.3.0
# Wed, 06 Feb 2019 05:17:47 GMT
RUN echo "deb https://apache.bintray.com/couchdb-deb stretch main" > /etc/apt/sources.list.d/couchdb.list
# Wed, 06 Feb 2019 05:18:09 GMT
RUN set -xe;         apt-get update;                 echo "couchdb couchdb/mode select none" | debconf-set-selections;         DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages                 couchdb="$COUCHDB_VERSION"~stretch         ;         rmdir /var/lib/couchdb /var/log/couchdb;         rm /opt/couchdb/data /opt/couchdb/var/log;         mkdir -p /opt/couchdb/data /opt/couchdb/var/log;         chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;         chmod 777 /opt/couchdb/data /opt/couchdb/var/log;         rm /opt/couchdb/etc/default.d/10-filelog.ini;         rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:18:09 GMT
COPY file:74a26e2e31f9b408e93e4a065004a86e00211d06a4ce6ab1fbc23640bd92a929 in /opt/couchdb/etc/default.d/ 
# Wed, 06 Feb 2019 05:18:09 GMT
COPY file:f98e48e4254cb3ec4a766f3b9bd3260f16676a310eb0356ee9775c62edb3e8f3 in /opt/couchdb/etc/ 
# Wed, 06 Feb 2019 05:18:10 GMT
COPY file:fc62f0c3f2a39a070ec3c03ac9e1f9ae02b94364cb5492a733584c34458af969 in /usr/local/bin 
# Wed, 06 Feb 2019 05:18:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 05:18:11 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 06 Feb 2019 05:18:11 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/default.d/ /opt/couchdb/etc/vm.args
# Wed, 06 Feb 2019 05:18:11 GMT
VOLUME [/opt/couchdb/data]
# Wed, 06 Feb 2019 05:18:12 GMT
EXPOSE 4369 5984 9100
# Wed, 06 Feb 2019 05:18:12 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e164bcf462390c83d1b6c14946b0502946b6abb1df5585568ee625793b47d23`  
		Last Modified: Wed, 06 Feb 2019 05:18:28 GMT  
		Size: 3.4 KB (3413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1de3e19f051e0cb616fde8c8721d03ddee5068d8bcbf2a3ed450da42278df0`  
		Last Modified: Wed, 06 Feb 2019 05:18:30 GMT  
		Size: 8.5 MB (8507584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198b39f762a04d2ef64f9b7b8c9e23b06ef2fa097e7321be96c568497e565605`  
		Last Modified: Wed, 06 Feb 2019 05:18:28 GMT  
		Size: 1.2 MB (1190505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fd8d76f43e334001cedc8b969245c20e229678ad659c67b9eeb10d2cf4a69c`  
		Last Modified: Wed, 06 Feb 2019 05:18:28 GMT  
		Size: 2.5 KB (2494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6e936e89e4fca000f8e02cd35f08756b23bcd02a1ddd48304c0752acce2bd4`  
		Last Modified: Wed, 06 Feb 2019 05:18:27 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d1ca8c84bd086aba1dea3d5a846b32081c14c944f3b49aff94f7a28ec08c6bd`  
		Last Modified: Wed, 06 Feb 2019 05:18:38 GMT  
		Size: 54.1 MB (54149150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589e1d7df0b76b0b7b860f0d74e06c773751502481dba9346afe6a0cd575bf6a`  
		Last Modified: Wed, 06 Feb 2019 05:18:27 GMT  
		Size: 386.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26fe8917dca33cc374d05caf907685376544afe64602df00ab5824ef6df6c5e2`  
		Last Modified: Wed, 06 Feb 2019 05:18:27 GMT  
		Size: 765.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9bd80d9ad48d5a977fc510a2e6396f7b7414ea90e6f71527523523e70b0a3b`  
		Last Modified: Wed, 06 Feb 2019 05:18:26 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52abbfd513073c418a1a63b475349bc3113ceaccfd011d93c85183addd992178`  
		Last Modified: Wed, 06 Feb 2019 05:18:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e0a1b05631cc3d9ceb6210b980235738aca26dd80f60d4c9f664df1512ce96`  
		Last Modified: Wed, 06 Feb 2019 05:18:27 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:2.3`

```console
$ docker pull couchdb@sha256:3d151a4ded7f64c715de44e5e730e565e5e5a0e33b5ff5b586dab4e0ce72db67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2.3` - linux; amd64

```console
$ docker pull couchdb@sha256:6ec79eca5d53132a619c21a82874ef2a54a4671e9dcca62c165b8afc87eecfd8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.4 MB (86357968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd2c76c87ae5dfc78f728aa985752a9bc68e37c07b51aaaab0677458825f88b9`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:17:21 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Wed, 06 Feb 2019 05:17:21 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Wed, 06 Feb 2019 05:17:33 GMT
RUN set -ex;         apt-get update;         apt-get install -y --no-install-recommends                 apt-transport-https                 ca-certificates                 dirmngr                 gnupg         ;         rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:17:33 GMT
ENV GOSU_VERSION=1.11
# Wed, 06 Feb 2019 05:17:33 GMT
ENV TINI_VERSION=0.18.0
# Wed, 06 Feb 2019 05:17:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true;     	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini;         apt-get purge -y --auto-remove wget; 	tini --version
# Wed, 06 Feb 2019 05:17:43 GMT
ENV GPG_COUCH_KEY=8756C4F765C9AC3CB6B85D62379CE192D401AB61
# Wed, 06 Feb 2019 05:17:46 GMT
RUN set -xe;         export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do                 gpg --batch --keyserver $server --recv-keys $GPG_COUCH_KEY && break || : ;         done;         gpg --batch --export $GPG_COUCH_KEY > /etc/apt/trusted.gpg.d/couchdb.gpg;         command -v gpgconf && gpgconf --kill all || :;         rm -rf "$GNUPGHOME";         apt-key list
# Wed, 06 Feb 2019 05:17:46 GMT
ENV COUCHDB_VERSION=2.3.0
# Wed, 06 Feb 2019 05:17:47 GMT
RUN echo "deb https://apache.bintray.com/couchdb-deb stretch main" > /etc/apt/sources.list.d/couchdb.list
# Wed, 06 Feb 2019 05:18:09 GMT
RUN set -xe;         apt-get update;                 echo "couchdb couchdb/mode select none" | debconf-set-selections;         DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages                 couchdb="$COUCHDB_VERSION"~stretch         ;         rmdir /var/lib/couchdb /var/log/couchdb;         rm /opt/couchdb/data /opt/couchdb/var/log;         mkdir -p /opt/couchdb/data /opt/couchdb/var/log;         chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;         chmod 777 /opt/couchdb/data /opt/couchdb/var/log;         rm /opt/couchdb/etc/default.d/10-filelog.ini;         rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:18:09 GMT
COPY file:74a26e2e31f9b408e93e4a065004a86e00211d06a4ce6ab1fbc23640bd92a929 in /opt/couchdb/etc/default.d/ 
# Wed, 06 Feb 2019 05:18:09 GMT
COPY file:f98e48e4254cb3ec4a766f3b9bd3260f16676a310eb0356ee9775c62edb3e8f3 in /opt/couchdb/etc/ 
# Wed, 06 Feb 2019 05:18:10 GMT
COPY file:fc62f0c3f2a39a070ec3c03ac9e1f9ae02b94364cb5492a733584c34458af969 in /usr/local/bin 
# Wed, 06 Feb 2019 05:18:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 05:18:11 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 06 Feb 2019 05:18:11 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/default.d/ /opt/couchdb/etc/vm.args
# Wed, 06 Feb 2019 05:18:11 GMT
VOLUME [/opt/couchdb/data]
# Wed, 06 Feb 2019 05:18:12 GMT
EXPOSE 4369 5984 9100
# Wed, 06 Feb 2019 05:18:12 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e164bcf462390c83d1b6c14946b0502946b6abb1df5585568ee625793b47d23`  
		Last Modified: Wed, 06 Feb 2019 05:18:28 GMT  
		Size: 3.4 KB (3413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1de3e19f051e0cb616fde8c8721d03ddee5068d8bcbf2a3ed450da42278df0`  
		Last Modified: Wed, 06 Feb 2019 05:18:30 GMT  
		Size: 8.5 MB (8507584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198b39f762a04d2ef64f9b7b8c9e23b06ef2fa097e7321be96c568497e565605`  
		Last Modified: Wed, 06 Feb 2019 05:18:28 GMT  
		Size: 1.2 MB (1190505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fd8d76f43e334001cedc8b969245c20e229678ad659c67b9eeb10d2cf4a69c`  
		Last Modified: Wed, 06 Feb 2019 05:18:28 GMT  
		Size: 2.5 KB (2494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6e936e89e4fca000f8e02cd35f08756b23bcd02a1ddd48304c0752acce2bd4`  
		Last Modified: Wed, 06 Feb 2019 05:18:27 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d1ca8c84bd086aba1dea3d5a846b32081c14c944f3b49aff94f7a28ec08c6bd`  
		Last Modified: Wed, 06 Feb 2019 05:18:38 GMT  
		Size: 54.1 MB (54149150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589e1d7df0b76b0b7b860f0d74e06c773751502481dba9346afe6a0cd575bf6a`  
		Last Modified: Wed, 06 Feb 2019 05:18:27 GMT  
		Size: 386.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26fe8917dca33cc374d05caf907685376544afe64602df00ab5824ef6df6c5e2`  
		Last Modified: Wed, 06 Feb 2019 05:18:27 GMT  
		Size: 765.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9bd80d9ad48d5a977fc510a2e6396f7b7414ea90e6f71527523523e70b0a3b`  
		Last Modified: Wed, 06 Feb 2019 05:18:26 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52abbfd513073c418a1a63b475349bc3113ceaccfd011d93c85183addd992178`  
		Last Modified: Wed, 06 Feb 2019 05:18:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e0a1b05631cc3d9ceb6210b980235738aca26dd80f60d4c9f664df1512ce96`  
		Last Modified: Wed, 06 Feb 2019 05:18:27 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:2.3.0`

```console
$ docker pull couchdb@sha256:3d151a4ded7f64c715de44e5e730e565e5e5a0e33b5ff5b586dab4e0ce72db67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2.3.0` - linux; amd64

```console
$ docker pull couchdb@sha256:6ec79eca5d53132a619c21a82874ef2a54a4671e9dcca62c165b8afc87eecfd8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.4 MB (86357968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd2c76c87ae5dfc78f728aa985752a9bc68e37c07b51aaaab0677458825f88b9`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:17:21 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Wed, 06 Feb 2019 05:17:21 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Wed, 06 Feb 2019 05:17:33 GMT
RUN set -ex;         apt-get update;         apt-get install -y --no-install-recommends                 apt-transport-https                 ca-certificates                 dirmngr                 gnupg         ;         rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:17:33 GMT
ENV GOSU_VERSION=1.11
# Wed, 06 Feb 2019 05:17:33 GMT
ENV TINI_VERSION=0.18.0
# Wed, 06 Feb 2019 05:17:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true;     	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini;         apt-get purge -y --auto-remove wget; 	tini --version
# Wed, 06 Feb 2019 05:17:43 GMT
ENV GPG_COUCH_KEY=8756C4F765C9AC3CB6B85D62379CE192D401AB61
# Wed, 06 Feb 2019 05:17:46 GMT
RUN set -xe;         export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do                 gpg --batch --keyserver $server --recv-keys $GPG_COUCH_KEY && break || : ;         done;         gpg --batch --export $GPG_COUCH_KEY > /etc/apt/trusted.gpg.d/couchdb.gpg;         command -v gpgconf && gpgconf --kill all || :;         rm -rf "$GNUPGHOME";         apt-key list
# Wed, 06 Feb 2019 05:17:46 GMT
ENV COUCHDB_VERSION=2.3.0
# Wed, 06 Feb 2019 05:17:47 GMT
RUN echo "deb https://apache.bintray.com/couchdb-deb stretch main" > /etc/apt/sources.list.d/couchdb.list
# Wed, 06 Feb 2019 05:18:09 GMT
RUN set -xe;         apt-get update;                 echo "couchdb couchdb/mode select none" | debconf-set-selections;         DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages                 couchdb="$COUCHDB_VERSION"~stretch         ;         rmdir /var/lib/couchdb /var/log/couchdb;         rm /opt/couchdb/data /opt/couchdb/var/log;         mkdir -p /opt/couchdb/data /opt/couchdb/var/log;         chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;         chmod 777 /opt/couchdb/data /opt/couchdb/var/log;         rm /opt/couchdb/etc/default.d/10-filelog.ini;         rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:18:09 GMT
COPY file:74a26e2e31f9b408e93e4a065004a86e00211d06a4ce6ab1fbc23640bd92a929 in /opt/couchdb/etc/default.d/ 
# Wed, 06 Feb 2019 05:18:09 GMT
COPY file:f98e48e4254cb3ec4a766f3b9bd3260f16676a310eb0356ee9775c62edb3e8f3 in /opt/couchdb/etc/ 
# Wed, 06 Feb 2019 05:18:10 GMT
COPY file:fc62f0c3f2a39a070ec3c03ac9e1f9ae02b94364cb5492a733584c34458af969 in /usr/local/bin 
# Wed, 06 Feb 2019 05:18:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 05:18:11 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 06 Feb 2019 05:18:11 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/default.d/ /opt/couchdb/etc/vm.args
# Wed, 06 Feb 2019 05:18:11 GMT
VOLUME [/opt/couchdb/data]
# Wed, 06 Feb 2019 05:18:12 GMT
EXPOSE 4369 5984 9100
# Wed, 06 Feb 2019 05:18:12 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e164bcf462390c83d1b6c14946b0502946b6abb1df5585568ee625793b47d23`  
		Last Modified: Wed, 06 Feb 2019 05:18:28 GMT  
		Size: 3.4 KB (3413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1de3e19f051e0cb616fde8c8721d03ddee5068d8bcbf2a3ed450da42278df0`  
		Last Modified: Wed, 06 Feb 2019 05:18:30 GMT  
		Size: 8.5 MB (8507584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198b39f762a04d2ef64f9b7b8c9e23b06ef2fa097e7321be96c568497e565605`  
		Last Modified: Wed, 06 Feb 2019 05:18:28 GMT  
		Size: 1.2 MB (1190505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fd8d76f43e334001cedc8b969245c20e229678ad659c67b9eeb10d2cf4a69c`  
		Last Modified: Wed, 06 Feb 2019 05:18:28 GMT  
		Size: 2.5 KB (2494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6e936e89e4fca000f8e02cd35f08756b23bcd02a1ddd48304c0752acce2bd4`  
		Last Modified: Wed, 06 Feb 2019 05:18:27 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d1ca8c84bd086aba1dea3d5a846b32081c14c944f3b49aff94f7a28ec08c6bd`  
		Last Modified: Wed, 06 Feb 2019 05:18:38 GMT  
		Size: 54.1 MB (54149150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589e1d7df0b76b0b7b860f0d74e06c773751502481dba9346afe6a0cd575bf6a`  
		Last Modified: Wed, 06 Feb 2019 05:18:27 GMT  
		Size: 386.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26fe8917dca33cc374d05caf907685376544afe64602df00ab5824ef6df6c5e2`  
		Last Modified: Wed, 06 Feb 2019 05:18:27 GMT  
		Size: 765.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9bd80d9ad48d5a977fc510a2e6396f7b7414ea90e6f71527523523e70b0a3b`  
		Last Modified: Wed, 06 Feb 2019 05:18:26 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52abbfd513073c418a1a63b475349bc3113ceaccfd011d93c85183addd992178`  
		Last Modified: Wed, 06 Feb 2019 05:18:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e0a1b05631cc3d9ceb6210b980235738aca26dd80f60d4c9f664df1512ce96`  
		Last Modified: Wed, 06 Feb 2019 05:18:27 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:latest`

```console
$ docker pull couchdb@sha256:3d151a4ded7f64c715de44e5e730e565e5e5a0e33b5ff5b586dab4e0ce72db67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:latest` - linux; amd64

```console
$ docker pull couchdb@sha256:6ec79eca5d53132a619c21a82874ef2a54a4671e9dcca62c165b8afc87eecfd8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.4 MB (86357968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd2c76c87ae5dfc78f728aa985752a9bc68e37c07b51aaaab0677458825f88b9`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:17:21 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Wed, 06 Feb 2019 05:17:21 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Wed, 06 Feb 2019 05:17:33 GMT
RUN set -ex;         apt-get update;         apt-get install -y --no-install-recommends                 apt-transport-https                 ca-certificates                 dirmngr                 gnupg         ;         rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:17:33 GMT
ENV GOSU_VERSION=1.11
# Wed, 06 Feb 2019 05:17:33 GMT
ENV TINI_VERSION=0.18.0
# Wed, 06 Feb 2019 05:17:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true;     	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini;         apt-get purge -y --auto-remove wget; 	tini --version
# Wed, 06 Feb 2019 05:17:43 GMT
ENV GPG_COUCH_KEY=8756C4F765C9AC3CB6B85D62379CE192D401AB61
# Wed, 06 Feb 2019 05:17:46 GMT
RUN set -xe;         export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do                 gpg --batch --keyserver $server --recv-keys $GPG_COUCH_KEY && break || : ;         done;         gpg --batch --export $GPG_COUCH_KEY > /etc/apt/trusted.gpg.d/couchdb.gpg;         command -v gpgconf && gpgconf --kill all || :;         rm -rf "$GNUPGHOME";         apt-key list
# Wed, 06 Feb 2019 05:17:46 GMT
ENV COUCHDB_VERSION=2.3.0
# Wed, 06 Feb 2019 05:17:47 GMT
RUN echo "deb https://apache.bintray.com/couchdb-deb stretch main" > /etc/apt/sources.list.d/couchdb.list
# Wed, 06 Feb 2019 05:18:09 GMT
RUN set -xe;         apt-get update;                 echo "couchdb couchdb/mode select none" | debconf-set-selections;         DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages                 couchdb="$COUCHDB_VERSION"~stretch         ;         rmdir /var/lib/couchdb /var/log/couchdb;         rm /opt/couchdb/data /opt/couchdb/var/log;         mkdir -p /opt/couchdb/data /opt/couchdb/var/log;         chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;         chmod 777 /opt/couchdb/data /opt/couchdb/var/log;         rm /opt/couchdb/etc/default.d/10-filelog.ini;         rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:18:09 GMT
COPY file:74a26e2e31f9b408e93e4a065004a86e00211d06a4ce6ab1fbc23640bd92a929 in /opt/couchdb/etc/default.d/ 
# Wed, 06 Feb 2019 05:18:09 GMT
COPY file:f98e48e4254cb3ec4a766f3b9bd3260f16676a310eb0356ee9775c62edb3e8f3 in /opt/couchdb/etc/ 
# Wed, 06 Feb 2019 05:18:10 GMT
COPY file:fc62f0c3f2a39a070ec3c03ac9e1f9ae02b94364cb5492a733584c34458af969 in /usr/local/bin 
# Wed, 06 Feb 2019 05:18:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 05:18:11 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 06 Feb 2019 05:18:11 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/default.d/ /opt/couchdb/etc/vm.args
# Wed, 06 Feb 2019 05:18:11 GMT
VOLUME [/opt/couchdb/data]
# Wed, 06 Feb 2019 05:18:12 GMT
EXPOSE 4369 5984 9100
# Wed, 06 Feb 2019 05:18:12 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e164bcf462390c83d1b6c14946b0502946b6abb1df5585568ee625793b47d23`  
		Last Modified: Wed, 06 Feb 2019 05:18:28 GMT  
		Size: 3.4 KB (3413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1de3e19f051e0cb616fde8c8721d03ddee5068d8bcbf2a3ed450da42278df0`  
		Last Modified: Wed, 06 Feb 2019 05:18:30 GMT  
		Size: 8.5 MB (8507584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198b39f762a04d2ef64f9b7b8c9e23b06ef2fa097e7321be96c568497e565605`  
		Last Modified: Wed, 06 Feb 2019 05:18:28 GMT  
		Size: 1.2 MB (1190505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fd8d76f43e334001cedc8b969245c20e229678ad659c67b9eeb10d2cf4a69c`  
		Last Modified: Wed, 06 Feb 2019 05:18:28 GMT  
		Size: 2.5 KB (2494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6e936e89e4fca000f8e02cd35f08756b23bcd02a1ddd48304c0752acce2bd4`  
		Last Modified: Wed, 06 Feb 2019 05:18:27 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d1ca8c84bd086aba1dea3d5a846b32081c14c944f3b49aff94f7a28ec08c6bd`  
		Last Modified: Wed, 06 Feb 2019 05:18:38 GMT  
		Size: 54.1 MB (54149150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589e1d7df0b76b0b7b860f0d74e06c773751502481dba9346afe6a0cd575bf6a`  
		Last Modified: Wed, 06 Feb 2019 05:18:27 GMT  
		Size: 386.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26fe8917dca33cc374d05caf907685376544afe64602df00ab5824ef6df6c5e2`  
		Last Modified: Wed, 06 Feb 2019 05:18:27 GMT  
		Size: 765.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9bd80d9ad48d5a977fc510a2e6396f7b7414ea90e6f71527523523e70b0a3b`  
		Last Modified: Wed, 06 Feb 2019 05:18:26 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52abbfd513073c418a1a63b475349bc3113ceaccfd011d93c85183addd992178`  
		Last Modified: Wed, 06 Feb 2019 05:18:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e0a1b05631cc3d9ceb6210b980235738aca26dd80f60d4c9f664df1512ce96`  
		Last Modified: Wed, 06 Feb 2019 05:18:27 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
