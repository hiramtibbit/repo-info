## `couchdb:latest`

```console
$ docker pull couchdb@sha256:a592fb8fdc8a554f584734f6ae1f3940ab8630558cb0c6d8fbd52a2b9d9a3cfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:latest` - linux; amd64

```console
$ docker pull couchdb@sha256:06229eb3c1e54e6bd8f6f04a2612142f4a6a2c6e5bbd5facbe45c443267f4b3e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82402400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:716df32efd70d0d4dc0e90b69ae6f6c020129bdc0be1b4209a34d5a18af89697`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:39:58 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 11 Jun 2019 00:40:00 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Tue, 11 Jun 2019 00:40:24 GMT
RUN set -ex;         apt-get update;         apt-get install -y --no-install-recommends                 apt-transport-https                 ca-certificates                 dirmngr                 gnupg         ;         rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:40:24 GMT
ENV GOSU_VERSION=1.11
# Tue, 11 Jun 2019 00:40:25 GMT
ENV TINI_VERSION=0.18.0
# Tue, 11 Jun 2019 00:40:41 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true;     	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini;         apt-get purge -y --auto-remove wget; 	tini --version
# Tue, 11 Jun 2019 00:40:41 GMT
ENV GPG_COUCH_KEY=8756C4F765C9AC3CB6B85D62379CE192D401AB61
# Tue, 11 Jun 2019 00:42:47 GMT
RUN set -xe;         export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do                 gpg --batch --keyserver $server --recv-keys $GPG_COUCH_KEY && break || : ;         done;         gpg --batch --export $GPG_COUCH_KEY > /etc/apt/trusted.gpg.d/couchdb.gpg;         command -v gpgconf && gpgconf --kill all || :;         rm -rf "$GNUPGHOME";         apt-key list
# Tue, 11 Jun 2019 00:42:47 GMT
ENV COUCHDB_VERSION=2.3.1
# Tue, 11 Jun 2019 00:42:49 GMT
RUN echo "deb https://apache.bintray.com/couchdb-deb stretch main" > /etc/apt/sources.list.d/couchdb.list
# Tue, 11 Jun 2019 00:43:30 GMT
RUN set -xe;         apt-get update;                 echo "couchdb couchdb/mode select none" | debconf-set-selections;         DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages                 couchdb="$COUCHDB_VERSION"~stretch         ;         rmdir /var/lib/couchdb /var/log/couchdb;         rm /opt/couchdb/data /opt/couchdb/var/log;         mkdir -p /opt/couchdb/data /opt/couchdb/var/log;         chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;         chmod 777 /opt/couchdb/data /opt/couchdb/var/log;         rm /opt/couchdb/etc/default.d/10-filelog.ini;         rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:43:30 GMT
COPY file:74a26e2e31f9b408e93e4a065004a86e00211d06a4ce6ab1fbc23640bd92a929 in /opt/couchdb/etc/default.d/ 
# Tue, 11 Jun 2019 00:43:30 GMT
COPY file:f98e48e4254cb3ec4a766f3b9bd3260f16676a310eb0356ee9775c62edb3e8f3 in /opt/couchdb/etc/ 
# Tue, 11 Jun 2019 00:43:31 GMT
COPY file:fc62f0c3f2a39a070ec3c03ac9e1f9ae02b94364cb5492a733584c34458af969 in /usr/local/bin 
# Tue, 11 Jun 2019 00:43:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 11 Jun 2019 00:43:32 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:43:34 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/default.d/ /opt/couchdb/etc/vm.args
# Tue, 11 Jun 2019 00:43:34 GMT
VOLUME [/opt/couchdb/data]
# Tue, 11 Jun 2019 00:43:34 GMT
EXPOSE 4369 5984 9100
# Tue, 11 Jun 2019 00:43:34 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb36e9453770f29eb5b52ba3923ccb8f1ff7376c95ef423b17a620f79eea6ef`  
		Last Modified: Tue, 11 Jun 2019 00:45:14 GMT  
		Size: 3.4 KB (3414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5021d55532b119574304b2327e0653d022614437216ff33fedf8d386940a9bd9`  
		Last Modified: Tue, 11 Jun 2019 00:45:14 GMT  
		Size: 8.5 MB (8510359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05255232aa57920d07ddc457e9b217261c67eecb1187caab499dcba8c9c6a7af`  
		Last Modified: Tue, 11 Jun 2019 00:45:11 GMT  
		Size: 1.2 MB (1190560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b50c8b71a254740be69f4a0924aa5a6bcb4ef7ec1abe86c5120779134c829a`  
		Last Modified: Tue, 11 Jun 2019 00:45:11 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:614314c16679f8443677bf3febfc19c8b599c7f5d89f59e329625ea7f72a258a`  
		Last Modified: Tue, 11 Jun 2019 00:45:10 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c100faafccc6e1e877cca7752f87493fb25ca73c4eb548e48f7b98a12902804`  
		Last Modified: Tue, 11 Jun 2019 00:45:24 GMT  
		Size: 50.2 MB (50201737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1623ca84297b0fe7554d17f841bda0be16ba70b38192c455be44f1907f66a925`  
		Last Modified: Tue, 11 Jun 2019 00:45:05 GMT  
		Size: 387.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f2bff90d062ce8b6a410aa913c255d9a621ca461de7df36ba16cab32423466`  
		Last Modified: Tue, 11 Jun 2019 00:45:05 GMT  
		Size: 769.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fae054efd4324b9ae37861e517c2c78676be1a4cccc10194f9c054cbf25afe`  
		Last Modified: Tue, 11 Jun 2019 00:45:06 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688ec8b9efd754c86733ed2c0aa2aa6118cb2802ff522d68f48d412793d242bd`  
		Last Modified: Tue, 11 Jun 2019 00:45:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c8675841f37bc33b755523254cb62813d3855b3fa6f475f7137e136beb51ce`  
		Last Modified: Tue, 11 Jun 2019 00:45:05 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
