<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchdb`

-	[`couchdb:2`](#couchdb2)
-	[`couchdb:2.3`](#couchdb23)
-	[`couchdb:2.3.0`](#couchdb230)
-	[`couchdb:2.3.1`](#couchdb231)
-	[`couchdb:latest`](#couchdblatest)

## `couchdb:2`

```console
$ docker pull couchdb@sha256:dbcb1b32f356aca9415ade8eccaca7c925c3ed4c2c52f113f9b3753994eee226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2` - linux; amd64

```console
$ docker pull couchdb@sha256:eb1cd7bebdf90e053422419b35d6ebb9568c9aa6bc12389d4fc1aa037beed480
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82402034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c889959dd0c9ca37f7fcdd18ebbe430f935d3fdfc6d53179b8c515d89c46c7c`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 00:59:46 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 08 May 2019 00:59:47 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Wed, 08 May 2019 01:00:02 GMT
RUN set -ex;         apt-get update;         apt-get install -y --no-install-recommends                 apt-transport-https                 ca-certificates                 dirmngr                 gnupg         ;         rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:00:03 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 01:00:03 GMT
ENV TINI_VERSION=0.18.0
# Wed, 08 May 2019 01:00:54 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true;     	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini;         apt-get purge -y --auto-remove wget; 	tini --version
# Wed, 08 May 2019 01:00:55 GMT
ENV GPG_COUCH_KEY=8756C4F765C9AC3CB6B85D62379CE192D401AB61
# Wed, 08 May 2019 01:01:25 GMT
RUN set -xe;         export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do                 gpg --batch --keyserver $server --recv-keys $GPG_COUCH_KEY && break || : ;         done;         gpg --batch --export $GPG_COUCH_KEY > /etc/apt/trusted.gpg.d/couchdb.gpg;         command -v gpgconf && gpgconf --kill all || :;         rm -rf "$GNUPGHOME";         apt-key list
# Wed, 08 May 2019 01:01:25 GMT
ENV COUCHDB_VERSION=2.3.1
# Wed, 08 May 2019 01:01:25 GMT
RUN echo "deb https://apache.bintray.com/couchdb-deb stretch main" > /etc/apt/sources.list.d/couchdb.list
# Wed, 08 May 2019 01:01:51 GMT
RUN set -xe;         apt-get update;                 echo "couchdb couchdb/mode select none" | debconf-set-selections;         DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages                 couchdb="$COUCHDB_VERSION"~stretch         ;         rmdir /var/lib/couchdb /var/log/couchdb;         rm /opt/couchdb/data /opt/couchdb/var/log;         mkdir -p /opt/couchdb/data /opt/couchdb/var/log;         chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;         chmod 777 /opt/couchdb/data /opt/couchdb/var/log;         rm /opt/couchdb/etc/default.d/10-filelog.ini;         rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:01:51 GMT
COPY file:74a26e2e31f9b408e93e4a065004a86e00211d06a4ce6ab1fbc23640bd92a929 in /opt/couchdb/etc/default.d/ 
# Wed, 08 May 2019 01:01:51 GMT
COPY file:f98e48e4254cb3ec4a766f3b9bd3260f16676a310eb0356ee9775c62edb3e8f3 in /opt/couchdb/etc/ 
# Wed, 08 May 2019 01:01:51 GMT
COPY file:fc62f0c3f2a39a070ec3c03ac9e1f9ae02b94364cb5492a733584c34458af969 in /usr/local/bin 
# Wed, 08 May 2019 01:01:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Wed, 08 May 2019 01:01:52 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 08 May 2019 01:01:53 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/default.d/ /opt/couchdb/etc/vm.args
# Wed, 08 May 2019 01:01:53 GMT
VOLUME [/opt/couchdb/data]
# Wed, 08 May 2019 01:01:53 GMT
EXPOSE 4369 5984 9100
# Wed, 08 May 2019 01:01:54 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:951b83aff526ce67a18f9aef726406afcf11dc7834e0ca55b25fd8ba6394e5a3`  
		Last Modified: Wed, 08 May 2019 01:03:40 GMT  
		Size: 3.4 KB (3412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4691fbd29f923bdac622112872c566ee7f4a1196356bbad02d16b547e2391ac5`  
		Last Modified: Wed, 08 May 2019 01:03:40 GMT  
		Size: 8.5 MB (8510187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92ef7427d1df95150d8c8ba02606c9315a518a5efd303cc886260cdca9c2e5c`  
		Last Modified: Wed, 08 May 2019 01:03:39 GMT  
		Size: 1.2 MB (1190565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde9625433412303d3116a79027bee1e6d3688ad2178374a7f29bf43760b47f0`  
		Last Modified: Wed, 08 May 2019 01:03:39 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bb84a3961be6e992288c6b80a4d7637541dfef2a15314267c01e6ca9e860bb`  
		Last Modified: Wed, 08 May 2019 01:03:39 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ee608d78d441d80ac34f99e8a369b9e3a59be45f13a5837807f7fdf3d05434`  
		Last Modified: Wed, 08 May 2019 01:03:46 GMT  
		Size: 50.2 MB (50201495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2df43a786b63c7a7f8eba4b897093e4d3c2ed9ce7619ff08a3be40932288a1`  
		Last Modified: Wed, 08 May 2019 01:03:38 GMT  
		Size: 386.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227c24b55242de00072bfe73f964bc77194e67ce8a5c979efd2e5d7c34087965`  
		Last Modified: Wed, 08 May 2019 01:03:38 GMT  
		Size: 766.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e692c3d26cddb907eeab8c17264e7809e44c75d6f3f3dca2b75e8b71fb251d`  
		Last Modified: Wed, 08 May 2019 01:03:38 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716f857ab0702491f3b7bf5a62da8598bcc3511c4c790c1024a58c990aaad537`  
		Last Modified: Wed, 08 May 2019 01:03:38 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854c6f2f845ec139e66770522776297b333519b2ef6799d5e16a4b065d068bd5`  
		Last Modified: Wed, 08 May 2019 01:03:37 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:2.3`

```console
$ docker pull couchdb@sha256:dbcb1b32f356aca9415ade8eccaca7c925c3ed4c2c52f113f9b3753994eee226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2.3` - linux; amd64

```console
$ docker pull couchdb@sha256:eb1cd7bebdf90e053422419b35d6ebb9568c9aa6bc12389d4fc1aa037beed480
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82402034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c889959dd0c9ca37f7fcdd18ebbe430f935d3fdfc6d53179b8c515d89c46c7c`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 00:59:46 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 08 May 2019 00:59:47 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Wed, 08 May 2019 01:00:02 GMT
RUN set -ex;         apt-get update;         apt-get install -y --no-install-recommends                 apt-transport-https                 ca-certificates                 dirmngr                 gnupg         ;         rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:00:03 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 01:00:03 GMT
ENV TINI_VERSION=0.18.0
# Wed, 08 May 2019 01:00:54 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true;     	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini;         apt-get purge -y --auto-remove wget; 	tini --version
# Wed, 08 May 2019 01:00:55 GMT
ENV GPG_COUCH_KEY=8756C4F765C9AC3CB6B85D62379CE192D401AB61
# Wed, 08 May 2019 01:01:25 GMT
RUN set -xe;         export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do                 gpg --batch --keyserver $server --recv-keys $GPG_COUCH_KEY && break || : ;         done;         gpg --batch --export $GPG_COUCH_KEY > /etc/apt/trusted.gpg.d/couchdb.gpg;         command -v gpgconf && gpgconf --kill all || :;         rm -rf "$GNUPGHOME";         apt-key list
# Wed, 08 May 2019 01:01:25 GMT
ENV COUCHDB_VERSION=2.3.1
# Wed, 08 May 2019 01:01:25 GMT
RUN echo "deb https://apache.bintray.com/couchdb-deb stretch main" > /etc/apt/sources.list.d/couchdb.list
# Wed, 08 May 2019 01:01:51 GMT
RUN set -xe;         apt-get update;                 echo "couchdb couchdb/mode select none" | debconf-set-selections;         DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages                 couchdb="$COUCHDB_VERSION"~stretch         ;         rmdir /var/lib/couchdb /var/log/couchdb;         rm /opt/couchdb/data /opt/couchdb/var/log;         mkdir -p /opt/couchdb/data /opt/couchdb/var/log;         chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;         chmod 777 /opt/couchdb/data /opt/couchdb/var/log;         rm /opt/couchdb/etc/default.d/10-filelog.ini;         rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:01:51 GMT
COPY file:74a26e2e31f9b408e93e4a065004a86e00211d06a4ce6ab1fbc23640bd92a929 in /opt/couchdb/etc/default.d/ 
# Wed, 08 May 2019 01:01:51 GMT
COPY file:f98e48e4254cb3ec4a766f3b9bd3260f16676a310eb0356ee9775c62edb3e8f3 in /opt/couchdb/etc/ 
# Wed, 08 May 2019 01:01:51 GMT
COPY file:fc62f0c3f2a39a070ec3c03ac9e1f9ae02b94364cb5492a733584c34458af969 in /usr/local/bin 
# Wed, 08 May 2019 01:01:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Wed, 08 May 2019 01:01:52 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 08 May 2019 01:01:53 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/default.d/ /opt/couchdb/etc/vm.args
# Wed, 08 May 2019 01:01:53 GMT
VOLUME [/opt/couchdb/data]
# Wed, 08 May 2019 01:01:53 GMT
EXPOSE 4369 5984 9100
# Wed, 08 May 2019 01:01:54 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:951b83aff526ce67a18f9aef726406afcf11dc7834e0ca55b25fd8ba6394e5a3`  
		Last Modified: Wed, 08 May 2019 01:03:40 GMT  
		Size: 3.4 KB (3412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4691fbd29f923bdac622112872c566ee7f4a1196356bbad02d16b547e2391ac5`  
		Last Modified: Wed, 08 May 2019 01:03:40 GMT  
		Size: 8.5 MB (8510187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92ef7427d1df95150d8c8ba02606c9315a518a5efd303cc886260cdca9c2e5c`  
		Last Modified: Wed, 08 May 2019 01:03:39 GMT  
		Size: 1.2 MB (1190565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde9625433412303d3116a79027bee1e6d3688ad2178374a7f29bf43760b47f0`  
		Last Modified: Wed, 08 May 2019 01:03:39 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bb84a3961be6e992288c6b80a4d7637541dfef2a15314267c01e6ca9e860bb`  
		Last Modified: Wed, 08 May 2019 01:03:39 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ee608d78d441d80ac34f99e8a369b9e3a59be45f13a5837807f7fdf3d05434`  
		Last Modified: Wed, 08 May 2019 01:03:46 GMT  
		Size: 50.2 MB (50201495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2df43a786b63c7a7f8eba4b897093e4d3c2ed9ce7619ff08a3be40932288a1`  
		Last Modified: Wed, 08 May 2019 01:03:38 GMT  
		Size: 386.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227c24b55242de00072bfe73f964bc77194e67ce8a5c979efd2e5d7c34087965`  
		Last Modified: Wed, 08 May 2019 01:03:38 GMT  
		Size: 766.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e692c3d26cddb907eeab8c17264e7809e44c75d6f3f3dca2b75e8b71fb251d`  
		Last Modified: Wed, 08 May 2019 01:03:38 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716f857ab0702491f3b7bf5a62da8598bcc3511c4c790c1024a58c990aaad537`  
		Last Modified: Wed, 08 May 2019 01:03:38 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854c6f2f845ec139e66770522776297b333519b2ef6799d5e16a4b065d068bd5`  
		Last Modified: Wed, 08 May 2019 01:03:37 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:2.3.0`

```console
$ docker pull couchdb@sha256:8529c4972c0269f6134c467049010dcf38a8b1b89d35d984118ead560da8639b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2.3.0` - linux; amd64

```console
$ docker pull couchdb@sha256:bdffbe1b4245c52e7c4fc5dd88539b9ba075188900565532fa488301b44c3031
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.4 MB (86351223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa2ab1ffacc70ae0c767e96d637ea41e6d507003f571753fac0c52e274ae7522`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 00:59:46 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 08 May 2019 00:59:47 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Wed, 08 May 2019 01:00:02 GMT
RUN set -ex;         apt-get update;         apt-get install -y --no-install-recommends                 apt-transport-https                 ca-certificates                 dirmngr                 gnupg         ;         rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:00:03 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 01:00:03 GMT
ENV TINI_VERSION=0.18.0
# Wed, 08 May 2019 01:02:15 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true;     	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini;         apt-get purge -y --auto-remove wget; 	tini --version
# Wed, 08 May 2019 01:02:16 GMT
ENV GPG_COUCH_KEY=8756C4F765C9AC3CB6B85D62379CE192D401AB61
# Wed, 08 May 2019 01:03:01 GMT
RUN set -xe;         export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do                 gpg --batch --keyserver $server --recv-keys $GPG_COUCH_KEY && break || : ;         done;         gpg --batch --export $GPG_COUCH_KEY > /etc/apt/trusted.gpg.d/couchdb.gpg;         command -v gpgconf && gpgconf --kill all || :;         rm -rf "$GNUPGHOME";         apt-key list
# Wed, 08 May 2019 01:03:01 GMT
ENV COUCHDB_VERSION=2.3.0
# Wed, 08 May 2019 01:03:02 GMT
RUN echo "deb https://apache.bintray.com/couchdb-deb stretch main" > /etc/apt/sources.list.d/couchdb.list
# Wed, 08 May 2019 01:03:24 GMT
RUN set -xe;         apt-get update;                 echo "couchdb couchdb/mode select none" | debconf-set-selections;         DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages                 couchdb="$COUCHDB_VERSION"~stretch         ;         rmdir /var/lib/couchdb /var/log/couchdb;         rm /opt/couchdb/data /opt/couchdb/var/log;         mkdir -p /opt/couchdb/data /opt/couchdb/var/log;         chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;         chmod 777 /opt/couchdb/data /opt/couchdb/var/log;         rm /opt/couchdb/etc/default.d/10-filelog.ini;         rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:03:25 GMT
COPY file:74a26e2e31f9b408e93e4a065004a86e00211d06a4ce6ab1fbc23640bd92a929 in /opt/couchdb/etc/default.d/ 
# Wed, 08 May 2019 01:03:25 GMT
COPY file:f98e48e4254cb3ec4a766f3b9bd3260f16676a310eb0356ee9775c62edb3e8f3 in /opt/couchdb/etc/ 
# Wed, 08 May 2019 01:03:25 GMT
COPY file:fc62f0c3f2a39a070ec3c03ac9e1f9ae02b94364cb5492a733584c34458af969 in /usr/local/bin 
# Wed, 08 May 2019 01:03:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Wed, 08 May 2019 01:03:26 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 08 May 2019 01:03:27 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/default.d/ /opt/couchdb/etc/vm.args
# Wed, 08 May 2019 01:03:27 GMT
VOLUME [/opt/couchdb/data]
# Wed, 08 May 2019 01:03:27 GMT
EXPOSE 4369 5984 9100
# Wed, 08 May 2019 01:03:27 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:951b83aff526ce67a18f9aef726406afcf11dc7834e0ca55b25fd8ba6394e5a3`  
		Last Modified: Wed, 08 May 2019 01:03:40 GMT  
		Size: 3.4 KB (3412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4691fbd29f923bdac622112872c566ee7f4a1196356bbad02d16b547e2391ac5`  
		Last Modified: Wed, 08 May 2019 01:03:40 GMT  
		Size: 8.5 MB (8510187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7101e20277f8023a668340299a2175e060c03ced6cfa8fd11d1e92c7d6d92eb2`  
		Last Modified: Wed, 08 May 2019 01:03:54 GMT  
		Size: 1.2 MB (1190573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c1737b983949c588c89ea5ecf0eee0d26d485927a39488f6d439f6ff4d16c8`  
		Last Modified: Wed, 08 May 2019 01:03:54 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e11f281e22e00ff8e2f34a4beb2e8a6b8f19d8963bb8cbd87311aad0d7624f`  
		Last Modified: Wed, 08 May 2019 01:03:54 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1b2202014fb1122518f0cbf9850b29e5cbdef8ab0b3dfcce856f22ead3434f`  
		Last Modified: Wed, 08 May 2019 01:04:03 GMT  
		Size: 54.2 MB (54150676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82482f6f78626c27ef49e7135b0be99861c85021bac1d22d6ff7876b313b8960`  
		Last Modified: Wed, 08 May 2019 01:03:53 GMT  
		Size: 386.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659fb0e296459b4dc8f3c862e285bbf4f5ce01e1155238419be51276e9b7c980`  
		Last Modified: Wed, 08 May 2019 01:03:53 GMT  
		Size: 765.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca467b8bb5b24408fdc3ef3918e4e0fd113f540f83cac8453a781c6ebcbde251`  
		Last Modified: Wed, 08 May 2019 01:03:53 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1e6da7f2b10c2ee6ab0c5745c0efa4286ceef537db259a9d9303d7cac4a2c5`  
		Last Modified: Wed, 08 May 2019 01:03:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b16eb7c85dae1447638e0c1fb440230b035e1be6bc01c103c77f900ca2a808`  
		Last Modified: Wed, 08 May 2019 01:03:53 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:2.3.1`

```console
$ docker pull couchdb@sha256:dbcb1b32f356aca9415ade8eccaca7c925c3ed4c2c52f113f9b3753994eee226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2.3.1` - linux; amd64

```console
$ docker pull couchdb@sha256:eb1cd7bebdf90e053422419b35d6ebb9568c9aa6bc12389d4fc1aa037beed480
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82402034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c889959dd0c9ca37f7fcdd18ebbe430f935d3fdfc6d53179b8c515d89c46c7c`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 00:59:46 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 08 May 2019 00:59:47 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Wed, 08 May 2019 01:00:02 GMT
RUN set -ex;         apt-get update;         apt-get install -y --no-install-recommends                 apt-transport-https                 ca-certificates                 dirmngr                 gnupg         ;         rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:00:03 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 01:00:03 GMT
ENV TINI_VERSION=0.18.0
# Wed, 08 May 2019 01:00:54 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true;     	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini;         apt-get purge -y --auto-remove wget; 	tini --version
# Wed, 08 May 2019 01:00:55 GMT
ENV GPG_COUCH_KEY=8756C4F765C9AC3CB6B85D62379CE192D401AB61
# Wed, 08 May 2019 01:01:25 GMT
RUN set -xe;         export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do                 gpg --batch --keyserver $server --recv-keys $GPG_COUCH_KEY && break || : ;         done;         gpg --batch --export $GPG_COUCH_KEY > /etc/apt/trusted.gpg.d/couchdb.gpg;         command -v gpgconf && gpgconf --kill all || :;         rm -rf "$GNUPGHOME";         apt-key list
# Wed, 08 May 2019 01:01:25 GMT
ENV COUCHDB_VERSION=2.3.1
# Wed, 08 May 2019 01:01:25 GMT
RUN echo "deb https://apache.bintray.com/couchdb-deb stretch main" > /etc/apt/sources.list.d/couchdb.list
# Wed, 08 May 2019 01:01:51 GMT
RUN set -xe;         apt-get update;                 echo "couchdb couchdb/mode select none" | debconf-set-selections;         DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages                 couchdb="$COUCHDB_VERSION"~stretch         ;         rmdir /var/lib/couchdb /var/log/couchdb;         rm /opt/couchdb/data /opt/couchdb/var/log;         mkdir -p /opt/couchdb/data /opt/couchdb/var/log;         chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;         chmod 777 /opt/couchdb/data /opt/couchdb/var/log;         rm /opt/couchdb/etc/default.d/10-filelog.ini;         rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:01:51 GMT
COPY file:74a26e2e31f9b408e93e4a065004a86e00211d06a4ce6ab1fbc23640bd92a929 in /opt/couchdb/etc/default.d/ 
# Wed, 08 May 2019 01:01:51 GMT
COPY file:f98e48e4254cb3ec4a766f3b9bd3260f16676a310eb0356ee9775c62edb3e8f3 in /opt/couchdb/etc/ 
# Wed, 08 May 2019 01:01:51 GMT
COPY file:fc62f0c3f2a39a070ec3c03ac9e1f9ae02b94364cb5492a733584c34458af969 in /usr/local/bin 
# Wed, 08 May 2019 01:01:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Wed, 08 May 2019 01:01:52 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 08 May 2019 01:01:53 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/default.d/ /opt/couchdb/etc/vm.args
# Wed, 08 May 2019 01:01:53 GMT
VOLUME [/opt/couchdb/data]
# Wed, 08 May 2019 01:01:53 GMT
EXPOSE 4369 5984 9100
# Wed, 08 May 2019 01:01:54 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:951b83aff526ce67a18f9aef726406afcf11dc7834e0ca55b25fd8ba6394e5a3`  
		Last Modified: Wed, 08 May 2019 01:03:40 GMT  
		Size: 3.4 KB (3412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4691fbd29f923bdac622112872c566ee7f4a1196356bbad02d16b547e2391ac5`  
		Last Modified: Wed, 08 May 2019 01:03:40 GMT  
		Size: 8.5 MB (8510187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92ef7427d1df95150d8c8ba02606c9315a518a5efd303cc886260cdca9c2e5c`  
		Last Modified: Wed, 08 May 2019 01:03:39 GMT  
		Size: 1.2 MB (1190565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde9625433412303d3116a79027bee1e6d3688ad2178374a7f29bf43760b47f0`  
		Last Modified: Wed, 08 May 2019 01:03:39 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bb84a3961be6e992288c6b80a4d7637541dfef2a15314267c01e6ca9e860bb`  
		Last Modified: Wed, 08 May 2019 01:03:39 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ee608d78d441d80ac34f99e8a369b9e3a59be45f13a5837807f7fdf3d05434`  
		Last Modified: Wed, 08 May 2019 01:03:46 GMT  
		Size: 50.2 MB (50201495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2df43a786b63c7a7f8eba4b897093e4d3c2ed9ce7619ff08a3be40932288a1`  
		Last Modified: Wed, 08 May 2019 01:03:38 GMT  
		Size: 386.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227c24b55242de00072bfe73f964bc77194e67ce8a5c979efd2e5d7c34087965`  
		Last Modified: Wed, 08 May 2019 01:03:38 GMT  
		Size: 766.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e692c3d26cddb907eeab8c17264e7809e44c75d6f3f3dca2b75e8b71fb251d`  
		Last Modified: Wed, 08 May 2019 01:03:38 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716f857ab0702491f3b7bf5a62da8598bcc3511c4c790c1024a58c990aaad537`  
		Last Modified: Wed, 08 May 2019 01:03:38 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854c6f2f845ec139e66770522776297b333519b2ef6799d5e16a4b065d068bd5`  
		Last Modified: Wed, 08 May 2019 01:03:37 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:latest`

```console
$ docker pull couchdb@sha256:dbcb1b32f356aca9415ade8eccaca7c925c3ed4c2c52f113f9b3753994eee226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:latest` - linux; amd64

```console
$ docker pull couchdb@sha256:eb1cd7bebdf90e053422419b35d6ebb9568c9aa6bc12389d4fc1aa037beed480
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82402034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c889959dd0c9ca37f7fcdd18ebbe430f935d3fdfc6d53179b8c515d89c46c7c`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 00:59:46 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 08 May 2019 00:59:47 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Wed, 08 May 2019 01:00:02 GMT
RUN set -ex;         apt-get update;         apt-get install -y --no-install-recommends                 apt-transport-https                 ca-certificates                 dirmngr                 gnupg         ;         rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:00:03 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 01:00:03 GMT
ENV TINI_VERSION=0.18.0
# Wed, 08 May 2019 01:00:54 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true;     	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini;         apt-get purge -y --auto-remove wget; 	tini --version
# Wed, 08 May 2019 01:00:55 GMT
ENV GPG_COUCH_KEY=8756C4F765C9AC3CB6B85D62379CE192D401AB61
# Wed, 08 May 2019 01:01:25 GMT
RUN set -xe;         export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do                 gpg --batch --keyserver $server --recv-keys $GPG_COUCH_KEY && break || : ;         done;         gpg --batch --export $GPG_COUCH_KEY > /etc/apt/trusted.gpg.d/couchdb.gpg;         command -v gpgconf && gpgconf --kill all || :;         rm -rf "$GNUPGHOME";         apt-key list
# Wed, 08 May 2019 01:01:25 GMT
ENV COUCHDB_VERSION=2.3.1
# Wed, 08 May 2019 01:01:25 GMT
RUN echo "deb https://apache.bintray.com/couchdb-deb stretch main" > /etc/apt/sources.list.d/couchdb.list
# Wed, 08 May 2019 01:01:51 GMT
RUN set -xe;         apt-get update;                 echo "couchdb couchdb/mode select none" | debconf-set-selections;         DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages                 couchdb="$COUCHDB_VERSION"~stretch         ;         rmdir /var/lib/couchdb /var/log/couchdb;         rm /opt/couchdb/data /opt/couchdb/var/log;         mkdir -p /opt/couchdb/data /opt/couchdb/var/log;         chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;         chmod 777 /opt/couchdb/data /opt/couchdb/var/log;         rm /opt/couchdb/etc/default.d/10-filelog.ini;         rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:01:51 GMT
COPY file:74a26e2e31f9b408e93e4a065004a86e00211d06a4ce6ab1fbc23640bd92a929 in /opt/couchdb/etc/default.d/ 
# Wed, 08 May 2019 01:01:51 GMT
COPY file:f98e48e4254cb3ec4a766f3b9bd3260f16676a310eb0356ee9775c62edb3e8f3 in /opt/couchdb/etc/ 
# Wed, 08 May 2019 01:01:51 GMT
COPY file:fc62f0c3f2a39a070ec3c03ac9e1f9ae02b94364cb5492a733584c34458af969 in /usr/local/bin 
# Wed, 08 May 2019 01:01:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Wed, 08 May 2019 01:01:52 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 08 May 2019 01:01:53 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/default.d/ /opt/couchdb/etc/vm.args
# Wed, 08 May 2019 01:01:53 GMT
VOLUME [/opt/couchdb/data]
# Wed, 08 May 2019 01:01:53 GMT
EXPOSE 4369 5984 9100
# Wed, 08 May 2019 01:01:54 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:951b83aff526ce67a18f9aef726406afcf11dc7834e0ca55b25fd8ba6394e5a3`  
		Last Modified: Wed, 08 May 2019 01:03:40 GMT  
		Size: 3.4 KB (3412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4691fbd29f923bdac622112872c566ee7f4a1196356bbad02d16b547e2391ac5`  
		Last Modified: Wed, 08 May 2019 01:03:40 GMT  
		Size: 8.5 MB (8510187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92ef7427d1df95150d8c8ba02606c9315a518a5efd303cc886260cdca9c2e5c`  
		Last Modified: Wed, 08 May 2019 01:03:39 GMT  
		Size: 1.2 MB (1190565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde9625433412303d3116a79027bee1e6d3688ad2178374a7f29bf43760b47f0`  
		Last Modified: Wed, 08 May 2019 01:03:39 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bb84a3961be6e992288c6b80a4d7637541dfef2a15314267c01e6ca9e860bb`  
		Last Modified: Wed, 08 May 2019 01:03:39 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ee608d78d441d80ac34f99e8a369b9e3a59be45f13a5837807f7fdf3d05434`  
		Last Modified: Wed, 08 May 2019 01:03:46 GMT  
		Size: 50.2 MB (50201495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2df43a786b63c7a7f8eba4b897093e4d3c2ed9ce7619ff08a3be40932288a1`  
		Last Modified: Wed, 08 May 2019 01:03:38 GMT  
		Size: 386.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227c24b55242de00072bfe73f964bc77194e67ce8a5c979efd2e5d7c34087965`  
		Last Modified: Wed, 08 May 2019 01:03:38 GMT  
		Size: 766.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e692c3d26cddb907eeab8c17264e7809e44c75d6f3f3dca2b75e8b71fb251d`  
		Last Modified: Wed, 08 May 2019 01:03:38 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716f857ab0702491f3b7bf5a62da8598bcc3511c4c790c1024a58c990aaad537`  
		Last Modified: Wed, 08 May 2019 01:03:38 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854c6f2f845ec139e66770522776297b333519b2ef6799d5e16a4b065d068bd5`  
		Last Modified: Wed, 08 May 2019 01:03:37 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
