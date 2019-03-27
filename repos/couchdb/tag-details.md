<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchdb`

-	[`couchdb:2`](#couchdb2)
-	[`couchdb:2.3`](#couchdb23)
-	[`couchdb:2.3.0`](#couchdb230)
-	[`couchdb:2.3.1`](#couchdb231)
-	[`couchdb:latest`](#couchdblatest)

## `couchdb:2`

```console
$ docker pull couchdb@sha256:f10a96b0c473de71991637d9d3d96c037f4ef9081cb8343499c40b898caf1d53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2` - linux; amd64

```console
$ docker pull couchdb@sha256:562d1571ba97db88eeb775f0debdf07b9a30fbbd91fe9584f3097355e44589cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82407296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4cd7cc68b36b64c0e1caf88f11d50f58ac6981a181452e3232dcb506b9c5f29`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:18:27 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 26 Mar 2019 23:18:27 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Tue, 26 Mar 2019 23:18:38 GMT
RUN set -ex;         apt-get update;         apt-get install -y --no-install-recommends                 apt-transport-https                 ca-certificates                 dirmngr                 gnupg         ;         rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:18:38 GMT
ENV GOSU_VERSION=1.11
# Tue, 26 Mar 2019 23:18:39 GMT
ENV TINI_VERSION=0.18.0
# Tue, 26 Mar 2019 23:18:49 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true;     	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini;         apt-get purge -y --auto-remove wget; 	tini --version
# Tue, 26 Mar 2019 23:18:50 GMT
ENV GPG_COUCH_KEY=8756C4F765C9AC3CB6B85D62379CE192D401AB61
# Tue, 26 Mar 2019 23:18:53 GMT
RUN set -xe;         export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do                 gpg --batch --keyserver $server --recv-keys $GPG_COUCH_KEY && break || : ;         done;         gpg --batch --export $GPG_COUCH_KEY > /etc/apt/trusted.gpg.d/couchdb.gpg;         command -v gpgconf && gpgconf --kill all || :;         rm -rf "$GNUPGHOME";         apt-key list
# Tue, 26 Mar 2019 23:18:54 GMT
ENV COUCHDB_VERSION=2.3.1
# Tue, 26 Mar 2019 23:18:56 GMT
RUN echo "deb https://apache.bintray.com/couchdb-deb stretch main" > /etc/apt/sources.list.d/couchdb.list
# Tue, 26 Mar 2019 23:19:18 GMT
RUN set -xe;         apt-get update;                 echo "couchdb couchdb/mode select none" | debconf-set-selections;         DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages                 couchdb="$COUCHDB_VERSION"~stretch         ;         rmdir /var/lib/couchdb /var/log/couchdb;         rm /opt/couchdb/data /opt/couchdb/var/log;         mkdir -p /opt/couchdb/data /opt/couchdb/var/log;         chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;         chmod 777 /opt/couchdb/data /opt/couchdb/var/log;         rm /opt/couchdb/etc/default.d/10-filelog.ini;         rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:19:18 GMT
COPY file:74a26e2e31f9b408e93e4a065004a86e00211d06a4ce6ab1fbc23640bd92a929 in /opt/couchdb/etc/default.d/ 
# Tue, 26 Mar 2019 23:19:19 GMT
COPY file:f98e48e4254cb3ec4a766f3b9bd3260f16676a310eb0356ee9775c62edb3e8f3 in /opt/couchdb/etc/ 
# Tue, 26 Mar 2019 23:19:19 GMT
COPY file:fc62f0c3f2a39a070ec3c03ac9e1f9ae02b94364cb5492a733584c34458af969 in /usr/local/bin 
# Tue, 26 Mar 2019 23:19:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 26 Mar 2019 23:19:20 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 26 Mar 2019 23:19:21 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/default.d/ /opt/couchdb/etc/vm.args
# Tue, 26 Mar 2019 23:19:21 GMT
VOLUME [/opt/couchdb/data]
# Tue, 26 Mar 2019 23:19:21 GMT
EXPOSE 4369 5984 9100
# Tue, 26 Mar 2019 23:19:21 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd77b7709544c07a841bd2fc022cf21e1a48da8fd35f9c0d1aecfdfe25d2cb20`  
		Last Modified: Tue, 26 Mar 2019 23:20:28 GMT  
		Size: 3.4 KB (3411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d925f30654c752a0c537b0625e2c39081be6b5224dd89b56e52174e6f139667`  
		Last Modified: Tue, 26 Mar 2019 23:20:29 GMT  
		Size: 8.5 MB (8507840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f7db892d0dce38ae13942a6c9dec7f89e98af51be91ecdfa1dce8d5a310ee98`  
		Last Modified: Tue, 26 Mar 2019 23:20:27 GMT  
		Size: 1.2 MB (1190518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad5d2939090b093a229f6a3fa7099f384dc2c34d2c90199eed82578995cbf16`  
		Last Modified: Tue, 26 Mar 2019 23:20:27 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b24d648409a24e3a239493c68b6dad3ac0c846e4bf325507d248b7e721fd6b9`  
		Last Modified: Tue, 26 Mar 2019 23:20:27 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826c7af6c14d9cfaebfdf0a6d6f36d52ef4cc94a5ade373a7a520f9c91844c88`  
		Last Modified: Tue, 26 Mar 2019 23:20:35 GMT  
		Size: 50.2 MB (50202449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369c56525c0985530e5ff645e5853f43ae110e432654007a2dc3143c4c8e9fe1`  
		Last Modified: Tue, 26 Mar 2019 23:20:26 GMT  
		Size: 388.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88aeb242d74c11c2a5300af70e8432e321eb0dd19ee12b2846816d3857d92552`  
		Last Modified: Tue, 26 Mar 2019 23:20:26 GMT  
		Size: 766.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768b8245164c98de28556ddfc639a12e0912c8b870c89e2b16ff712467ae1fdd`  
		Last Modified: Tue, 26 Mar 2019 23:20:26 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fdea9e9482523dbbcab9a46bef4d3ce02e863fb5d450fe976f4121c82524d2`  
		Last Modified: Tue, 26 Mar 2019 23:20:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06e42d87790ee99e6148f8a3cc517a55e10d9c2fe983b7d11494c7d5934e3998`  
		Last Modified: Tue, 26 Mar 2019 23:20:26 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:2.3`

```console
$ docker pull couchdb@sha256:f10a96b0c473de71991637d9d3d96c037f4ef9081cb8343499c40b898caf1d53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2.3` - linux; amd64

```console
$ docker pull couchdb@sha256:562d1571ba97db88eeb775f0debdf07b9a30fbbd91fe9584f3097355e44589cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82407296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4cd7cc68b36b64c0e1caf88f11d50f58ac6981a181452e3232dcb506b9c5f29`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:18:27 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 26 Mar 2019 23:18:27 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Tue, 26 Mar 2019 23:18:38 GMT
RUN set -ex;         apt-get update;         apt-get install -y --no-install-recommends                 apt-transport-https                 ca-certificates                 dirmngr                 gnupg         ;         rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:18:38 GMT
ENV GOSU_VERSION=1.11
# Tue, 26 Mar 2019 23:18:39 GMT
ENV TINI_VERSION=0.18.0
# Tue, 26 Mar 2019 23:18:49 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true;     	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini;         apt-get purge -y --auto-remove wget; 	tini --version
# Tue, 26 Mar 2019 23:18:50 GMT
ENV GPG_COUCH_KEY=8756C4F765C9AC3CB6B85D62379CE192D401AB61
# Tue, 26 Mar 2019 23:18:53 GMT
RUN set -xe;         export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do                 gpg --batch --keyserver $server --recv-keys $GPG_COUCH_KEY && break || : ;         done;         gpg --batch --export $GPG_COUCH_KEY > /etc/apt/trusted.gpg.d/couchdb.gpg;         command -v gpgconf && gpgconf --kill all || :;         rm -rf "$GNUPGHOME";         apt-key list
# Tue, 26 Mar 2019 23:18:54 GMT
ENV COUCHDB_VERSION=2.3.1
# Tue, 26 Mar 2019 23:18:56 GMT
RUN echo "deb https://apache.bintray.com/couchdb-deb stretch main" > /etc/apt/sources.list.d/couchdb.list
# Tue, 26 Mar 2019 23:19:18 GMT
RUN set -xe;         apt-get update;                 echo "couchdb couchdb/mode select none" | debconf-set-selections;         DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages                 couchdb="$COUCHDB_VERSION"~stretch         ;         rmdir /var/lib/couchdb /var/log/couchdb;         rm /opt/couchdb/data /opt/couchdb/var/log;         mkdir -p /opt/couchdb/data /opt/couchdb/var/log;         chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;         chmod 777 /opt/couchdb/data /opt/couchdb/var/log;         rm /opt/couchdb/etc/default.d/10-filelog.ini;         rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:19:18 GMT
COPY file:74a26e2e31f9b408e93e4a065004a86e00211d06a4ce6ab1fbc23640bd92a929 in /opt/couchdb/etc/default.d/ 
# Tue, 26 Mar 2019 23:19:19 GMT
COPY file:f98e48e4254cb3ec4a766f3b9bd3260f16676a310eb0356ee9775c62edb3e8f3 in /opt/couchdb/etc/ 
# Tue, 26 Mar 2019 23:19:19 GMT
COPY file:fc62f0c3f2a39a070ec3c03ac9e1f9ae02b94364cb5492a733584c34458af969 in /usr/local/bin 
# Tue, 26 Mar 2019 23:19:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 26 Mar 2019 23:19:20 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 26 Mar 2019 23:19:21 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/default.d/ /opt/couchdb/etc/vm.args
# Tue, 26 Mar 2019 23:19:21 GMT
VOLUME [/opt/couchdb/data]
# Tue, 26 Mar 2019 23:19:21 GMT
EXPOSE 4369 5984 9100
# Tue, 26 Mar 2019 23:19:21 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd77b7709544c07a841bd2fc022cf21e1a48da8fd35f9c0d1aecfdfe25d2cb20`  
		Last Modified: Tue, 26 Mar 2019 23:20:28 GMT  
		Size: 3.4 KB (3411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d925f30654c752a0c537b0625e2c39081be6b5224dd89b56e52174e6f139667`  
		Last Modified: Tue, 26 Mar 2019 23:20:29 GMT  
		Size: 8.5 MB (8507840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f7db892d0dce38ae13942a6c9dec7f89e98af51be91ecdfa1dce8d5a310ee98`  
		Last Modified: Tue, 26 Mar 2019 23:20:27 GMT  
		Size: 1.2 MB (1190518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad5d2939090b093a229f6a3fa7099f384dc2c34d2c90199eed82578995cbf16`  
		Last Modified: Tue, 26 Mar 2019 23:20:27 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b24d648409a24e3a239493c68b6dad3ac0c846e4bf325507d248b7e721fd6b9`  
		Last Modified: Tue, 26 Mar 2019 23:20:27 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826c7af6c14d9cfaebfdf0a6d6f36d52ef4cc94a5ade373a7a520f9c91844c88`  
		Last Modified: Tue, 26 Mar 2019 23:20:35 GMT  
		Size: 50.2 MB (50202449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369c56525c0985530e5ff645e5853f43ae110e432654007a2dc3143c4c8e9fe1`  
		Last Modified: Tue, 26 Mar 2019 23:20:26 GMT  
		Size: 388.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88aeb242d74c11c2a5300af70e8432e321eb0dd19ee12b2846816d3857d92552`  
		Last Modified: Tue, 26 Mar 2019 23:20:26 GMT  
		Size: 766.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768b8245164c98de28556ddfc639a12e0912c8b870c89e2b16ff712467ae1fdd`  
		Last Modified: Tue, 26 Mar 2019 23:20:26 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fdea9e9482523dbbcab9a46bef4d3ce02e863fb5d450fe976f4121c82524d2`  
		Last Modified: Tue, 26 Mar 2019 23:20:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06e42d87790ee99e6148f8a3cc517a55e10d9c2fe983b7d11494c7d5934e3998`  
		Last Modified: Tue, 26 Mar 2019 23:20:26 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:2.3.0`

```console
$ docker pull couchdb@sha256:d1bf43a8484a1728a897f20d9d223f71076a91cd9f73e6f5070ce2f3e22b37fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2.3.0` - linux; amd64

```console
$ docker pull couchdb@sha256:3c64af8ea296e20ac92a496aa9fb49287c9d99e91b39291fd54489c22379d01f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.4 MB (86354959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a349b722230f17cd37e77dbccccba2269297827c4d7cb3828ba3d4da34dcbe3d`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:18:27 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 26 Mar 2019 23:18:27 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Tue, 26 Mar 2019 23:18:38 GMT
RUN set -ex;         apt-get update;         apt-get install -y --no-install-recommends                 apt-transport-https                 ca-certificates                 dirmngr                 gnupg         ;         rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:18:38 GMT
ENV GOSU_VERSION=1.11
# Tue, 26 Mar 2019 23:18:39 GMT
ENV TINI_VERSION=0.18.0
# Tue, 26 Mar 2019 23:19:39 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true;     	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini;         apt-get purge -y --auto-remove wget; 	tini --version
# Tue, 26 Mar 2019 23:19:39 GMT
ENV GPG_COUCH_KEY=8756C4F765C9AC3CB6B85D62379CE192D401AB61
# Tue, 26 Mar 2019 23:19:42 GMT
RUN set -xe;         export GNUPGHOME="$(mktemp -d)";         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do                 gpg --batch --keyserver $server --recv-keys $GPG_COUCH_KEY && break || : ;         done;         gpg --batch --export $GPG_COUCH_KEY > /etc/apt/trusted.gpg.d/couchdb.gpg;         command -v gpgconf && gpgconf --kill all || :;         rm -rf "$GNUPGHOME";         apt-key list
# Tue, 26 Mar 2019 23:19:43 GMT
ENV COUCHDB_VERSION=2.3.0
# Tue, 26 Mar 2019 23:19:45 GMT
RUN echo "deb https://apache.bintray.com/couchdb-deb stretch main" > /etc/apt/sources.list.d/couchdb.list
# Tue, 26 Mar 2019 23:20:08 GMT
RUN set -xe;         apt-get update;                 echo "couchdb couchdb/mode select none" | debconf-set-selections;         DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages                 couchdb="$COUCHDB_VERSION"~stretch         ;         rmdir /var/lib/couchdb /var/log/couchdb;         rm /opt/couchdb/data /opt/couchdb/var/log;         mkdir -p /opt/couchdb/data /opt/couchdb/var/log;         chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;         chmod 777 /opt/couchdb/data /opt/couchdb/var/log;         rm /opt/couchdb/etc/default.d/10-filelog.ini;         rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:20:08 GMT
COPY file:74a26e2e31f9b408e93e4a065004a86e00211d06a4ce6ab1fbc23640bd92a929 in /opt/couchdb/etc/default.d/ 
# Tue, 26 Mar 2019 23:20:09 GMT
COPY file:f98e48e4254cb3ec4a766f3b9bd3260f16676a310eb0356ee9775c62edb3e8f3 in /opt/couchdb/etc/ 
# Tue, 26 Mar 2019 23:20:09 GMT
COPY file:fc62f0c3f2a39a070ec3c03ac9e1f9ae02b94364cb5492a733584c34458af969 in /usr/local/bin 
# Tue, 26 Mar 2019 23:20:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 26 Mar 2019 23:20:11 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 26 Mar 2019 23:20:13 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/default.d/ /opt/couchdb/etc/vm.args
# Tue, 26 Mar 2019 23:20:14 GMT
VOLUME [/opt/couchdb/data]
# Tue, 26 Mar 2019 23:20:14 GMT
EXPOSE 4369 5984 9100
# Tue, 26 Mar 2019 23:20:15 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd77b7709544c07a841bd2fc022cf21e1a48da8fd35f9c0d1aecfdfe25d2cb20`  
		Last Modified: Tue, 26 Mar 2019 23:20:28 GMT  
		Size: 3.4 KB (3411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d925f30654c752a0c537b0625e2c39081be6b5224dd89b56e52174e6f139667`  
		Last Modified: Tue, 26 Mar 2019 23:20:29 GMT  
		Size: 8.5 MB (8507840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00dfd385011a5ea457994a1e7eceb84080ed39ab4ac45491047f4f148f84a88e`  
		Last Modified: Tue, 26 Mar 2019 23:20:42 GMT  
		Size: 1.2 MB (1190533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671eb9cd17b3e0a6f2d18b4952b33497f604b282fc7469f888f5eef442213ca1`  
		Last Modified: Tue, 26 Mar 2019 23:20:41 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36fd935ae4df8dd3a12abe943f5e410f59f978649f43f29963e8512ca9dd063c`  
		Last Modified: Tue, 26 Mar 2019 23:20:41 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e9b90c72c062e63d886536e454deccd2b2f84fbe33791af3a159a25b8cc2335`  
		Last Modified: Tue, 26 Mar 2019 23:20:50 GMT  
		Size: 54.2 MB (54150108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad1d17712987c6c08dc40ba1424b30628e7105c4a2836dc63015dcee121f511`  
		Last Modified: Tue, 26 Mar 2019 23:20:41 GMT  
		Size: 383.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20bd70bc1c76d09f2ecc196aa7e5b3495465b43e8318f092d367548eaadb2df1`  
		Last Modified: Tue, 26 Mar 2019 23:20:41 GMT  
		Size: 765.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53900f15654d63279e3631a3c74a14a9aa41a9085b5b4bed948cc99b7d4eba9b`  
		Last Modified: Tue, 26 Mar 2019 23:20:41 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34b4ebd4386b01e80d321f2e62b07f26c0791256dd8d854b7fbe4b1303a77a26`  
		Last Modified: Tue, 26 Mar 2019 23:20:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0eecc7fa1eac53da6e9e3fc18f4a4c4625eee2088bb5d53b38f14362c40fa62`  
		Last Modified: Tue, 26 Mar 2019 23:20:40 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:2.3.1`

```console
$ docker pull couchdb@sha256:f10a96b0c473de71991637d9d3d96c037f4ef9081cb8343499c40b898caf1d53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2.3.1` - linux; amd64

```console
$ docker pull couchdb@sha256:562d1571ba97db88eeb775f0debdf07b9a30fbbd91fe9584f3097355e44589cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82407296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4cd7cc68b36b64c0e1caf88f11d50f58ac6981a181452e3232dcb506b9c5f29`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:18:27 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 26 Mar 2019 23:18:27 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Tue, 26 Mar 2019 23:18:38 GMT
RUN set -ex;         apt-get update;         apt-get install -y --no-install-recommends                 apt-transport-https                 ca-certificates                 dirmngr                 gnupg         ;         rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:18:38 GMT
ENV GOSU_VERSION=1.11
# Tue, 26 Mar 2019 23:18:39 GMT
ENV TINI_VERSION=0.18.0
# Tue, 26 Mar 2019 23:18:49 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true;     	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini;         apt-get purge -y --auto-remove wget; 	tini --version
# Tue, 26 Mar 2019 23:18:50 GMT
ENV GPG_COUCH_KEY=8756C4F765C9AC3CB6B85D62379CE192D401AB61
# Tue, 26 Mar 2019 23:18:53 GMT
RUN set -xe;         export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do                 gpg --batch --keyserver $server --recv-keys $GPG_COUCH_KEY && break || : ;         done;         gpg --batch --export $GPG_COUCH_KEY > /etc/apt/trusted.gpg.d/couchdb.gpg;         command -v gpgconf && gpgconf --kill all || :;         rm -rf "$GNUPGHOME";         apt-key list
# Tue, 26 Mar 2019 23:18:54 GMT
ENV COUCHDB_VERSION=2.3.1
# Tue, 26 Mar 2019 23:18:56 GMT
RUN echo "deb https://apache.bintray.com/couchdb-deb stretch main" > /etc/apt/sources.list.d/couchdb.list
# Tue, 26 Mar 2019 23:19:18 GMT
RUN set -xe;         apt-get update;                 echo "couchdb couchdb/mode select none" | debconf-set-selections;         DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages                 couchdb="$COUCHDB_VERSION"~stretch         ;         rmdir /var/lib/couchdb /var/log/couchdb;         rm /opt/couchdb/data /opt/couchdb/var/log;         mkdir -p /opt/couchdb/data /opt/couchdb/var/log;         chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;         chmod 777 /opt/couchdb/data /opt/couchdb/var/log;         rm /opt/couchdb/etc/default.d/10-filelog.ini;         rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:19:18 GMT
COPY file:74a26e2e31f9b408e93e4a065004a86e00211d06a4ce6ab1fbc23640bd92a929 in /opt/couchdb/etc/default.d/ 
# Tue, 26 Mar 2019 23:19:19 GMT
COPY file:f98e48e4254cb3ec4a766f3b9bd3260f16676a310eb0356ee9775c62edb3e8f3 in /opt/couchdb/etc/ 
# Tue, 26 Mar 2019 23:19:19 GMT
COPY file:fc62f0c3f2a39a070ec3c03ac9e1f9ae02b94364cb5492a733584c34458af969 in /usr/local/bin 
# Tue, 26 Mar 2019 23:19:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 26 Mar 2019 23:19:20 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 26 Mar 2019 23:19:21 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/default.d/ /opt/couchdb/etc/vm.args
# Tue, 26 Mar 2019 23:19:21 GMT
VOLUME [/opt/couchdb/data]
# Tue, 26 Mar 2019 23:19:21 GMT
EXPOSE 4369 5984 9100
# Tue, 26 Mar 2019 23:19:21 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd77b7709544c07a841bd2fc022cf21e1a48da8fd35f9c0d1aecfdfe25d2cb20`  
		Last Modified: Tue, 26 Mar 2019 23:20:28 GMT  
		Size: 3.4 KB (3411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d925f30654c752a0c537b0625e2c39081be6b5224dd89b56e52174e6f139667`  
		Last Modified: Tue, 26 Mar 2019 23:20:29 GMT  
		Size: 8.5 MB (8507840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f7db892d0dce38ae13942a6c9dec7f89e98af51be91ecdfa1dce8d5a310ee98`  
		Last Modified: Tue, 26 Mar 2019 23:20:27 GMT  
		Size: 1.2 MB (1190518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad5d2939090b093a229f6a3fa7099f384dc2c34d2c90199eed82578995cbf16`  
		Last Modified: Tue, 26 Mar 2019 23:20:27 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b24d648409a24e3a239493c68b6dad3ac0c846e4bf325507d248b7e721fd6b9`  
		Last Modified: Tue, 26 Mar 2019 23:20:27 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826c7af6c14d9cfaebfdf0a6d6f36d52ef4cc94a5ade373a7a520f9c91844c88`  
		Last Modified: Tue, 26 Mar 2019 23:20:35 GMT  
		Size: 50.2 MB (50202449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369c56525c0985530e5ff645e5853f43ae110e432654007a2dc3143c4c8e9fe1`  
		Last Modified: Tue, 26 Mar 2019 23:20:26 GMT  
		Size: 388.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88aeb242d74c11c2a5300af70e8432e321eb0dd19ee12b2846816d3857d92552`  
		Last Modified: Tue, 26 Mar 2019 23:20:26 GMT  
		Size: 766.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768b8245164c98de28556ddfc639a12e0912c8b870c89e2b16ff712467ae1fdd`  
		Last Modified: Tue, 26 Mar 2019 23:20:26 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fdea9e9482523dbbcab9a46bef4d3ce02e863fb5d450fe976f4121c82524d2`  
		Last Modified: Tue, 26 Mar 2019 23:20:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06e42d87790ee99e6148f8a3cc517a55e10d9c2fe983b7d11494c7d5934e3998`  
		Last Modified: Tue, 26 Mar 2019 23:20:26 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:latest`

```console
$ docker pull couchdb@sha256:f10a96b0c473de71991637d9d3d96c037f4ef9081cb8343499c40b898caf1d53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:latest` - linux; amd64

```console
$ docker pull couchdb@sha256:562d1571ba97db88eeb775f0debdf07b9a30fbbd91fe9584f3097355e44589cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82407296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4cd7cc68b36b64c0e1caf88f11d50f58ac6981a181452e3232dcb506b9c5f29`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:18:27 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 26 Mar 2019 23:18:27 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Tue, 26 Mar 2019 23:18:38 GMT
RUN set -ex;         apt-get update;         apt-get install -y --no-install-recommends                 apt-transport-https                 ca-certificates                 dirmngr                 gnupg         ;         rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:18:38 GMT
ENV GOSU_VERSION=1.11
# Tue, 26 Mar 2019 23:18:39 GMT
ENV TINI_VERSION=0.18.0
# Tue, 26 Mar 2019 23:18:49 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true;     	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do         gpg --batch --keyserver $server --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7 && break || : ;         done; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini;         apt-get purge -y --auto-remove wget; 	tini --version
# Tue, 26 Mar 2019 23:18:50 GMT
ENV GPG_COUCH_KEY=8756C4F765C9AC3CB6B85D62379CE192D401AB61
# Tue, 26 Mar 2019 23:18:53 GMT
RUN set -xe;         export GNUPGHOME="$(mktemp -d)";         echo "disable-ipv6" >> ${GNUPGHOME}/dirmngr.conf;         for server in $(shuf -e pgpkeys.mit.edu             ha.pool.sks-keyservers.net             hkp://p80.pool.sks-keyservers.net:80             pgp.mit.edu) ; do                 gpg --batch --keyserver $server --recv-keys $GPG_COUCH_KEY && break || : ;         done;         gpg --batch --export $GPG_COUCH_KEY > /etc/apt/trusted.gpg.d/couchdb.gpg;         command -v gpgconf && gpgconf --kill all || :;         rm -rf "$GNUPGHOME";         apt-key list
# Tue, 26 Mar 2019 23:18:54 GMT
ENV COUCHDB_VERSION=2.3.1
# Tue, 26 Mar 2019 23:18:56 GMT
RUN echo "deb https://apache.bintray.com/couchdb-deb stretch main" > /etc/apt/sources.list.d/couchdb.list
# Tue, 26 Mar 2019 23:19:18 GMT
RUN set -xe;         apt-get update;                 echo "couchdb couchdb/mode select none" | debconf-set-selections;         DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages                 couchdb="$COUCHDB_VERSION"~stretch         ;         rmdir /var/lib/couchdb /var/log/couchdb;         rm /opt/couchdb/data /opt/couchdb/var/log;         mkdir -p /opt/couchdb/data /opt/couchdb/var/log;         chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;         chmod 777 /opt/couchdb/data /opt/couchdb/var/log;         rm /opt/couchdb/etc/default.d/10-filelog.ini;         rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:19:18 GMT
COPY file:74a26e2e31f9b408e93e4a065004a86e00211d06a4ce6ab1fbc23640bd92a929 in /opt/couchdb/etc/default.d/ 
# Tue, 26 Mar 2019 23:19:19 GMT
COPY file:f98e48e4254cb3ec4a766f3b9bd3260f16676a310eb0356ee9775c62edb3e8f3 in /opt/couchdb/etc/ 
# Tue, 26 Mar 2019 23:19:19 GMT
COPY file:fc62f0c3f2a39a070ec3c03ac9e1f9ae02b94364cb5492a733584c34458af969 in /usr/local/bin 
# Tue, 26 Mar 2019 23:19:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Tue, 26 Mar 2019 23:19:20 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 26 Mar 2019 23:19:21 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/default.d/ /opt/couchdb/etc/vm.args
# Tue, 26 Mar 2019 23:19:21 GMT
VOLUME [/opt/couchdb/data]
# Tue, 26 Mar 2019 23:19:21 GMT
EXPOSE 4369 5984 9100
# Tue, 26 Mar 2019 23:19:21 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd77b7709544c07a841bd2fc022cf21e1a48da8fd35f9c0d1aecfdfe25d2cb20`  
		Last Modified: Tue, 26 Mar 2019 23:20:28 GMT  
		Size: 3.4 KB (3411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d925f30654c752a0c537b0625e2c39081be6b5224dd89b56e52174e6f139667`  
		Last Modified: Tue, 26 Mar 2019 23:20:29 GMT  
		Size: 8.5 MB (8507840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f7db892d0dce38ae13942a6c9dec7f89e98af51be91ecdfa1dce8d5a310ee98`  
		Last Modified: Tue, 26 Mar 2019 23:20:27 GMT  
		Size: 1.2 MB (1190518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad5d2939090b093a229f6a3fa7099f384dc2c34d2c90199eed82578995cbf16`  
		Last Modified: Tue, 26 Mar 2019 23:20:27 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b24d648409a24e3a239493c68b6dad3ac0c846e4bf325507d248b7e721fd6b9`  
		Last Modified: Tue, 26 Mar 2019 23:20:27 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826c7af6c14d9cfaebfdf0a6d6f36d52ef4cc94a5ade373a7a520f9c91844c88`  
		Last Modified: Tue, 26 Mar 2019 23:20:35 GMT  
		Size: 50.2 MB (50202449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369c56525c0985530e5ff645e5853f43ae110e432654007a2dc3143c4c8e9fe1`  
		Last Modified: Tue, 26 Mar 2019 23:20:26 GMT  
		Size: 388.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88aeb242d74c11c2a5300af70e8432e321eb0dd19ee12b2846816d3857d92552`  
		Last Modified: Tue, 26 Mar 2019 23:20:26 GMT  
		Size: 766.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768b8245164c98de28556ddfc639a12e0912c8b870c89e2b16ff712467ae1fdd`  
		Last Modified: Tue, 26 Mar 2019 23:20:26 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fdea9e9482523dbbcab9a46bef4d3ce02e863fb5d450fe976f4121c82524d2`  
		Last Modified: Tue, 26 Mar 2019 23:20:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06e42d87790ee99e6148f8a3cc517a55e10d9c2fe983b7d11494c7d5934e3998`  
		Last Modified: Tue, 26 Mar 2019 23:20:26 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
