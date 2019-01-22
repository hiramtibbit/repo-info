## `couchdb:latest`

```console
$ docker pull couchdb@sha256:7f3e6372ff8a87f1a11c63a787ec7dceda85a8fe80005d6c5bbdfa6a6bcde73e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:latest` - linux; amd64

```console
$ docker pull couchdb@sha256:c95215d8942c951f72a29e9b6cd9149053641063828e900fde3a861b8d51b46b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.4 MB (86358335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bfb066ff4c595317efd3dc672a98b3defce21427947ecb9288ffec6c7040c2b`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 19:53:54 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Tue, 22 Jan 2019 19:53:54 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Tue, 22 Jan 2019 19:54:09 GMT
RUN set -ex;         apt-get update;         apt-get install -y --no-install-recommends                 apt-transport-https                 ca-certificates                 dirmngr                 gnupg         ;         rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 19:54:10 GMT
ENV GOSU_VERSION=1.11
# Tue, 22 Jan 2019 19:54:10 GMT
ENV TINI_VERSION=0.18.0
# Tue, 22 Jan 2019 19:55:24 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true;     	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini;         apt-get purge -y --auto-remove wget; 	tini --version
# Tue, 22 Jan 2019 19:55:24 GMT
ENV GPG_COUCH_KEY=8756C4F765C9AC3CB6B85D62379CE192D401AB61
# Tue, 22 Jan 2019 19:55:27 GMT
RUN set -xe;         export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do                 gpg --batch --keyserver $server --recv-keys $GPG_COUCH_KEY && break || : ;         done;         gpg --batch --export $GPG_COUCH_KEY > /etc/apt/trusted.gpg.d/couchdb.gpg;         command -v gpgconf && gpgconf --kill all || :;         rm -rf "$GNUPGHOME";         apt-key list
# Tue, 22 Jan 2019 19:55:28 GMT
ENV COUCHDB_VERSION=2.3.0
# Tue, 22 Jan 2019 19:55:28 GMT
RUN echo "deb https://apache.bintray.com/couchdb-deb stretch main" > /etc/apt/sources.list.d/couchdb.list
# Tue, 22 Jan 2019 19:55:53 GMT
RUN set -xe;         apt-get update;                 echo "couchdb couchdb/mode select none" | debconf-set-selections;         DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages                 couchdb="$COUCHDB_VERSION"~stretch         ;         rmdir /var/lib/couchdb /var/log/couchdb;         rm /opt/couchdb/data /opt/couchdb/var/log;         mkdir -p /opt/couchdb/data /opt/couchdb/var/log;         chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;         chmod 777 /opt/couchdb/data /opt/couchdb/var/log;         rm /opt/couchdb/etc/default.d/10-filelog.ini;         rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 19:55:54 GMT
COPY file:74a26e2e31f9b408e93e4a065004a86e00211d06a4ce6ab1fbc23640bd92a929 in /opt/couchdb/etc/default.d/ 
# Tue, 22 Jan 2019 19:55:54 GMT
COPY file:f98e48e4254cb3ec4a766f3b9bd3260f16676a310eb0356ee9775c62edb3e8f3 in /opt/couchdb/etc/ 
# Tue, 22 Jan 2019 19:55:54 GMT
COPY file:fc62f0c3f2a39a070ec3c03ac9e1f9ae02b94364cb5492a733584c34458af969 in /usr/local/bin 
# Tue, 22 Jan 2019 19:55:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 22 Jan 2019 19:55:55 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 22 Jan 2019 19:55:56 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/default.d/ /opt/couchdb/etc/vm.args
# Tue, 22 Jan 2019 19:55:56 GMT
VOLUME [/opt/couchdb/data]
# Tue, 22 Jan 2019 19:55:56 GMT
EXPOSE 4369 5984 9100
# Tue, 22 Jan 2019 19:55:56 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70113ec2139ec0875e6f9d791c1cd7dc6dba4711a45efb8ae2712c4a4ae76b66`  
		Last Modified: Tue, 22 Jan 2019 19:56:13 GMT  
		Size: 3.4 KB (3408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80648cf0a24ac3ddfa28033388fa2a38aa7832f2d06735ef201eb4184749b1e2`  
		Last Modified: Tue, 22 Jan 2019 19:56:14 GMT  
		Size: 8.5 MB (8507596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0794329addc42533e3703e050b3f3665f8307ab22505f6dd9d5e143174cfc95`  
		Last Modified: Tue, 22 Jan 2019 19:56:12 GMT  
		Size: 1.2 MB (1190534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d60e1d083fcd8e33ef0a34a1bef0bfdca87c0a8428257965514cf17b9ba3395`  
		Last Modified: Tue, 22 Jan 2019 19:56:12 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708127226509efc514b97b79f6c0924bae2bf1c0a8f890432f1adfbd42e4922b`  
		Last Modified: Tue, 22 Jan 2019 19:56:12 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eddfd85791cebe07c3ace63f606d5b803ca7786a60fdf56b6b27083364a1ab9`  
		Last Modified: Tue, 22 Jan 2019 19:56:21 GMT  
		Size: 54.1 MB (54149061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90beac1647b7b13ae6359a735112ab87d53f2dd6fba83e53c35b5683be80551b`  
		Last Modified: Tue, 22 Jan 2019 19:56:11 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:838fd0abf15ff55fcf129509ec4ac6acdd471daad6340abdc16b678389484003`  
		Last Modified: Tue, 22 Jan 2019 19:56:11 GMT  
		Size: 768.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7df822199b0067b9e671c365fa4d5a41ecff5da511c7d934ce2a13e014ac672`  
		Last Modified: Tue, 22 Jan 2019 19:56:11 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca2c2d17695c82ffb314a23a59fd4875d009e13153af91fcbe685e339eff6a9e`  
		Last Modified: Tue, 22 Jan 2019 19:56:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb7188da17c179833285b70abdd47938bb3d5d5f33ab4affd117680519696b4`  
		Last Modified: Tue, 22 Jan 2019 19:56:11 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
