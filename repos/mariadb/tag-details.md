<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mariadb`

-	[`mariadb:10`](#mariadb10)
-	[`mariadb:10.0`](#mariadb100)
-	[`mariadb:10.0.37`](#mariadb10037)
-	[`mariadb:10.0.37-xenial`](#mariadb10037-xenial)
-	[`mariadb:10.0-xenial`](#mariadb100-xenial)
-	[`mariadb:10.1`](#mariadb101)
-	[`mariadb:10.1.37`](#mariadb10137)
-	[`mariadb:10.1.37-bionic`](#mariadb10137-bionic)
-	[`mariadb:10.1-bionic`](#mariadb101-bionic)
-	[`mariadb:10.2`](#mariadb102)
-	[`mariadb:10.2.19`](#mariadb10219)
-	[`mariadb:10.2.19-bionic`](#mariadb10219-bionic)
-	[`mariadb:10.2-bionic`](#mariadb102-bionic)
-	[`mariadb:10.3`](#mariadb103)
-	[`mariadb:10.3.10`](#mariadb10310)
-	[`mariadb:10.3.10-bionic`](#mariadb10310-bionic)
-	[`mariadb:10.3-bionic`](#mariadb103-bionic)
-	[`mariadb:10.4`](#mariadb104)
-	[`mariadb:10.4.0`](#mariadb1040)
-	[`mariadb:10.4.0-bionic`](#mariadb1040-bionic)
-	[`mariadb:10.4-bionic`](#mariadb104-bionic)
-	[`mariadb:10-bionic`](#mariadb10-bionic)
-	[`mariadb:5`](#mariadb5)
-	[`mariadb:5.5`](#mariadb55)
-	[`mariadb:5.5.62`](#mariadb5562)
-	[`mariadb:5.5.62-trusty`](#mariadb5562-trusty)
-	[`mariadb:5.5-trusty`](#mariadb55-trusty)
-	[`mariadb:5-trusty`](#mariadb5-trusty)
-	[`mariadb:bionic`](#mariadbbionic)
-	[`mariadb:latest`](#mariadblatest)

## `mariadb:10`

```console
$ docker pull mariadb@sha256:538a775dc933fc086767010d535f2c59360eec3e1de44df3dcedea1c5724d83a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10` - linux; amd64

```console
$ docker pull mariadb@sha256:5aaefc8d8d03139ba6976b9c4d0772b385004a183e3d789269c717c057e4570e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114945592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95d6852bba5ae4adc374fe563b8a6665032449e9b45e9f133e845fb33d2a09d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 00:47:54 GMT
ADD file:bcd068f67af2788dbd57729c0c8193f022ec5c37fefb8704390c59081152e6fc in / 
# Fri, 19 Oct 2018 00:47:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:47:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:47:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:47:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:36:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 01:36:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:36:46 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 00:26:48 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 00:26:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 00:27:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 00:27:06 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 00:27:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 00:28:37 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 16 Nov 2018 00:28:37 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 16 Nov 2018 00:28:38 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 00:29:10 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 00:29:11 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 00:29:11 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 00:29:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 00:29:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 00:29:13 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 00:29:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:473ede7ed136b710ab2dd51579af038b7d00fbbf6a1790c6294c93666203c0a6`  
		Last Modified: Fri, 19 Oct 2018 00:24:53 GMT  
		Size: 32.0 MB (32034160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46b5fa4d940569e49988515c1ea0295f56d0a16228d8f854e27613f467ec892`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ae3df89c92cb1d20e9c09f499e693d3a8a8cef161f7158f7a9a3b5d06e4ef2`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1eed27cadec5de8051d56697b0b67527e4076deedceefb41b7b2ea9b900459`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7571426e9fed20247bade7966bd042c340e3e5c3a15865b868825303e9897c4`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba27abd0643114e14441df27dcccc9843cf22ce9526fb09298d3b0d2cf48614`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 4.8 MB (4803626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5742ca02a957788e1bc150563c6ab51f425b6896eefa52d7c80648e71d5072a`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 863.2 KB (863153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c53ea2689ed6ebe83dfc20da72968667fdf229fb0b51d379209a7e2b60b5cc8`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517f1aafa332d31cbcf300b5d4d3a24d464d321ae2693a992bd99f8946f983a0`  
		Last Modified: Fri, 16 Nov 2018 00:38:38 GMT  
		Size: 3.0 MB (2956916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39158f499dbeb666441a43887192563b2096a4f945808aa9e8893c408ce28ce0`  
		Last Modified: Fri, 16 Nov 2018 00:38:35 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4368463dd531fb6ee74a2128f9f45adf6f3e7e9801cc6710bc0999b6b5491913`  
		Last Modified: Fri, 16 Nov 2018 00:40:32 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fee7414381d52d22265eb3194d0c2644c9bec509882a7d7b588005c8034118e`  
		Last Modified: Fri, 16 Nov 2018 00:40:54 GMT  
		Size: 74.3 MB (74255917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abdbc91263bba0e1de0514656a04f055208d4e42c1ab8e75bb59f26f24be0f2d`  
		Last Modified: Fri, 16 Nov 2018 00:40:32 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af85e8800b74a4bcf01ad04ca0e2417fd22360d290bcf076b176dbe4e7cc2a8e`  
		Last Modified: Fri, 16 Nov 2018 00:40:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:cafb3462e09f185dccf43fcde7df6cca8f62b4ba94ffc692c413c770a302e5ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (109981339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09aae6549ec885674cbb103553dc4161291e3bec6c6ea1b761f8fe9d905337c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 11:20:49 GMT
ADD file:110950580db69973226966e62607ac770285caf76a247ce5a8c606c65aa04b50 in / 
# Fri, 19 Oct 2018 11:20:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 11:20:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 11:20:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 11:20:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 12:56:42 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 12:57:15 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:57:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 12:57:43 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 12:57:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 12:58:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:58:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 12:58:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 12:58:15 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 19 Oct 2018 12:58:16 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 19 Oct 2018 12:58:19 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 13:00:20 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 13:00:23 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 13:00:24 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 13:00:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 13:00:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 13:00:37 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 13:00:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:71878b774cb38a9ed46024ada7a9e0634060697119a8c4c07c611646264513f3`  
		Last Modified: Fri, 19 Oct 2018 11:23:39 GMT  
		Size: 28.8 MB (28833238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1b922a83c7f524b935e8e6b9d738697762972d95fce4c7c269f5cd2c754055`  
		Last Modified: Fri, 19 Oct 2018 11:23:28 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab46b3e1d46e0d1ef143520251afe8bc630c0ab04c2dbf8ac097c7007aaa85f`  
		Last Modified: Fri, 19 Oct 2018 11:23:28 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169c13f4edfd32451d6658b4c4c8176b38f232d0a3de07d2a9ca253c2c2848ba`  
		Last Modified: Fri, 19 Oct 2018 11:23:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515fd1949dab7c46ef13b4d135db3637172d5bc7856e32cc1423fe68425d0d91`  
		Last Modified: Fri, 19 Oct 2018 13:14:00 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e017b2874c4be515a55c04d9a82029537983bbadd8ac3841eae5bd173251cd3`  
		Last Modified: Fri, 19 Oct 2018 13:14:00 GMT  
		Size: 4.4 MB (4380212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f6d036cdfc908e4c19c80a7b6df55f1727bf6ae1bad70f4507dfaa5221feae`  
		Last Modified: Fri, 19 Oct 2018 13:13:58 GMT  
		Size: 829.7 KB (829666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f0872339b3202f0e2b0fa21bf4717b18fbca80f0c689505dca20410790e42e`  
		Last Modified: Fri, 19 Oct 2018 13:13:58 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c19d59e0bda178cae23994ab09172d8894e31f39d61fcd3ac7f2649a1d0631`  
		Last Modified: Fri, 19 Oct 2018 13:13:59 GMT  
		Size: 2.7 MB (2698485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9bf97e7f7714767a7ef8fcbb779ed389f53238950cc3b2cf1236a3139ca289d`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b57c0a347944d84611e3f728fa815817782bfe00f12d3f624ca741b48b62b5`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f96205fb913d3f84e8767297ed5df17ebc172e32e2fd8852b50c605e01945b`  
		Last Modified: Fri, 19 Oct 2018 13:14:24 GMT  
		Size: 73.2 MB (73207987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6a128f8a53bcf2d62f913bf296a43e9589ffd38f1b2f686f91c98da5e21949`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864536c7189a66f207626d5a6a982cb81f3d3e6331e43afc95a4cee59a0d6fb7`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10` - linux; ppc64le

```console
$ docker pull mariadb@sha256:650111bd3a11cf7e1c2710401afcf58848fe40e16ceb158d5df5d521780d3d94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121966675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e4f94370ebc945cf83d649eca667dade0a27291c2e80be3b9e37878632fd96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 09:16:11 GMT
ADD file:ff56914a9be1ea1c29222a826731c6d0c874a3d35994269352595d646a5f923c in / 
# Fri, 19 Oct 2018 09:16:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 09:16:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 09:16:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 09:16:27 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 10:37:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 10:38:02 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:38:04 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 10:38:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 10:38:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 10:39:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:39:09 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 10:39:12 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 10:39:13 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 19 Oct 2018 10:39:14 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 19 Oct 2018 10:39:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 10:40:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 10:40:44 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 10:40:46 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 10:40:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 10:40:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 10:40:53 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 10:40:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2c4fd606dee3befde0392952ad523fad88d460aed9ae927ff1037138cd79ed3f`  
		Last Modified: Fri, 19 Oct 2018 09:18:54 GMT  
		Size: 35.5 MB (35472905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:324762f962b9ba756f04453b96c926ea414b65dfdb3ef0c26f2336e60f231c5a`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f2857f1765b3e764add78aa519c6bef4827b9973650565d969b580c9bd2d82`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3aa3f305b3eedf728fcddc37359479689d1fdaadc23d2bad1e087216ac715a`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a25f8f65f53811a56b86889363b4a8e0c5d4e50cc1319ad941e35b66bd92e1b`  
		Last Modified: Fri, 19 Oct 2018 10:52:50 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f7c641dcf476450a965a769264b108fd02f3781b9339748d6860e2082804e0`  
		Last Modified: Fri, 19 Oct 2018 10:52:51 GMT  
		Size: 5.6 MB (5602718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff124325ca8aa33092324e536fdd0e3fb6876a90c36db077368eb6417f46de8a`  
		Last Modified: Fri, 19 Oct 2018 10:52:48 GMT  
		Size: 831.6 KB (831578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1b1972ff54a31f4be6c83b4786f61aa5505e789b72f20b8eb5cb9d7e13304b`  
		Last Modified: Fri, 19 Oct 2018 10:52:48 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e32b8146841fb5ed6f7ecc74f2f032b4ed0eb91ed95fb70fb14289254f1175e`  
		Last Modified: Fri, 19 Oct 2018 10:52:50 GMT  
		Size: 2.8 MB (2838872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf432a9e41120d614cbcafc06f98253ebf8abb40b6baf1eb055fbf7b5bb6e0d0`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a82b32856f4db040de7077645364ec02382e29b1a01bbab0363ad3ca7c0ffe6f`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9c36cfa8e72906b803a0631a86059c2d5bbc016ae2af298a170a998782cda3`  
		Last Modified: Fri, 19 Oct 2018 10:53:07 GMT  
		Size: 77.2 MB (77188760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7d52d49c3ae35ff562450c5322dc6faa007fec507c32681f86ba3bd1f41eb8`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 2.6 KB (2603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db69a2e3718341254f9cd986d263ff2b9cf95a4d831fbc2b2bc17c2de39ae76d`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:93fffab51556e996d5216f7954d24eae57a49cf5c9d480c54f32a8dbf2054045
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0` - linux; amd64

```console
$ docker pull mariadb@sha256:23072029c5ba90857aa2232b7ef925ae457a098a6b14e9050ba2613b0599655f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115947137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eacfada111bc5453de8cc36d74e7869e8ccf021ea10851a594a520f3660b4545`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 00:49:11 GMT
ADD file:01a5c4f2b1dcc8f8aebe00ce8ed6ceda7038abc31d40caf69273240cdd453b84 in / 
# Fri, 19 Oct 2018 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:49:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:49:14 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:39:31 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 01:39:35 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:39:35 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 01:39:46 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 01:39:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 01:39:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:39:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 01:39:59 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 01:40:00 GMT
ENV MARIADB_MAJOR=10.0
# Sat, 03 Nov 2018 00:22:36 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Sat, 03 Nov 2018 00:22:37 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 03 Nov 2018 00:23:27 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 03 Nov 2018 00:23:29 GMT
VOLUME [/var/lib/mysql]
# Sat, 03 Nov 2018 00:23:29 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Sat, 03 Nov 2018 00:23:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Nov 2018 00:23:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Nov 2018 00:23:41 GMT
EXPOSE 3306/tcp
# Sat, 03 Nov 2018 00:23:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:18d680d616571900d78ee1c8fff0310f2a2afe39c6ed0ba2651ff667af406c3e`  
		Last Modified: Fri, 05 Oct 2018 22:11:59 GMT  
		Size: 43.4 MB (43352848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0addb6fece630456e0ab187b0aa4304d0851ba60576e7f6f9042a97ee908a796`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e58219b215b359fe002f0ca1f416617b75ca9b36cb274c98d7a5f808711179`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6959a66df2ea26a26452ba11f84fb64bb45af90204374862ec71ee59f795e7`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a495d504f05a20de0e900a2bcba89bd224a0b0ae8e80ac819b231562f737edb`  
		Last Modified: Fri, 19 Oct 2018 01:46:42 GMT  
		Size: 2.0 KB (1994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9df2dec96e28d18eb678983ae412b6deb9f44f6eba077e5558261ba2b27512b`  
		Last Modified: Fri, 19 Oct 2018 01:46:41 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62d2842a87e19629a623b542f57cdf11b510066af7981352ddf816faf87783b`  
		Last Modified: Fri, 19 Oct 2018 01:46:41 GMT  
		Size: 841.1 KB (841098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09bc0f64efb0b222e484240d7200475e33ae08a0e58ca2ac9809db09b71a7792`  
		Last Modified: Fri, 19 Oct 2018 01:46:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf47207d9c7b84cb1ffaeec62e16da5006f6b3f3dc6e1346112ec6dcbf1a06d`  
		Last Modified: Fri, 19 Oct 2018 01:46:43 GMT  
		Size: 7.3 MB (7322005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a2d86c85ae83561ad426b3216db3411c30b6dc9cd3e404ad54eabf1d4666e5`  
		Last Modified: Fri, 19 Oct 2018 01:46:40 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cefbbdf7ebdf9ad173ff02b02e5bcb476539289ba30837932a805ef7671c1bd5`  
		Last Modified: Sat, 03 Nov 2018 00:25:33 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2b32e76d26dea2b14d36d069c29c50b4ac0cf3427943cb7421a399fd42d4d6`  
		Last Modified: Sat, 03 Nov 2018 00:25:44 GMT  
		Size: 64.4 MB (64399070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdd7dd3a7410d37eb30bc90c07feefac2a0cf62e57e0e24c076cdc99041fe0e`  
		Last Modified: Sat, 03 Nov 2018 00:25:33 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1144ce881a8b71cd4d2f243455ea38358f9c32b3ef5b472479e602d98d62fa`  
		Last Modified: Sat, 03 Nov 2018 00:25:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:e62e0a8fe54489b315ad18c53b1fa8504eee02cd59da5c9bb7353780df1f3e83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.0 MB (99033281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dba93ed848a1566fc4ce20a27480403003f0b5f62bafdb208afe40907e0342f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 11:22:58 GMT
ADD file:9770ac4ecb41798c5999796e611468c62bf20e585daf48667db9f39757ec5ad9 in / 
# Fri, 19 Oct 2018 11:23:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 11:23:05 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 11:23:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 11:23:08 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 13:09:04 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 13:09:13 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:09:15 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 13:09:52 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 13:09:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 13:11:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:11:01 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 13:11:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 13:11:06 GMT
ENV MARIADB_MAJOR=10.0
# Sat, 03 Nov 2018 08:48:59 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Sat, 03 Nov 2018 08:49:02 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 03 Nov 2018 08:50:47 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 03 Nov 2018 08:50:49 GMT
VOLUME [/var/lib/mysql]
# Sat, 03 Nov 2018 08:50:50 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Sat, 03 Nov 2018 08:50:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Nov 2018 08:50:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Nov 2018 08:50:59 GMT
EXPOSE 3306/tcp
# Sat, 03 Nov 2018 08:51:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e4852cc2dcfa698a092467d4b0a8a4f34f9ac6d20b64dbd4a8be0a764f29564d`  
		Last Modified: Fri, 05 Oct 2018 22:11:51 GMT  
		Size: 39.4 MB (39432395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf455d9dd16d488d1c230ceb231351c1abd0733011acf191b6a63339e7b5cfca`  
		Last Modified: Fri, 19 Oct 2018 11:26:42 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2abc38e50c7444b0314ce04d70d73a1bd3733e860f550ad9edd236fd650769c0`  
		Last Modified: Fri, 19 Oct 2018 11:26:42 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cecbdd5ae3d455dc9ef1c1be196ac6ef7c70e3062656dadcec822910202d798`  
		Last Modified: Fri, 19 Oct 2018 11:26:42 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead447e989d0d2b304bf09d50fe57a800963d817bd45512aa10c406a4706b015`  
		Last Modified: Fri, 19 Oct 2018 13:18:42 GMT  
		Size: 2.0 KB (2002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84f29262538edb259dd1e961310a33042175d2693e3e798efef49d63f499c28`  
		Last Modified: Fri, 19 Oct 2018 13:18:37 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be591cc95cbfccc416c0fcd24acc78debbdc75bb0f6d1b19fc4f93dfd3fd9c93`  
		Last Modified: Fri, 19 Oct 2018 13:18:37 GMT  
		Size: 807.6 KB (807606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374bc8dbfb3048540fbf8ddb4305c3ad0c01e6cb7b41e3e2a4a0ea1c35bbcdbb`  
		Last Modified: Fri, 19 Oct 2018 13:18:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01722e225217ae853ee4701a99d6f7ef00ef23fd79524e12a6b2bd868d27fded`  
		Last Modified: Fri, 19 Oct 2018 13:18:38 GMT  
		Size: 6.4 MB (6399537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe3ecb2cd4d30a51076a8cba435ee763ffcbf96060d2ee2c328ce844f23a78a`  
		Last Modified: Fri, 19 Oct 2018 13:18:34 GMT  
		Size: 25.1 KB (25135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f4f759aa5e71822fb2251d5aeb70a50630aa417bbb3d5bdb4d49a441f37a38`  
		Last Modified: Sat, 03 Nov 2018 08:53:09 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb05c48d1f884d4d4326d54cf25b0c7f12e7f75313836fe4da69ce97ac918b9`  
		Last Modified: Sat, 03 Nov 2018 08:53:29 GMT  
		Size: 52.4 MB (52361701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a21b4864e7d489678fbc4665aa0757e58d4cd5c9824e8f59d1c855601ca827`  
		Last Modified: Sat, 03 Nov 2018 08:53:10 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244ae70d737e268d81c2d401d0f781dc25f3afdeccfa5cbfb74dd96a6a7d4aee`  
		Last Modified: Sat, 03 Nov 2018 08:53:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0` - linux; 386

```console
$ docker pull mariadb@sha256:2bbd5f27a149492dd60b5c5a0cb53af569cdfb0a256d14ac17e2c6f484d002c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114627582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b32c0c7bbb7ef6095c0b6b30cc6aa0700606cee9cdde49838b3fff70bb840c50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 12:42:16 GMT
ADD file:2771ee18ccb3a0a6b045ef2a4d355702c369493d5244dd3bf680221376780e37 in / 
# Fri, 19 Oct 2018 12:42:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 12:42:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:42:18 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 12:42:18 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 13:52:02 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 13:52:06 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:52:06 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 13:52:14 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 13:52:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 13:52:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:52:26 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 13:52:27 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 13:52:27 GMT
ENV MARIADB_MAJOR=10.0
# Sat, 03 Nov 2018 11:16:35 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Sat, 03 Nov 2018 11:16:36 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 03 Nov 2018 11:17:22 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 03 Nov 2018 11:17:22 GMT
VOLUME [/var/lib/mysql]
# Sat, 03 Nov 2018 11:17:23 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Sat, 03 Nov 2018 11:17:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Nov 2018 11:17:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Nov 2018 11:17:24 GMT
EXPOSE 3306/tcp
# Sat, 03 Nov 2018 11:17:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5be2374a5e1d8357d7b4b6e6c599bfb97e7ac60e347f2a0593c2e13ec9fdef71`  
		Last Modified: Fri, 19 Oct 2018 12:45:04 GMT  
		Size: 43.6 MB (43582407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9364a60af5db1019b325953424c8dd43fcff674830ff20a10cfcd5e1b150e5a9`  
		Last Modified: Fri, 19 Oct 2018 12:44:54 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fccc52ae61cb7946f8eed2a6a0064c124bb6bf33beae72f115c056589a93c9e0`  
		Last Modified: Fri, 19 Oct 2018 12:44:54 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2de2ebafad38a2c63f30d22f5474029b85c279bf03d4fb5a47fdb3183ebf22c`  
		Last Modified: Fri, 19 Oct 2018 12:44:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c772760a18f8062459a15cfe88fba862f2dd8603ec437ca6cbd381896fc94421`  
		Last Modified: Fri, 19 Oct 2018 13:54:27 GMT  
		Size: 2.0 KB (1980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35bcfe6dfe6669dc6d52176c0550df234a4ea0a4a4d8f85890b379951d5cebf8`  
		Last Modified: Fri, 19 Oct 2018 13:54:26 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d6ab0f42b851dba54bb7d202623a032935d1038056837bfe0ae1efb9112fee`  
		Last Modified: Fri, 19 Oct 2018 13:54:26 GMT  
		Size: 819.9 KB (819949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abdfde63729b7b04221ed039cb6cd4a16c4315305155001de0d5ecf9719f89b3`  
		Last Modified: Fri, 19 Oct 2018 13:54:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19bc1fe7343ec18b625db3106cdaaffe77c915c596e553576045bfeaaf1565f`  
		Last Modified: Fri, 19 Oct 2018 13:54:28 GMT  
		Size: 7.4 MB (7449500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed776b98dcb4466a3e655e16026bd29c2a42b7df10fa7b0bd847c501a87346de`  
		Last Modified: Fri, 19 Oct 2018 13:54:25 GMT  
		Size: 25.1 KB (25127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c00107c3b15605aa4ec7346ecb57efcfed51c2e50c095c4d97dd297ccab6be1`  
		Last Modified: Sat, 03 Nov 2018 11:17:46 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa283e6ff5d2d7fbdd9a2bf9ab12ca1155e2265edfae6d50eac04ab876609eb0`  
		Last Modified: Sat, 03 Nov 2018 11:18:01 GMT  
		Size: 62.7 MB (62743663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ef8d9bd48687b3c16d421ea4a9bcffb393816116e5f875444cbdfae272b47c`  
		Last Modified: Sat, 03 Nov 2018 11:17:46 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333ed8eac699167620f0932406001671bc74a3fa0aa9bd97b9be75ee668112c3`  
		Last Modified: Sat, 03 Nov 2018 11:17:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0` - linux; ppc64le

```console
$ docker pull mariadb@sha256:eb8a1040e722a9e38a7dac1f4423853ada4285bafc6cbc0fa2b5e8f60dc6213d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109321216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0097f0340a331b8ea003194e42585fc815a4d7bc39d04ede0e0e12052050b965`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 09:18:12 GMT
ADD file:83bbdd1323204fa7e588cfc9ae14a0f79ccc3aec1c2b65a6fa2fe61031ca8526 in / 
# Fri, 19 Oct 2018 09:18:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 09:18:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 09:18:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 10:45:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 10:45:47 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:45:48 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 10:46:18 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 10:46:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 10:47:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:47:10 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 10:47:13 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 10:47:15 GMT
ENV MARIADB_MAJOR=10.0
# Sat, 03 Nov 2018 08:30:43 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Sat, 03 Nov 2018 08:30:48 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 03 Nov 2018 08:32:05 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 03 Nov 2018 08:32:10 GMT
VOLUME [/var/lib/mysql]
# Sat, 03 Nov 2018 08:32:11 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Sat, 03 Nov 2018 08:32:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Nov 2018 08:32:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Nov 2018 08:32:30 GMT
EXPOSE 3306/tcp
# Sat, 03 Nov 2018 08:32:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7ed658e8418de83c169844e4cb1976fd203a10bde1b1bd781ffcc21b87b2bf28`  
		Last Modified: Fri, 19 Oct 2018 09:21:25 GMT  
		Size: 45.6 MB (45646874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4807b07291b49c998842bd0ed325db1cb3a57b98130db09b5206833c709ddabb`  
		Last Modified: Fri, 19 Oct 2018 09:21:14 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01682f72bbbcb4c8313b50d42d16020793353431f6f427757d8a9b88b3c14003`  
		Last Modified: Fri, 19 Oct 2018 09:21:14 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1bb878e4ec980e14c3e114e8ef030fd23c251f0bf65b6b8be725ace0527b5d`  
		Last Modified: Fri, 19 Oct 2018 09:21:15 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6952ef204a0129387b058cc06a01b1b672eff81cc8e8d7dd348579ccbd9b9b47`  
		Last Modified: Fri, 19 Oct 2018 10:57:43 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1fab337322a270ff30b977e74ac580df93a5d9b4e4d9c3aa1ba8234dd75673`  
		Last Modified: Fri, 19 Oct 2018 10:57:40 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d1ac61a8ec94074dd24398caa597abb5f1c56e097b2f63e760282b5a94e11e`  
		Last Modified: Fri, 19 Oct 2018 10:57:40 GMT  
		Size: 808.8 KB (808819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd96f18d4666eb9e327554012b4a8dc6f676d7087dd2f46fee1c0fd76166af9`  
		Last Modified: Fri, 19 Oct 2018 10:57:37 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7336f276e03fc8aed03498112c0791c7d810aee011501b168587e88093ed31a6`  
		Last Modified: Fri, 19 Oct 2018 10:57:41 GMT  
		Size: 7.2 MB (7210701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8b59c269b8973a22b3529fec444c4670e12d0f1854425bbfbbd9fcadceda64`  
		Last Modified: Fri, 19 Oct 2018 10:57:37 GMT  
		Size: 25.1 KB (25135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80809d63b3ae40ee60cbbf7fc807c0fa91bf66a8d98c0211f78ba1c0765d3f8a`  
		Last Modified: Sat, 03 Nov 2018 08:34:25 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c9a9e6628883c224c92b3e2240f028ed982384fe8e377424bc7d4bb6000af4`  
		Last Modified: Sat, 03 Nov 2018 08:34:40 GMT  
		Size: 55.6 MB (55622713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac042a5f8ad2c61ad0e586a8407cbdc1d301f999c717d0fbf908516171ae70dc`  
		Last Modified: Sat, 03 Nov 2018 08:34:25 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7bf13c65835b09015fe0af67688391da8a98d4a22cfafca5555c45983df926`  
		Last Modified: Sat, 03 Nov 2018 08:34:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.37`

```console
$ docker pull mariadb@sha256:93fffab51556e996d5216f7954d24eae57a49cf5c9d480c54f32a8dbf2054045
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0.37` - linux; amd64

```console
$ docker pull mariadb@sha256:23072029c5ba90857aa2232b7ef925ae457a098a6b14e9050ba2613b0599655f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115947137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eacfada111bc5453de8cc36d74e7869e8ccf021ea10851a594a520f3660b4545`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 00:49:11 GMT
ADD file:01a5c4f2b1dcc8f8aebe00ce8ed6ceda7038abc31d40caf69273240cdd453b84 in / 
# Fri, 19 Oct 2018 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:49:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:49:14 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:39:31 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 01:39:35 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:39:35 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 01:39:46 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 01:39:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 01:39:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:39:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 01:39:59 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 01:40:00 GMT
ENV MARIADB_MAJOR=10.0
# Sat, 03 Nov 2018 00:22:36 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Sat, 03 Nov 2018 00:22:37 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 03 Nov 2018 00:23:27 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 03 Nov 2018 00:23:29 GMT
VOLUME [/var/lib/mysql]
# Sat, 03 Nov 2018 00:23:29 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Sat, 03 Nov 2018 00:23:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Nov 2018 00:23:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Nov 2018 00:23:41 GMT
EXPOSE 3306/tcp
# Sat, 03 Nov 2018 00:23:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:18d680d616571900d78ee1c8fff0310f2a2afe39c6ed0ba2651ff667af406c3e`  
		Last Modified: Fri, 05 Oct 2018 22:11:59 GMT  
		Size: 43.4 MB (43352848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0addb6fece630456e0ab187b0aa4304d0851ba60576e7f6f9042a97ee908a796`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e58219b215b359fe002f0ca1f416617b75ca9b36cb274c98d7a5f808711179`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6959a66df2ea26a26452ba11f84fb64bb45af90204374862ec71ee59f795e7`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a495d504f05a20de0e900a2bcba89bd224a0b0ae8e80ac819b231562f737edb`  
		Last Modified: Fri, 19 Oct 2018 01:46:42 GMT  
		Size: 2.0 KB (1994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9df2dec96e28d18eb678983ae412b6deb9f44f6eba077e5558261ba2b27512b`  
		Last Modified: Fri, 19 Oct 2018 01:46:41 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62d2842a87e19629a623b542f57cdf11b510066af7981352ddf816faf87783b`  
		Last Modified: Fri, 19 Oct 2018 01:46:41 GMT  
		Size: 841.1 KB (841098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09bc0f64efb0b222e484240d7200475e33ae08a0e58ca2ac9809db09b71a7792`  
		Last Modified: Fri, 19 Oct 2018 01:46:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf47207d9c7b84cb1ffaeec62e16da5006f6b3f3dc6e1346112ec6dcbf1a06d`  
		Last Modified: Fri, 19 Oct 2018 01:46:43 GMT  
		Size: 7.3 MB (7322005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a2d86c85ae83561ad426b3216db3411c30b6dc9cd3e404ad54eabf1d4666e5`  
		Last Modified: Fri, 19 Oct 2018 01:46:40 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cefbbdf7ebdf9ad173ff02b02e5bcb476539289ba30837932a805ef7671c1bd5`  
		Last Modified: Sat, 03 Nov 2018 00:25:33 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2b32e76d26dea2b14d36d069c29c50b4ac0cf3427943cb7421a399fd42d4d6`  
		Last Modified: Sat, 03 Nov 2018 00:25:44 GMT  
		Size: 64.4 MB (64399070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdd7dd3a7410d37eb30bc90c07feefac2a0cf62e57e0e24c076cdc99041fe0e`  
		Last Modified: Sat, 03 Nov 2018 00:25:33 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1144ce881a8b71cd4d2f243455ea38358f9c32b3ef5b472479e602d98d62fa`  
		Last Modified: Sat, 03 Nov 2018 00:25:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.37` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:e62e0a8fe54489b315ad18c53b1fa8504eee02cd59da5c9bb7353780df1f3e83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.0 MB (99033281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dba93ed848a1566fc4ce20a27480403003f0b5f62bafdb208afe40907e0342f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 11:22:58 GMT
ADD file:9770ac4ecb41798c5999796e611468c62bf20e585daf48667db9f39757ec5ad9 in / 
# Fri, 19 Oct 2018 11:23:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 11:23:05 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 11:23:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 11:23:08 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 13:09:04 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 13:09:13 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:09:15 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 13:09:52 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 13:09:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 13:11:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:11:01 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 13:11:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 13:11:06 GMT
ENV MARIADB_MAJOR=10.0
# Sat, 03 Nov 2018 08:48:59 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Sat, 03 Nov 2018 08:49:02 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 03 Nov 2018 08:50:47 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 03 Nov 2018 08:50:49 GMT
VOLUME [/var/lib/mysql]
# Sat, 03 Nov 2018 08:50:50 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Sat, 03 Nov 2018 08:50:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Nov 2018 08:50:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Nov 2018 08:50:59 GMT
EXPOSE 3306/tcp
# Sat, 03 Nov 2018 08:51:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e4852cc2dcfa698a092467d4b0a8a4f34f9ac6d20b64dbd4a8be0a764f29564d`  
		Last Modified: Fri, 05 Oct 2018 22:11:51 GMT  
		Size: 39.4 MB (39432395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf455d9dd16d488d1c230ceb231351c1abd0733011acf191b6a63339e7b5cfca`  
		Last Modified: Fri, 19 Oct 2018 11:26:42 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2abc38e50c7444b0314ce04d70d73a1bd3733e860f550ad9edd236fd650769c0`  
		Last Modified: Fri, 19 Oct 2018 11:26:42 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cecbdd5ae3d455dc9ef1c1be196ac6ef7c70e3062656dadcec822910202d798`  
		Last Modified: Fri, 19 Oct 2018 11:26:42 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead447e989d0d2b304bf09d50fe57a800963d817bd45512aa10c406a4706b015`  
		Last Modified: Fri, 19 Oct 2018 13:18:42 GMT  
		Size: 2.0 KB (2002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84f29262538edb259dd1e961310a33042175d2693e3e798efef49d63f499c28`  
		Last Modified: Fri, 19 Oct 2018 13:18:37 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be591cc95cbfccc416c0fcd24acc78debbdc75bb0f6d1b19fc4f93dfd3fd9c93`  
		Last Modified: Fri, 19 Oct 2018 13:18:37 GMT  
		Size: 807.6 KB (807606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374bc8dbfb3048540fbf8ddb4305c3ad0c01e6cb7b41e3e2a4a0ea1c35bbcdbb`  
		Last Modified: Fri, 19 Oct 2018 13:18:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01722e225217ae853ee4701a99d6f7ef00ef23fd79524e12a6b2bd868d27fded`  
		Last Modified: Fri, 19 Oct 2018 13:18:38 GMT  
		Size: 6.4 MB (6399537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe3ecb2cd4d30a51076a8cba435ee763ffcbf96060d2ee2c328ce844f23a78a`  
		Last Modified: Fri, 19 Oct 2018 13:18:34 GMT  
		Size: 25.1 KB (25135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f4f759aa5e71822fb2251d5aeb70a50630aa417bbb3d5bdb4d49a441f37a38`  
		Last Modified: Sat, 03 Nov 2018 08:53:09 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb05c48d1f884d4d4326d54cf25b0c7f12e7f75313836fe4da69ce97ac918b9`  
		Last Modified: Sat, 03 Nov 2018 08:53:29 GMT  
		Size: 52.4 MB (52361701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a21b4864e7d489678fbc4665aa0757e58d4cd5c9824e8f59d1c855601ca827`  
		Last Modified: Sat, 03 Nov 2018 08:53:10 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244ae70d737e268d81c2d401d0f781dc25f3afdeccfa5cbfb74dd96a6a7d4aee`  
		Last Modified: Sat, 03 Nov 2018 08:53:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.37` - linux; 386

```console
$ docker pull mariadb@sha256:2bbd5f27a149492dd60b5c5a0cb53af569cdfb0a256d14ac17e2c6f484d002c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114627582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b32c0c7bbb7ef6095c0b6b30cc6aa0700606cee9cdde49838b3fff70bb840c50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 12:42:16 GMT
ADD file:2771ee18ccb3a0a6b045ef2a4d355702c369493d5244dd3bf680221376780e37 in / 
# Fri, 19 Oct 2018 12:42:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 12:42:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:42:18 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 12:42:18 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 13:52:02 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 13:52:06 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:52:06 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 13:52:14 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 13:52:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 13:52:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:52:26 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 13:52:27 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 13:52:27 GMT
ENV MARIADB_MAJOR=10.0
# Sat, 03 Nov 2018 11:16:35 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Sat, 03 Nov 2018 11:16:36 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 03 Nov 2018 11:17:22 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 03 Nov 2018 11:17:22 GMT
VOLUME [/var/lib/mysql]
# Sat, 03 Nov 2018 11:17:23 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Sat, 03 Nov 2018 11:17:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Nov 2018 11:17:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Nov 2018 11:17:24 GMT
EXPOSE 3306/tcp
# Sat, 03 Nov 2018 11:17:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5be2374a5e1d8357d7b4b6e6c599bfb97e7ac60e347f2a0593c2e13ec9fdef71`  
		Last Modified: Fri, 19 Oct 2018 12:45:04 GMT  
		Size: 43.6 MB (43582407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9364a60af5db1019b325953424c8dd43fcff674830ff20a10cfcd5e1b150e5a9`  
		Last Modified: Fri, 19 Oct 2018 12:44:54 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fccc52ae61cb7946f8eed2a6a0064c124bb6bf33beae72f115c056589a93c9e0`  
		Last Modified: Fri, 19 Oct 2018 12:44:54 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2de2ebafad38a2c63f30d22f5474029b85c279bf03d4fb5a47fdb3183ebf22c`  
		Last Modified: Fri, 19 Oct 2018 12:44:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c772760a18f8062459a15cfe88fba862f2dd8603ec437ca6cbd381896fc94421`  
		Last Modified: Fri, 19 Oct 2018 13:54:27 GMT  
		Size: 2.0 KB (1980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35bcfe6dfe6669dc6d52176c0550df234a4ea0a4a4d8f85890b379951d5cebf8`  
		Last Modified: Fri, 19 Oct 2018 13:54:26 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d6ab0f42b851dba54bb7d202623a032935d1038056837bfe0ae1efb9112fee`  
		Last Modified: Fri, 19 Oct 2018 13:54:26 GMT  
		Size: 819.9 KB (819949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abdfde63729b7b04221ed039cb6cd4a16c4315305155001de0d5ecf9719f89b3`  
		Last Modified: Fri, 19 Oct 2018 13:54:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19bc1fe7343ec18b625db3106cdaaffe77c915c596e553576045bfeaaf1565f`  
		Last Modified: Fri, 19 Oct 2018 13:54:28 GMT  
		Size: 7.4 MB (7449500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed776b98dcb4466a3e655e16026bd29c2a42b7df10fa7b0bd847c501a87346de`  
		Last Modified: Fri, 19 Oct 2018 13:54:25 GMT  
		Size: 25.1 KB (25127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c00107c3b15605aa4ec7346ecb57efcfed51c2e50c095c4d97dd297ccab6be1`  
		Last Modified: Sat, 03 Nov 2018 11:17:46 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa283e6ff5d2d7fbdd9a2bf9ab12ca1155e2265edfae6d50eac04ab876609eb0`  
		Last Modified: Sat, 03 Nov 2018 11:18:01 GMT  
		Size: 62.7 MB (62743663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ef8d9bd48687b3c16d421ea4a9bcffb393816116e5f875444cbdfae272b47c`  
		Last Modified: Sat, 03 Nov 2018 11:17:46 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333ed8eac699167620f0932406001671bc74a3fa0aa9bd97b9be75ee668112c3`  
		Last Modified: Sat, 03 Nov 2018 11:17:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.37` - linux; ppc64le

```console
$ docker pull mariadb@sha256:eb8a1040e722a9e38a7dac1f4423853ada4285bafc6cbc0fa2b5e8f60dc6213d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109321216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0097f0340a331b8ea003194e42585fc815a4d7bc39d04ede0e0e12052050b965`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 09:18:12 GMT
ADD file:83bbdd1323204fa7e588cfc9ae14a0f79ccc3aec1c2b65a6fa2fe61031ca8526 in / 
# Fri, 19 Oct 2018 09:18:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 09:18:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 09:18:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 10:45:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 10:45:47 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:45:48 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 10:46:18 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 10:46:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 10:47:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:47:10 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 10:47:13 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 10:47:15 GMT
ENV MARIADB_MAJOR=10.0
# Sat, 03 Nov 2018 08:30:43 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Sat, 03 Nov 2018 08:30:48 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 03 Nov 2018 08:32:05 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 03 Nov 2018 08:32:10 GMT
VOLUME [/var/lib/mysql]
# Sat, 03 Nov 2018 08:32:11 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Sat, 03 Nov 2018 08:32:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Nov 2018 08:32:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Nov 2018 08:32:30 GMT
EXPOSE 3306/tcp
# Sat, 03 Nov 2018 08:32:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7ed658e8418de83c169844e4cb1976fd203a10bde1b1bd781ffcc21b87b2bf28`  
		Last Modified: Fri, 19 Oct 2018 09:21:25 GMT  
		Size: 45.6 MB (45646874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4807b07291b49c998842bd0ed325db1cb3a57b98130db09b5206833c709ddabb`  
		Last Modified: Fri, 19 Oct 2018 09:21:14 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01682f72bbbcb4c8313b50d42d16020793353431f6f427757d8a9b88b3c14003`  
		Last Modified: Fri, 19 Oct 2018 09:21:14 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1bb878e4ec980e14c3e114e8ef030fd23c251f0bf65b6b8be725ace0527b5d`  
		Last Modified: Fri, 19 Oct 2018 09:21:15 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6952ef204a0129387b058cc06a01b1b672eff81cc8e8d7dd348579ccbd9b9b47`  
		Last Modified: Fri, 19 Oct 2018 10:57:43 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1fab337322a270ff30b977e74ac580df93a5d9b4e4d9c3aa1ba8234dd75673`  
		Last Modified: Fri, 19 Oct 2018 10:57:40 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d1ac61a8ec94074dd24398caa597abb5f1c56e097b2f63e760282b5a94e11e`  
		Last Modified: Fri, 19 Oct 2018 10:57:40 GMT  
		Size: 808.8 KB (808819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd96f18d4666eb9e327554012b4a8dc6f676d7087dd2f46fee1c0fd76166af9`  
		Last Modified: Fri, 19 Oct 2018 10:57:37 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7336f276e03fc8aed03498112c0791c7d810aee011501b168587e88093ed31a6`  
		Last Modified: Fri, 19 Oct 2018 10:57:41 GMT  
		Size: 7.2 MB (7210701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8b59c269b8973a22b3529fec444c4670e12d0f1854425bbfbbd9fcadceda64`  
		Last Modified: Fri, 19 Oct 2018 10:57:37 GMT  
		Size: 25.1 KB (25135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80809d63b3ae40ee60cbbf7fc807c0fa91bf66a8d98c0211f78ba1c0765d3f8a`  
		Last Modified: Sat, 03 Nov 2018 08:34:25 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c9a9e6628883c224c92b3e2240f028ed982384fe8e377424bc7d4bb6000af4`  
		Last Modified: Sat, 03 Nov 2018 08:34:40 GMT  
		Size: 55.6 MB (55622713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac042a5f8ad2c61ad0e586a8407cbdc1d301f999c717d0fbf908516171ae70dc`  
		Last Modified: Sat, 03 Nov 2018 08:34:25 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7bf13c65835b09015fe0af67688391da8a98d4a22cfafca5555c45983df926`  
		Last Modified: Sat, 03 Nov 2018 08:34:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.37-xenial`

```console
$ docker pull mariadb@sha256:93fffab51556e996d5216f7954d24eae57a49cf5c9d480c54f32a8dbf2054045
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0.37-xenial` - linux; amd64

```console
$ docker pull mariadb@sha256:23072029c5ba90857aa2232b7ef925ae457a098a6b14e9050ba2613b0599655f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115947137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eacfada111bc5453de8cc36d74e7869e8ccf021ea10851a594a520f3660b4545`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 00:49:11 GMT
ADD file:01a5c4f2b1dcc8f8aebe00ce8ed6ceda7038abc31d40caf69273240cdd453b84 in / 
# Fri, 19 Oct 2018 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:49:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:49:14 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:39:31 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 01:39:35 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:39:35 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 01:39:46 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 01:39:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 01:39:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:39:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 01:39:59 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 01:40:00 GMT
ENV MARIADB_MAJOR=10.0
# Sat, 03 Nov 2018 00:22:36 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Sat, 03 Nov 2018 00:22:37 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 03 Nov 2018 00:23:27 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 03 Nov 2018 00:23:29 GMT
VOLUME [/var/lib/mysql]
# Sat, 03 Nov 2018 00:23:29 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Sat, 03 Nov 2018 00:23:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Nov 2018 00:23:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Nov 2018 00:23:41 GMT
EXPOSE 3306/tcp
# Sat, 03 Nov 2018 00:23:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:18d680d616571900d78ee1c8fff0310f2a2afe39c6ed0ba2651ff667af406c3e`  
		Last Modified: Fri, 05 Oct 2018 22:11:59 GMT  
		Size: 43.4 MB (43352848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0addb6fece630456e0ab187b0aa4304d0851ba60576e7f6f9042a97ee908a796`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e58219b215b359fe002f0ca1f416617b75ca9b36cb274c98d7a5f808711179`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6959a66df2ea26a26452ba11f84fb64bb45af90204374862ec71ee59f795e7`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a495d504f05a20de0e900a2bcba89bd224a0b0ae8e80ac819b231562f737edb`  
		Last Modified: Fri, 19 Oct 2018 01:46:42 GMT  
		Size: 2.0 KB (1994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9df2dec96e28d18eb678983ae412b6deb9f44f6eba077e5558261ba2b27512b`  
		Last Modified: Fri, 19 Oct 2018 01:46:41 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62d2842a87e19629a623b542f57cdf11b510066af7981352ddf816faf87783b`  
		Last Modified: Fri, 19 Oct 2018 01:46:41 GMT  
		Size: 841.1 KB (841098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09bc0f64efb0b222e484240d7200475e33ae08a0e58ca2ac9809db09b71a7792`  
		Last Modified: Fri, 19 Oct 2018 01:46:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf47207d9c7b84cb1ffaeec62e16da5006f6b3f3dc6e1346112ec6dcbf1a06d`  
		Last Modified: Fri, 19 Oct 2018 01:46:43 GMT  
		Size: 7.3 MB (7322005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a2d86c85ae83561ad426b3216db3411c30b6dc9cd3e404ad54eabf1d4666e5`  
		Last Modified: Fri, 19 Oct 2018 01:46:40 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cefbbdf7ebdf9ad173ff02b02e5bcb476539289ba30837932a805ef7671c1bd5`  
		Last Modified: Sat, 03 Nov 2018 00:25:33 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2b32e76d26dea2b14d36d069c29c50b4ac0cf3427943cb7421a399fd42d4d6`  
		Last Modified: Sat, 03 Nov 2018 00:25:44 GMT  
		Size: 64.4 MB (64399070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdd7dd3a7410d37eb30bc90c07feefac2a0cf62e57e0e24c076cdc99041fe0e`  
		Last Modified: Sat, 03 Nov 2018 00:25:33 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1144ce881a8b71cd4d2f243455ea38358f9c32b3ef5b472479e602d98d62fa`  
		Last Modified: Sat, 03 Nov 2018 00:25:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.37-xenial` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:e62e0a8fe54489b315ad18c53b1fa8504eee02cd59da5c9bb7353780df1f3e83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.0 MB (99033281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dba93ed848a1566fc4ce20a27480403003f0b5f62bafdb208afe40907e0342f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 11:22:58 GMT
ADD file:9770ac4ecb41798c5999796e611468c62bf20e585daf48667db9f39757ec5ad9 in / 
# Fri, 19 Oct 2018 11:23:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 11:23:05 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 11:23:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 11:23:08 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 13:09:04 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 13:09:13 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:09:15 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 13:09:52 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 13:09:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 13:11:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:11:01 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 13:11:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 13:11:06 GMT
ENV MARIADB_MAJOR=10.0
# Sat, 03 Nov 2018 08:48:59 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Sat, 03 Nov 2018 08:49:02 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 03 Nov 2018 08:50:47 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 03 Nov 2018 08:50:49 GMT
VOLUME [/var/lib/mysql]
# Sat, 03 Nov 2018 08:50:50 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Sat, 03 Nov 2018 08:50:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Nov 2018 08:50:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Nov 2018 08:50:59 GMT
EXPOSE 3306/tcp
# Sat, 03 Nov 2018 08:51:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e4852cc2dcfa698a092467d4b0a8a4f34f9ac6d20b64dbd4a8be0a764f29564d`  
		Last Modified: Fri, 05 Oct 2018 22:11:51 GMT  
		Size: 39.4 MB (39432395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf455d9dd16d488d1c230ceb231351c1abd0733011acf191b6a63339e7b5cfca`  
		Last Modified: Fri, 19 Oct 2018 11:26:42 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2abc38e50c7444b0314ce04d70d73a1bd3733e860f550ad9edd236fd650769c0`  
		Last Modified: Fri, 19 Oct 2018 11:26:42 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cecbdd5ae3d455dc9ef1c1be196ac6ef7c70e3062656dadcec822910202d798`  
		Last Modified: Fri, 19 Oct 2018 11:26:42 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead447e989d0d2b304bf09d50fe57a800963d817bd45512aa10c406a4706b015`  
		Last Modified: Fri, 19 Oct 2018 13:18:42 GMT  
		Size: 2.0 KB (2002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84f29262538edb259dd1e961310a33042175d2693e3e798efef49d63f499c28`  
		Last Modified: Fri, 19 Oct 2018 13:18:37 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be591cc95cbfccc416c0fcd24acc78debbdc75bb0f6d1b19fc4f93dfd3fd9c93`  
		Last Modified: Fri, 19 Oct 2018 13:18:37 GMT  
		Size: 807.6 KB (807606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374bc8dbfb3048540fbf8ddb4305c3ad0c01e6cb7b41e3e2a4a0ea1c35bbcdbb`  
		Last Modified: Fri, 19 Oct 2018 13:18:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01722e225217ae853ee4701a99d6f7ef00ef23fd79524e12a6b2bd868d27fded`  
		Last Modified: Fri, 19 Oct 2018 13:18:38 GMT  
		Size: 6.4 MB (6399537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe3ecb2cd4d30a51076a8cba435ee763ffcbf96060d2ee2c328ce844f23a78a`  
		Last Modified: Fri, 19 Oct 2018 13:18:34 GMT  
		Size: 25.1 KB (25135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f4f759aa5e71822fb2251d5aeb70a50630aa417bbb3d5bdb4d49a441f37a38`  
		Last Modified: Sat, 03 Nov 2018 08:53:09 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb05c48d1f884d4d4326d54cf25b0c7f12e7f75313836fe4da69ce97ac918b9`  
		Last Modified: Sat, 03 Nov 2018 08:53:29 GMT  
		Size: 52.4 MB (52361701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a21b4864e7d489678fbc4665aa0757e58d4cd5c9824e8f59d1c855601ca827`  
		Last Modified: Sat, 03 Nov 2018 08:53:10 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244ae70d737e268d81c2d401d0f781dc25f3afdeccfa5cbfb74dd96a6a7d4aee`  
		Last Modified: Sat, 03 Nov 2018 08:53:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.37-xenial` - linux; 386

```console
$ docker pull mariadb@sha256:2bbd5f27a149492dd60b5c5a0cb53af569cdfb0a256d14ac17e2c6f484d002c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114627582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b32c0c7bbb7ef6095c0b6b30cc6aa0700606cee9cdde49838b3fff70bb840c50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 12:42:16 GMT
ADD file:2771ee18ccb3a0a6b045ef2a4d355702c369493d5244dd3bf680221376780e37 in / 
# Fri, 19 Oct 2018 12:42:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 12:42:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:42:18 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 12:42:18 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 13:52:02 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 13:52:06 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:52:06 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 13:52:14 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 13:52:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 13:52:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:52:26 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 13:52:27 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 13:52:27 GMT
ENV MARIADB_MAJOR=10.0
# Sat, 03 Nov 2018 11:16:35 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Sat, 03 Nov 2018 11:16:36 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 03 Nov 2018 11:17:22 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 03 Nov 2018 11:17:22 GMT
VOLUME [/var/lib/mysql]
# Sat, 03 Nov 2018 11:17:23 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Sat, 03 Nov 2018 11:17:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Nov 2018 11:17:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Nov 2018 11:17:24 GMT
EXPOSE 3306/tcp
# Sat, 03 Nov 2018 11:17:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5be2374a5e1d8357d7b4b6e6c599bfb97e7ac60e347f2a0593c2e13ec9fdef71`  
		Last Modified: Fri, 19 Oct 2018 12:45:04 GMT  
		Size: 43.6 MB (43582407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9364a60af5db1019b325953424c8dd43fcff674830ff20a10cfcd5e1b150e5a9`  
		Last Modified: Fri, 19 Oct 2018 12:44:54 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fccc52ae61cb7946f8eed2a6a0064c124bb6bf33beae72f115c056589a93c9e0`  
		Last Modified: Fri, 19 Oct 2018 12:44:54 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2de2ebafad38a2c63f30d22f5474029b85c279bf03d4fb5a47fdb3183ebf22c`  
		Last Modified: Fri, 19 Oct 2018 12:44:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c772760a18f8062459a15cfe88fba862f2dd8603ec437ca6cbd381896fc94421`  
		Last Modified: Fri, 19 Oct 2018 13:54:27 GMT  
		Size: 2.0 KB (1980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35bcfe6dfe6669dc6d52176c0550df234a4ea0a4a4d8f85890b379951d5cebf8`  
		Last Modified: Fri, 19 Oct 2018 13:54:26 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d6ab0f42b851dba54bb7d202623a032935d1038056837bfe0ae1efb9112fee`  
		Last Modified: Fri, 19 Oct 2018 13:54:26 GMT  
		Size: 819.9 KB (819949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abdfde63729b7b04221ed039cb6cd4a16c4315305155001de0d5ecf9719f89b3`  
		Last Modified: Fri, 19 Oct 2018 13:54:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19bc1fe7343ec18b625db3106cdaaffe77c915c596e553576045bfeaaf1565f`  
		Last Modified: Fri, 19 Oct 2018 13:54:28 GMT  
		Size: 7.4 MB (7449500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed776b98dcb4466a3e655e16026bd29c2a42b7df10fa7b0bd847c501a87346de`  
		Last Modified: Fri, 19 Oct 2018 13:54:25 GMT  
		Size: 25.1 KB (25127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c00107c3b15605aa4ec7346ecb57efcfed51c2e50c095c4d97dd297ccab6be1`  
		Last Modified: Sat, 03 Nov 2018 11:17:46 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa283e6ff5d2d7fbdd9a2bf9ab12ca1155e2265edfae6d50eac04ab876609eb0`  
		Last Modified: Sat, 03 Nov 2018 11:18:01 GMT  
		Size: 62.7 MB (62743663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ef8d9bd48687b3c16d421ea4a9bcffb393816116e5f875444cbdfae272b47c`  
		Last Modified: Sat, 03 Nov 2018 11:17:46 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333ed8eac699167620f0932406001671bc74a3fa0aa9bd97b9be75ee668112c3`  
		Last Modified: Sat, 03 Nov 2018 11:17:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.37-xenial` - linux; ppc64le

```console
$ docker pull mariadb@sha256:eb8a1040e722a9e38a7dac1f4423853ada4285bafc6cbc0fa2b5e8f60dc6213d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109321216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0097f0340a331b8ea003194e42585fc815a4d7bc39d04ede0e0e12052050b965`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 09:18:12 GMT
ADD file:83bbdd1323204fa7e588cfc9ae14a0f79ccc3aec1c2b65a6fa2fe61031ca8526 in / 
# Fri, 19 Oct 2018 09:18:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 09:18:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 09:18:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 10:45:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 10:45:47 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:45:48 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 10:46:18 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 10:46:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 10:47:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:47:10 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 10:47:13 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 10:47:15 GMT
ENV MARIADB_MAJOR=10.0
# Sat, 03 Nov 2018 08:30:43 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Sat, 03 Nov 2018 08:30:48 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 03 Nov 2018 08:32:05 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 03 Nov 2018 08:32:10 GMT
VOLUME [/var/lib/mysql]
# Sat, 03 Nov 2018 08:32:11 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Sat, 03 Nov 2018 08:32:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Nov 2018 08:32:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Nov 2018 08:32:30 GMT
EXPOSE 3306/tcp
# Sat, 03 Nov 2018 08:32:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7ed658e8418de83c169844e4cb1976fd203a10bde1b1bd781ffcc21b87b2bf28`  
		Last Modified: Fri, 19 Oct 2018 09:21:25 GMT  
		Size: 45.6 MB (45646874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4807b07291b49c998842bd0ed325db1cb3a57b98130db09b5206833c709ddabb`  
		Last Modified: Fri, 19 Oct 2018 09:21:14 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01682f72bbbcb4c8313b50d42d16020793353431f6f427757d8a9b88b3c14003`  
		Last Modified: Fri, 19 Oct 2018 09:21:14 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1bb878e4ec980e14c3e114e8ef030fd23c251f0bf65b6b8be725ace0527b5d`  
		Last Modified: Fri, 19 Oct 2018 09:21:15 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6952ef204a0129387b058cc06a01b1b672eff81cc8e8d7dd348579ccbd9b9b47`  
		Last Modified: Fri, 19 Oct 2018 10:57:43 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1fab337322a270ff30b977e74ac580df93a5d9b4e4d9c3aa1ba8234dd75673`  
		Last Modified: Fri, 19 Oct 2018 10:57:40 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d1ac61a8ec94074dd24398caa597abb5f1c56e097b2f63e760282b5a94e11e`  
		Last Modified: Fri, 19 Oct 2018 10:57:40 GMT  
		Size: 808.8 KB (808819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd96f18d4666eb9e327554012b4a8dc6f676d7087dd2f46fee1c0fd76166af9`  
		Last Modified: Fri, 19 Oct 2018 10:57:37 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7336f276e03fc8aed03498112c0791c7d810aee011501b168587e88093ed31a6`  
		Last Modified: Fri, 19 Oct 2018 10:57:41 GMT  
		Size: 7.2 MB (7210701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8b59c269b8973a22b3529fec444c4670e12d0f1854425bbfbbd9fcadceda64`  
		Last Modified: Fri, 19 Oct 2018 10:57:37 GMT  
		Size: 25.1 KB (25135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80809d63b3ae40ee60cbbf7fc807c0fa91bf66a8d98c0211f78ba1c0765d3f8a`  
		Last Modified: Sat, 03 Nov 2018 08:34:25 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c9a9e6628883c224c92b3e2240f028ed982384fe8e377424bc7d4bb6000af4`  
		Last Modified: Sat, 03 Nov 2018 08:34:40 GMT  
		Size: 55.6 MB (55622713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac042a5f8ad2c61ad0e586a8407cbdc1d301f999c717d0fbf908516171ae70dc`  
		Last Modified: Sat, 03 Nov 2018 08:34:25 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7bf13c65835b09015fe0af67688391da8a98d4a22cfafca5555c45983df926`  
		Last Modified: Sat, 03 Nov 2018 08:34:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0-xenial`

```console
$ docker pull mariadb@sha256:93fffab51556e996d5216f7954d24eae57a49cf5c9d480c54f32a8dbf2054045
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0-xenial` - linux; amd64

```console
$ docker pull mariadb@sha256:23072029c5ba90857aa2232b7ef925ae457a098a6b14e9050ba2613b0599655f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115947137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eacfada111bc5453de8cc36d74e7869e8ccf021ea10851a594a520f3660b4545`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 00:49:11 GMT
ADD file:01a5c4f2b1dcc8f8aebe00ce8ed6ceda7038abc31d40caf69273240cdd453b84 in / 
# Fri, 19 Oct 2018 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:49:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:49:14 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:39:31 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 01:39:35 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:39:35 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 01:39:46 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 01:39:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 01:39:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:39:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 01:39:59 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 01:40:00 GMT
ENV MARIADB_MAJOR=10.0
# Sat, 03 Nov 2018 00:22:36 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Sat, 03 Nov 2018 00:22:37 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 03 Nov 2018 00:23:27 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 03 Nov 2018 00:23:29 GMT
VOLUME [/var/lib/mysql]
# Sat, 03 Nov 2018 00:23:29 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Sat, 03 Nov 2018 00:23:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Nov 2018 00:23:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Nov 2018 00:23:41 GMT
EXPOSE 3306/tcp
# Sat, 03 Nov 2018 00:23:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:18d680d616571900d78ee1c8fff0310f2a2afe39c6ed0ba2651ff667af406c3e`  
		Last Modified: Fri, 05 Oct 2018 22:11:59 GMT  
		Size: 43.4 MB (43352848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0addb6fece630456e0ab187b0aa4304d0851ba60576e7f6f9042a97ee908a796`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e58219b215b359fe002f0ca1f416617b75ca9b36cb274c98d7a5f808711179`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6959a66df2ea26a26452ba11f84fb64bb45af90204374862ec71ee59f795e7`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a495d504f05a20de0e900a2bcba89bd224a0b0ae8e80ac819b231562f737edb`  
		Last Modified: Fri, 19 Oct 2018 01:46:42 GMT  
		Size: 2.0 KB (1994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9df2dec96e28d18eb678983ae412b6deb9f44f6eba077e5558261ba2b27512b`  
		Last Modified: Fri, 19 Oct 2018 01:46:41 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62d2842a87e19629a623b542f57cdf11b510066af7981352ddf816faf87783b`  
		Last Modified: Fri, 19 Oct 2018 01:46:41 GMT  
		Size: 841.1 KB (841098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09bc0f64efb0b222e484240d7200475e33ae08a0e58ca2ac9809db09b71a7792`  
		Last Modified: Fri, 19 Oct 2018 01:46:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf47207d9c7b84cb1ffaeec62e16da5006f6b3f3dc6e1346112ec6dcbf1a06d`  
		Last Modified: Fri, 19 Oct 2018 01:46:43 GMT  
		Size: 7.3 MB (7322005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a2d86c85ae83561ad426b3216db3411c30b6dc9cd3e404ad54eabf1d4666e5`  
		Last Modified: Fri, 19 Oct 2018 01:46:40 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cefbbdf7ebdf9ad173ff02b02e5bcb476539289ba30837932a805ef7671c1bd5`  
		Last Modified: Sat, 03 Nov 2018 00:25:33 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2b32e76d26dea2b14d36d069c29c50b4ac0cf3427943cb7421a399fd42d4d6`  
		Last Modified: Sat, 03 Nov 2018 00:25:44 GMT  
		Size: 64.4 MB (64399070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdd7dd3a7410d37eb30bc90c07feefac2a0cf62e57e0e24c076cdc99041fe0e`  
		Last Modified: Sat, 03 Nov 2018 00:25:33 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1144ce881a8b71cd4d2f243455ea38358f9c32b3ef5b472479e602d98d62fa`  
		Last Modified: Sat, 03 Nov 2018 00:25:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0-xenial` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:e62e0a8fe54489b315ad18c53b1fa8504eee02cd59da5c9bb7353780df1f3e83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.0 MB (99033281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dba93ed848a1566fc4ce20a27480403003f0b5f62bafdb208afe40907e0342f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 11:22:58 GMT
ADD file:9770ac4ecb41798c5999796e611468c62bf20e585daf48667db9f39757ec5ad9 in / 
# Fri, 19 Oct 2018 11:23:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 11:23:05 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 11:23:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 11:23:08 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 13:09:04 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 13:09:13 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:09:15 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 13:09:52 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 13:09:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 13:11:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:11:01 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 13:11:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 13:11:06 GMT
ENV MARIADB_MAJOR=10.0
# Sat, 03 Nov 2018 08:48:59 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Sat, 03 Nov 2018 08:49:02 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 03 Nov 2018 08:50:47 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 03 Nov 2018 08:50:49 GMT
VOLUME [/var/lib/mysql]
# Sat, 03 Nov 2018 08:50:50 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Sat, 03 Nov 2018 08:50:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Nov 2018 08:50:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Nov 2018 08:50:59 GMT
EXPOSE 3306/tcp
# Sat, 03 Nov 2018 08:51:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e4852cc2dcfa698a092467d4b0a8a4f34f9ac6d20b64dbd4a8be0a764f29564d`  
		Last Modified: Fri, 05 Oct 2018 22:11:51 GMT  
		Size: 39.4 MB (39432395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf455d9dd16d488d1c230ceb231351c1abd0733011acf191b6a63339e7b5cfca`  
		Last Modified: Fri, 19 Oct 2018 11:26:42 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2abc38e50c7444b0314ce04d70d73a1bd3733e860f550ad9edd236fd650769c0`  
		Last Modified: Fri, 19 Oct 2018 11:26:42 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cecbdd5ae3d455dc9ef1c1be196ac6ef7c70e3062656dadcec822910202d798`  
		Last Modified: Fri, 19 Oct 2018 11:26:42 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead447e989d0d2b304bf09d50fe57a800963d817bd45512aa10c406a4706b015`  
		Last Modified: Fri, 19 Oct 2018 13:18:42 GMT  
		Size: 2.0 KB (2002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84f29262538edb259dd1e961310a33042175d2693e3e798efef49d63f499c28`  
		Last Modified: Fri, 19 Oct 2018 13:18:37 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be591cc95cbfccc416c0fcd24acc78debbdc75bb0f6d1b19fc4f93dfd3fd9c93`  
		Last Modified: Fri, 19 Oct 2018 13:18:37 GMT  
		Size: 807.6 KB (807606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374bc8dbfb3048540fbf8ddb4305c3ad0c01e6cb7b41e3e2a4a0ea1c35bbcdbb`  
		Last Modified: Fri, 19 Oct 2018 13:18:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01722e225217ae853ee4701a99d6f7ef00ef23fd79524e12a6b2bd868d27fded`  
		Last Modified: Fri, 19 Oct 2018 13:18:38 GMT  
		Size: 6.4 MB (6399537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe3ecb2cd4d30a51076a8cba435ee763ffcbf96060d2ee2c328ce844f23a78a`  
		Last Modified: Fri, 19 Oct 2018 13:18:34 GMT  
		Size: 25.1 KB (25135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f4f759aa5e71822fb2251d5aeb70a50630aa417bbb3d5bdb4d49a441f37a38`  
		Last Modified: Sat, 03 Nov 2018 08:53:09 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb05c48d1f884d4d4326d54cf25b0c7f12e7f75313836fe4da69ce97ac918b9`  
		Last Modified: Sat, 03 Nov 2018 08:53:29 GMT  
		Size: 52.4 MB (52361701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a21b4864e7d489678fbc4665aa0757e58d4cd5c9824e8f59d1c855601ca827`  
		Last Modified: Sat, 03 Nov 2018 08:53:10 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244ae70d737e268d81c2d401d0f781dc25f3afdeccfa5cbfb74dd96a6a7d4aee`  
		Last Modified: Sat, 03 Nov 2018 08:53:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0-xenial` - linux; 386

```console
$ docker pull mariadb@sha256:2bbd5f27a149492dd60b5c5a0cb53af569cdfb0a256d14ac17e2c6f484d002c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114627582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b32c0c7bbb7ef6095c0b6b30cc6aa0700606cee9cdde49838b3fff70bb840c50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 12:42:16 GMT
ADD file:2771ee18ccb3a0a6b045ef2a4d355702c369493d5244dd3bf680221376780e37 in / 
# Fri, 19 Oct 2018 12:42:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 12:42:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:42:18 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 12:42:18 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 13:52:02 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 13:52:06 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:52:06 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 13:52:14 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 13:52:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 13:52:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:52:26 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 13:52:27 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 13:52:27 GMT
ENV MARIADB_MAJOR=10.0
# Sat, 03 Nov 2018 11:16:35 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Sat, 03 Nov 2018 11:16:36 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 03 Nov 2018 11:17:22 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 03 Nov 2018 11:17:22 GMT
VOLUME [/var/lib/mysql]
# Sat, 03 Nov 2018 11:17:23 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Sat, 03 Nov 2018 11:17:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Nov 2018 11:17:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Nov 2018 11:17:24 GMT
EXPOSE 3306/tcp
# Sat, 03 Nov 2018 11:17:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5be2374a5e1d8357d7b4b6e6c599bfb97e7ac60e347f2a0593c2e13ec9fdef71`  
		Last Modified: Fri, 19 Oct 2018 12:45:04 GMT  
		Size: 43.6 MB (43582407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9364a60af5db1019b325953424c8dd43fcff674830ff20a10cfcd5e1b150e5a9`  
		Last Modified: Fri, 19 Oct 2018 12:44:54 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fccc52ae61cb7946f8eed2a6a0064c124bb6bf33beae72f115c056589a93c9e0`  
		Last Modified: Fri, 19 Oct 2018 12:44:54 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2de2ebafad38a2c63f30d22f5474029b85c279bf03d4fb5a47fdb3183ebf22c`  
		Last Modified: Fri, 19 Oct 2018 12:44:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c772760a18f8062459a15cfe88fba862f2dd8603ec437ca6cbd381896fc94421`  
		Last Modified: Fri, 19 Oct 2018 13:54:27 GMT  
		Size: 2.0 KB (1980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35bcfe6dfe6669dc6d52176c0550df234a4ea0a4a4d8f85890b379951d5cebf8`  
		Last Modified: Fri, 19 Oct 2018 13:54:26 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d6ab0f42b851dba54bb7d202623a032935d1038056837bfe0ae1efb9112fee`  
		Last Modified: Fri, 19 Oct 2018 13:54:26 GMT  
		Size: 819.9 KB (819949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abdfde63729b7b04221ed039cb6cd4a16c4315305155001de0d5ecf9719f89b3`  
		Last Modified: Fri, 19 Oct 2018 13:54:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19bc1fe7343ec18b625db3106cdaaffe77c915c596e553576045bfeaaf1565f`  
		Last Modified: Fri, 19 Oct 2018 13:54:28 GMT  
		Size: 7.4 MB (7449500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed776b98dcb4466a3e655e16026bd29c2a42b7df10fa7b0bd847c501a87346de`  
		Last Modified: Fri, 19 Oct 2018 13:54:25 GMT  
		Size: 25.1 KB (25127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c00107c3b15605aa4ec7346ecb57efcfed51c2e50c095c4d97dd297ccab6be1`  
		Last Modified: Sat, 03 Nov 2018 11:17:46 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa283e6ff5d2d7fbdd9a2bf9ab12ca1155e2265edfae6d50eac04ab876609eb0`  
		Last Modified: Sat, 03 Nov 2018 11:18:01 GMT  
		Size: 62.7 MB (62743663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ef8d9bd48687b3c16d421ea4a9bcffb393816116e5f875444cbdfae272b47c`  
		Last Modified: Sat, 03 Nov 2018 11:17:46 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333ed8eac699167620f0932406001671bc74a3fa0aa9bd97b9be75ee668112c3`  
		Last Modified: Sat, 03 Nov 2018 11:17:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0-xenial` - linux; ppc64le

```console
$ docker pull mariadb@sha256:eb8a1040e722a9e38a7dac1f4423853ada4285bafc6cbc0fa2b5e8f60dc6213d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109321216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0097f0340a331b8ea003194e42585fc815a4d7bc39d04ede0e0e12052050b965`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 09:18:12 GMT
ADD file:83bbdd1323204fa7e588cfc9ae14a0f79ccc3aec1c2b65a6fa2fe61031ca8526 in / 
# Fri, 19 Oct 2018 09:18:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 09:18:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 09:18:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 10:45:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 10:45:47 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:45:48 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 10:46:18 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 10:46:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 10:47:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:47:10 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 10:47:13 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 10:47:15 GMT
ENV MARIADB_MAJOR=10.0
# Sat, 03 Nov 2018 08:30:43 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Sat, 03 Nov 2018 08:30:48 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 03 Nov 2018 08:32:05 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 03 Nov 2018 08:32:10 GMT
VOLUME [/var/lib/mysql]
# Sat, 03 Nov 2018 08:32:11 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Sat, 03 Nov 2018 08:32:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Nov 2018 08:32:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Nov 2018 08:32:30 GMT
EXPOSE 3306/tcp
# Sat, 03 Nov 2018 08:32:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7ed658e8418de83c169844e4cb1976fd203a10bde1b1bd781ffcc21b87b2bf28`  
		Last Modified: Fri, 19 Oct 2018 09:21:25 GMT  
		Size: 45.6 MB (45646874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4807b07291b49c998842bd0ed325db1cb3a57b98130db09b5206833c709ddabb`  
		Last Modified: Fri, 19 Oct 2018 09:21:14 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01682f72bbbcb4c8313b50d42d16020793353431f6f427757d8a9b88b3c14003`  
		Last Modified: Fri, 19 Oct 2018 09:21:14 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1bb878e4ec980e14c3e114e8ef030fd23c251f0bf65b6b8be725ace0527b5d`  
		Last Modified: Fri, 19 Oct 2018 09:21:15 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6952ef204a0129387b058cc06a01b1b672eff81cc8e8d7dd348579ccbd9b9b47`  
		Last Modified: Fri, 19 Oct 2018 10:57:43 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1fab337322a270ff30b977e74ac580df93a5d9b4e4d9c3aa1ba8234dd75673`  
		Last Modified: Fri, 19 Oct 2018 10:57:40 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d1ac61a8ec94074dd24398caa597abb5f1c56e097b2f63e760282b5a94e11e`  
		Last Modified: Fri, 19 Oct 2018 10:57:40 GMT  
		Size: 808.8 KB (808819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd96f18d4666eb9e327554012b4a8dc6f676d7087dd2f46fee1c0fd76166af9`  
		Last Modified: Fri, 19 Oct 2018 10:57:37 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7336f276e03fc8aed03498112c0791c7d810aee011501b168587e88093ed31a6`  
		Last Modified: Fri, 19 Oct 2018 10:57:41 GMT  
		Size: 7.2 MB (7210701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8b59c269b8973a22b3529fec444c4670e12d0f1854425bbfbbd9fcadceda64`  
		Last Modified: Fri, 19 Oct 2018 10:57:37 GMT  
		Size: 25.1 KB (25135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80809d63b3ae40ee60cbbf7fc807c0fa91bf66a8d98c0211f78ba1c0765d3f8a`  
		Last Modified: Sat, 03 Nov 2018 08:34:25 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c9a9e6628883c224c92b3e2240f028ed982384fe8e377424bc7d4bb6000af4`  
		Last Modified: Sat, 03 Nov 2018 08:34:40 GMT  
		Size: 55.6 MB (55622713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac042a5f8ad2c61ad0e586a8407cbdc1d301f999c717d0fbf908516171ae70dc`  
		Last Modified: Sat, 03 Nov 2018 08:34:25 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7bf13c65835b09015fe0af67688391da8a98d4a22cfafca5555c45983df926`  
		Last Modified: Sat, 03 Nov 2018 08:34:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:de35d15c442c608584e0792ef00a9fe4d44157c106b3915413378b53c241726b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1` - linux; amd64

```console
$ docker pull mariadb@sha256:55d3cf983d2dc01a5d293aa9912bc73c72e0108a5df0db797554b1b51d3ec816
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118419997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c0c4475a0aef267af1314e1c404cd66c6fcfd08ba4df456168f88cf97c4d57`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 00:47:54 GMT
ADD file:bcd068f67af2788dbd57729c0c8193f022ec5c37fefb8704390c59081152e6fc in / 
# Fri, 19 Oct 2018 00:47:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:47:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:47:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:47:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:36:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 01:36:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:36:46 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 01:36:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 01:36:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 01:37:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:37:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 01:37:13 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 01:38:32 GMT
ENV MARIADB_MAJOR=10.1
# Sat, 03 Nov 2018 00:20:58 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Sat, 03 Nov 2018 00:20:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 03 Nov 2018 00:21:47 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 03 Nov 2018 00:21:49 GMT
VOLUME [/var/lib/mysql]
# Sat, 03 Nov 2018 00:21:50 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Sat, 03 Nov 2018 00:22:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Nov 2018 00:22:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Nov 2018 00:22:01 GMT
EXPOSE 3306/tcp
# Sat, 03 Nov 2018 00:22:02 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:473ede7ed136b710ab2dd51579af038b7d00fbbf6a1790c6294c93666203c0a6`  
		Last Modified: Fri, 19 Oct 2018 00:24:53 GMT  
		Size: 32.0 MB (32034160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46b5fa4d940569e49988515c1ea0295f56d0a16228d8f854e27613f467ec892`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ae3df89c92cb1d20e9c09f499e693d3a8a8cef161f7158f7a9a3b5d06e4ef2`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1eed27cadec5de8051d56697b0b67527e4076deedceefb41b7b2ea9b900459`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7571426e9fed20247bade7966bd042c340e3e5c3a15865b868825303e9897c4`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba27abd0643114e14441df27dcccc9843cf22ce9526fb09298d3b0d2cf48614`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 4.8 MB (4803626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfc1e8ac8a082121335186f4161cde2b91a4909d42585f21d143746a4103313`  
		Last Modified: Fri, 19 Oct 2018 01:41:51 GMT  
		Size: 863.1 KB (863078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01fbcb1aaebfc637b98ad756c72b5d62770875830b14c0ec9c0ae4dec2da6186`  
		Last Modified: Fri, 19 Oct 2018 01:41:51 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c112e7b58a2b30aff61f6535bb4f8d80d6ba2c5162747b241aac86385710c7c`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 3.0 MB (2956705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0418b243428b9877bfad06fe8900646fc20513fba2be436fb3f0d90d486f17`  
		Last Modified: Fri, 19 Oct 2018 01:41:50 GMT  
		Size: 25.1 KB (25127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d8610c995059d55176cc75a12621426c7ad59697d5914f9b906c42e6b92a95`  
		Last Modified: Sat, 03 Nov 2018 00:24:24 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21775f04b1dc034370f22f0570c5e9ff64528f895e328651976e8a111dbec27d`  
		Last Modified: Sat, 03 Nov 2018 00:24:39 GMT  
		Size: 77.7 MB (77730698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fbb96f5e58c39566a4ff83feafe0592078215fbc08e3f216c86215fb86dfa1f`  
		Last Modified: Sat, 03 Nov 2018 00:24:25 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85df5bee459695790111c6193795409a79702b2ff9cbbb1e2399e2628bc55ce`  
		Last Modified: Sat, 03 Nov 2018 00:24:25 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:30e12b56da1c8695174dca33148006e668c8c09c1a504d276bb742bbfe331708
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110868933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beb504d1d4806ffd2046982d82d686c47215164029e2d3937e11cd7feccc078c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 11:20:49 GMT
ADD file:110950580db69973226966e62607ac770285caf76a247ce5a8c606c65aa04b50 in / 
# Fri, 19 Oct 2018 11:20:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 11:20:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 11:20:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 11:20:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 12:56:42 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 12:57:15 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:57:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 12:57:43 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 12:57:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 12:58:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:58:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 12:58:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 13:05:24 GMT
ENV MARIADB_MAJOR=10.1
# Sat, 03 Nov 2018 08:46:49 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Sat, 03 Nov 2018 08:46:54 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 03 Nov 2018 08:48:34 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 03 Nov 2018 08:48:35 GMT
VOLUME [/var/lib/mysql]
# Sat, 03 Nov 2018 08:48:36 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Sat, 03 Nov 2018 08:48:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Nov 2018 08:48:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Nov 2018 08:48:41 GMT
EXPOSE 3306/tcp
# Sat, 03 Nov 2018 08:48:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:71878b774cb38a9ed46024ada7a9e0634060697119a8c4c07c611646264513f3`  
		Last Modified: Fri, 19 Oct 2018 11:23:39 GMT  
		Size: 28.8 MB (28833238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1b922a83c7f524b935e8e6b9d738697762972d95fce4c7c269f5cd2c754055`  
		Last Modified: Fri, 19 Oct 2018 11:23:28 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab46b3e1d46e0d1ef143520251afe8bc630c0ab04c2dbf8ac097c7007aaa85f`  
		Last Modified: Fri, 19 Oct 2018 11:23:28 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169c13f4edfd32451d6658b4c4c8176b38f232d0a3de07d2a9ca253c2c2848ba`  
		Last Modified: Fri, 19 Oct 2018 11:23:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515fd1949dab7c46ef13b4d135db3637172d5bc7856e32cc1423fe68425d0d91`  
		Last Modified: Fri, 19 Oct 2018 13:14:00 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e017b2874c4be515a55c04d9a82029537983bbadd8ac3841eae5bd173251cd3`  
		Last Modified: Fri, 19 Oct 2018 13:14:00 GMT  
		Size: 4.4 MB (4380212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f6d036cdfc908e4c19c80a7b6df55f1727bf6ae1bad70f4507dfaa5221feae`  
		Last Modified: Fri, 19 Oct 2018 13:13:58 GMT  
		Size: 829.7 KB (829666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f0872339b3202f0e2b0fa21bf4717b18fbca80f0c689505dca20410790e42e`  
		Last Modified: Fri, 19 Oct 2018 13:13:58 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c19d59e0bda178cae23994ab09172d8894e31f39d61fcd3ac7f2649a1d0631`  
		Last Modified: Fri, 19 Oct 2018 13:13:59 GMT  
		Size: 2.7 MB (2698485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9bf97e7f7714767a7ef8fcbb779ed389f53238950cc3b2cf1236a3139ca289d`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77d6c67134d82c2c283343583017c79704419d606d0ccba8a870122d322c6a5`  
		Last Modified: Sat, 03 Nov 2018 08:51:35 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a378de13211f113fafc4106800d7b81df81016889292652b56f2962db082b0`  
		Last Modified: Sat, 03 Nov 2018 08:52:05 GMT  
		Size: 74.1 MB (74095579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:680fecac34f779446ab0da364757d56e6226717d1c917187cdfe2f30a25d8e71`  
		Last Modified: Sat, 03 Nov 2018 08:51:34 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8298e0b59707f3bed4cca68d56075732f0cbc95d36fc2be9bf091b0237090337`  
		Last Modified: Sat, 03 Nov 2018 08:51:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1` - linux; ppc64le

```console
$ docker pull mariadb@sha256:fd979ddf459979291223264580ce230358473268702b21cd1d3a6ae2a58588b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.1 MB (123069085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b826bebd14b3d143037e293829de90cc7f487207a4b82460e556d33c80055775`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 09:16:11 GMT
ADD file:ff56914a9be1ea1c29222a826731c6d0c874a3d35994269352595d646a5f923c in / 
# Fri, 19 Oct 2018 09:16:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 09:16:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 09:16:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 09:16:27 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 10:37:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 10:38:02 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:38:04 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 10:38:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 10:38:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 10:39:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:39:09 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 10:39:12 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 10:43:10 GMT
ENV MARIADB_MAJOR=10.1
# Sat, 03 Nov 2018 08:29:11 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Sat, 03 Nov 2018 08:29:13 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 03 Nov 2018 08:30:24 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 03 Nov 2018 08:30:26 GMT
VOLUME [/var/lib/mysql]
# Sat, 03 Nov 2018 08:30:26 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Sat, 03 Nov 2018 08:30:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Nov 2018 08:30:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Nov 2018 08:30:31 GMT
EXPOSE 3306/tcp
# Sat, 03 Nov 2018 08:30:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2c4fd606dee3befde0392952ad523fad88d460aed9ae927ff1037138cd79ed3f`  
		Last Modified: Fri, 19 Oct 2018 09:18:54 GMT  
		Size: 35.5 MB (35472905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:324762f962b9ba756f04453b96c926ea414b65dfdb3ef0c26f2336e60f231c5a`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f2857f1765b3e764add78aa519c6bef4827b9973650565d969b580c9bd2d82`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3aa3f305b3eedf728fcddc37359479689d1fdaadc23d2bad1e087216ac715a`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a25f8f65f53811a56b86889363b4a8e0c5d4e50cc1319ad941e35b66bd92e1b`  
		Last Modified: Fri, 19 Oct 2018 10:52:50 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f7c641dcf476450a965a769264b108fd02f3781b9339748d6860e2082804e0`  
		Last Modified: Fri, 19 Oct 2018 10:52:51 GMT  
		Size: 5.6 MB (5602718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff124325ca8aa33092324e536fdd0e3fb6876a90c36db077368eb6417f46de8a`  
		Last Modified: Fri, 19 Oct 2018 10:52:48 GMT  
		Size: 831.6 KB (831578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1b1972ff54a31f4be6c83b4786f61aa5505e789b72f20b8eb5cb9d7e13304b`  
		Last Modified: Fri, 19 Oct 2018 10:52:48 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e32b8146841fb5ed6f7ecc74f2f032b4ed0eb91ed95fb70fb14289254f1175e`  
		Last Modified: Fri, 19 Oct 2018 10:52:50 GMT  
		Size: 2.8 MB (2838872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf432a9e41120d614cbcafc06f98253ebf8abb40b6baf1eb055fbf7b5bb6e0d0`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6429ecde7e8e52dc8d3ba69bed904e0412cdb1d509ac6433432fbc2e5db8a41c`  
		Last Modified: Sat, 03 Nov 2018 08:33:14 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d26fa915ff11832b0f59ffcf1c18cae1fc034f35810d4a00dc16e8ccd1612e6`  
		Last Modified: Sat, 03 Nov 2018 08:33:34 GMT  
		Size: 78.3 MB (78291170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1085c08a0e3ff5a36f24cacc0fec4adc3dac547246b8df1c0176aeea950db39f`  
		Last Modified: Sat, 03 Nov 2018 08:33:14 GMT  
		Size: 2.6 KB (2601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56df289aa6fce6dc5bf52a8c7e7f01d75f2c67e0184397a48f404fda1f84a73`  
		Last Modified: Sat, 03 Nov 2018 08:33:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.37`

```console
$ docker pull mariadb@sha256:de35d15c442c608584e0792ef00a9fe4d44157c106b3915413378b53c241726b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1.37` - linux; amd64

```console
$ docker pull mariadb@sha256:55d3cf983d2dc01a5d293aa9912bc73c72e0108a5df0db797554b1b51d3ec816
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118419997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c0c4475a0aef267af1314e1c404cd66c6fcfd08ba4df456168f88cf97c4d57`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 00:47:54 GMT
ADD file:bcd068f67af2788dbd57729c0c8193f022ec5c37fefb8704390c59081152e6fc in / 
# Fri, 19 Oct 2018 00:47:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:47:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:47:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:47:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:36:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 01:36:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:36:46 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 01:36:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 01:36:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 01:37:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:37:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 01:37:13 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 01:38:32 GMT
ENV MARIADB_MAJOR=10.1
# Sat, 03 Nov 2018 00:20:58 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Sat, 03 Nov 2018 00:20:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 03 Nov 2018 00:21:47 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 03 Nov 2018 00:21:49 GMT
VOLUME [/var/lib/mysql]
# Sat, 03 Nov 2018 00:21:50 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Sat, 03 Nov 2018 00:22:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Nov 2018 00:22:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Nov 2018 00:22:01 GMT
EXPOSE 3306/tcp
# Sat, 03 Nov 2018 00:22:02 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:473ede7ed136b710ab2dd51579af038b7d00fbbf6a1790c6294c93666203c0a6`  
		Last Modified: Fri, 19 Oct 2018 00:24:53 GMT  
		Size: 32.0 MB (32034160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46b5fa4d940569e49988515c1ea0295f56d0a16228d8f854e27613f467ec892`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ae3df89c92cb1d20e9c09f499e693d3a8a8cef161f7158f7a9a3b5d06e4ef2`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1eed27cadec5de8051d56697b0b67527e4076deedceefb41b7b2ea9b900459`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7571426e9fed20247bade7966bd042c340e3e5c3a15865b868825303e9897c4`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba27abd0643114e14441df27dcccc9843cf22ce9526fb09298d3b0d2cf48614`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 4.8 MB (4803626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfc1e8ac8a082121335186f4161cde2b91a4909d42585f21d143746a4103313`  
		Last Modified: Fri, 19 Oct 2018 01:41:51 GMT  
		Size: 863.1 KB (863078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01fbcb1aaebfc637b98ad756c72b5d62770875830b14c0ec9c0ae4dec2da6186`  
		Last Modified: Fri, 19 Oct 2018 01:41:51 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c112e7b58a2b30aff61f6535bb4f8d80d6ba2c5162747b241aac86385710c7c`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 3.0 MB (2956705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0418b243428b9877bfad06fe8900646fc20513fba2be436fb3f0d90d486f17`  
		Last Modified: Fri, 19 Oct 2018 01:41:50 GMT  
		Size: 25.1 KB (25127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d8610c995059d55176cc75a12621426c7ad59697d5914f9b906c42e6b92a95`  
		Last Modified: Sat, 03 Nov 2018 00:24:24 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21775f04b1dc034370f22f0570c5e9ff64528f895e328651976e8a111dbec27d`  
		Last Modified: Sat, 03 Nov 2018 00:24:39 GMT  
		Size: 77.7 MB (77730698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fbb96f5e58c39566a4ff83feafe0592078215fbc08e3f216c86215fb86dfa1f`  
		Last Modified: Sat, 03 Nov 2018 00:24:25 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85df5bee459695790111c6193795409a79702b2ff9cbbb1e2399e2628bc55ce`  
		Last Modified: Sat, 03 Nov 2018 00:24:25 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.37` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:30e12b56da1c8695174dca33148006e668c8c09c1a504d276bb742bbfe331708
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110868933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beb504d1d4806ffd2046982d82d686c47215164029e2d3937e11cd7feccc078c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 11:20:49 GMT
ADD file:110950580db69973226966e62607ac770285caf76a247ce5a8c606c65aa04b50 in / 
# Fri, 19 Oct 2018 11:20:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 11:20:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 11:20:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 11:20:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 12:56:42 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 12:57:15 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:57:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 12:57:43 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 12:57:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 12:58:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:58:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 12:58:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 13:05:24 GMT
ENV MARIADB_MAJOR=10.1
# Sat, 03 Nov 2018 08:46:49 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Sat, 03 Nov 2018 08:46:54 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 03 Nov 2018 08:48:34 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 03 Nov 2018 08:48:35 GMT
VOLUME [/var/lib/mysql]
# Sat, 03 Nov 2018 08:48:36 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Sat, 03 Nov 2018 08:48:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Nov 2018 08:48:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Nov 2018 08:48:41 GMT
EXPOSE 3306/tcp
# Sat, 03 Nov 2018 08:48:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:71878b774cb38a9ed46024ada7a9e0634060697119a8c4c07c611646264513f3`  
		Last Modified: Fri, 19 Oct 2018 11:23:39 GMT  
		Size: 28.8 MB (28833238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1b922a83c7f524b935e8e6b9d738697762972d95fce4c7c269f5cd2c754055`  
		Last Modified: Fri, 19 Oct 2018 11:23:28 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab46b3e1d46e0d1ef143520251afe8bc630c0ab04c2dbf8ac097c7007aaa85f`  
		Last Modified: Fri, 19 Oct 2018 11:23:28 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169c13f4edfd32451d6658b4c4c8176b38f232d0a3de07d2a9ca253c2c2848ba`  
		Last Modified: Fri, 19 Oct 2018 11:23:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515fd1949dab7c46ef13b4d135db3637172d5bc7856e32cc1423fe68425d0d91`  
		Last Modified: Fri, 19 Oct 2018 13:14:00 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e017b2874c4be515a55c04d9a82029537983bbadd8ac3841eae5bd173251cd3`  
		Last Modified: Fri, 19 Oct 2018 13:14:00 GMT  
		Size: 4.4 MB (4380212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f6d036cdfc908e4c19c80a7b6df55f1727bf6ae1bad70f4507dfaa5221feae`  
		Last Modified: Fri, 19 Oct 2018 13:13:58 GMT  
		Size: 829.7 KB (829666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f0872339b3202f0e2b0fa21bf4717b18fbca80f0c689505dca20410790e42e`  
		Last Modified: Fri, 19 Oct 2018 13:13:58 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c19d59e0bda178cae23994ab09172d8894e31f39d61fcd3ac7f2649a1d0631`  
		Last Modified: Fri, 19 Oct 2018 13:13:59 GMT  
		Size: 2.7 MB (2698485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9bf97e7f7714767a7ef8fcbb779ed389f53238950cc3b2cf1236a3139ca289d`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77d6c67134d82c2c283343583017c79704419d606d0ccba8a870122d322c6a5`  
		Last Modified: Sat, 03 Nov 2018 08:51:35 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a378de13211f113fafc4106800d7b81df81016889292652b56f2962db082b0`  
		Last Modified: Sat, 03 Nov 2018 08:52:05 GMT  
		Size: 74.1 MB (74095579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:680fecac34f779446ab0da364757d56e6226717d1c917187cdfe2f30a25d8e71`  
		Last Modified: Sat, 03 Nov 2018 08:51:34 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8298e0b59707f3bed4cca68d56075732f0cbc95d36fc2be9bf091b0237090337`  
		Last Modified: Sat, 03 Nov 2018 08:51:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.37` - linux; ppc64le

```console
$ docker pull mariadb@sha256:fd979ddf459979291223264580ce230358473268702b21cd1d3a6ae2a58588b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.1 MB (123069085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b826bebd14b3d143037e293829de90cc7f487207a4b82460e556d33c80055775`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 09:16:11 GMT
ADD file:ff56914a9be1ea1c29222a826731c6d0c874a3d35994269352595d646a5f923c in / 
# Fri, 19 Oct 2018 09:16:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 09:16:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 09:16:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 09:16:27 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 10:37:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 10:38:02 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:38:04 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 10:38:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 10:38:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 10:39:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:39:09 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 10:39:12 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 10:43:10 GMT
ENV MARIADB_MAJOR=10.1
# Sat, 03 Nov 2018 08:29:11 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Sat, 03 Nov 2018 08:29:13 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 03 Nov 2018 08:30:24 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 03 Nov 2018 08:30:26 GMT
VOLUME [/var/lib/mysql]
# Sat, 03 Nov 2018 08:30:26 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Sat, 03 Nov 2018 08:30:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Nov 2018 08:30:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Nov 2018 08:30:31 GMT
EXPOSE 3306/tcp
# Sat, 03 Nov 2018 08:30:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2c4fd606dee3befde0392952ad523fad88d460aed9ae927ff1037138cd79ed3f`  
		Last Modified: Fri, 19 Oct 2018 09:18:54 GMT  
		Size: 35.5 MB (35472905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:324762f962b9ba756f04453b96c926ea414b65dfdb3ef0c26f2336e60f231c5a`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f2857f1765b3e764add78aa519c6bef4827b9973650565d969b580c9bd2d82`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3aa3f305b3eedf728fcddc37359479689d1fdaadc23d2bad1e087216ac715a`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a25f8f65f53811a56b86889363b4a8e0c5d4e50cc1319ad941e35b66bd92e1b`  
		Last Modified: Fri, 19 Oct 2018 10:52:50 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f7c641dcf476450a965a769264b108fd02f3781b9339748d6860e2082804e0`  
		Last Modified: Fri, 19 Oct 2018 10:52:51 GMT  
		Size: 5.6 MB (5602718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff124325ca8aa33092324e536fdd0e3fb6876a90c36db077368eb6417f46de8a`  
		Last Modified: Fri, 19 Oct 2018 10:52:48 GMT  
		Size: 831.6 KB (831578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1b1972ff54a31f4be6c83b4786f61aa5505e789b72f20b8eb5cb9d7e13304b`  
		Last Modified: Fri, 19 Oct 2018 10:52:48 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e32b8146841fb5ed6f7ecc74f2f032b4ed0eb91ed95fb70fb14289254f1175e`  
		Last Modified: Fri, 19 Oct 2018 10:52:50 GMT  
		Size: 2.8 MB (2838872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf432a9e41120d614cbcafc06f98253ebf8abb40b6baf1eb055fbf7b5bb6e0d0`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6429ecde7e8e52dc8d3ba69bed904e0412cdb1d509ac6433432fbc2e5db8a41c`  
		Last Modified: Sat, 03 Nov 2018 08:33:14 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d26fa915ff11832b0f59ffcf1c18cae1fc034f35810d4a00dc16e8ccd1612e6`  
		Last Modified: Sat, 03 Nov 2018 08:33:34 GMT  
		Size: 78.3 MB (78291170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1085c08a0e3ff5a36f24cacc0fec4adc3dac547246b8df1c0176aeea950db39f`  
		Last Modified: Sat, 03 Nov 2018 08:33:14 GMT  
		Size: 2.6 KB (2601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56df289aa6fce6dc5bf52a8c7e7f01d75f2c67e0184397a48f404fda1f84a73`  
		Last Modified: Sat, 03 Nov 2018 08:33:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.37-bionic`

```console
$ docker pull mariadb@sha256:de35d15c442c608584e0792ef00a9fe4d44157c106b3915413378b53c241726b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1.37-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:55d3cf983d2dc01a5d293aa9912bc73c72e0108a5df0db797554b1b51d3ec816
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118419997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c0c4475a0aef267af1314e1c404cd66c6fcfd08ba4df456168f88cf97c4d57`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 00:47:54 GMT
ADD file:bcd068f67af2788dbd57729c0c8193f022ec5c37fefb8704390c59081152e6fc in / 
# Fri, 19 Oct 2018 00:47:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:47:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:47:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:47:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:36:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 01:36:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:36:46 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 01:36:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 01:36:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 01:37:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:37:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 01:37:13 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 01:38:32 GMT
ENV MARIADB_MAJOR=10.1
# Sat, 03 Nov 2018 00:20:58 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Sat, 03 Nov 2018 00:20:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 03 Nov 2018 00:21:47 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 03 Nov 2018 00:21:49 GMT
VOLUME [/var/lib/mysql]
# Sat, 03 Nov 2018 00:21:50 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Sat, 03 Nov 2018 00:22:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Nov 2018 00:22:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Nov 2018 00:22:01 GMT
EXPOSE 3306/tcp
# Sat, 03 Nov 2018 00:22:02 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:473ede7ed136b710ab2dd51579af038b7d00fbbf6a1790c6294c93666203c0a6`  
		Last Modified: Fri, 19 Oct 2018 00:24:53 GMT  
		Size: 32.0 MB (32034160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46b5fa4d940569e49988515c1ea0295f56d0a16228d8f854e27613f467ec892`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ae3df89c92cb1d20e9c09f499e693d3a8a8cef161f7158f7a9a3b5d06e4ef2`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1eed27cadec5de8051d56697b0b67527e4076deedceefb41b7b2ea9b900459`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7571426e9fed20247bade7966bd042c340e3e5c3a15865b868825303e9897c4`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba27abd0643114e14441df27dcccc9843cf22ce9526fb09298d3b0d2cf48614`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 4.8 MB (4803626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfc1e8ac8a082121335186f4161cde2b91a4909d42585f21d143746a4103313`  
		Last Modified: Fri, 19 Oct 2018 01:41:51 GMT  
		Size: 863.1 KB (863078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01fbcb1aaebfc637b98ad756c72b5d62770875830b14c0ec9c0ae4dec2da6186`  
		Last Modified: Fri, 19 Oct 2018 01:41:51 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c112e7b58a2b30aff61f6535bb4f8d80d6ba2c5162747b241aac86385710c7c`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 3.0 MB (2956705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0418b243428b9877bfad06fe8900646fc20513fba2be436fb3f0d90d486f17`  
		Last Modified: Fri, 19 Oct 2018 01:41:50 GMT  
		Size: 25.1 KB (25127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d8610c995059d55176cc75a12621426c7ad59697d5914f9b906c42e6b92a95`  
		Last Modified: Sat, 03 Nov 2018 00:24:24 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21775f04b1dc034370f22f0570c5e9ff64528f895e328651976e8a111dbec27d`  
		Last Modified: Sat, 03 Nov 2018 00:24:39 GMT  
		Size: 77.7 MB (77730698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fbb96f5e58c39566a4ff83feafe0592078215fbc08e3f216c86215fb86dfa1f`  
		Last Modified: Sat, 03 Nov 2018 00:24:25 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85df5bee459695790111c6193795409a79702b2ff9cbbb1e2399e2628bc55ce`  
		Last Modified: Sat, 03 Nov 2018 00:24:25 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.37-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:30e12b56da1c8695174dca33148006e668c8c09c1a504d276bb742bbfe331708
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110868933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beb504d1d4806ffd2046982d82d686c47215164029e2d3937e11cd7feccc078c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 11:20:49 GMT
ADD file:110950580db69973226966e62607ac770285caf76a247ce5a8c606c65aa04b50 in / 
# Fri, 19 Oct 2018 11:20:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 11:20:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 11:20:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 11:20:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 12:56:42 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 12:57:15 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:57:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 12:57:43 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 12:57:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 12:58:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:58:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 12:58:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 13:05:24 GMT
ENV MARIADB_MAJOR=10.1
# Sat, 03 Nov 2018 08:46:49 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Sat, 03 Nov 2018 08:46:54 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 03 Nov 2018 08:48:34 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 03 Nov 2018 08:48:35 GMT
VOLUME [/var/lib/mysql]
# Sat, 03 Nov 2018 08:48:36 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Sat, 03 Nov 2018 08:48:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Nov 2018 08:48:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Nov 2018 08:48:41 GMT
EXPOSE 3306/tcp
# Sat, 03 Nov 2018 08:48:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:71878b774cb38a9ed46024ada7a9e0634060697119a8c4c07c611646264513f3`  
		Last Modified: Fri, 19 Oct 2018 11:23:39 GMT  
		Size: 28.8 MB (28833238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1b922a83c7f524b935e8e6b9d738697762972d95fce4c7c269f5cd2c754055`  
		Last Modified: Fri, 19 Oct 2018 11:23:28 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab46b3e1d46e0d1ef143520251afe8bc630c0ab04c2dbf8ac097c7007aaa85f`  
		Last Modified: Fri, 19 Oct 2018 11:23:28 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169c13f4edfd32451d6658b4c4c8176b38f232d0a3de07d2a9ca253c2c2848ba`  
		Last Modified: Fri, 19 Oct 2018 11:23:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515fd1949dab7c46ef13b4d135db3637172d5bc7856e32cc1423fe68425d0d91`  
		Last Modified: Fri, 19 Oct 2018 13:14:00 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e017b2874c4be515a55c04d9a82029537983bbadd8ac3841eae5bd173251cd3`  
		Last Modified: Fri, 19 Oct 2018 13:14:00 GMT  
		Size: 4.4 MB (4380212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f6d036cdfc908e4c19c80a7b6df55f1727bf6ae1bad70f4507dfaa5221feae`  
		Last Modified: Fri, 19 Oct 2018 13:13:58 GMT  
		Size: 829.7 KB (829666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f0872339b3202f0e2b0fa21bf4717b18fbca80f0c689505dca20410790e42e`  
		Last Modified: Fri, 19 Oct 2018 13:13:58 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c19d59e0bda178cae23994ab09172d8894e31f39d61fcd3ac7f2649a1d0631`  
		Last Modified: Fri, 19 Oct 2018 13:13:59 GMT  
		Size: 2.7 MB (2698485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9bf97e7f7714767a7ef8fcbb779ed389f53238950cc3b2cf1236a3139ca289d`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77d6c67134d82c2c283343583017c79704419d606d0ccba8a870122d322c6a5`  
		Last Modified: Sat, 03 Nov 2018 08:51:35 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a378de13211f113fafc4106800d7b81df81016889292652b56f2962db082b0`  
		Last Modified: Sat, 03 Nov 2018 08:52:05 GMT  
		Size: 74.1 MB (74095579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:680fecac34f779446ab0da364757d56e6226717d1c917187cdfe2f30a25d8e71`  
		Last Modified: Sat, 03 Nov 2018 08:51:34 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8298e0b59707f3bed4cca68d56075732f0cbc95d36fc2be9bf091b0237090337`  
		Last Modified: Sat, 03 Nov 2018 08:51:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.37-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:fd979ddf459979291223264580ce230358473268702b21cd1d3a6ae2a58588b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.1 MB (123069085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b826bebd14b3d143037e293829de90cc7f487207a4b82460e556d33c80055775`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 09:16:11 GMT
ADD file:ff56914a9be1ea1c29222a826731c6d0c874a3d35994269352595d646a5f923c in / 
# Fri, 19 Oct 2018 09:16:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 09:16:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 09:16:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 09:16:27 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 10:37:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 10:38:02 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:38:04 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 10:38:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 10:38:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 10:39:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:39:09 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 10:39:12 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 10:43:10 GMT
ENV MARIADB_MAJOR=10.1
# Sat, 03 Nov 2018 08:29:11 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Sat, 03 Nov 2018 08:29:13 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 03 Nov 2018 08:30:24 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 03 Nov 2018 08:30:26 GMT
VOLUME [/var/lib/mysql]
# Sat, 03 Nov 2018 08:30:26 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Sat, 03 Nov 2018 08:30:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Nov 2018 08:30:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Nov 2018 08:30:31 GMT
EXPOSE 3306/tcp
# Sat, 03 Nov 2018 08:30:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2c4fd606dee3befde0392952ad523fad88d460aed9ae927ff1037138cd79ed3f`  
		Last Modified: Fri, 19 Oct 2018 09:18:54 GMT  
		Size: 35.5 MB (35472905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:324762f962b9ba756f04453b96c926ea414b65dfdb3ef0c26f2336e60f231c5a`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f2857f1765b3e764add78aa519c6bef4827b9973650565d969b580c9bd2d82`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3aa3f305b3eedf728fcddc37359479689d1fdaadc23d2bad1e087216ac715a`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a25f8f65f53811a56b86889363b4a8e0c5d4e50cc1319ad941e35b66bd92e1b`  
		Last Modified: Fri, 19 Oct 2018 10:52:50 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f7c641dcf476450a965a769264b108fd02f3781b9339748d6860e2082804e0`  
		Last Modified: Fri, 19 Oct 2018 10:52:51 GMT  
		Size: 5.6 MB (5602718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff124325ca8aa33092324e536fdd0e3fb6876a90c36db077368eb6417f46de8a`  
		Last Modified: Fri, 19 Oct 2018 10:52:48 GMT  
		Size: 831.6 KB (831578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1b1972ff54a31f4be6c83b4786f61aa5505e789b72f20b8eb5cb9d7e13304b`  
		Last Modified: Fri, 19 Oct 2018 10:52:48 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e32b8146841fb5ed6f7ecc74f2f032b4ed0eb91ed95fb70fb14289254f1175e`  
		Last Modified: Fri, 19 Oct 2018 10:52:50 GMT  
		Size: 2.8 MB (2838872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf432a9e41120d614cbcafc06f98253ebf8abb40b6baf1eb055fbf7b5bb6e0d0`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6429ecde7e8e52dc8d3ba69bed904e0412cdb1d509ac6433432fbc2e5db8a41c`  
		Last Modified: Sat, 03 Nov 2018 08:33:14 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d26fa915ff11832b0f59ffcf1c18cae1fc034f35810d4a00dc16e8ccd1612e6`  
		Last Modified: Sat, 03 Nov 2018 08:33:34 GMT  
		Size: 78.3 MB (78291170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1085c08a0e3ff5a36f24cacc0fec4adc3dac547246b8df1c0176aeea950db39f`  
		Last Modified: Sat, 03 Nov 2018 08:33:14 GMT  
		Size: 2.6 KB (2601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56df289aa6fce6dc5bf52a8c7e7f01d75f2c67e0184397a48f404fda1f84a73`  
		Last Modified: Sat, 03 Nov 2018 08:33:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1-bionic`

```console
$ docker pull mariadb@sha256:de35d15c442c608584e0792ef00a9fe4d44157c106b3915413378b53c241726b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:55d3cf983d2dc01a5d293aa9912bc73c72e0108a5df0db797554b1b51d3ec816
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118419997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c0c4475a0aef267af1314e1c404cd66c6fcfd08ba4df456168f88cf97c4d57`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 00:47:54 GMT
ADD file:bcd068f67af2788dbd57729c0c8193f022ec5c37fefb8704390c59081152e6fc in / 
# Fri, 19 Oct 2018 00:47:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:47:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:47:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:47:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:36:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 01:36:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:36:46 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 01:36:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 01:36:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 01:37:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:37:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 01:37:13 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 01:38:32 GMT
ENV MARIADB_MAJOR=10.1
# Sat, 03 Nov 2018 00:20:58 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Sat, 03 Nov 2018 00:20:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 03 Nov 2018 00:21:47 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 03 Nov 2018 00:21:49 GMT
VOLUME [/var/lib/mysql]
# Sat, 03 Nov 2018 00:21:50 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Sat, 03 Nov 2018 00:22:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Nov 2018 00:22:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Nov 2018 00:22:01 GMT
EXPOSE 3306/tcp
# Sat, 03 Nov 2018 00:22:02 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:473ede7ed136b710ab2dd51579af038b7d00fbbf6a1790c6294c93666203c0a6`  
		Last Modified: Fri, 19 Oct 2018 00:24:53 GMT  
		Size: 32.0 MB (32034160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46b5fa4d940569e49988515c1ea0295f56d0a16228d8f854e27613f467ec892`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ae3df89c92cb1d20e9c09f499e693d3a8a8cef161f7158f7a9a3b5d06e4ef2`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1eed27cadec5de8051d56697b0b67527e4076deedceefb41b7b2ea9b900459`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7571426e9fed20247bade7966bd042c340e3e5c3a15865b868825303e9897c4`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba27abd0643114e14441df27dcccc9843cf22ce9526fb09298d3b0d2cf48614`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 4.8 MB (4803626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfc1e8ac8a082121335186f4161cde2b91a4909d42585f21d143746a4103313`  
		Last Modified: Fri, 19 Oct 2018 01:41:51 GMT  
		Size: 863.1 KB (863078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01fbcb1aaebfc637b98ad756c72b5d62770875830b14c0ec9c0ae4dec2da6186`  
		Last Modified: Fri, 19 Oct 2018 01:41:51 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c112e7b58a2b30aff61f6535bb4f8d80d6ba2c5162747b241aac86385710c7c`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 3.0 MB (2956705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0418b243428b9877bfad06fe8900646fc20513fba2be436fb3f0d90d486f17`  
		Last Modified: Fri, 19 Oct 2018 01:41:50 GMT  
		Size: 25.1 KB (25127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d8610c995059d55176cc75a12621426c7ad59697d5914f9b906c42e6b92a95`  
		Last Modified: Sat, 03 Nov 2018 00:24:24 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21775f04b1dc034370f22f0570c5e9ff64528f895e328651976e8a111dbec27d`  
		Last Modified: Sat, 03 Nov 2018 00:24:39 GMT  
		Size: 77.7 MB (77730698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fbb96f5e58c39566a4ff83feafe0592078215fbc08e3f216c86215fb86dfa1f`  
		Last Modified: Sat, 03 Nov 2018 00:24:25 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85df5bee459695790111c6193795409a79702b2ff9cbbb1e2399e2628bc55ce`  
		Last Modified: Sat, 03 Nov 2018 00:24:25 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:30e12b56da1c8695174dca33148006e668c8c09c1a504d276bb742bbfe331708
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110868933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beb504d1d4806ffd2046982d82d686c47215164029e2d3937e11cd7feccc078c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 11:20:49 GMT
ADD file:110950580db69973226966e62607ac770285caf76a247ce5a8c606c65aa04b50 in / 
# Fri, 19 Oct 2018 11:20:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 11:20:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 11:20:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 11:20:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 12:56:42 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 12:57:15 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:57:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 12:57:43 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 12:57:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 12:58:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:58:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 12:58:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 13:05:24 GMT
ENV MARIADB_MAJOR=10.1
# Sat, 03 Nov 2018 08:46:49 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Sat, 03 Nov 2018 08:46:54 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 03 Nov 2018 08:48:34 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 03 Nov 2018 08:48:35 GMT
VOLUME [/var/lib/mysql]
# Sat, 03 Nov 2018 08:48:36 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Sat, 03 Nov 2018 08:48:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Nov 2018 08:48:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Nov 2018 08:48:41 GMT
EXPOSE 3306/tcp
# Sat, 03 Nov 2018 08:48:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:71878b774cb38a9ed46024ada7a9e0634060697119a8c4c07c611646264513f3`  
		Last Modified: Fri, 19 Oct 2018 11:23:39 GMT  
		Size: 28.8 MB (28833238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1b922a83c7f524b935e8e6b9d738697762972d95fce4c7c269f5cd2c754055`  
		Last Modified: Fri, 19 Oct 2018 11:23:28 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab46b3e1d46e0d1ef143520251afe8bc630c0ab04c2dbf8ac097c7007aaa85f`  
		Last Modified: Fri, 19 Oct 2018 11:23:28 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169c13f4edfd32451d6658b4c4c8176b38f232d0a3de07d2a9ca253c2c2848ba`  
		Last Modified: Fri, 19 Oct 2018 11:23:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515fd1949dab7c46ef13b4d135db3637172d5bc7856e32cc1423fe68425d0d91`  
		Last Modified: Fri, 19 Oct 2018 13:14:00 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e017b2874c4be515a55c04d9a82029537983bbadd8ac3841eae5bd173251cd3`  
		Last Modified: Fri, 19 Oct 2018 13:14:00 GMT  
		Size: 4.4 MB (4380212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f6d036cdfc908e4c19c80a7b6df55f1727bf6ae1bad70f4507dfaa5221feae`  
		Last Modified: Fri, 19 Oct 2018 13:13:58 GMT  
		Size: 829.7 KB (829666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f0872339b3202f0e2b0fa21bf4717b18fbca80f0c689505dca20410790e42e`  
		Last Modified: Fri, 19 Oct 2018 13:13:58 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c19d59e0bda178cae23994ab09172d8894e31f39d61fcd3ac7f2649a1d0631`  
		Last Modified: Fri, 19 Oct 2018 13:13:59 GMT  
		Size: 2.7 MB (2698485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9bf97e7f7714767a7ef8fcbb779ed389f53238950cc3b2cf1236a3139ca289d`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77d6c67134d82c2c283343583017c79704419d606d0ccba8a870122d322c6a5`  
		Last Modified: Sat, 03 Nov 2018 08:51:35 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a378de13211f113fafc4106800d7b81df81016889292652b56f2962db082b0`  
		Last Modified: Sat, 03 Nov 2018 08:52:05 GMT  
		Size: 74.1 MB (74095579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:680fecac34f779446ab0da364757d56e6226717d1c917187cdfe2f30a25d8e71`  
		Last Modified: Sat, 03 Nov 2018 08:51:34 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8298e0b59707f3bed4cca68d56075732f0cbc95d36fc2be9bf091b0237090337`  
		Last Modified: Sat, 03 Nov 2018 08:51:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:fd979ddf459979291223264580ce230358473268702b21cd1d3a6ae2a58588b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.1 MB (123069085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b826bebd14b3d143037e293829de90cc7f487207a4b82460e556d33c80055775`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 09:16:11 GMT
ADD file:ff56914a9be1ea1c29222a826731c6d0c874a3d35994269352595d646a5f923c in / 
# Fri, 19 Oct 2018 09:16:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 09:16:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 09:16:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 09:16:27 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 10:37:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 10:38:02 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:38:04 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 10:38:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 10:38:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 10:39:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:39:09 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 10:39:12 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 10:43:10 GMT
ENV MARIADB_MAJOR=10.1
# Sat, 03 Nov 2018 08:29:11 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Sat, 03 Nov 2018 08:29:13 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 03 Nov 2018 08:30:24 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 03 Nov 2018 08:30:26 GMT
VOLUME [/var/lib/mysql]
# Sat, 03 Nov 2018 08:30:26 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Sat, 03 Nov 2018 08:30:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Nov 2018 08:30:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Nov 2018 08:30:31 GMT
EXPOSE 3306/tcp
# Sat, 03 Nov 2018 08:30:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2c4fd606dee3befde0392952ad523fad88d460aed9ae927ff1037138cd79ed3f`  
		Last Modified: Fri, 19 Oct 2018 09:18:54 GMT  
		Size: 35.5 MB (35472905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:324762f962b9ba756f04453b96c926ea414b65dfdb3ef0c26f2336e60f231c5a`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f2857f1765b3e764add78aa519c6bef4827b9973650565d969b580c9bd2d82`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3aa3f305b3eedf728fcddc37359479689d1fdaadc23d2bad1e087216ac715a`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a25f8f65f53811a56b86889363b4a8e0c5d4e50cc1319ad941e35b66bd92e1b`  
		Last Modified: Fri, 19 Oct 2018 10:52:50 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f7c641dcf476450a965a769264b108fd02f3781b9339748d6860e2082804e0`  
		Last Modified: Fri, 19 Oct 2018 10:52:51 GMT  
		Size: 5.6 MB (5602718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff124325ca8aa33092324e536fdd0e3fb6876a90c36db077368eb6417f46de8a`  
		Last Modified: Fri, 19 Oct 2018 10:52:48 GMT  
		Size: 831.6 KB (831578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1b1972ff54a31f4be6c83b4786f61aa5505e789b72f20b8eb5cb9d7e13304b`  
		Last Modified: Fri, 19 Oct 2018 10:52:48 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e32b8146841fb5ed6f7ecc74f2f032b4ed0eb91ed95fb70fb14289254f1175e`  
		Last Modified: Fri, 19 Oct 2018 10:52:50 GMT  
		Size: 2.8 MB (2838872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf432a9e41120d614cbcafc06f98253ebf8abb40b6baf1eb055fbf7b5bb6e0d0`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6429ecde7e8e52dc8d3ba69bed904e0412cdb1d509ac6433432fbc2e5db8a41c`  
		Last Modified: Sat, 03 Nov 2018 08:33:14 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d26fa915ff11832b0f59ffcf1c18cae1fc034f35810d4a00dc16e8ccd1612e6`  
		Last Modified: Sat, 03 Nov 2018 08:33:34 GMT  
		Size: 78.3 MB (78291170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1085c08a0e3ff5a36f24cacc0fec4adc3dac547246b8df1c0176aeea950db39f`  
		Last Modified: Sat, 03 Nov 2018 08:33:14 GMT  
		Size: 2.6 KB (2601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56df289aa6fce6dc5bf52a8c7e7f01d75f2c67e0184397a48f404fda1f84a73`  
		Last Modified: Sat, 03 Nov 2018 08:33:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2`

```console
$ docker pull mariadb@sha256:25cc7e9b4d0029168b25cbc7d303710ab5c7b52087bd04f0cae605d3ab5f9972
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.2` - linux; amd64

```console
$ docker pull mariadb@sha256:7f809f208f4b22530a04487a691d0cfb66801341b748a9c48705766babd76ae1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.0 MB (113999197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eb9b7a1f1adb96e565c1a0e71cc188a17c98d61062e54030752d01fcb292c12`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 00:47:54 GMT
ADD file:bcd068f67af2788dbd57729c0c8193f022ec5c37fefb8704390c59081152e6fc in / 
# Fri, 19 Oct 2018 00:47:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:47:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:47:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:47:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:36:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 01:36:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:36:46 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 00:26:48 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 00:26:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 00:27:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 00:27:06 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 00:27:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 00:30:20 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 16 Nov 2018 00:30:21 GMT
ENV MARIADB_VERSION=1:10.2.19+maria~bionic
# Fri, 16 Nov 2018 00:30:22 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 00:30:55 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 00:30:55 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 00:30:56 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 00:30:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 00:30:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 00:30:58 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 00:30:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:473ede7ed136b710ab2dd51579af038b7d00fbbf6a1790c6294c93666203c0a6`  
		Last Modified: Fri, 19 Oct 2018 00:24:53 GMT  
		Size: 32.0 MB (32034160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46b5fa4d940569e49988515c1ea0295f56d0a16228d8f854e27613f467ec892`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ae3df89c92cb1d20e9c09f499e693d3a8a8cef161f7158f7a9a3b5d06e4ef2`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1eed27cadec5de8051d56697b0b67527e4076deedceefb41b7b2ea9b900459`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7571426e9fed20247bade7966bd042c340e3e5c3a15865b868825303e9897c4`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba27abd0643114e14441df27dcccc9843cf22ce9526fb09298d3b0d2cf48614`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 4.8 MB (4803626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5742ca02a957788e1bc150563c6ab51f425b6896eefa52d7c80648e71d5072a`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 863.2 KB (863153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c53ea2689ed6ebe83dfc20da72968667fdf229fb0b51d379209a7e2b60b5cc8`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517f1aafa332d31cbcf300b5d4d3a24d464d321ae2693a992bd99f8946f983a0`  
		Last Modified: Fri, 16 Nov 2018 00:38:38 GMT  
		Size: 3.0 MB (2956916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39158f499dbeb666441a43887192563b2096a4f945808aa9e8893c408ce28ce0`  
		Last Modified: Fri, 16 Nov 2018 00:38:35 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af5251492d6b7dc6427c16c3ded531726facb1fa33fcb85d24c4084b949c633`  
		Last Modified: Fri, 16 Nov 2018 00:43:54 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8b54d2ad38a4f15624cd645afcd67e54c4375b1cf1b01964721820639e1dca`  
		Last Modified: Fri, 16 Nov 2018 00:44:18 GMT  
		Size: 73.3 MB (73309521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9852d2cd5bebf4e0b9896d780ba49e713904a73b0a69d490faaecf3f65bfbd9`  
		Last Modified: Fri, 16 Nov 2018 00:43:54 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7839eda7e52bf52881d76b6c4a453851575c1985fc085ce4dce3010a63018e`  
		Last Modified: Fri, 16 Nov 2018 00:43:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.19`

```console
$ docker pull mariadb@sha256:25cc7e9b4d0029168b25cbc7d303710ab5c7b52087bd04f0cae605d3ab5f9972
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.2.19` - linux; amd64

```console
$ docker pull mariadb@sha256:7f809f208f4b22530a04487a691d0cfb66801341b748a9c48705766babd76ae1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.0 MB (113999197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eb9b7a1f1adb96e565c1a0e71cc188a17c98d61062e54030752d01fcb292c12`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 00:47:54 GMT
ADD file:bcd068f67af2788dbd57729c0c8193f022ec5c37fefb8704390c59081152e6fc in / 
# Fri, 19 Oct 2018 00:47:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:47:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:47:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:47:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:36:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 01:36:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:36:46 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 00:26:48 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 00:26:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 00:27:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 00:27:06 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 00:27:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 00:30:20 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 16 Nov 2018 00:30:21 GMT
ENV MARIADB_VERSION=1:10.2.19+maria~bionic
# Fri, 16 Nov 2018 00:30:22 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 00:30:55 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 00:30:55 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 00:30:56 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 00:30:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 00:30:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 00:30:58 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 00:30:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:473ede7ed136b710ab2dd51579af038b7d00fbbf6a1790c6294c93666203c0a6`  
		Last Modified: Fri, 19 Oct 2018 00:24:53 GMT  
		Size: 32.0 MB (32034160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46b5fa4d940569e49988515c1ea0295f56d0a16228d8f854e27613f467ec892`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ae3df89c92cb1d20e9c09f499e693d3a8a8cef161f7158f7a9a3b5d06e4ef2`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1eed27cadec5de8051d56697b0b67527e4076deedceefb41b7b2ea9b900459`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7571426e9fed20247bade7966bd042c340e3e5c3a15865b868825303e9897c4`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba27abd0643114e14441df27dcccc9843cf22ce9526fb09298d3b0d2cf48614`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 4.8 MB (4803626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5742ca02a957788e1bc150563c6ab51f425b6896eefa52d7c80648e71d5072a`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 863.2 KB (863153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c53ea2689ed6ebe83dfc20da72968667fdf229fb0b51d379209a7e2b60b5cc8`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517f1aafa332d31cbcf300b5d4d3a24d464d321ae2693a992bd99f8946f983a0`  
		Last Modified: Fri, 16 Nov 2018 00:38:38 GMT  
		Size: 3.0 MB (2956916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39158f499dbeb666441a43887192563b2096a4f945808aa9e8893c408ce28ce0`  
		Last Modified: Fri, 16 Nov 2018 00:38:35 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af5251492d6b7dc6427c16c3ded531726facb1fa33fcb85d24c4084b949c633`  
		Last Modified: Fri, 16 Nov 2018 00:43:54 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8b54d2ad38a4f15624cd645afcd67e54c4375b1cf1b01964721820639e1dca`  
		Last Modified: Fri, 16 Nov 2018 00:44:18 GMT  
		Size: 73.3 MB (73309521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9852d2cd5bebf4e0b9896d780ba49e713904a73b0a69d490faaecf3f65bfbd9`  
		Last Modified: Fri, 16 Nov 2018 00:43:54 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7839eda7e52bf52881d76b6c4a453851575c1985fc085ce4dce3010a63018e`  
		Last Modified: Fri, 16 Nov 2018 00:43:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.19-bionic`

```console
$ docker pull mariadb@sha256:25cc7e9b4d0029168b25cbc7d303710ab5c7b52087bd04f0cae605d3ab5f9972
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.2.19-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:7f809f208f4b22530a04487a691d0cfb66801341b748a9c48705766babd76ae1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.0 MB (113999197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eb9b7a1f1adb96e565c1a0e71cc188a17c98d61062e54030752d01fcb292c12`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 00:47:54 GMT
ADD file:bcd068f67af2788dbd57729c0c8193f022ec5c37fefb8704390c59081152e6fc in / 
# Fri, 19 Oct 2018 00:47:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:47:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:47:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:47:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:36:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 01:36:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:36:46 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 00:26:48 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 00:26:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 00:27:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 00:27:06 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 00:27:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 00:30:20 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 16 Nov 2018 00:30:21 GMT
ENV MARIADB_VERSION=1:10.2.19+maria~bionic
# Fri, 16 Nov 2018 00:30:22 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 00:30:55 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 00:30:55 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 00:30:56 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 00:30:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 00:30:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 00:30:58 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 00:30:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:473ede7ed136b710ab2dd51579af038b7d00fbbf6a1790c6294c93666203c0a6`  
		Last Modified: Fri, 19 Oct 2018 00:24:53 GMT  
		Size: 32.0 MB (32034160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46b5fa4d940569e49988515c1ea0295f56d0a16228d8f854e27613f467ec892`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ae3df89c92cb1d20e9c09f499e693d3a8a8cef161f7158f7a9a3b5d06e4ef2`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1eed27cadec5de8051d56697b0b67527e4076deedceefb41b7b2ea9b900459`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7571426e9fed20247bade7966bd042c340e3e5c3a15865b868825303e9897c4`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba27abd0643114e14441df27dcccc9843cf22ce9526fb09298d3b0d2cf48614`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 4.8 MB (4803626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5742ca02a957788e1bc150563c6ab51f425b6896eefa52d7c80648e71d5072a`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 863.2 KB (863153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c53ea2689ed6ebe83dfc20da72968667fdf229fb0b51d379209a7e2b60b5cc8`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517f1aafa332d31cbcf300b5d4d3a24d464d321ae2693a992bd99f8946f983a0`  
		Last Modified: Fri, 16 Nov 2018 00:38:38 GMT  
		Size: 3.0 MB (2956916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39158f499dbeb666441a43887192563b2096a4f945808aa9e8893c408ce28ce0`  
		Last Modified: Fri, 16 Nov 2018 00:38:35 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af5251492d6b7dc6427c16c3ded531726facb1fa33fcb85d24c4084b949c633`  
		Last Modified: Fri, 16 Nov 2018 00:43:54 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8b54d2ad38a4f15624cd645afcd67e54c4375b1cf1b01964721820639e1dca`  
		Last Modified: Fri, 16 Nov 2018 00:44:18 GMT  
		Size: 73.3 MB (73309521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9852d2cd5bebf4e0b9896d780ba49e713904a73b0a69d490faaecf3f65bfbd9`  
		Last Modified: Fri, 16 Nov 2018 00:43:54 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7839eda7e52bf52881d76b6c4a453851575c1985fc085ce4dce3010a63018e`  
		Last Modified: Fri, 16 Nov 2018 00:43:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2-bionic`

```console
$ docker pull mariadb@sha256:25cc7e9b4d0029168b25cbc7d303710ab5c7b52087bd04f0cae605d3ab5f9972
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.2-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:7f809f208f4b22530a04487a691d0cfb66801341b748a9c48705766babd76ae1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.0 MB (113999197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eb9b7a1f1adb96e565c1a0e71cc188a17c98d61062e54030752d01fcb292c12`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 00:47:54 GMT
ADD file:bcd068f67af2788dbd57729c0c8193f022ec5c37fefb8704390c59081152e6fc in / 
# Fri, 19 Oct 2018 00:47:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:47:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:47:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:47:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:36:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 01:36:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:36:46 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 00:26:48 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 00:26:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 00:27:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 00:27:06 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 00:27:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 00:30:20 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 16 Nov 2018 00:30:21 GMT
ENV MARIADB_VERSION=1:10.2.19+maria~bionic
# Fri, 16 Nov 2018 00:30:22 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 00:30:55 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 00:30:55 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 00:30:56 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 00:30:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 00:30:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 00:30:58 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 00:30:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:473ede7ed136b710ab2dd51579af038b7d00fbbf6a1790c6294c93666203c0a6`  
		Last Modified: Fri, 19 Oct 2018 00:24:53 GMT  
		Size: 32.0 MB (32034160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46b5fa4d940569e49988515c1ea0295f56d0a16228d8f854e27613f467ec892`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ae3df89c92cb1d20e9c09f499e693d3a8a8cef161f7158f7a9a3b5d06e4ef2`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1eed27cadec5de8051d56697b0b67527e4076deedceefb41b7b2ea9b900459`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7571426e9fed20247bade7966bd042c340e3e5c3a15865b868825303e9897c4`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba27abd0643114e14441df27dcccc9843cf22ce9526fb09298d3b0d2cf48614`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 4.8 MB (4803626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5742ca02a957788e1bc150563c6ab51f425b6896eefa52d7c80648e71d5072a`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 863.2 KB (863153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c53ea2689ed6ebe83dfc20da72968667fdf229fb0b51d379209a7e2b60b5cc8`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517f1aafa332d31cbcf300b5d4d3a24d464d321ae2693a992bd99f8946f983a0`  
		Last Modified: Fri, 16 Nov 2018 00:38:38 GMT  
		Size: 3.0 MB (2956916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39158f499dbeb666441a43887192563b2096a4f945808aa9e8893c408ce28ce0`  
		Last Modified: Fri, 16 Nov 2018 00:38:35 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af5251492d6b7dc6427c16c3ded531726facb1fa33fcb85d24c4084b949c633`  
		Last Modified: Fri, 16 Nov 2018 00:43:54 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8b54d2ad38a4f15624cd645afcd67e54c4375b1cf1b01964721820639e1dca`  
		Last Modified: Fri, 16 Nov 2018 00:44:18 GMT  
		Size: 73.3 MB (73309521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9852d2cd5bebf4e0b9896d780ba49e713904a73b0a69d490faaecf3f65bfbd9`  
		Last Modified: Fri, 16 Nov 2018 00:43:54 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7839eda7e52bf52881d76b6c4a453851575c1985fc085ce4dce3010a63018e`  
		Last Modified: Fri, 16 Nov 2018 00:43:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3`

```console
$ docker pull mariadb@sha256:538a775dc933fc086767010d535f2c59360eec3e1de44df3dcedea1c5724d83a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3` - linux; amd64

```console
$ docker pull mariadb@sha256:5aaefc8d8d03139ba6976b9c4d0772b385004a183e3d789269c717c057e4570e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114945592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95d6852bba5ae4adc374fe563b8a6665032449e9b45e9f133e845fb33d2a09d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 00:47:54 GMT
ADD file:bcd068f67af2788dbd57729c0c8193f022ec5c37fefb8704390c59081152e6fc in / 
# Fri, 19 Oct 2018 00:47:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:47:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:47:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:47:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:36:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 01:36:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:36:46 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 00:26:48 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 00:26:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 00:27:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 00:27:06 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 00:27:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 00:28:37 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 16 Nov 2018 00:28:37 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 16 Nov 2018 00:28:38 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 00:29:10 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 00:29:11 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 00:29:11 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 00:29:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 00:29:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 00:29:13 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 00:29:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:473ede7ed136b710ab2dd51579af038b7d00fbbf6a1790c6294c93666203c0a6`  
		Last Modified: Fri, 19 Oct 2018 00:24:53 GMT  
		Size: 32.0 MB (32034160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46b5fa4d940569e49988515c1ea0295f56d0a16228d8f854e27613f467ec892`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ae3df89c92cb1d20e9c09f499e693d3a8a8cef161f7158f7a9a3b5d06e4ef2`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1eed27cadec5de8051d56697b0b67527e4076deedceefb41b7b2ea9b900459`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7571426e9fed20247bade7966bd042c340e3e5c3a15865b868825303e9897c4`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba27abd0643114e14441df27dcccc9843cf22ce9526fb09298d3b0d2cf48614`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 4.8 MB (4803626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5742ca02a957788e1bc150563c6ab51f425b6896eefa52d7c80648e71d5072a`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 863.2 KB (863153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c53ea2689ed6ebe83dfc20da72968667fdf229fb0b51d379209a7e2b60b5cc8`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517f1aafa332d31cbcf300b5d4d3a24d464d321ae2693a992bd99f8946f983a0`  
		Last Modified: Fri, 16 Nov 2018 00:38:38 GMT  
		Size: 3.0 MB (2956916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39158f499dbeb666441a43887192563b2096a4f945808aa9e8893c408ce28ce0`  
		Last Modified: Fri, 16 Nov 2018 00:38:35 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4368463dd531fb6ee74a2128f9f45adf6f3e7e9801cc6710bc0999b6b5491913`  
		Last Modified: Fri, 16 Nov 2018 00:40:32 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fee7414381d52d22265eb3194d0c2644c9bec509882a7d7b588005c8034118e`  
		Last Modified: Fri, 16 Nov 2018 00:40:54 GMT  
		Size: 74.3 MB (74255917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abdbc91263bba0e1de0514656a04f055208d4e42c1ab8e75bb59f26f24be0f2d`  
		Last Modified: Fri, 16 Nov 2018 00:40:32 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af85e8800b74a4bcf01ad04ca0e2417fd22360d290bcf076b176dbe4e7cc2a8e`  
		Last Modified: Fri, 16 Nov 2018 00:40:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:cafb3462e09f185dccf43fcde7df6cca8f62b4ba94ffc692c413c770a302e5ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (109981339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09aae6549ec885674cbb103553dc4161291e3bec6c6ea1b761f8fe9d905337c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 11:20:49 GMT
ADD file:110950580db69973226966e62607ac770285caf76a247ce5a8c606c65aa04b50 in / 
# Fri, 19 Oct 2018 11:20:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 11:20:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 11:20:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 11:20:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 12:56:42 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 12:57:15 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:57:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 12:57:43 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 12:57:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 12:58:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:58:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 12:58:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 12:58:15 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 19 Oct 2018 12:58:16 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 19 Oct 2018 12:58:19 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 13:00:20 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 13:00:23 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 13:00:24 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 13:00:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 13:00:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 13:00:37 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 13:00:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:71878b774cb38a9ed46024ada7a9e0634060697119a8c4c07c611646264513f3`  
		Last Modified: Fri, 19 Oct 2018 11:23:39 GMT  
		Size: 28.8 MB (28833238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1b922a83c7f524b935e8e6b9d738697762972d95fce4c7c269f5cd2c754055`  
		Last Modified: Fri, 19 Oct 2018 11:23:28 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab46b3e1d46e0d1ef143520251afe8bc630c0ab04c2dbf8ac097c7007aaa85f`  
		Last Modified: Fri, 19 Oct 2018 11:23:28 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169c13f4edfd32451d6658b4c4c8176b38f232d0a3de07d2a9ca253c2c2848ba`  
		Last Modified: Fri, 19 Oct 2018 11:23:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515fd1949dab7c46ef13b4d135db3637172d5bc7856e32cc1423fe68425d0d91`  
		Last Modified: Fri, 19 Oct 2018 13:14:00 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e017b2874c4be515a55c04d9a82029537983bbadd8ac3841eae5bd173251cd3`  
		Last Modified: Fri, 19 Oct 2018 13:14:00 GMT  
		Size: 4.4 MB (4380212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f6d036cdfc908e4c19c80a7b6df55f1727bf6ae1bad70f4507dfaa5221feae`  
		Last Modified: Fri, 19 Oct 2018 13:13:58 GMT  
		Size: 829.7 KB (829666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f0872339b3202f0e2b0fa21bf4717b18fbca80f0c689505dca20410790e42e`  
		Last Modified: Fri, 19 Oct 2018 13:13:58 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c19d59e0bda178cae23994ab09172d8894e31f39d61fcd3ac7f2649a1d0631`  
		Last Modified: Fri, 19 Oct 2018 13:13:59 GMT  
		Size: 2.7 MB (2698485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9bf97e7f7714767a7ef8fcbb779ed389f53238950cc3b2cf1236a3139ca289d`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b57c0a347944d84611e3f728fa815817782bfe00f12d3f624ca741b48b62b5`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f96205fb913d3f84e8767297ed5df17ebc172e32e2fd8852b50c605e01945b`  
		Last Modified: Fri, 19 Oct 2018 13:14:24 GMT  
		Size: 73.2 MB (73207987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6a128f8a53bcf2d62f913bf296a43e9589ffd38f1b2f686f91c98da5e21949`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864536c7189a66f207626d5a6a982cb81f3d3e6331e43afc95a4cee59a0d6fb7`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3` - linux; ppc64le

```console
$ docker pull mariadb@sha256:650111bd3a11cf7e1c2710401afcf58848fe40e16ceb158d5df5d521780d3d94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121966675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e4f94370ebc945cf83d649eca667dade0a27291c2e80be3b9e37878632fd96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 09:16:11 GMT
ADD file:ff56914a9be1ea1c29222a826731c6d0c874a3d35994269352595d646a5f923c in / 
# Fri, 19 Oct 2018 09:16:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 09:16:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 09:16:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 09:16:27 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 10:37:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 10:38:02 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:38:04 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 10:38:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 10:38:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 10:39:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:39:09 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 10:39:12 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 10:39:13 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 19 Oct 2018 10:39:14 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 19 Oct 2018 10:39:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 10:40:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 10:40:44 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 10:40:46 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 10:40:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 10:40:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 10:40:53 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 10:40:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2c4fd606dee3befde0392952ad523fad88d460aed9ae927ff1037138cd79ed3f`  
		Last Modified: Fri, 19 Oct 2018 09:18:54 GMT  
		Size: 35.5 MB (35472905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:324762f962b9ba756f04453b96c926ea414b65dfdb3ef0c26f2336e60f231c5a`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f2857f1765b3e764add78aa519c6bef4827b9973650565d969b580c9bd2d82`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3aa3f305b3eedf728fcddc37359479689d1fdaadc23d2bad1e087216ac715a`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a25f8f65f53811a56b86889363b4a8e0c5d4e50cc1319ad941e35b66bd92e1b`  
		Last Modified: Fri, 19 Oct 2018 10:52:50 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f7c641dcf476450a965a769264b108fd02f3781b9339748d6860e2082804e0`  
		Last Modified: Fri, 19 Oct 2018 10:52:51 GMT  
		Size: 5.6 MB (5602718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff124325ca8aa33092324e536fdd0e3fb6876a90c36db077368eb6417f46de8a`  
		Last Modified: Fri, 19 Oct 2018 10:52:48 GMT  
		Size: 831.6 KB (831578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1b1972ff54a31f4be6c83b4786f61aa5505e789b72f20b8eb5cb9d7e13304b`  
		Last Modified: Fri, 19 Oct 2018 10:52:48 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e32b8146841fb5ed6f7ecc74f2f032b4ed0eb91ed95fb70fb14289254f1175e`  
		Last Modified: Fri, 19 Oct 2018 10:52:50 GMT  
		Size: 2.8 MB (2838872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf432a9e41120d614cbcafc06f98253ebf8abb40b6baf1eb055fbf7b5bb6e0d0`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a82b32856f4db040de7077645364ec02382e29b1a01bbab0363ad3ca7c0ffe6f`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9c36cfa8e72906b803a0631a86059c2d5bbc016ae2af298a170a998782cda3`  
		Last Modified: Fri, 19 Oct 2018 10:53:07 GMT  
		Size: 77.2 MB (77188760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7d52d49c3ae35ff562450c5322dc6faa007fec507c32681f86ba3bd1f41eb8`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 2.6 KB (2603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db69a2e3718341254f9cd986d263ff2b9cf95a4d831fbc2b2bc17c2de39ae76d`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.10`

```console
$ docker pull mariadb@sha256:538a775dc933fc086767010d535f2c59360eec3e1de44df3dcedea1c5724d83a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3.10` - linux; amd64

```console
$ docker pull mariadb@sha256:5aaefc8d8d03139ba6976b9c4d0772b385004a183e3d789269c717c057e4570e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114945592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95d6852bba5ae4adc374fe563b8a6665032449e9b45e9f133e845fb33d2a09d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 00:47:54 GMT
ADD file:bcd068f67af2788dbd57729c0c8193f022ec5c37fefb8704390c59081152e6fc in / 
# Fri, 19 Oct 2018 00:47:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:47:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:47:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:47:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:36:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 01:36:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:36:46 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 00:26:48 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 00:26:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 00:27:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 00:27:06 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 00:27:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 00:28:37 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 16 Nov 2018 00:28:37 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 16 Nov 2018 00:28:38 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 00:29:10 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 00:29:11 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 00:29:11 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 00:29:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 00:29:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 00:29:13 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 00:29:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:473ede7ed136b710ab2dd51579af038b7d00fbbf6a1790c6294c93666203c0a6`  
		Last Modified: Fri, 19 Oct 2018 00:24:53 GMT  
		Size: 32.0 MB (32034160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46b5fa4d940569e49988515c1ea0295f56d0a16228d8f854e27613f467ec892`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ae3df89c92cb1d20e9c09f499e693d3a8a8cef161f7158f7a9a3b5d06e4ef2`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1eed27cadec5de8051d56697b0b67527e4076deedceefb41b7b2ea9b900459`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7571426e9fed20247bade7966bd042c340e3e5c3a15865b868825303e9897c4`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba27abd0643114e14441df27dcccc9843cf22ce9526fb09298d3b0d2cf48614`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 4.8 MB (4803626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5742ca02a957788e1bc150563c6ab51f425b6896eefa52d7c80648e71d5072a`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 863.2 KB (863153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c53ea2689ed6ebe83dfc20da72968667fdf229fb0b51d379209a7e2b60b5cc8`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517f1aafa332d31cbcf300b5d4d3a24d464d321ae2693a992bd99f8946f983a0`  
		Last Modified: Fri, 16 Nov 2018 00:38:38 GMT  
		Size: 3.0 MB (2956916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39158f499dbeb666441a43887192563b2096a4f945808aa9e8893c408ce28ce0`  
		Last Modified: Fri, 16 Nov 2018 00:38:35 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4368463dd531fb6ee74a2128f9f45adf6f3e7e9801cc6710bc0999b6b5491913`  
		Last Modified: Fri, 16 Nov 2018 00:40:32 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fee7414381d52d22265eb3194d0c2644c9bec509882a7d7b588005c8034118e`  
		Last Modified: Fri, 16 Nov 2018 00:40:54 GMT  
		Size: 74.3 MB (74255917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abdbc91263bba0e1de0514656a04f055208d4e42c1ab8e75bb59f26f24be0f2d`  
		Last Modified: Fri, 16 Nov 2018 00:40:32 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af85e8800b74a4bcf01ad04ca0e2417fd22360d290bcf076b176dbe4e7cc2a8e`  
		Last Modified: Fri, 16 Nov 2018 00:40:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.10` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:cafb3462e09f185dccf43fcde7df6cca8f62b4ba94ffc692c413c770a302e5ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (109981339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09aae6549ec885674cbb103553dc4161291e3bec6c6ea1b761f8fe9d905337c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 11:20:49 GMT
ADD file:110950580db69973226966e62607ac770285caf76a247ce5a8c606c65aa04b50 in / 
# Fri, 19 Oct 2018 11:20:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 11:20:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 11:20:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 11:20:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 12:56:42 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 12:57:15 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:57:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 12:57:43 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 12:57:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 12:58:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:58:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 12:58:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 12:58:15 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 19 Oct 2018 12:58:16 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 19 Oct 2018 12:58:19 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 13:00:20 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 13:00:23 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 13:00:24 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 13:00:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 13:00:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 13:00:37 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 13:00:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:71878b774cb38a9ed46024ada7a9e0634060697119a8c4c07c611646264513f3`  
		Last Modified: Fri, 19 Oct 2018 11:23:39 GMT  
		Size: 28.8 MB (28833238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1b922a83c7f524b935e8e6b9d738697762972d95fce4c7c269f5cd2c754055`  
		Last Modified: Fri, 19 Oct 2018 11:23:28 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab46b3e1d46e0d1ef143520251afe8bc630c0ab04c2dbf8ac097c7007aaa85f`  
		Last Modified: Fri, 19 Oct 2018 11:23:28 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169c13f4edfd32451d6658b4c4c8176b38f232d0a3de07d2a9ca253c2c2848ba`  
		Last Modified: Fri, 19 Oct 2018 11:23:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515fd1949dab7c46ef13b4d135db3637172d5bc7856e32cc1423fe68425d0d91`  
		Last Modified: Fri, 19 Oct 2018 13:14:00 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e017b2874c4be515a55c04d9a82029537983bbadd8ac3841eae5bd173251cd3`  
		Last Modified: Fri, 19 Oct 2018 13:14:00 GMT  
		Size: 4.4 MB (4380212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f6d036cdfc908e4c19c80a7b6df55f1727bf6ae1bad70f4507dfaa5221feae`  
		Last Modified: Fri, 19 Oct 2018 13:13:58 GMT  
		Size: 829.7 KB (829666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f0872339b3202f0e2b0fa21bf4717b18fbca80f0c689505dca20410790e42e`  
		Last Modified: Fri, 19 Oct 2018 13:13:58 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c19d59e0bda178cae23994ab09172d8894e31f39d61fcd3ac7f2649a1d0631`  
		Last Modified: Fri, 19 Oct 2018 13:13:59 GMT  
		Size: 2.7 MB (2698485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9bf97e7f7714767a7ef8fcbb779ed389f53238950cc3b2cf1236a3139ca289d`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b57c0a347944d84611e3f728fa815817782bfe00f12d3f624ca741b48b62b5`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f96205fb913d3f84e8767297ed5df17ebc172e32e2fd8852b50c605e01945b`  
		Last Modified: Fri, 19 Oct 2018 13:14:24 GMT  
		Size: 73.2 MB (73207987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6a128f8a53bcf2d62f913bf296a43e9589ffd38f1b2f686f91c98da5e21949`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864536c7189a66f207626d5a6a982cb81f3d3e6331e43afc95a4cee59a0d6fb7`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.10` - linux; ppc64le

```console
$ docker pull mariadb@sha256:650111bd3a11cf7e1c2710401afcf58848fe40e16ceb158d5df5d521780d3d94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121966675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e4f94370ebc945cf83d649eca667dade0a27291c2e80be3b9e37878632fd96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 09:16:11 GMT
ADD file:ff56914a9be1ea1c29222a826731c6d0c874a3d35994269352595d646a5f923c in / 
# Fri, 19 Oct 2018 09:16:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 09:16:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 09:16:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 09:16:27 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 10:37:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 10:38:02 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:38:04 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 10:38:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 10:38:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 10:39:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:39:09 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 10:39:12 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 10:39:13 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 19 Oct 2018 10:39:14 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 19 Oct 2018 10:39:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 10:40:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 10:40:44 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 10:40:46 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 10:40:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 10:40:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 10:40:53 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 10:40:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2c4fd606dee3befde0392952ad523fad88d460aed9ae927ff1037138cd79ed3f`  
		Last Modified: Fri, 19 Oct 2018 09:18:54 GMT  
		Size: 35.5 MB (35472905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:324762f962b9ba756f04453b96c926ea414b65dfdb3ef0c26f2336e60f231c5a`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f2857f1765b3e764add78aa519c6bef4827b9973650565d969b580c9bd2d82`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3aa3f305b3eedf728fcddc37359479689d1fdaadc23d2bad1e087216ac715a`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a25f8f65f53811a56b86889363b4a8e0c5d4e50cc1319ad941e35b66bd92e1b`  
		Last Modified: Fri, 19 Oct 2018 10:52:50 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f7c641dcf476450a965a769264b108fd02f3781b9339748d6860e2082804e0`  
		Last Modified: Fri, 19 Oct 2018 10:52:51 GMT  
		Size: 5.6 MB (5602718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff124325ca8aa33092324e536fdd0e3fb6876a90c36db077368eb6417f46de8a`  
		Last Modified: Fri, 19 Oct 2018 10:52:48 GMT  
		Size: 831.6 KB (831578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1b1972ff54a31f4be6c83b4786f61aa5505e789b72f20b8eb5cb9d7e13304b`  
		Last Modified: Fri, 19 Oct 2018 10:52:48 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e32b8146841fb5ed6f7ecc74f2f032b4ed0eb91ed95fb70fb14289254f1175e`  
		Last Modified: Fri, 19 Oct 2018 10:52:50 GMT  
		Size: 2.8 MB (2838872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf432a9e41120d614cbcafc06f98253ebf8abb40b6baf1eb055fbf7b5bb6e0d0`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a82b32856f4db040de7077645364ec02382e29b1a01bbab0363ad3ca7c0ffe6f`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9c36cfa8e72906b803a0631a86059c2d5bbc016ae2af298a170a998782cda3`  
		Last Modified: Fri, 19 Oct 2018 10:53:07 GMT  
		Size: 77.2 MB (77188760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7d52d49c3ae35ff562450c5322dc6faa007fec507c32681f86ba3bd1f41eb8`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 2.6 KB (2603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db69a2e3718341254f9cd986d263ff2b9cf95a4d831fbc2b2bc17c2de39ae76d`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.10-bionic`

```console
$ docker pull mariadb@sha256:538a775dc933fc086767010d535f2c59360eec3e1de44df3dcedea1c5724d83a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3.10-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:5aaefc8d8d03139ba6976b9c4d0772b385004a183e3d789269c717c057e4570e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114945592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95d6852bba5ae4adc374fe563b8a6665032449e9b45e9f133e845fb33d2a09d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 00:47:54 GMT
ADD file:bcd068f67af2788dbd57729c0c8193f022ec5c37fefb8704390c59081152e6fc in / 
# Fri, 19 Oct 2018 00:47:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:47:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:47:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:47:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:36:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 01:36:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:36:46 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 00:26:48 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 00:26:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 00:27:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 00:27:06 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 00:27:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 00:28:37 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 16 Nov 2018 00:28:37 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 16 Nov 2018 00:28:38 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 00:29:10 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 00:29:11 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 00:29:11 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 00:29:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 00:29:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 00:29:13 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 00:29:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:473ede7ed136b710ab2dd51579af038b7d00fbbf6a1790c6294c93666203c0a6`  
		Last Modified: Fri, 19 Oct 2018 00:24:53 GMT  
		Size: 32.0 MB (32034160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46b5fa4d940569e49988515c1ea0295f56d0a16228d8f854e27613f467ec892`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ae3df89c92cb1d20e9c09f499e693d3a8a8cef161f7158f7a9a3b5d06e4ef2`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1eed27cadec5de8051d56697b0b67527e4076deedceefb41b7b2ea9b900459`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7571426e9fed20247bade7966bd042c340e3e5c3a15865b868825303e9897c4`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba27abd0643114e14441df27dcccc9843cf22ce9526fb09298d3b0d2cf48614`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 4.8 MB (4803626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5742ca02a957788e1bc150563c6ab51f425b6896eefa52d7c80648e71d5072a`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 863.2 KB (863153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c53ea2689ed6ebe83dfc20da72968667fdf229fb0b51d379209a7e2b60b5cc8`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517f1aafa332d31cbcf300b5d4d3a24d464d321ae2693a992bd99f8946f983a0`  
		Last Modified: Fri, 16 Nov 2018 00:38:38 GMT  
		Size: 3.0 MB (2956916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39158f499dbeb666441a43887192563b2096a4f945808aa9e8893c408ce28ce0`  
		Last Modified: Fri, 16 Nov 2018 00:38:35 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4368463dd531fb6ee74a2128f9f45adf6f3e7e9801cc6710bc0999b6b5491913`  
		Last Modified: Fri, 16 Nov 2018 00:40:32 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fee7414381d52d22265eb3194d0c2644c9bec509882a7d7b588005c8034118e`  
		Last Modified: Fri, 16 Nov 2018 00:40:54 GMT  
		Size: 74.3 MB (74255917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abdbc91263bba0e1de0514656a04f055208d4e42c1ab8e75bb59f26f24be0f2d`  
		Last Modified: Fri, 16 Nov 2018 00:40:32 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af85e8800b74a4bcf01ad04ca0e2417fd22360d290bcf076b176dbe4e7cc2a8e`  
		Last Modified: Fri, 16 Nov 2018 00:40:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.10-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:cafb3462e09f185dccf43fcde7df6cca8f62b4ba94ffc692c413c770a302e5ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (109981339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09aae6549ec885674cbb103553dc4161291e3bec6c6ea1b761f8fe9d905337c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 11:20:49 GMT
ADD file:110950580db69973226966e62607ac770285caf76a247ce5a8c606c65aa04b50 in / 
# Fri, 19 Oct 2018 11:20:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 11:20:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 11:20:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 11:20:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 12:56:42 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 12:57:15 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:57:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 12:57:43 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 12:57:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 12:58:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:58:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 12:58:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 12:58:15 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 19 Oct 2018 12:58:16 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 19 Oct 2018 12:58:19 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 13:00:20 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 13:00:23 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 13:00:24 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 13:00:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 13:00:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 13:00:37 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 13:00:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:71878b774cb38a9ed46024ada7a9e0634060697119a8c4c07c611646264513f3`  
		Last Modified: Fri, 19 Oct 2018 11:23:39 GMT  
		Size: 28.8 MB (28833238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1b922a83c7f524b935e8e6b9d738697762972d95fce4c7c269f5cd2c754055`  
		Last Modified: Fri, 19 Oct 2018 11:23:28 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab46b3e1d46e0d1ef143520251afe8bc630c0ab04c2dbf8ac097c7007aaa85f`  
		Last Modified: Fri, 19 Oct 2018 11:23:28 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169c13f4edfd32451d6658b4c4c8176b38f232d0a3de07d2a9ca253c2c2848ba`  
		Last Modified: Fri, 19 Oct 2018 11:23:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515fd1949dab7c46ef13b4d135db3637172d5bc7856e32cc1423fe68425d0d91`  
		Last Modified: Fri, 19 Oct 2018 13:14:00 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e017b2874c4be515a55c04d9a82029537983bbadd8ac3841eae5bd173251cd3`  
		Last Modified: Fri, 19 Oct 2018 13:14:00 GMT  
		Size: 4.4 MB (4380212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f6d036cdfc908e4c19c80a7b6df55f1727bf6ae1bad70f4507dfaa5221feae`  
		Last Modified: Fri, 19 Oct 2018 13:13:58 GMT  
		Size: 829.7 KB (829666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f0872339b3202f0e2b0fa21bf4717b18fbca80f0c689505dca20410790e42e`  
		Last Modified: Fri, 19 Oct 2018 13:13:58 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c19d59e0bda178cae23994ab09172d8894e31f39d61fcd3ac7f2649a1d0631`  
		Last Modified: Fri, 19 Oct 2018 13:13:59 GMT  
		Size: 2.7 MB (2698485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9bf97e7f7714767a7ef8fcbb779ed389f53238950cc3b2cf1236a3139ca289d`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b57c0a347944d84611e3f728fa815817782bfe00f12d3f624ca741b48b62b5`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f96205fb913d3f84e8767297ed5df17ebc172e32e2fd8852b50c605e01945b`  
		Last Modified: Fri, 19 Oct 2018 13:14:24 GMT  
		Size: 73.2 MB (73207987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6a128f8a53bcf2d62f913bf296a43e9589ffd38f1b2f686f91c98da5e21949`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864536c7189a66f207626d5a6a982cb81f3d3e6331e43afc95a4cee59a0d6fb7`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.10-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:650111bd3a11cf7e1c2710401afcf58848fe40e16ceb158d5df5d521780d3d94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121966675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e4f94370ebc945cf83d649eca667dade0a27291c2e80be3b9e37878632fd96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 09:16:11 GMT
ADD file:ff56914a9be1ea1c29222a826731c6d0c874a3d35994269352595d646a5f923c in / 
# Fri, 19 Oct 2018 09:16:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 09:16:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 09:16:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 09:16:27 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 10:37:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 10:38:02 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:38:04 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 10:38:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 10:38:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 10:39:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:39:09 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 10:39:12 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 10:39:13 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 19 Oct 2018 10:39:14 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 19 Oct 2018 10:39:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 10:40:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 10:40:44 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 10:40:46 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 10:40:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 10:40:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 10:40:53 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 10:40:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2c4fd606dee3befde0392952ad523fad88d460aed9ae927ff1037138cd79ed3f`  
		Last Modified: Fri, 19 Oct 2018 09:18:54 GMT  
		Size: 35.5 MB (35472905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:324762f962b9ba756f04453b96c926ea414b65dfdb3ef0c26f2336e60f231c5a`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f2857f1765b3e764add78aa519c6bef4827b9973650565d969b580c9bd2d82`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3aa3f305b3eedf728fcddc37359479689d1fdaadc23d2bad1e087216ac715a`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a25f8f65f53811a56b86889363b4a8e0c5d4e50cc1319ad941e35b66bd92e1b`  
		Last Modified: Fri, 19 Oct 2018 10:52:50 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f7c641dcf476450a965a769264b108fd02f3781b9339748d6860e2082804e0`  
		Last Modified: Fri, 19 Oct 2018 10:52:51 GMT  
		Size: 5.6 MB (5602718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff124325ca8aa33092324e536fdd0e3fb6876a90c36db077368eb6417f46de8a`  
		Last Modified: Fri, 19 Oct 2018 10:52:48 GMT  
		Size: 831.6 KB (831578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1b1972ff54a31f4be6c83b4786f61aa5505e789b72f20b8eb5cb9d7e13304b`  
		Last Modified: Fri, 19 Oct 2018 10:52:48 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e32b8146841fb5ed6f7ecc74f2f032b4ed0eb91ed95fb70fb14289254f1175e`  
		Last Modified: Fri, 19 Oct 2018 10:52:50 GMT  
		Size: 2.8 MB (2838872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf432a9e41120d614cbcafc06f98253ebf8abb40b6baf1eb055fbf7b5bb6e0d0`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a82b32856f4db040de7077645364ec02382e29b1a01bbab0363ad3ca7c0ffe6f`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9c36cfa8e72906b803a0631a86059c2d5bbc016ae2af298a170a998782cda3`  
		Last Modified: Fri, 19 Oct 2018 10:53:07 GMT  
		Size: 77.2 MB (77188760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7d52d49c3ae35ff562450c5322dc6faa007fec507c32681f86ba3bd1f41eb8`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 2.6 KB (2603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db69a2e3718341254f9cd986d263ff2b9cf95a4d831fbc2b2bc17c2de39ae76d`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3-bionic`

```console
$ docker pull mariadb@sha256:538a775dc933fc086767010d535f2c59360eec3e1de44df3dcedea1c5724d83a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:5aaefc8d8d03139ba6976b9c4d0772b385004a183e3d789269c717c057e4570e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114945592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95d6852bba5ae4adc374fe563b8a6665032449e9b45e9f133e845fb33d2a09d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 00:47:54 GMT
ADD file:bcd068f67af2788dbd57729c0c8193f022ec5c37fefb8704390c59081152e6fc in / 
# Fri, 19 Oct 2018 00:47:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:47:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:47:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:47:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:36:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 01:36:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:36:46 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 00:26:48 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 00:26:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 00:27:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 00:27:06 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 00:27:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 00:28:37 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 16 Nov 2018 00:28:37 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 16 Nov 2018 00:28:38 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 00:29:10 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 00:29:11 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 00:29:11 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 00:29:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 00:29:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 00:29:13 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 00:29:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:473ede7ed136b710ab2dd51579af038b7d00fbbf6a1790c6294c93666203c0a6`  
		Last Modified: Fri, 19 Oct 2018 00:24:53 GMT  
		Size: 32.0 MB (32034160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46b5fa4d940569e49988515c1ea0295f56d0a16228d8f854e27613f467ec892`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ae3df89c92cb1d20e9c09f499e693d3a8a8cef161f7158f7a9a3b5d06e4ef2`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1eed27cadec5de8051d56697b0b67527e4076deedceefb41b7b2ea9b900459`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7571426e9fed20247bade7966bd042c340e3e5c3a15865b868825303e9897c4`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba27abd0643114e14441df27dcccc9843cf22ce9526fb09298d3b0d2cf48614`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 4.8 MB (4803626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5742ca02a957788e1bc150563c6ab51f425b6896eefa52d7c80648e71d5072a`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 863.2 KB (863153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c53ea2689ed6ebe83dfc20da72968667fdf229fb0b51d379209a7e2b60b5cc8`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517f1aafa332d31cbcf300b5d4d3a24d464d321ae2693a992bd99f8946f983a0`  
		Last Modified: Fri, 16 Nov 2018 00:38:38 GMT  
		Size: 3.0 MB (2956916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39158f499dbeb666441a43887192563b2096a4f945808aa9e8893c408ce28ce0`  
		Last Modified: Fri, 16 Nov 2018 00:38:35 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4368463dd531fb6ee74a2128f9f45adf6f3e7e9801cc6710bc0999b6b5491913`  
		Last Modified: Fri, 16 Nov 2018 00:40:32 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fee7414381d52d22265eb3194d0c2644c9bec509882a7d7b588005c8034118e`  
		Last Modified: Fri, 16 Nov 2018 00:40:54 GMT  
		Size: 74.3 MB (74255917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abdbc91263bba0e1de0514656a04f055208d4e42c1ab8e75bb59f26f24be0f2d`  
		Last Modified: Fri, 16 Nov 2018 00:40:32 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af85e8800b74a4bcf01ad04ca0e2417fd22360d290bcf076b176dbe4e7cc2a8e`  
		Last Modified: Fri, 16 Nov 2018 00:40:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:cafb3462e09f185dccf43fcde7df6cca8f62b4ba94ffc692c413c770a302e5ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (109981339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09aae6549ec885674cbb103553dc4161291e3bec6c6ea1b761f8fe9d905337c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 11:20:49 GMT
ADD file:110950580db69973226966e62607ac770285caf76a247ce5a8c606c65aa04b50 in / 
# Fri, 19 Oct 2018 11:20:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 11:20:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 11:20:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 11:20:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 12:56:42 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 12:57:15 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:57:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 12:57:43 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 12:57:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 12:58:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:58:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 12:58:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 12:58:15 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 19 Oct 2018 12:58:16 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 19 Oct 2018 12:58:19 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 13:00:20 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 13:00:23 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 13:00:24 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 13:00:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 13:00:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 13:00:37 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 13:00:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:71878b774cb38a9ed46024ada7a9e0634060697119a8c4c07c611646264513f3`  
		Last Modified: Fri, 19 Oct 2018 11:23:39 GMT  
		Size: 28.8 MB (28833238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1b922a83c7f524b935e8e6b9d738697762972d95fce4c7c269f5cd2c754055`  
		Last Modified: Fri, 19 Oct 2018 11:23:28 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab46b3e1d46e0d1ef143520251afe8bc630c0ab04c2dbf8ac097c7007aaa85f`  
		Last Modified: Fri, 19 Oct 2018 11:23:28 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169c13f4edfd32451d6658b4c4c8176b38f232d0a3de07d2a9ca253c2c2848ba`  
		Last Modified: Fri, 19 Oct 2018 11:23:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515fd1949dab7c46ef13b4d135db3637172d5bc7856e32cc1423fe68425d0d91`  
		Last Modified: Fri, 19 Oct 2018 13:14:00 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e017b2874c4be515a55c04d9a82029537983bbadd8ac3841eae5bd173251cd3`  
		Last Modified: Fri, 19 Oct 2018 13:14:00 GMT  
		Size: 4.4 MB (4380212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f6d036cdfc908e4c19c80a7b6df55f1727bf6ae1bad70f4507dfaa5221feae`  
		Last Modified: Fri, 19 Oct 2018 13:13:58 GMT  
		Size: 829.7 KB (829666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f0872339b3202f0e2b0fa21bf4717b18fbca80f0c689505dca20410790e42e`  
		Last Modified: Fri, 19 Oct 2018 13:13:58 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c19d59e0bda178cae23994ab09172d8894e31f39d61fcd3ac7f2649a1d0631`  
		Last Modified: Fri, 19 Oct 2018 13:13:59 GMT  
		Size: 2.7 MB (2698485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9bf97e7f7714767a7ef8fcbb779ed389f53238950cc3b2cf1236a3139ca289d`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b57c0a347944d84611e3f728fa815817782bfe00f12d3f624ca741b48b62b5`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f96205fb913d3f84e8767297ed5df17ebc172e32e2fd8852b50c605e01945b`  
		Last Modified: Fri, 19 Oct 2018 13:14:24 GMT  
		Size: 73.2 MB (73207987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6a128f8a53bcf2d62f913bf296a43e9589ffd38f1b2f686f91c98da5e21949`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864536c7189a66f207626d5a6a982cb81f3d3e6331e43afc95a4cee59a0d6fb7`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:650111bd3a11cf7e1c2710401afcf58848fe40e16ceb158d5df5d521780d3d94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121966675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e4f94370ebc945cf83d649eca667dade0a27291c2e80be3b9e37878632fd96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 09:16:11 GMT
ADD file:ff56914a9be1ea1c29222a826731c6d0c874a3d35994269352595d646a5f923c in / 
# Fri, 19 Oct 2018 09:16:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 09:16:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 09:16:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 09:16:27 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 10:37:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 10:38:02 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:38:04 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 10:38:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 10:38:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 10:39:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:39:09 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 10:39:12 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 10:39:13 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 19 Oct 2018 10:39:14 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 19 Oct 2018 10:39:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 10:40:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 10:40:44 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 10:40:46 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 10:40:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 10:40:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 10:40:53 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 10:40:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2c4fd606dee3befde0392952ad523fad88d460aed9ae927ff1037138cd79ed3f`  
		Last Modified: Fri, 19 Oct 2018 09:18:54 GMT  
		Size: 35.5 MB (35472905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:324762f962b9ba756f04453b96c926ea414b65dfdb3ef0c26f2336e60f231c5a`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f2857f1765b3e764add78aa519c6bef4827b9973650565d969b580c9bd2d82`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3aa3f305b3eedf728fcddc37359479689d1fdaadc23d2bad1e087216ac715a`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a25f8f65f53811a56b86889363b4a8e0c5d4e50cc1319ad941e35b66bd92e1b`  
		Last Modified: Fri, 19 Oct 2018 10:52:50 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f7c641dcf476450a965a769264b108fd02f3781b9339748d6860e2082804e0`  
		Last Modified: Fri, 19 Oct 2018 10:52:51 GMT  
		Size: 5.6 MB (5602718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff124325ca8aa33092324e536fdd0e3fb6876a90c36db077368eb6417f46de8a`  
		Last Modified: Fri, 19 Oct 2018 10:52:48 GMT  
		Size: 831.6 KB (831578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1b1972ff54a31f4be6c83b4786f61aa5505e789b72f20b8eb5cb9d7e13304b`  
		Last Modified: Fri, 19 Oct 2018 10:52:48 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e32b8146841fb5ed6f7ecc74f2f032b4ed0eb91ed95fb70fb14289254f1175e`  
		Last Modified: Fri, 19 Oct 2018 10:52:50 GMT  
		Size: 2.8 MB (2838872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf432a9e41120d614cbcafc06f98253ebf8abb40b6baf1eb055fbf7b5bb6e0d0`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a82b32856f4db040de7077645364ec02382e29b1a01bbab0363ad3ca7c0ffe6f`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9c36cfa8e72906b803a0631a86059c2d5bbc016ae2af298a170a998782cda3`  
		Last Modified: Fri, 19 Oct 2018 10:53:07 GMT  
		Size: 77.2 MB (77188760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7d52d49c3ae35ff562450c5322dc6faa007fec507c32681f86ba3bd1f41eb8`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 2.6 KB (2603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db69a2e3718341254f9cd986d263ff2b9cf95a4d831fbc2b2bc17c2de39ae76d`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.4`

```console
$ docker pull mariadb@sha256:1adf18c3d859f4d6a4865265042424bc690bb40e4c796876a55668294d0dc74c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.4` - linux; amd64

```console
$ docker pull mariadb@sha256:714f666c9324cae787c4792a08607b2bd04e9bfaf526cf52d75806e7f42ecda5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115765546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7d281e7e4dc069e0812dd4fc8668f84027c48f1d469b3c2e37702676d6e286`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 00:47:54 GMT
ADD file:bcd068f67af2788dbd57729c0c8193f022ec5c37fefb8704390c59081152e6fc in / 
# Fri, 19 Oct 2018 00:47:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:47:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:47:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:47:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:36:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 01:36:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:36:46 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 00:26:48 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 00:26:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 00:27:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 00:27:06 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 00:27:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 00:27:08 GMT
ENV MARIADB_MAJOR=10.4
# Fri, 16 Nov 2018 00:27:08 GMT
ENV MARIADB_VERSION=1:10.4.0+maria~bionic
# Fri, 16 Nov 2018 00:27:10 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 00:27:55 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 00:27:56 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 00:27:57 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 00:27:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 00:27:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 00:27:58 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 00:27:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:473ede7ed136b710ab2dd51579af038b7d00fbbf6a1790c6294c93666203c0a6`  
		Last Modified: Fri, 19 Oct 2018 00:24:53 GMT  
		Size: 32.0 MB (32034160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46b5fa4d940569e49988515c1ea0295f56d0a16228d8f854e27613f467ec892`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ae3df89c92cb1d20e9c09f499e693d3a8a8cef161f7158f7a9a3b5d06e4ef2`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1eed27cadec5de8051d56697b0b67527e4076deedceefb41b7b2ea9b900459`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7571426e9fed20247bade7966bd042c340e3e5c3a15865b868825303e9897c4`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba27abd0643114e14441df27dcccc9843cf22ce9526fb09298d3b0d2cf48614`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 4.8 MB (4803626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5742ca02a957788e1bc150563c6ab51f425b6896eefa52d7c80648e71d5072a`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 863.2 KB (863153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c53ea2689ed6ebe83dfc20da72968667fdf229fb0b51d379209a7e2b60b5cc8`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517f1aafa332d31cbcf300b5d4d3a24d464d321ae2693a992bd99f8946f983a0`  
		Last Modified: Fri, 16 Nov 2018 00:38:38 GMT  
		Size: 3.0 MB (2956916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39158f499dbeb666441a43887192563b2096a4f945808aa9e8893c408ce28ce0`  
		Last Modified: Fri, 16 Nov 2018 00:38:35 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a74ab5858e36fbdba0052592f070e6b321e11103b6b64e5310aae6a68269c53`  
		Last Modified: Fri, 16 Nov 2018 00:38:35 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fddbdc0ba2fde0ea701323943b6336efc292b9f33da183a610556aafc71b7c1`  
		Last Modified: Fri, 16 Nov 2018 00:38:58 GMT  
		Size: 75.1 MB (75075873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422f4601eaca1cd3c4ebaae593fecc6c138aadc40bd421693ef8c0b85f2fa618`  
		Last Modified: Fri, 16 Nov 2018 00:38:35 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a851ec47dd1e2a63948791dd6e903c759eedbae7ace79602f5158eddc0f29b`  
		Last Modified: Fri, 16 Nov 2018 00:38:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.4.0`

```console
$ docker pull mariadb@sha256:1adf18c3d859f4d6a4865265042424bc690bb40e4c796876a55668294d0dc74c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.4.0` - linux; amd64

```console
$ docker pull mariadb@sha256:714f666c9324cae787c4792a08607b2bd04e9bfaf526cf52d75806e7f42ecda5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115765546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7d281e7e4dc069e0812dd4fc8668f84027c48f1d469b3c2e37702676d6e286`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 00:47:54 GMT
ADD file:bcd068f67af2788dbd57729c0c8193f022ec5c37fefb8704390c59081152e6fc in / 
# Fri, 19 Oct 2018 00:47:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:47:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:47:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:47:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:36:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 01:36:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:36:46 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 00:26:48 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 00:26:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 00:27:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 00:27:06 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 00:27:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 00:27:08 GMT
ENV MARIADB_MAJOR=10.4
# Fri, 16 Nov 2018 00:27:08 GMT
ENV MARIADB_VERSION=1:10.4.0+maria~bionic
# Fri, 16 Nov 2018 00:27:10 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 00:27:55 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 00:27:56 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 00:27:57 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 00:27:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 00:27:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 00:27:58 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 00:27:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:473ede7ed136b710ab2dd51579af038b7d00fbbf6a1790c6294c93666203c0a6`  
		Last Modified: Fri, 19 Oct 2018 00:24:53 GMT  
		Size: 32.0 MB (32034160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46b5fa4d940569e49988515c1ea0295f56d0a16228d8f854e27613f467ec892`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ae3df89c92cb1d20e9c09f499e693d3a8a8cef161f7158f7a9a3b5d06e4ef2`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1eed27cadec5de8051d56697b0b67527e4076deedceefb41b7b2ea9b900459`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7571426e9fed20247bade7966bd042c340e3e5c3a15865b868825303e9897c4`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba27abd0643114e14441df27dcccc9843cf22ce9526fb09298d3b0d2cf48614`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 4.8 MB (4803626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5742ca02a957788e1bc150563c6ab51f425b6896eefa52d7c80648e71d5072a`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 863.2 KB (863153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c53ea2689ed6ebe83dfc20da72968667fdf229fb0b51d379209a7e2b60b5cc8`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517f1aafa332d31cbcf300b5d4d3a24d464d321ae2693a992bd99f8946f983a0`  
		Last Modified: Fri, 16 Nov 2018 00:38:38 GMT  
		Size: 3.0 MB (2956916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39158f499dbeb666441a43887192563b2096a4f945808aa9e8893c408ce28ce0`  
		Last Modified: Fri, 16 Nov 2018 00:38:35 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a74ab5858e36fbdba0052592f070e6b321e11103b6b64e5310aae6a68269c53`  
		Last Modified: Fri, 16 Nov 2018 00:38:35 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fddbdc0ba2fde0ea701323943b6336efc292b9f33da183a610556aafc71b7c1`  
		Last Modified: Fri, 16 Nov 2018 00:38:58 GMT  
		Size: 75.1 MB (75075873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422f4601eaca1cd3c4ebaae593fecc6c138aadc40bd421693ef8c0b85f2fa618`  
		Last Modified: Fri, 16 Nov 2018 00:38:35 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a851ec47dd1e2a63948791dd6e903c759eedbae7ace79602f5158eddc0f29b`  
		Last Modified: Fri, 16 Nov 2018 00:38:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.4.0-bionic`

```console
$ docker pull mariadb@sha256:1adf18c3d859f4d6a4865265042424bc690bb40e4c796876a55668294d0dc74c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.4.0-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:714f666c9324cae787c4792a08607b2bd04e9bfaf526cf52d75806e7f42ecda5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115765546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7d281e7e4dc069e0812dd4fc8668f84027c48f1d469b3c2e37702676d6e286`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 00:47:54 GMT
ADD file:bcd068f67af2788dbd57729c0c8193f022ec5c37fefb8704390c59081152e6fc in / 
# Fri, 19 Oct 2018 00:47:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:47:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:47:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:47:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:36:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 01:36:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:36:46 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 00:26:48 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 00:26:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 00:27:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 00:27:06 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 00:27:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 00:27:08 GMT
ENV MARIADB_MAJOR=10.4
# Fri, 16 Nov 2018 00:27:08 GMT
ENV MARIADB_VERSION=1:10.4.0+maria~bionic
# Fri, 16 Nov 2018 00:27:10 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 00:27:55 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 00:27:56 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 00:27:57 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 00:27:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 00:27:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 00:27:58 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 00:27:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:473ede7ed136b710ab2dd51579af038b7d00fbbf6a1790c6294c93666203c0a6`  
		Last Modified: Fri, 19 Oct 2018 00:24:53 GMT  
		Size: 32.0 MB (32034160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46b5fa4d940569e49988515c1ea0295f56d0a16228d8f854e27613f467ec892`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ae3df89c92cb1d20e9c09f499e693d3a8a8cef161f7158f7a9a3b5d06e4ef2`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1eed27cadec5de8051d56697b0b67527e4076deedceefb41b7b2ea9b900459`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7571426e9fed20247bade7966bd042c340e3e5c3a15865b868825303e9897c4`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba27abd0643114e14441df27dcccc9843cf22ce9526fb09298d3b0d2cf48614`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 4.8 MB (4803626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5742ca02a957788e1bc150563c6ab51f425b6896eefa52d7c80648e71d5072a`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 863.2 KB (863153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c53ea2689ed6ebe83dfc20da72968667fdf229fb0b51d379209a7e2b60b5cc8`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517f1aafa332d31cbcf300b5d4d3a24d464d321ae2693a992bd99f8946f983a0`  
		Last Modified: Fri, 16 Nov 2018 00:38:38 GMT  
		Size: 3.0 MB (2956916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39158f499dbeb666441a43887192563b2096a4f945808aa9e8893c408ce28ce0`  
		Last Modified: Fri, 16 Nov 2018 00:38:35 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a74ab5858e36fbdba0052592f070e6b321e11103b6b64e5310aae6a68269c53`  
		Last Modified: Fri, 16 Nov 2018 00:38:35 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fddbdc0ba2fde0ea701323943b6336efc292b9f33da183a610556aafc71b7c1`  
		Last Modified: Fri, 16 Nov 2018 00:38:58 GMT  
		Size: 75.1 MB (75075873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422f4601eaca1cd3c4ebaae593fecc6c138aadc40bd421693ef8c0b85f2fa618`  
		Last Modified: Fri, 16 Nov 2018 00:38:35 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a851ec47dd1e2a63948791dd6e903c759eedbae7ace79602f5158eddc0f29b`  
		Last Modified: Fri, 16 Nov 2018 00:38:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.4-bionic`

```console
$ docker pull mariadb@sha256:1adf18c3d859f4d6a4865265042424bc690bb40e4c796876a55668294d0dc74c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.4-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:714f666c9324cae787c4792a08607b2bd04e9bfaf526cf52d75806e7f42ecda5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115765546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7d281e7e4dc069e0812dd4fc8668f84027c48f1d469b3c2e37702676d6e286`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 00:47:54 GMT
ADD file:bcd068f67af2788dbd57729c0c8193f022ec5c37fefb8704390c59081152e6fc in / 
# Fri, 19 Oct 2018 00:47:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:47:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:47:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:47:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:36:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 01:36:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:36:46 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 00:26:48 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 00:26:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 00:27:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 00:27:06 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 00:27:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 00:27:08 GMT
ENV MARIADB_MAJOR=10.4
# Fri, 16 Nov 2018 00:27:08 GMT
ENV MARIADB_VERSION=1:10.4.0+maria~bionic
# Fri, 16 Nov 2018 00:27:10 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 00:27:55 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 00:27:56 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 00:27:57 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 00:27:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 00:27:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 00:27:58 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 00:27:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:473ede7ed136b710ab2dd51579af038b7d00fbbf6a1790c6294c93666203c0a6`  
		Last Modified: Fri, 19 Oct 2018 00:24:53 GMT  
		Size: 32.0 MB (32034160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46b5fa4d940569e49988515c1ea0295f56d0a16228d8f854e27613f467ec892`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ae3df89c92cb1d20e9c09f499e693d3a8a8cef161f7158f7a9a3b5d06e4ef2`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1eed27cadec5de8051d56697b0b67527e4076deedceefb41b7b2ea9b900459`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7571426e9fed20247bade7966bd042c340e3e5c3a15865b868825303e9897c4`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba27abd0643114e14441df27dcccc9843cf22ce9526fb09298d3b0d2cf48614`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 4.8 MB (4803626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5742ca02a957788e1bc150563c6ab51f425b6896eefa52d7c80648e71d5072a`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 863.2 KB (863153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c53ea2689ed6ebe83dfc20da72968667fdf229fb0b51d379209a7e2b60b5cc8`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517f1aafa332d31cbcf300b5d4d3a24d464d321ae2693a992bd99f8946f983a0`  
		Last Modified: Fri, 16 Nov 2018 00:38:38 GMT  
		Size: 3.0 MB (2956916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39158f499dbeb666441a43887192563b2096a4f945808aa9e8893c408ce28ce0`  
		Last Modified: Fri, 16 Nov 2018 00:38:35 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a74ab5858e36fbdba0052592f070e6b321e11103b6b64e5310aae6a68269c53`  
		Last Modified: Fri, 16 Nov 2018 00:38:35 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fddbdc0ba2fde0ea701323943b6336efc292b9f33da183a610556aafc71b7c1`  
		Last Modified: Fri, 16 Nov 2018 00:38:58 GMT  
		Size: 75.1 MB (75075873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422f4601eaca1cd3c4ebaae593fecc6c138aadc40bd421693ef8c0b85f2fa618`  
		Last Modified: Fri, 16 Nov 2018 00:38:35 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a851ec47dd1e2a63948791dd6e903c759eedbae7ace79602f5158eddc0f29b`  
		Last Modified: Fri, 16 Nov 2018 00:38:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10-bionic`

```console
$ docker pull mariadb@sha256:538a775dc933fc086767010d535f2c59360eec3e1de44df3dcedea1c5724d83a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:5aaefc8d8d03139ba6976b9c4d0772b385004a183e3d789269c717c057e4570e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114945592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95d6852bba5ae4adc374fe563b8a6665032449e9b45e9f133e845fb33d2a09d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 00:47:54 GMT
ADD file:bcd068f67af2788dbd57729c0c8193f022ec5c37fefb8704390c59081152e6fc in / 
# Fri, 19 Oct 2018 00:47:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:47:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:47:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:47:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:36:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 01:36:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:36:46 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 00:26:48 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 00:26:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 00:27:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 00:27:06 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 00:27:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 00:28:37 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 16 Nov 2018 00:28:37 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 16 Nov 2018 00:28:38 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 00:29:10 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 00:29:11 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 00:29:11 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 00:29:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 00:29:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 00:29:13 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 00:29:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:473ede7ed136b710ab2dd51579af038b7d00fbbf6a1790c6294c93666203c0a6`  
		Last Modified: Fri, 19 Oct 2018 00:24:53 GMT  
		Size: 32.0 MB (32034160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46b5fa4d940569e49988515c1ea0295f56d0a16228d8f854e27613f467ec892`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ae3df89c92cb1d20e9c09f499e693d3a8a8cef161f7158f7a9a3b5d06e4ef2`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1eed27cadec5de8051d56697b0b67527e4076deedceefb41b7b2ea9b900459`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7571426e9fed20247bade7966bd042c340e3e5c3a15865b868825303e9897c4`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba27abd0643114e14441df27dcccc9843cf22ce9526fb09298d3b0d2cf48614`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 4.8 MB (4803626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5742ca02a957788e1bc150563c6ab51f425b6896eefa52d7c80648e71d5072a`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 863.2 KB (863153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c53ea2689ed6ebe83dfc20da72968667fdf229fb0b51d379209a7e2b60b5cc8`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517f1aafa332d31cbcf300b5d4d3a24d464d321ae2693a992bd99f8946f983a0`  
		Last Modified: Fri, 16 Nov 2018 00:38:38 GMT  
		Size: 3.0 MB (2956916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39158f499dbeb666441a43887192563b2096a4f945808aa9e8893c408ce28ce0`  
		Last Modified: Fri, 16 Nov 2018 00:38:35 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4368463dd531fb6ee74a2128f9f45adf6f3e7e9801cc6710bc0999b6b5491913`  
		Last Modified: Fri, 16 Nov 2018 00:40:32 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fee7414381d52d22265eb3194d0c2644c9bec509882a7d7b588005c8034118e`  
		Last Modified: Fri, 16 Nov 2018 00:40:54 GMT  
		Size: 74.3 MB (74255917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abdbc91263bba0e1de0514656a04f055208d4e42c1ab8e75bb59f26f24be0f2d`  
		Last Modified: Fri, 16 Nov 2018 00:40:32 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af85e8800b74a4bcf01ad04ca0e2417fd22360d290bcf076b176dbe4e7cc2a8e`  
		Last Modified: Fri, 16 Nov 2018 00:40:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:cafb3462e09f185dccf43fcde7df6cca8f62b4ba94ffc692c413c770a302e5ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (109981339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09aae6549ec885674cbb103553dc4161291e3bec6c6ea1b761f8fe9d905337c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 11:20:49 GMT
ADD file:110950580db69973226966e62607ac770285caf76a247ce5a8c606c65aa04b50 in / 
# Fri, 19 Oct 2018 11:20:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 11:20:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 11:20:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 11:20:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 12:56:42 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 12:57:15 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:57:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 12:57:43 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 12:57:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 12:58:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:58:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 12:58:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 12:58:15 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 19 Oct 2018 12:58:16 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 19 Oct 2018 12:58:19 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 13:00:20 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 13:00:23 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 13:00:24 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 13:00:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 13:00:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 13:00:37 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 13:00:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:71878b774cb38a9ed46024ada7a9e0634060697119a8c4c07c611646264513f3`  
		Last Modified: Fri, 19 Oct 2018 11:23:39 GMT  
		Size: 28.8 MB (28833238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1b922a83c7f524b935e8e6b9d738697762972d95fce4c7c269f5cd2c754055`  
		Last Modified: Fri, 19 Oct 2018 11:23:28 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab46b3e1d46e0d1ef143520251afe8bc630c0ab04c2dbf8ac097c7007aaa85f`  
		Last Modified: Fri, 19 Oct 2018 11:23:28 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169c13f4edfd32451d6658b4c4c8176b38f232d0a3de07d2a9ca253c2c2848ba`  
		Last Modified: Fri, 19 Oct 2018 11:23:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515fd1949dab7c46ef13b4d135db3637172d5bc7856e32cc1423fe68425d0d91`  
		Last Modified: Fri, 19 Oct 2018 13:14:00 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e017b2874c4be515a55c04d9a82029537983bbadd8ac3841eae5bd173251cd3`  
		Last Modified: Fri, 19 Oct 2018 13:14:00 GMT  
		Size: 4.4 MB (4380212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f6d036cdfc908e4c19c80a7b6df55f1727bf6ae1bad70f4507dfaa5221feae`  
		Last Modified: Fri, 19 Oct 2018 13:13:58 GMT  
		Size: 829.7 KB (829666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f0872339b3202f0e2b0fa21bf4717b18fbca80f0c689505dca20410790e42e`  
		Last Modified: Fri, 19 Oct 2018 13:13:58 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c19d59e0bda178cae23994ab09172d8894e31f39d61fcd3ac7f2649a1d0631`  
		Last Modified: Fri, 19 Oct 2018 13:13:59 GMT  
		Size: 2.7 MB (2698485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9bf97e7f7714767a7ef8fcbb779ed389f53238950cc3b2cf1236a3139ca289d`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b57c0a347944d84611e3f728fa815817782bfe00f12d3f624ca741b48b62b5`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f96205fb913d3f84e8767297ed5df17ebc172e32e2fd8852b50c605e01945b`  
		Last Modified: Fri, 19 Oct 2018 13:14:24 GMT  
		Size: 73.2 MB (73207987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6a128f8a53bcf2d62f913bf296a43e9589ffd38f1b2f686f91c98da5e21949`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864536c7189a66f207626d5a6a982cb81f3d3e6331e43afc95a4cee59a0d6fb7`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:650111bd3a11cf7e1c2710401afcf58848fe40e16ceb158d5df5d521780d3d94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121966675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e4f94370ebc945cf83d649eca667dade0a27291c2e80be3b9e37878632fd96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 09:16:11 GMT
ADD file:ff56914a9be1ea1c29222a826731c6d0c874a3d35994269352595d646a5f923c in / 
# Fri, 19 Oct 2018 09:16:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 09:16:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 09:16:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 09:16:27 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 10:37:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 10:38:02 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:38:04 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 10:38:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 10:38:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 10:39:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:39:09 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 10:39:12 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 10:39:13 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 19 Oct 2018 10:39:14 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 19 Oct 2018 10:39:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 10:40:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 10:40:44 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 10:40:46 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 10:40:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 10:40:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 10:40:53 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 10:40:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2c4fd606dee3befde0392952ad523fad88d460aed9ae927ff1037138cd79ed3f`  
		Last Modified: Fri, 19 Oct 2018 09:18:54 GMT  
		Size: 35.5 MB (35472905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:324762f962b9ba756f04453b96c926ea414b65dfdb3ef0c26f2336e60f231c5a`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f2857f1765b3e764add78aa519c6bef4827b9973650565d969b580c9bd2d82`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3aa3f305b3eedf728fcddc37359479689d1fdaadc23d2bad1e087216ac715a`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a25f8f65f53811a56b86889363b4a8e0c5d4e50cc1319ad941e35b66bd92e1b`  
		Last Modified: Fri, 19 Oct 2018 10:52:50 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f7c641dcf476450a965a769264b108fd02f3781b9339748d6860e2082804e0`  
		Last Modified: Fri, 19 Oct 2018 10:52:51 GMT  
		Size: 5.6 MB (5602718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff124325ca8aa33092324e536fdd0e3fb6876a90c36db077368eb6417f46de8a`  
		Last Modified: Fri, 19 Oct 2018 10:52:48 GMT  
		Size: 831.6 KB (831578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1b1972ff54a31f4be6c83b4786f61aa5505e789b72f20b8eb5cb9d7e13304b`  
		Last Modified: Fri, 19 Oct 2018 10:52:48 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e32b8146841fb5ed6f7ecc74f2f032b4ed0eb91ed95fb70fb14289254f1175e`  
		Last Modified: Fri, 19 Oct 2018 10:52:50 GMT  
		Size: 2.8 MB (2838872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf432a9e41120d614cbcafc06f98253ebf8abb40b6baf1eb055fbf7b5bb6e0d0`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a82b32856f4db040de7077645364ec02382e29b1a01bbab0363ad3ca7c0ffe6f`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9c36cfa8e72906b803a0631a86059c2d5bbc016ae2af298a170a998782cda3`  
		Last Modified: Fri, 19 Oct 2018 10:53:07 GMT  
		Size: 77.2 MB (77188760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7d52d49c3ae35ff562450c5322dc6faa007fec507c32681f86ba3bd1f41eb8`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 2.6 KB (2603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db69a2e3718341254f9cd986d263ff2b9cf95a4d831fbc2b2bc17c2de39ae76d`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:93e297f4137fb1fe96c9a90635055b278c039d924aa7a0da77161797895befca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5` - linux; amd64

```console
$ docker pull mariadb@sha256:23325b7959b5044e8ed288a82fe6ea23a8c9ce3ad4615b662323859c311fb7fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118341839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4720cd73b9afb706449b3395fa1aac7860dcc6aa0803e0157a215e55dfb7f4d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 00:48:46 GMT
ADD file:ecefeeae93e44cb420508628b869bab5361955c66d604e32ab5cb6dca0403c1c in / 
# Fri, 19 Oct 2018 00:48:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:48:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:48:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:48:48 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:40:52 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 01:40:56 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:40:56 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 01:41:04 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 01:41:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 01:41:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:41:14 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 01:41:15 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 01:41:15 GMT
ENV MARIADB_MAJOR=5.5
# Mon, 29 Oct 2018 23:23:08 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Mon, 29 Oct 2018 23:23:09 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 29 Oct 2018 23:23:31 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 29 Oct 2018 23:23:32 GMT
VOLUME [/var/lib/mysql]
# Mon, 29 Oct 2018 23:23:32 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Mon, 29 Oct 2018 23:23:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 29 Oct 2018 23:23:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Oct 2018 23:23:34 GMT
EXPOSE 3306/tcp
# Mon, 29 Oct 2018 23:23:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:027274c8e1113b52e886c8f515b0abe6c67b81f17881acf3e9b7f352f901110a`  
		Last Modified: Fri, 19 Oct 2018 00:51:22 GMT  
		Size: 67.1 MB (67129254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f9339a13595d28726bb9d01196bcae9e2409d540d276ed7ba60a6a4a226654`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 72.7 KB (72651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f75707cf448723cfbf8bf808539676b8a612e45f8ac6f5f64f5ed30973260`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5eed9f50d581a74ed418f044c631fd0ed5afa21c12456ff33456f30321d00c`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef9009fdf75ffa14e01741d8aecb417a3229935c05968251e3ee933ae8bd6fb`  
		Last Modified: Fri, 19 Oct 2018 01:47:46 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b3f8801ae5827877f72861453e8b3f809ffb429629188a844eb900367a6edc`  
		Last Modified: Fri, 19 Oct 2018 01:47:41 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da23235cf2b7aba568db336d5b60bb7b042434acf2b667b0b3e4cee55609eb8`  
		Last Modified: Fri, 19 Oct 2018 01:47:41 GMT  
		Size: 1.6 MB (1572531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d716674e0a6aa8a60f35083a0ba259f972c0a26ce84bb054f2a2b902c810f3`  
		Last Modified: Fri, 19 Oct 2018 01:47:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8efe84195eb98194690c092abf0f0bcb14c5564ddc037787d2d9bf148be279`  
		Last Modified: Fri, 19 Oct 2018 01:47:41 GMT  
		Size: 4.3 MB (4261346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a09941a943f3ab03497bf03a9fd387b27dedfaae51bfcabc129179f9b6e1574`  
		Last Modified: Fri, 19 Oct 2018 01:47:40 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b5e8183b4a0a2a7a645df06315a145d95cd3820519aad6c701c6b9a1bb2f48`  
		Last Modified: Mon, 29 Oct 2018 23:24:32 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b976d434396a0356e42377a3f27ea6cae5daac731c11f7ef47389f605ec07398`  
		Last Modified: Mon, 29 Oct 2018 23:24:43 GMT  
		Size: 45.3 MB (45275086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c6489b91a95152b7bd2a25a0663d3c223c72712bcb5bbd522a70485736f0a5`  
		Last Modified: Mon, 29 Oct 2018 23:24:32 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e19edb4a6900549cddebf0ea5071ed83d91bf308758b1e5f4122c2b734131d`  
		Last Modified: Mon, 29 Oct 2018 23:24:32 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5` - linux; 386

```console
$ docker pull mariadb@sha256:40f859471e1730dfce1c2e6676ccc95df50bb8f2489ce552c1bc5d53416a4d9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114550383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9de75e698814cae360e61e78887d1a39a3946e7c8a54b6118beb364434d349b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 12:41:49 GMT
ADD file:96c16e6e92cbdd2ae387fa569ae7a3fb3c5489258622f8cd38bcee46b383f906 in / 
# Fri, 19 Oct 2018 12:41:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 12:41:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:41:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 12:41:52 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 13:53:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 13:53:28 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:53:28 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 13:53:39 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 13:53:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 13:53:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:53:50 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 13:53:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 13:53:51 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 30 Oct 2018 11:04:51 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Tue, 30 Oct 2018 11:04:52 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 30 Oct 2018 11:05:14 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 30 Oct 2018 11:05:14 GMT
VOLUME [/var/lib/mysql]
# Tue, 30 Oct 2018 11:05:15 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Tue, 30 Oct 2018 11:05:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 30 Oct 2018 11:05:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Oct 2018 11:05:16 GMT
EXPOSE 3306/tcp
# Tue, 30 Oct 2018 11:05:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:282c0c6b24fdcb18e5d5ed51e52c210ff5c8793eab099140780dbfb3c7027393`  
		Last Modified: Fri, 19 Oct 2018 12:44:26 GMT  
		Size: 64.8 MB (64827995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2799d3a5ebee7c23d5323fb05e0b9c1e4e3a05e390b2918b87670668893bbf2c`  
		Last Modified: Fri, 19 Oct 2018 12:44:09 GMT  
		Size: 64.9 KB (64856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e1c808e1d8273efe06360b838c41f54014d72fd40e2e2a9fa0908f4e22c2bc`  
		Last Modified: Fri, 19 Oct 2018 12:44:09 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d0c3c38e71c4374606693e1e9706cbb4c6f2898699a34f3a537f3dada6bb4b4`  
		Last Modified: Fri, 19 Oct 2018 12:44:10 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b2de3dd179d7c271824d84ff175ae69edefbb0a4fc46cf51f378a46baee66a`  
		Last Modified: Fri, 19 Oct 2018 13:55:23 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d337412c7301ac1082f1b03e57ffda42afa945c3cd3ea52cba58dca4d90ed6e7`  
		Last Modified: Fri, 19 Oct 2018 13:55:22 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c877b9b9526c1bf03a255f443bf0101b45814eab9e7b45a2d2108cda182650`  
		Last Modified: Fri, 19 Oct 2018 13:55:22 GMT  
		Size: 1.6 MB (1552141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bae00a448ae4714753ddd6a2277976acdf06da7353b5eaf2b35c1b700a64ad9`  
		Last Modified: Fri, 19 Oct 2018 13:55:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aed3a9166abfaaaed95012e926194d07fe22a2d7fdae98b18dc2ae90cbce91e`  
		Last Modified: Fri, 19 Oct 2018 13:55:23 GMT  
		Size: 4.2 MB (4247956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d549ad21c8bb75f3c74ee654282ca2957e6d035c425db25a3ae17cebf7a24b9c`  
		Last Modified: Fri, 19 Oct 2018 13:55:21 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62ec5064a3eb572e1ad5a72f0e976d17c8239e4f1aee412b06c43cd41f9b0d5`  
		Last Modified: Tue, 30 Oct 2018 11:05:37 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb8bf6b0d2d550299ffd9cf86ca21ca2b2c9cbeae2c2dabcc62dac2859ac2b3`  
		Last Modified: Tue, 30 Oct 2018 11:05:47 GMT  
		Size: 43.8 MB (43826477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3592103e19b0daf8f45e7b5a7c9820399c5867589fd8074a903593cc486cc50`  
		Last Modified: Tue, 30 Oct 2018 11:05:37 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f09ae10b8bf8992be04ebae5d74ca58879c61d040f50d69b9fa28252911def6`  
		Last Modified: Tue, 30 Oct 2018 11:05:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5` - linux; ppc64le

```console
$ docker pull mariadb@sha256:f183eae5df6597a9286bdffcf5e451e53f8865b43b66f6fe46ec659c55a938a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111876289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5f3d64034cb3db2d38434596f569bf7c967c5a01979de8e737260e0932e0bfd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 09:17:30 GMT
ADD file:9195aac3fb00d2af2dabd98e690c8a050ca4c562980ed0ccdfadd1d90645b16d in / 
# Fri, 19 Oct 2018 09:17:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 09:17:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 09:17:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 09:17:50 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 10:49:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 10:49:20 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:49:20 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 10:49:57 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 10:50:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 10:50:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:50:57 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 10:51:02 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 10:51:04 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 30 Oct 2018 09:15:14 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Tue, 30 Oct 2018 09:15:18 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 30 Oct 2018 09:16:36 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 30 Oct 2018 09:16:38 GMT
VOLUME [/var/lib/mysql]
# Tue, 30 Oct 2018 09:16:41 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Tue, 30 Oct 2018 09:16:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 30 Oct 2018 09:16:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Oct 2018 09:16:53 GMT
EXPOSE 3306/tcp
# Tue, 30 Oct 2018 09:16:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a33773385468341da6d94d43c2cc7260149500c8a34a07fc0b2b0dd3216795d9`  
		Last Modified: Fri, 19 Oct 2018 09:20:44 GMT  
		Size: 69.8 MB (69761704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38e586b22cce8ecf22683487189ccfb9de613609427d5813bb877f0ea5e4ddeb`  
		Last Modified: Fri, 19 Oct 2018 09:20:26 GMT  
		Size: 63.4 KB (63427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078d737ef443e92e2353a9284a7093711c5c330c195107c140c268b2379a1a86`  
		Last Modified: Fri, 19 Oct 2018 09:20:26 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3a9bf6aaf5a1d3b1671c17b1309f54f1728f4ffe7eb58ea9cb96f47639e8c9`  
		Last Modified: Fri, 19 Oct 2018 09:20:27 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4fa3adbdd943df30cf9c1ac5524301ee5d5effb8983340a5a0270751b51881`  
		Last Modified: Fri, 19 Oct 2018 10:58:46 GMT  
		Size: 1.8 KB (1842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d991d9d824ec074c75838141d348fd2191d9ff811e2cd528c6a8648cd57f0b7`  
		Last Modified: Fri, 19 Oct 2018 10:58:42 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:748299ed2e51661e07c828b671ba31a23ec755fb3650d38b1afe055523f7c52d`  
		Last Modified: Fri, 19 Oct 2018 10:58:44 GMT  
		Size: 1.5 MB (1545247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5111b808c0c971aaab3cfaaec25205c15eda30ad8e3246611673f75890d39da4`  
		Last Modified: Fri, 19 Oct 2018 10:58:43 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5829b0641e68d38eb99f0939b41a40f321b2ecd63193b6f03161a04bcd83bd6c`  
		Last Modified: Fri, 19 Oct 2018 10:58:44 GMT  
		Size: 4.3 MB (4286853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2c0597f39aa2ba2a14b5592ce32c05f3f10c3e3ba033a476eec2f8adf8de82`  
		Last Modified: Fri, 19 Oct 2018 10:58:40 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115c302165ca6e9fdbb73a39ce91b9997edfc91ed51f2e29f5a24a93d82288ea`  
		Last Modified: Tue, 30 Oct 2018 09:21:07 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e3d873ba86521b3981deb33c0cd5cc6e365565bb9bd920d420e28136d8704e`  
		Last Modified: Tue, 30 Oct 2018 09:21:16 GMT  
		Size: 36.2 MB (36188025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2af370196706704010a5527f496ed6438686e68e08caeec0adbfee1fe9788a2`  
		Last Modified: Tue, 30 Oct 2018 09:21:06 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9e5b5d3512dbe157c34ae24f560273496d9cbc024e8cd344c308f992adc5a3`  
		Last Modified: Tue, 30 Oct 2018 09:21:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:93e297f4137fb1fe96c9a90635055b278c039d924aa7a0da77161797895befca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5` - linux; amd64

```console
$ docker pull mariadb@sha256:23325b7959b5044e8ed288a82fe6ea23a8c9ce3ad4615b662323859c311fb7fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118341839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4720cd73b9afb706449b3395fa1aac7860dcc6aa0803e0157a215e55dfb7f4d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 00:48:46 GMT
ADD file:ecefeeae93e44cb420508628b869bab5361955c66d604e32ab5cb6dca0403c1c in / 
# Fri, 19 Oct 2018 00:48:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:48:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:48:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:48:48 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:40:52 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 01:40:56 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:40:56 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 01:41:04 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 01:41:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 01:41:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:41:14 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 01:41:15 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 01:41:15 GMT
ENV MARIADB_MAJOR=5.5
# Mon, 29 Oct 2018 23:23:08 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Mon, 29 Oct 2018 23:23:09 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 29 Oct 2018 23:23:31 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 29 Oct 2018 23:23:32 GMT
VOLUME [/var/lib/mysql]
# Mon, 29 Oct 2018 23:23:32 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Mon, 29 Oct 2018 23:23:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 29 Oct 2018 23:23:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Oct 2018 23:23:34 GMT
EXPOSE 3306/tcp
# Mon, 29 Oct 2018 23:23:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:027274c8e1113b52e886c8f515b0abe6c67b81f17881acf3e9b7f352f901110a`  
		Last Modified: Fri, 19 Oct 2018 00:51:22 GMT  
		Size: 67.1 MB (67129254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f9339a13595d28726bb9d01196bcae9e2409d540d276ed7ba60a6a4a226654`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 72.7 KB (72651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f75707cf448723cfbf8bf808539676b8a612e45f8ac6f5f64f5ed30973260`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5eed9f50d581a74ed418f044c631fd0ed5afa21c12456ff33456f30321d00c`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef9009fdf75ffa14e01741d8aecb417a3229935c05968251e3ee933ae8bd6fb`  
		Last Modified: Fri, 19 Oct 2018 01:47:46 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b3f8801ae5827877f72861453e8b3f809ffb429629188a844eb900367a6edc`  
		Last Modified: Fri, 19 Oct 2018 01:47:41 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da23235cf2b7aba568db336d5b60bb7b042434acf2b667b0b3e4cee55609eb8`  
		Last Modified: Fri, 19 Oct 2018 01:47:41 GMT  
		Size: 1.6 MB (1572531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d716674e0a6aa8a60f35083a0ba259f972c0a26ce84bb054f2a2b902c810f3`  
		Last Modified: Fri, 19 Oct 2018 01:47:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8efe84195eb98194690c092abf0f0bcb14c5564ddc037787d2d9bf148be279`  
		Last Modified: Fri, 19 Oct 2018 01:47:41 GMT  
		Size: 4.3 MB (4261346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a09941a943f3ab03497bf03a9fd387b27dedfaae51bfcabc129179f9b6e1574`  
		Last Modified: Fri, 19 Oct 2018 01:47:40 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b5e8183b4a0a2a7a645df06315a145d95cd3820519aad6c701c6b9a1bb2f48`  
		Last Modified: Mon, 29 Oct 2018 23:24:32 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b976d434396a0356e42377a3f27ea6cae5daac731c11f7ef47389f605ec07398`  
		Last Modified: Mon, 29 Oct 2018 23:24:43 GMT  
		Size: 45.3 MB (45275086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c6489b91a95152b7bd2a25a0663d3c223c72712bcb5bbd522a70485736f0a5`  
		Last Modified: Mon, 29 Oct 2018 23:24:32 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e19edb4a6900549cddebf0ea5071ed83d91bf308758b1e5f4122c2b734131d`  
		Last Modified: Mon, 29 Oct 2018 23:24:32 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5` - linux; 386

```console
$ docker pull mariadb@sha256:40f859471e1730dfce1c2e6676ccc95df50bb8f2489ce552c1bc5d53416a4d9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114550383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9de75e698814cae360e61e78887d1a39a3946e7c8a54b6118beb364434d349b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 12:41:49 GMT
ADD file:96c16e6e92cbdd2ae387fa569ae7a3fb3c5489258622f8cd38bcee46b383f906 in / 
# Fri, 19 Oct 2018 12:41:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 12:41:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:41:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 12:41:52 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 13:53:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 13:53:28 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:53:28 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 13:53:39 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 13:53:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 13:53:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:53:50 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 13:53:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 13:53:51 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 30 Oct 2018 11:04:51 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Tue, 30 Oct 2018 11:04:52 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 30 Oct 2018 11:05:14 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 30 Oct 2018 11:05:14 GMT
VOLUME [/var/lib/mysql]
# Tue, 30 Oct 2018 11:05:15 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Tue, 30 Oct 2018 11:05:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 30 Oct 2018 11:05:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Oct 2018 11:05:16 GMT
EXPOSE 3306/tcp
# Tue, 30 Oct 2018 11:05:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:282c0c6b24fdcb18e5d5ed51e52c210ff5c8793eab099140780dbfb3c7027393`  
		Last Modified: Fri, 19 Oct 2018 12:44:26 GMT  
		Size: 64.8 MB (64827995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2799d3a5ebee7c23d5323fb05e0b9c1e4e3a05e390b2918b87670668893bbf2c`  
		Last Modified: Fri, 19 Oct 2018 12:44:09 GMT  
		Size: 64.9 KB (64856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e1c808e1d8273efe06360b838c41f54014d72fd40e2e2a9fa0908f4e22c2bc`  
		Last Modified: Fri, 19 Oct 2018 12:44:09 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d0c3c38e71c4374606693e1e9706cbb4c6f2898699a34f3a537f3dada6bb4b4`  
		Last Modified: Fri, 19 Oct 2018 12:44:10 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b2de3dd179d7c271824d84ff175ae69edefbb0a4fc46cf51f378a46baee66a`  
		Last Modified: Fri, 19 Oct 2018 13:55:23 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d337412c7301ac1082f1b03e57ffda42afa945c3cd3ea52cba58dca4d90ed6e7`  
		Last Modified: Fri, 19 Oct 2018 13:55:22 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c877b9b9526c1bf03a255f443bf0101b45814eab9e7b45a2d2108cda182650`  
		Last Modified: Fri, 19 Oct 2018 13:55:22 GMT  
		Size: 1.6 MB (1552141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bae00a448ae4714753ddd6a2277976acdf06da7353b5eaf2b35c1b700a64ad9`  
		Last Modified: Fri, 19 Oct 2018 13:55:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aed3a9166abfaaaed95012e926194d07fe22a2d7fdae98b18dc2ae90cbce91e`  
		Last Modified: Fri, 19 Oct 2018 13:55:23 GMT  
		Size: 4.2 MB (4247956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d549ad21c8bb75f3c74ee654282ca2957e6d035c425db25a3ae17cebf7a24b9c`  
		Last Modified: Fri, 19 Oct 2018 13:55:21 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62ec5064a3eb572e1ad5a72f0e976d17c8239e4f1aee412b06c43cd41f9b0d5`  
		Last Modified: Tue, 30 Oct 2018 11:05:37 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb8bf6b0d2d550299ffd9cf86ca21ca2b2c9cbeae2c2dabcc62dac2859ac2b3`  
		Last Modified: Tue, 30 Oct 2018 11:05:47 GMT  
		Size: 43.8 MB (43826477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3592103e19b0daf8f45e7b5a7c9820399c5867589fd8074a903593cc486cc50`  
		Last Modified: Tue, 30 Oct 2018 11:05:37 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f09ae10b8bf8992be04ebae5d74ca58879c61d040f50d69b9fa28252911def6`  
		Last Modified: Tue, 30 Oct 2018 11:05:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5` - linux; ppc64le

```console
$ docker pull mariadb@sha256:f183eae5df6597a9286bdffcf5e451e53f8865b43b66f6fe46ec659c55a938a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111876289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5f3d64034cb3db2d38434596f569bf7c967c5a01979de8e737260e0932e0bfd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 09:17:30 GMT
ADD file:9195aac3fb00d2af2dabd98e690c8a050ca4c562980ed0ccdfadd1d90645b16d in / 
# Fri, 19 Oct 2018 09:17:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 09:17:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 09:17:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 09:17:50 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 10:49:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 10:49:20 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:49:20 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 10:49:57 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 10:50:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 10:50:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:50:57 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 10:51:02 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 10:51:04 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 30 Oct 2018 09:15:14 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Tue, 30 Oct 2018 09:15:18 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 30 Oct 2018 09:16:36 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 30 Oct 2018 09:16:38 GMT
VOLUME [/var/lib/mysql]
# Tue, 30 Oct 2018 09:16:41 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Tue, 30 Oct 2018 09:16:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 30 Oct 2018 09:16:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Oct 2018 09:16:53 GMT
EXPOSE 3306/tcp
# Tue, 30 Oct 2018 09:16:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a33773385468341da6d94d43c2cc7260149500c8a34a07fc0b2b0dd3216795d9`  
		Last Modified: Fri, 19 Oct 2018 09:20:44 GMT  
		Size: 69.8 MB (69761704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38e586b22cce8ecf22683487189ccfb9de613609427d5813bb877f0ea5e4ddeb`  
		Last Modified: Fri, 19 Oct 2018 09:20:26 GMT  
		Size: 63.4 KB (63427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078d737ef443e92e2353a9284a7093711c5c330c195107c140c268b2379a1a86`  
		Last Modified: Fri, 19 Oct 2018 09:20:26 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3a9bf6aaf5a1d3b1671c17b1309f54f1728f4ffe7eb58ea9cb96f47639e8c9`  
		Last Modified: Fri, 19 Oct 2018 09:20:27 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4fa3adbdd943df30cf9c1ac5524301ee5d5effb8983340a5a0270751b51881`  
		Last Modified: Fri, 19 Oct 2018 10:58:46 GMT  
		Size: 1.8 KB (1842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d991d9d824ec074c75838141d348fd2191d9ff811e2cd528c6a8648cd57f0b7`  
		Last Modified: Fri, 19 Oct 2018 10:58:42 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:748299ed2e51661e07c828b671ba31a23ec755fb3650d38b1afe055523f7c52d`  
		Last Modified: Fri, 19 Oct 2018 10:58:44 GMT  
		Size: 1.5 MB (1545247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5111b808c0c971aaab3cfaaec25205c15eda30ad8e3246611673f75890d39da4`  
		Last Modified: Fri, 19 Oct 2018 10:58:43 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5829b0641e68d38eb99f0939b41a40f321b2ecd63193b6f03161a04bcd83bd6c`  
		Last Modified: Fri, 19 Oct 2018 10:58:44 GMT  
		Size: 4.3 MB (4286853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2c0597f39aa2ba2a14b5592ce32c05f3f10c3e3ba033a476eec2f8adf8de82`  
		Last Modified: Fri, 19 Oct 2018 10:58:40 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115c302165ca6e9fdbb73a39ce91b9997edfc91ed51f2e29f5a24a93d82288ea`  
		Last Modified: Tue, 30 Oct 2018 09:21:07 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e3d873ba86521b3981deb33c0cd5cc6e365565bb9bd920d420e28136d8704e`  
		Last Modified: Tue, 30 Oct 2018 09:21:16 GMT  
		Size: 36.2 MB (36188025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2af370196706704010a5527f496ed6438686e68e08caeec0adbfee1fe9788a2`  
		Last Modified: Tue, 30 Oct 2018 09:21:06 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9e5b5d3512dbe157c34ae24f560273496d9cbc024e8cd344c308f992adc5a3`  
		Last Modified: Tue, 30 Oct 2018 09:21:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.62`

```console
$ docker pull mariadb@sha256:93e297f4137fb1fe96c9a90635055b278c039d924aa7a0da77161797895befca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5.62` - linux; amd64

```console
$ docker pull mariadb@sha256:23325b7959b5044e8ed288a82fe6ea23a8c9ce3ad4615b662323859c311fb7fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118341839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4720cd73b9afb706449b3395fa1aac7860dcc6aa0803e0157a215e55dfb7f4d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 00:48:46 GMT
ADD file:ecefeeae93e44cb420508628b869bab5361955c66d604e32ab5cb6dca0403c1c in / 
# Fri, 19 Oct 2018 00:48:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:48:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:48:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:48:48 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:40:52 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 01:40:56 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:40:56 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 01:41:04 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 01:41:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 01:41:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:41:14 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 01:41:15 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 01:41:15 GMT
ENV MARIADB_MAJOR=5.5
# Mon, 29 Oct 2018 23:23:08 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Mon, 29 Oct 2018 23:23:09 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 29 Oct 2018 23:23:31 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 29 Oct 2018 23:23:32 GMT
VOLUME [/var/lib/mysql]
# Mon, 29 Oct 2018 23:23:32 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Mon, 29 Oct 2018 23:23:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 29 Oct 2018 23:23:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Oct 2018 23:23:34 GMT
EXPOSE 3306/tcp
# Mon, 29 Oct 2018 23:23:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:027274c8e1113b52e886c8f515b0abe6c67b81f17881acf3e9b7f352f901110a`  
		Last Modified: Fri, 19 Oct 2018 00:51:22 GMT  
		Size: 67.1 MB (67129254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f9339a13595d28726bb9d01196bcae9e2409d540d276ed7ba60a6a4a226654`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 72.7 KB (72651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f75707cf448723cfbf8bf808539676b8a612e45f8ac6f5f64f5ed30973260`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5eed9f50d581a74ed418f044c631fd0ed5afa21c12456ff33456f30321d00c`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef9009fdf75ffa14e01741d8aecb417a3229935c05968251e3ee933ae8bd6fb`  
		Last Modified: Fri, 19 Oct 2018 01:47:46 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b3f8801ae5827877f72861453e8b3f809ffb429629188a844eb900367a6edc`  
		Last Modified: Fri, 19 Oct 2018 01:47:41 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da23235cf2b7aba568db336d5b60bb7b042434acf2b667b0b3e4cee55609eb8`  
		Last Modified: Fri, 19 Oct 2018 01:47:41 GMT  
		Size: 1.6 MB (1572531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d716674e0a6aa8a60f35083a0ba259f972c0a26ce84bb054f2a2b902c810f3`  
		Last Modified: Fri, 19 Oct 2018 01:47:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8efe84195eb98194690c092abf0f0bcb14c5564ddc037787d2d9bf148be279`  
		Last Modified: Fri, 19 Oct 2018 01:47:41 GMT  
		Size: 4.3 MB (4261346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a09941a943f3ab03497bf03a9fd387b27dedfaae51bfcabc129179f9b6e1574`  
		Last Modified: Fri, 19 Oct 2018 01:47:40 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b5e8183b4a0a2a7a645df06315a145d95cd3820519aad6c701c6b9a1bb2f48`  
		Last Modified: Mon, 29 Oct 2018 23:24:32 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b976d434396a0356e42377a3f27ea6cae5daac731c11f7ef47389f605ec07398`  
		Last Modified: Mon, 29 Oct 2018 23:24:43 GMT  
		Size: 45.3 MB (45275086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c6489b91a95152b7bd2a25a0663d3c223c72712bcb5bbd522a70485736f0a5`  
		Last Modified: Mon, 29 Oct 2018 23:24:32 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e19edb4a6900549cddebf0ea5071ed83d91bf308758b1e5f4122c2b734131d`  
		Last Modified: Mon, 29 Oct 2018 23:24:32 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.62` - linux; 386

```console
$ docker pull mariadb@sha256:40f859471e1730dfce1c2e6676ccc95df50bb8f2489ce552c1bc5d53416a4d9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114550383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9de75e698814cae360e61e78887d1a39a3946e7c8a54b6118beb364434d349b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 12:41:49 GMT
ADD file:96c16e6e92cbdd2ae387fa569ae7a3fb3c5489258622f8cd38bcee46b383f906 in / 
# Fri, 19 Oct 2018 12:41:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 12:41:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:41:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 12:41:52 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 13:53:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 13:53:28 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:53:28 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 13:53:39 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 13:53:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 13:53:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:53:50 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 13:53:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 13:53:51 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 30 Oct 2018 11:04:51 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Tue, 30 Oct 2018 11:04:52 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 30 Oct 2018 11:05:14 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 30 Oct 2018 11:05:14 GMT
VOLUME [/var/lib/mysql]
# Tue, 30 Oct 2018 11:05:15 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Tue, 30 Oct 2018 11:05:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 30 Oct 2018 11:05:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Oct 2018 11:05:16 GMT
EXPOSE 3306/tcp
# Tue, 30 Oct 2018 11:05:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:282c0c6b24fdcb18e5d5ed51e52c210ff5c8793eab099140780dbfb3c7027393`  
		Last Modified: Fri, 19 Oct 2018 12:44:26 GMT  
		Size: 64.8 MB (64827995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2799d3a5ebee7c23d5323fb05e0b9c1e4e3a05e390b2918b87670668893bbf2c`  
		Last Modified: Fri, 19 Oct 2018 12:44:09 GMT  
		Size: 64.9 KB (64856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e1c808e1d8273efe06360b838c41f54014d72fd40e2e2a9fa0908f4e22c2bc`  
		Last Modified: Fri, 19 Oct 2018 12:44:09 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d0c3c38e71c4374606693e1e9706cbb4c6f2898699a34f3a537f3dada6bb4b4`  
		Last Modified: Fri, 19 Oct 2018 12:44:10 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b2de3dd179d7c271824d84ff175ae69edefbb0a4fc46cf51f378a46baee66a`  
		Last Modified: Fri, 19 Oct 2018 13:55:23 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d337412c7301ac1082f1b03e57ffda42afa945c3cd3ea52cba58dca4d90ed6e7`  
		Last Modified: Fri, 19 Oct 2018 13:55:22 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c877b9b9526c1bf03a255f443bf0101b45814eab9e7b45a2d2108cda182650`  
		Last Modified: Fri, 19 Oct 2018 13:55:22 GMT  
		Size: 1.6 MB (1552141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bae00a448ae4714753ddd6a2277976acdf06da7353b5eaf2b35c1b700a64ad9`  
		Last Modified: Fri, 19 Oct 2018 13:55:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aed3a9166abfaaaed95012e926194d07fe22a2d7fdae98b18dc2ae90cbce91e`  
		Last Modified: Fri, 19 Oct 2018 13:55:23 GMT  
		Size: 4.2 MB (4247956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d549ad21c8bb75f3c74ee654282ca2957e6d035c425db25a3ae17cebf7a24b9c`  
		Last Modified: Fri, 19 Oct 2018 13:55:21 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62ec5064a3eb572e1ad5a72f0e976d17c8239e4f1aee412b06c43cd41f9b0d5`  
		Last Modified: Tue, 30 Oct 2018 11:05:37 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb8bf6b0d2d550299ffd9cf86ca21ca2b2c9cbeae2c2dabcc62dac2859ac2b3`  
		Last Modified: Tue, 30 Oct 2018 11:05:47 GMT  
		Size: 43.8 MB (43826477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3592103e19b0daf8f45e7b5a7c9820399c5867589fd8074a903593cc486cc50`  
		Last Modified: Tue, 30 Oct 2018 11:05:37 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f09ae10b8bf8992be04ebae5d74ca58879c61d040f50d69b9fa28252911def6`  
		Last Modified: Tue, 30 Oct 2018 11:05:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.62` - linux; ppc64le

```console
$ docker pull mariadb@sha256:f183eae5df6597a9286bdffcf5e451e53f8865b43b66f6fe46ec659c55a938a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111876289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5f3d64034cb3db2d38434596f569bf7c967c5a01979de8e737260e0932e0bfd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 09:17:30 GMT
ADD file:9195aac3fb00d2af2dabd98e690c8a050ca4c562980ed0ccdfadd1d90645b16d in / 
# Fri, 19 Oct 2018 09:17:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 09:17:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 09:17:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 09:17:50 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 10:49:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 10:49:20 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:49:20 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 10:49:57 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 10:50:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 10:50:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:50:57 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 10:51:02 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 10:51:04 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 30 Oct 2018 09:15:14 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Tue, 30 Oct 2018 09:15:18 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 30 Oct 2018 09:16:36 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 30 Oct 2018 09:16:38 GMT
VOLUME [/var/lib/mysql]
# Tue, 30 Oct 2018 09:16:41 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Tue, 30 Oct 2018 09:16:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 30 Oct 2018 09:16:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Oct 2018 09:16:53 GMT
EXPOSE 3306/tcp
# Tue, 30 Oct 2018 09:16:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a33773385468341da6d94d43c2cc7260149500c8a34a07fc0b2b0dd3216795d9`  
		Last Modified: Fri, 19 Oct 2018 09:20:44 GMT  
		Size: 69.8 MB (69761704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38e586b22cce8ecf22683487189ccfb9de613609427d5813bb877f0ea5e4ddeb`  
		Last Modified: Fri, 19 Oct 2018 09:20:26 GMT  
		Size: 63.4 KB (63427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078d737ef443e92e2353a9284a7093711c5c330c195107c140c268b2379a1a86`  
		Last Modified: Fri, 19 Oct 2018 09:20:26 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3a9bf6aaf5a1d3b1671c17b1309f54f1728f4ffe7eb58ea9cb96f47639e8c9`  
		Last Modified: Fri, 19 Oct 2018 09:20:27 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4fa3adbdd943df30cf9c1ac5524301ee5d5effb8983340a5a0270751b51881`  
		Last Modified: Fri, 19 Oct 2018 10:58:46 GMT  
		Size: 1.8 KB (1842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d991d9d824ec074c75838141d348fd2191d9ff811e2cd528c6a8648cd57f0b7`  
		Last Modified: Fri, 19 Oct 2018 10:58:42 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:748299ed2e51661e07c828b671ba31a23ec755fb3650d38b1afe055523f7c52d`  
		Last Modified: Fri, 19 Oct 2018 10:58:44 GMT  
		Size: 1.5 MB (1545247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5111b808c0c971aaab3cfaaec25205c15eda30ad8e3246611673f75890d39da4`  
		Last Modified: Fri, 19 Oct 2018 10:58:43 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5829b0641e68d38eb99f0939b41a40f321b2ecd63193b6f03161a04bcd83bd6c`  
		Last Modified: Fri, 19 Oct 2018 10:58:44 GMT  
		Size: 4.3 MB (4286853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2c0597f39aa2ba2a14b5592ce32c05f3f10c3e3ba033a476eec2f8adf8de82`  
		Last Modified: Fri, 19 Oct 2018 10:58:40 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115c302165ca6e9fdbb73a39ce91b9997edfc91ed51f2e29f5a24a93d82288ea`  
		Last Modified: Tue, 30 Oct 2018 09:21:07 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e3d873ba86521b3981deb33c0cd5cc6e365565bb9bd920d420e28136d8704e`  
		Last Modified: Tue, 30 Oct 2018 09:21:16 GMT  
		Size: 36.2 MB (36188025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2af370196706704010a5527f496ed6438686e68e08caeec0adbfee1fe9788a2`  
		Last Modified: Tue, 30 Oct 2018 09:21:06 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9e5b5d3512dbe157c34ae24f560273496d9cbc024e8cd344c308f992adc5a3`  
		Last Modified: Tue, 30 Oct 2018 09:21:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.62-trusty`

```console
$ docker pull mariadb@sha256:93e297f4137fb1fe96c9a90635055b278c039d924aa7a0da77161797895befca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5.62-trusty` - linux; amd64

```console
$ docker pull mariadb@sha256:23325b7959b5044e8ed288a82fe6ea23a8c9ce3ad4615b662323859c311fb7fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118341839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4720cd73b9afb706449b3395fa1aac7860dcc6aa0803e0157a215e55dfb7f4d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 00:48:46 GMT
ADD file:ecefeeae93e44cb420508628b869bab5361955c66d604e32ab5cb6dca0403c1c in / 
# Fri, 19 Oct 2018 00:48:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:48:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:48:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:48:48 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:40:52 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 01:40:56 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:40:56 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 01:41:04 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 01:41:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 01:41:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:41:14 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 01:41:15 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 01:41:15 GMT
ENV MARIADB_MAJOR=5.5
# Mon, 29 Oct 2018 23:23:08 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Mon, 29 Oct 2018 23:23:09 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 29 Oct 2018 23:23:31 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 29 Oct 2018 23:23:32 GMT
VOLUME [/var/lib/mysql]
# Mon, 29 Oct 2018 23:23:32 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Mon, 29 Oct 2018 23:23:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 29 Oct 2018 23:23:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Oct 2018 23:23:34 GMT
EXPOSE 3306/tcp
# Mon, 29 Oct 2018 23:23:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:027274c8e1113b52e886c8f515b0abe6c67b81f17881acf3e9b7f352f901110a`  
		Last Modified: Fri, 19 Oct 2018 00:51:22 GMT  
		Size: 67.1 MB (67129254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f9339a13595d28726bb9d01196bcae9e2409d540d276ed7ba60a6a4a226654`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 72.7 KB (72651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f75707cf448723cfbf8bf808539676b8a612e45f8ac6f5f64f5ed30973260`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5eed9f50d581a74ed418f044c631fd0ed5afa21c12456ff33456f30321d00c`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef9009fdf75ffa14e01741d8aecb417a3229935c05968251e3ee933ae8bd6fb`  
		Last Modified: Fri, 19 Oct 2018 01:47:46 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b3f8801ae5827877f72861453e8b3f809ffb429629188a844eb900367a6edc`  
		Last Modified: Fri, 19 Oct 2018 01:47:41 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da23235cf2b7aba568db336d5b60bb7b042434acf2b667b0b3e4cee55609eb8`  
		Last Modified: Fri, 19 Oct 2018 01:47:41 GMT  
		Size: 1.6 MB (1572531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d716674e0a6aa8a60f35083a0ba259f972c0a26ce84bb054f2a2b902c810f3`  
		Last Modified: Fri, 19 Oct 2018 01:47:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8efe84195eb98194690c092abf0f0bcb14c5564ddc037787d2d9bf148be279`  
		Last Modified: Fri, 19 Oct 2018 01:47:41 GMT  
		Size: 4.3 MB (4261346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a09941a943f3ab03497bf03a9fd387b27dedfaae51bfcabc129179f9b6e1574`  
		Last Modified: Fri, 19 Oct 2018 01:47:40 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b5e8183b4a0a2a7a645df06315a145d95cd3820519aad6c701c6b9a1bb2f48`  
		Last Modified: Mon, 29 Oct 2018 23:24:32 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b976d434396a0356e42377a3f27ea6cae5daac731c11f7ef47389f605ec07398`  
		Last Modified: Mon, 29 Oct 2018 23:24:43 GMT  
		Size: 45.3 MB (45275086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c6489b91a95152b7bd2a25a0663d3c223c72712bcb5bbd522a70485736f0a5`  
		Last Modified: Mon, 29 Oct 2018 23:24:32 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e19edb4a6900549cddebf0ea5071ed83d91bf308758b1e5f4122c2b734131d`  
		Last Modified: Mon, 29 Oct 2018 23:24:32 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.62-trusty` - linux; 386

```console
$ docker pull mariadb@sha256:40f859471e1730dfce1c2e6676ccc95df50bb8f2489ce552c1bc5d53416a4d9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114550383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9de75e698814cae360e61e78887d1a39a3946e7c8a54b6118beb364434d349b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 12:41:49 GMT
ADD file:96c16e6e92cbdd2ae387fa569ae7a3fb3c5489258622f8cd38bcee46b383f906 in / 
# Fri, 19 Oct 2018 12:41:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 12:41:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:41:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 12:41:52 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 13:53:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 13:53:28 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:53:28 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 13:53:39 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 13:53:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 13:53:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:53:50 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 13:53:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 13:53:51 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 30 Oct 2018 11:04:51 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Tue, 30 Oct 2018 11:04:52 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 30 Oct 2018 11:05:14 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 30 Oct 2018 11:05:14 GMT
VOLUME [/var/lib/mysql]
# Tue, 30 Oct 2018 11:05:15 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Tue, 30 Oct 2018 11:05:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 30 Oct 2018 11:05:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Oct 2018 11:05:16 GMT
EXPOSE 3306/tcp
# Tue, 30 Oct 2018 11:05:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:282c0c6b24fdcb18e5d5ed51e52c210ff5c8793eab099140780dbfb3c7027393`  
		Last Modified: Fri, 19 Oct 2018 12:44:26 GMT  
		Size: 64.8 MB (64827995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2799d3a5ebee7c23d5323fb05e0b9c1e4e3a05e390b2918b87670668893bbf2c`  
		Last Modified: Fri, 19 Oct 2018 12:44:09 GMT  
		Size: 64.9 KB (64856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e1c808e1d8273efe06360b838c41f54014d72fd40e2e2a9fa0908f4e22c2bc`  
		Last Modified: Fri, 19 Oct 2018 12:44:09 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d0c3c38e71c4374606693e1e9706cbb4c6f2898699a34f3a537f3dada6bb4b4`  
		Last Modified: Fri, 19 Oct 2018 12:44:10 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b2de3dd179d7c271824d84ff175ae69edefbb0a4fc46cf51f378a46baee66a`  
		Last Modified: Fri, 19 Oct 2018 13:55:23 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d337412c7301ac1082f1b03e57ffda42afa945c3cd3ea52cba58dca4d90ed6e7`  
		Last Modified: Fri, 19 Oct 2018 13:55:22 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c877b9b9526c1bf03a255f443bf0101b45814eab9e7b45a2d2108cda182650`  
		Last Modified: Fri, 19 Oct 2018 13:55:22 GMT  
		Size: 1.6 MB (1552141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bae00a448ae4714753ddd6a2277976acdf06da7353b5eaf2b35c1b700a64ad9`  
		Last Modified: Fri, 19 Oct 2018 13:55:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aed3a9166abfaaaed95012e926194d07fe22a2d7fdae98b18dc2ae90cbce91e`  
		Last Modified: Fri, 19 Oct 2018 13:55:23 GMT  
		Size: 4.2 MB (4247956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d549ad21c8bb75f3c74ee654282ca2957e6d035c425db25a3ae17cebf7a24b9c`  
		Last Modified: Fri, 19 Oct 2018 13:55:21 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62ec5064a3eb572e1ad5a72f0e976d17c8239e4f1aee412b06c43cd41f9b0d5`  
		Last Modified: Tue, 30 Oct 2018 11:05:37 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb8bf6b0d2d550299ffd9cf86ca21ca2b2c9cbeae2c2dabcc62dac2859ac2b3`  
		Last Modified: Tue, 30 Oct 2018 11:05:47 GMT  
		Size: 43.8 MB (43826477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3592103e19b0daf8f45e7b5a7c9820399c5867589fd8074a903593cc486cc50`  
		Last Modified: Tue, 30 Oct 2018 11:05:37 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f09ae10b8bf8992be04ebae5d74ca58879c61d040f50d69b9fa28252911def6`  
		Last Modified: Tue, 30 Oct 2018 11:05:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.62-trusty` - linux; ppc64le

```console
$ docker pull mariadb@sha256:f183eae5df6597a9286bdffcf5e451e53f8865b43b66f6fe46ec659c55a938a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111876289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5f3d64034cb3db2d38434596f569bf7c967c5a01979de8e737260e0932e0bfd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 09:17:30 GMT
ADD file:9195aac3fb00d2af2dabd98e690c8a050ca4c562980ed0ccdfadd1d90645b16d in / 
# Fri, 19 Oct 2018 09:17:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 09:17:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 09:17:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 09:17:50 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 10:49:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 10:49:20 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:49:20 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 10:49:57 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 10:50:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 10:50:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:50:57 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 10:51:02 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 10:51:04 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 30 Oct 2018 09:15:14 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Tue, 30 Oct 2018 09:15:18 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 30 Oct 2018 09:16:36 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 30 Oct 2018 09:16:38 GMT
VOLUME [/var/lib/mysql]
# Tue, 30 Oct 2018 09:16:41 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Tue, 30 Oct 2018 09:16:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 30 Oct 2018 09:16:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Oct 2018 09:16:53 GMT
EXPOSE 3306/tcp
# Tue, 30 Oct 2018 09:16:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a33773385468341da6d94d43c2cc7260149500c8a34a07fc0b2b0dd3216795d9`  
		Last Modified: Fri, 19 Oct 2018 09:20:44 GMT  
		Size: 69.8 MB (69761704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38e586b22cce8ecf22683487189ccfb9de613609427d5813bb877f0ea5e4ddeb`  
		Last Modified: Fri, 19 Oct 2018 09:20:26 GMT  
		Size: 63.4 KB (63427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078d737ef443e92e2353a9284a7093711c5c330c195107c140c268b2379a1a86`  
		Last Modified: Fri, 19 Oct 2018 09:20:26 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3a9bf6aaf5a1d3b1671c17b1309f54f1728f4ffe7eb58ea9cb96f47639e8c9`  
		Last Modified: Fri, 19 Oct 2018 09:20:27 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4fa3adbdd943df30cf9c1ac5524301ee5d5effb8983340a5a0270751b51881`  
		Last Modified: Fri, 19 Oct 2018 10:58:46 GMT  
		Size: 1.8 KB (1842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d991d9d824ec074c75838141d348fd2191d9ff811e2cd528c6a8648cd57f0b7`  
		Last Modified: Fri, 19 Oct 2018 10:58:42 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:748299ed2e51661e07c828b671ba31a23ec755fb3650d38b1afe055523f7c52d`  
		Last Modified: Fri, 19 Oct 2018 10:58:44 GMT  
		Size: 1.5 MB (1545247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5111b808c0c971aaab3cfaaec25205c15eda30ad8e3246611673f75890d39da4`  
		Last Modified: Fri, 19 Oct 2018 10:58:43 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5829b0641e68d38eb99f0939b41a40f321b2ecd63193b6f03161a04bcd83bd6c`  
		Last Modified: Fri, 19 Oct 2018 10:58:44 GMT  
		Size: 4.3 MB (4286853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2c0597f39aa2ba2a14b5592ce32c05f3f10c3e3ba033a476eec2f8adf8de82`  
		Last Modified: Fri, 19 Oct 2018 10:58:40 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115c302165ca6e9fdbb73a39ce91b9997edfc91ed51f2e29f5a24a93d82288ea`  
		Last Modified: Tue, 30 Oct 2018 09:21:07 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e3d873ba86521b3981deb33c0cd5cc6e365565bb9bd920d420e28136d8704e`  
		Last Modified: Tue, 30 Oct 2018 09:21:16 GMT  
		Size: 36.2 MB (36188025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2af370196706704010a5527f496ed6438686e68e08caeec0adbfee1fe9788a2`  
		Last Modified: Tue, 30 Oct 2018 09:21:06 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9e5b5d3512dbe157c34ae24f560273496d9cbc024e8cd344c308f992adc5a3`  
		Last Modified: Tue, 30 Oct 2018 09:21:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5-trusty`

```console
$ docker pull mariadb@sha256:93e297f4137fb1fe96c9a90635055b278c039d924aa7a0da77161797895befca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5-trusty` - linux; amd64

```console
$ docker pull mariadb@sha256:23325b7959b5044e8ed288a82fe6ea23a8c9ce3ad4615b662323859c311fb7fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118341839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4720cd73b9afb706449b3395fa1aac7860dcc6aa0803e0157a215e55dfb7f4d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 00:48:46 GMT
ADD file:ecefeeae93e44cb420508628b869bab5361955c66d604e32ab5cb6dca0403c1c in / 
# Fri, 19 Oct 2018 00:48:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:48:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:48:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:48:48 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:40:52 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 01:40:56 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:40:56 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 01:41:04 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 01:41:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 01:41:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:41:14 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 01:41:15 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 01:41:15 GMT
ENV MARIADB_MAJOR=5.5
# Mon, 29 Oct 2018 23:23:08 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Mon, 29 Oct 2018 23:23:09 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 29 Oct 2018 23:23:31 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 29 Oct 2018 23:23:32 GMT
VOLUME [/var/lib/mysql]
# Mon, 29 Oct 2018 23:23:32 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Mon, 29 Oct 2018 23:23:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 29 Oct 2018 23:23:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Oct 2018 23:23:34 GMT
EXPOSE 3306/tcp
# Mon, 29 Oct 2018 23:23:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:027274c8e1113b52e886c8f515b0abe6c67b81f17881acf3e9b7f352f901110a`  
		Last Modified: Fri, 19 Oct 2018 00:51:22 GMT  
		Size: 67.1 MB (67129254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f9339a13595d28726bb9d01196bcae9e2409d540d276ed7ba60a6a4a226654`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 72.7 KB (72651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f75707cf448723cfbf8bf808539676b8a612e45f8ac6f5f64f5ed30973260`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5eed9f50d581a74ed418f044c631fd0ed5afa21c12456ff33456f30321d00c`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef9009fdf75ffa14e01741d8aecb417a3229935c05968251e3ee933ae8bd6fb`  
		Last Modified: Fri, 19 Oct 2018 01:47:46 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b3f8801ae5827877f72861453e8b3f809ffb429629188a844eb900367a6edc`  
		Last Modified: Fri, 19 Oct 2018 01:47:41 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da23235cf2b7aba568db336d5b60bb7b042434acf2b667b0b3e4cee55609eb8`  
		Last Modified: Fri, 19 Oct 2018 01:47:41 GMT  
		Size: 1.6 MB (1572531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d716674e0a6aa8a60f35083a0ba259f972c0a26ce84bb054f2a2b902c810f3`  
		Last Modified: Fri, 19 Oct 2018 01:47:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8efe84195eb98194690c092abf0f0bcb14c5564ddc037787d2d9bf148be279`  
		Last Modified: Fri, 19 Oct 2018 01:47:41 GMT  
		Size: 4.3 MB (4261346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a09941a943f3ab03497bf03a9fd387b27dedfaae51bfcabc129179f9b6e1574`  
		Last Modified: Fri, 19 Oct 2018 01:47:40 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b5e8183b4a0a2a7a645df06315a145d95cd3820519aad6c701c6b9a1bb2f48`  
		Last Modified: Mon, 29 Oct 2018 23:24:32 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b976d434396a0356e42377a3f27ea6cae5daac731c11f7ef47389f605ec07398`  
		Last Modified: Mon, 29 Oct 2018 23:24:43 GMT  
		Size: 45.3 MB (45275086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c6489b91a95152b7bd2a25a0663d3c223c72712bcb5bbd522a70485736f0a5`  
		Last Modified: Mon, 29 Oct 2018 23:24:32 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e19edb4a6900549cddebf0ea5071ed83d91bf308758b1e5f4122c2b734131d`  
		Last Modified: Mon, 29 Oct 2018 23:24:32 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5-trusty` - linux; 386

```console
$ docker pull mariadb@sha256:40f859471e1730dfce1c2e6676ccc95df50bb8f2489ce552c1bc5d53416a4d9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114550383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9de75e698814cae360e61e78887d1a39a3946e7c8a54b6118beb364434d349b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 12:41:49 GMT
ADD file:96c16e6e92cbdd2ae387fa569ae7a3fb3c5489258622f8cd38bcee46b383f906 in / 
# Fri, 19 Oct 2018 12:41:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 12:41:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:41:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 12:41:52 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 13:53:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 13:53:28 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:53:28 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 13:53:39 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 13:53:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 13:53:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:53:50 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 13:53:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 13:53:51 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 30 Oct 2018 11:04:51 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Tue, 30 Oct 2018 11:04:52 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 30 Oct 2018 11:05:14 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 30 Oct 2018 11:05:14 GMT
VOLUME [/var/lib/mysql]
# Tue, 30 Oct 2018 11:05:15 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Tue, 30 Oct 2018 11:05:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 30 Oct 2018 11:05:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Oct 2018 11:05:16 GMT
EXPOSE 3306/tcp
# Tue, 30 Oct 2018 11:05:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:282c0c6b24fdcb18e5d5ed51e52c210ff5c8793eab099140780dbfb3c7027393`  
		Last Modified: Fri, 19 Oct 2018 12:44:26 GMT  
		Size: 64.8 MB (64827995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2799d3a5ebee7c23d5323fb05e0b9c1e4e3a05e390b2918b87670668893bbf2c`  
		Last Modified: Fri, 19 Oct 2018 12:44:09 GMT  
		Size: 64.9 KB (64856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e1c808e1d8273efe06360b838c41f54014d72fd40e2e2a9fa0908f4e22c2bc`  
		Last Modified: Fri, 19 Oct 2018 12:44:09 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d0c3c38e71c4374606693e1e9706cbb4c6f2898699a34f3a537f3dada6bb4b4`  
		Last Modified: Fri, 19 Oct 2018 12:44:10 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b2de3dd179d7c271824d84ff175ae69edefbb0a4fc46cf51f378a46baee66a`  
		Last Modified: Fri, 19 Oct 2018 13:55:23 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d337412c7301ac1082f1b03e57ffda42afa945c3cd3ea52cba58dca4d90ed6e7`  
		Last Modified: Fri, 19 Oct 2018 13:55:22 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c877b9b9526c1bf03a255f443bf0101b45814eab9e7b45a2d2108cda182650`  
		Last Modified: Fri, 19 Oct 2018 13:55:22 GMT  
		Size: 1.6 MB (1552141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bae00a448ae4714753ddd6a2277976acdf06da7353b5eaf2b35c1b700a64ad9`  
		Last Modified: Fri, 19 Oct 2018 13:55:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aed3a9166abfaaaed95012e926194d07fe22a2d7fdae98b18dc2ae90cbce91e`  
		Last Modified: Fri, 19 Oct 2018 13:55:23 GMT  
		Size: 4.2 MB (4247956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d549ad21c8bb75f3c74ee654282ca2957e6d035c425db25a3ae17cebf7a24b9c`  
		Last Modified: Fri, 19 Oct 2018 13:55:21 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62ec5064a3eb572e1ad5a72f0e976d17c8239e4f1aee412b06c43cd41f9b0d5`  
		Last Modified: Tue, 30 Oct 2018 11:05:37 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb8bf6b0d2d550299ffd9cf86ca21ca2b2c9cbeae2c2dabcc62dac2859ac2b3`  
		Last Modified: Tue, 30 Oct 2018 11:05:47 GMT  
		Size: 43.8 MB (43826477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3592103e19b0daf8f45e7b5a7c9820399c5867589fd8074a903593cc486cc50`  
		Last Modified: Tue, 30 Oct 2018 11:05:37 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f09ae10b8bf8992be04ebae5d74ca58879c61d040f50d69b9fa28252911def6`  
		Last Modified: Tue, 30 Oct 2018 11:05:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5-trusty` - linux; ppc64le

```console
$ docker pull mariadb@sha256:f183eae5df6597a9286bdffcf5e451e53f8865b43b66f6fe46ec659c55a938a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111876289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5f3d64034cb3db2d38434596f569bf7c967c5a01979de8e737260e0932e0bfd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 09:17:30 GMT
ADD file:9195aac3fb00d2af2dabd98e690c8a050ca4c562980ed0ccdfadd1d90645b16d in / 
# Fri, 19 Oct 2018 09:17:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 09:17:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 09:17:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 09:17:50 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 10:49:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 10:49:20 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:49:20 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 10:49:57 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 10:50:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 10:50:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:50:57 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 10:51:02 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 10:51:04 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 30 Oct 2018 09:15:14 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Tue, 30 Oct 2018 09:15:18 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 30 Oct 2018 09:16:36 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 30 Oct 2018 09:16:38 GMT
VOLUME [/var/lib/mysql]
# Tue, 30 Oct 2018 09:16:41 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Tue, 30 Oct 2018 09:16:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 30 Oct 2018 09:16:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Oct 2018 09:16:53 GMT
EXPOSE 3306/tcp
# Tue, 30 Oct 2018 09:16:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a33773385468341da6d94d43c2cc7260149500c8a34a07fc0b2b0dd3216795d9`  
		Last Modified: Fri, 19 Oct 2018 09:20:44 GMT  
		Size: 69.8 MB (69761704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38e586b22cce8ecf22683487189ccfb9de613609427d5813bb877f0ea5e4ddeb`  
		Last Modified: Fri, 19 Oct 2018 09:20:26 GMT  
		Size: 63.4 KB (63427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078d737ef443e92e2353a9284a7093711c5c330c195107c140c268b2379a1a86`  
		Last Modified: Fri, 19 Oct 2018 09:20:26 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3a9bf6aaf5a1d3b1671c17b1309f54f1728f4ffe7eb58ea9cb96f47639e8c9`  
		Last Modified: Fri, 19 Oct 2018 09:20:27 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4fa3adbdd943df30cf9c1ac5524301ee5d5effb8983340a5a0270751b51881`  
		Last Modified: Fri, 19 Oct 2018 10:58:46 GMT  
		Size: 1.8 KB (1842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d991d9d824ec074c75838141d348fd2191d9ff811e2cd528c6a8648cd57f0b7`  
		Last Modified: Fri, 19 Oct 2018 10:58:42 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:748299ed2e51661e07c828b671ba31a23ec755fb3650d38b1afe055523f7c52d`  
		Last Modified: Fri, 19 Oct 2018 10:58:44 GMT  
		Size: 1.5 MB (1545247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5111b808c0c971aaab3cfaaec25205c15eda30ad8e3246611673f75890d39da4`  
		Last Modified: Fri, 19 Oct 2018 10:58:43 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5829b0641e68d38eb99f0939b41a40f321b2ecd63193b6f03161a04bcd83bd6c`  
		Last Modified: Fri, 19 Oct 2018 10:58:44 GMT  
		Size: 4.3 MB (4286853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2c0597f39aa2ba2a14b5592ce32c05f3f10c3e3ba033a476eec2f8adf8de82`  
		Last Modified: Fri, 19 Oct 2018 10:58:40 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115c302165ca6e9fdbb73a39ce91b9997edfc91ed51f2e29f5a24a93d82288ea`  
		Last Modified: Tue, 30 Oct 2018 09:21:07 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e3d873ba86521b3981deb33c0cd5cc6e365565bb9bd920d420e28136d8704e`  
		Last Modified: Tue, 30 Oct 2018 09:21:16 GMT  
		Size: 36.2 MB (36188025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2af370196706704010a5527f496ed6438686e68e08caeec0adbfee1fe9788a2`  
		Last Modified: Tue, 30 Oct 2018 09:21:06 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9e5b5d3512dbe157c34ae24f560273496d9cbc024e8cd344c308f992adc5a3`  
		Last Modified: Tue, 30 Oct 2018 09:21:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5-trusty`

```console
$ docker pull mariadb@sha256:93e297f4137fb1fe96c9a90635055b278c039d924aa7a0da77161797895befca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5-trusty` - linux; amd64

```console
$ docker pull mariadb@sha256:23325b7959b5044e8ed288a82fe6ea23a8c9ce3ad4615b662323859c311fb7fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118341839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4720cd73b9afb706449b3395fa1aac7860dcc6aa0803e0157a215e55dfb7f4d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 00:48:46 GMT
ADD file:ecefeeae93e44cb420508628b869bab5361955c66d604e32ab5cb6dca0403c1c in / 
# Fri, 19 Oct 2018 00:48:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:48:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:48:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:48:48 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:40:52 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 01:40:56 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:40:56 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 01:41:04 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 01:41:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 01:41:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:41:14 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 01:41:15 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 01:41:15 GMT
ENV MARIADB_MAJOR=5.5
# Mon, 29 Oct 2018 23:23:08 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Mon, 29 Oct 2018 23:23:09 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 29 Oct 2018 23:23:31 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 29 Oct 2018 23:23:32 GMT
VOLUME [/var/lib/mysql]
# Mon, 29 Oct 2018 23:23:32 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Mon, 29 Oct 2018 23:23:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 29 Oct 2018 23:23:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Oct 2018 23:23:34 GMT
EXPOSE 3306/tcp
# Mon, 29 Oct 2018 23:23:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:027274c8e1113b52e886c8f515b0abe6c67b81f17881acf3e9b7f352f901110a`  
		Last Modified: Fri, 19 Oct 2018 00:51:22 GMT  
		Size: 67.1 MB (67129254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f9339a13595d28726bb9d01196bcae9e2409d540d276ed7ba60a6a4a226654`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 72.7 KB (72651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f75707cf448723cfbf8bf808539676b8a612e45f8ac6f5f64f5ed30973260`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5eed9f50d581a74ed418f044c631fd0ed5afa21c12456ff33456f30321d00c`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef9009fdf75ffa14e01741d8aecb417a3229935c05968251e3ee933ae8bd6fb`  
		Last Modified: Fri, 19 Oct 2018 01:47:46 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b3f8801ae5827877f72861453e8b3f809ffb429629188a844eb900367a6edc`  
		Last Modified: Fri, 19 Oct 2018 01:47:41 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da23235cf2b7aba568db336d5b60bb7b042434acf2b667b0b3e4cee55609eb8`  
		Last Modified: Fri, 19 Oct 2018 01:47:41 GMT  
		Size: 1.6 MB (1572531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d716674e0a6aa8a60f35083a0ba259f972c0a26ce84bb054f2a2b902c810f3`  
		Last Modified: Fri, 19 Oct 2018 01:47:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8efe84195eb98194690c092abf0f0bcb14c5564ddc037787d2d9bf148be279`  
		Last Modified: Fri, 19 Oct 2018 01:47:41 GMT  
		Size: 4.3 MB (4261346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a09941a943f3ab03497bf03a9fd387b27dedfaae51bfcabc129179f9b6e1574`  
		Last Modified: Fri, 19 Oct 2018 01:47:40 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b5e8183b4a0a2a7a645df06315a145d95cd3820519aad6c701c6b9a1bb2f48`  
		Last Modified: Mon, 29 Oct 2018 23:24:32 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b976d434396a0356e42377a3f27ea6cae5daac731c11f7ef47389f605ec07398`  
		Last Modified: Mon, 29 Oct 2018 23:24:43 GMT  
		Size: 45.3 MB (45275086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c6489b91a95152b7bd2a25a0663d3c223c72712bcb5bbd522a70485736f0a5`  
		Last Modified: Mon, 29 Oct 2018 23:24:32 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e19edb4a6900549cddebf0ea5071ed83d91bf308758b1e5f4122c2b734131d`  
		Last Modified: Mon, 29 Oct 2018 23:24:32 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5-trusty` - linux; 386

```console
$ docker pull mariadb@sha256:40f859471e1730dfce1c2e6676ccc95df50bb8f2489ce552c1bc5d53416a4d9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114550383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9de75e698814cae360e61e78887d1a39a3946e7c8a54b6118beb364434d349b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 12:41:49 GMT
ADD file:96c16e6e92cbdd2ae387fa569ae7a3fb3c5489258622f8cd38bcee46b383f906 in / 
# Fri, 19 Oct 2018 12:41:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 12:41:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:41:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 12:41:52 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 13:53:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 13:53:28 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:53:28 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 13:53:39 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 13:53:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 13:53:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:53:50 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 13:53:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 13:53:51 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 30 Oct 2018 11:04:51 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Tue, 30 Oct 2018 11:04:52 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 30 Oct 2018 11:05:14 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 30 Oct 2018 11:05:14 GMT
VOLUME [/var/lib/mysql]
# Tue, 30 Oct 2018 11:05:15 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Tue, 30 Oct 2018 11:05:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 30 Oct 2018 11:05:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Oct 2018 11:05:16 GMT
EXPOSE 3306/tcp
# Tue, 30 Oct 2018 11:05:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:282c0c6b24fdcb18e5d5ed51e52c210ff5c8793eab099140780dbfb3c7027393`  
		Last Modified: Fri, 19 Oct 2018 12:44:26 GMT  
		Size: 64.8 MB (64827995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2799d3a5ebee7c23d5323fb05e0b9c1e4e3a05e390b2918b87670668893bbf2c`  
		Last Modified: Fri, 19 Oct 2018 12:44:09 GMT  
		Size: 64.9 KB (64856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e1c808e1d8273efe06360b838c41f54014d72fd40e2e2a9fa0908f4e22c2bc`  
		Last Modified: Fri, 19 Oct 2018 12:44:09 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d0c3c38e71c4374606693e1e9706cbb4c6f2898699a34f3a537f3dada6bb4b4`  
		Last Modified: Fri, 19 Oct 2018 12:44:10 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b2de3dd179d7c271824d84ff175ae69edefbb0a4fc46cf51f378a46baee66a`  
		Last Modified: Fri, 19 Oct 2018 13:55:23 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d337412c7301ac1082f1b03e57ffda42afa945c3cd3ea52cba58dca4d90ed6e7`  
		Last Modified: Fri, 19 Oct 2018 13:55:22 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c877b9b9526c1bf03a255f443bf0101b45814eab9e7b45a2d2108cda182650`  
		Last Modified: Fri, 19 Oct 2018 13:55:22 GMT  
		Size: 1.6 MB (1552141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bae00a448ae4714753ddd6a2277976acdf06da7353b5eaf2b35c1b700a64ad9`  
		Last Modified: Fri, 19 Oct 2018 13:55:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aed3a9166abfaaaed95012e926194d07fe22a2d7fdae98b18dc2ae90cbce91e`  
		Last Modified: Fri, 19 Oct 2018 13:55:23 GMT  
		Size: 4.2 MB (4247956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d549ad21c8bb75f3c74ee654282ca2957e6d035c425db25a3ae17cebf7a24b9c`  
		Last Modified: Fri, 19 Oct 2018 13:55:21 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62ec5064a3eb572e1ad5a72f0e976d17c8239e4f1aee412b06c43cd41f9b0d5`  
		Last Modified: Tue, 30 Oct 2018 11:05:37 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb8bf6b0d2d550299ffd9cf86ca21ca2b2c9cbeae2c2dabcc62dac2859ac2b3`  
		Last Modified: Tue, 30 Oct 2018 11:05:47 GMT  
		Size: 43.8 MB (43826477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3592103e19b0daf8f45e7b5a7c9820399c5867589fd8074a903593cc486cc50`  
		Last Modified: Tue, 30 Oct 2018 11:05:37 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f09ae10b8bf8992be04ebae5d74ca58879c61d040f50d69b9fa28252911def6`  
		Last Modified: Tue, 30 Oct 2018 11:05:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5-trusty` - linux; ppc64le

```console
$ docker pull mariadb@sha256:f183eae5df6597a9286bdffcf5e451e53f8865b43b66f6fe46ec659c55a938a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111876289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5f3d64034cb3db2d38434596f569bf7c967c5a01979de8e737260e0932e0bfd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 09:17:30 GMT
ADD file:9195aac3fb00d2af2dabd98e690c8a050ca4c562980ed0ccdfadd1d90645b16d in / 
# Fri, 19 Oct 2018 09:17:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 09:17:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 09:17:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 09:17:50 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 10:49:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 10:49:20 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:49:20 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 10:49:57 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 10:50:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 10:50:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:50:57 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 10:51:02 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 10:51:04 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 30 Oct 2018 09:15:14 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Tue, 30 Oct 2018 09:15:18 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 30 Oct 2018 09:16:36 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 30 Oct 2018 09:16:38 GMT
VOLUME [/var/lib/mysql]
# Tue, 30 Oct 2018 09:16:41 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Tue, 30 Oct 2018 09:16:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 30 Oct 2018 09:16:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Oct 2018 09:16:53 GMT
EXPOSE 3306/tcp
# Tue, 30 Oct 2018 09:16:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a33773385468341da6d94d43c2cc7260149500c8a34a07fc0b2b0dd3216795d9`  
		Last Modified: Fri, 19 Oct 2018 09:20:44 GMT  
		Size: 69.8 MB (69761704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38e586b22cce8ecf22683487189ccfb9de613609427d5813bb877f0ea5e4ddeb`  
		Last Modified: Fri, 19 Oct 2018 09:20:26 GMT  
		Size: 63.4 KB (63427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078d737ef443e92e2353a9284a7093711c5c330c195107c140c268b2379a1a86`  
		Last Modified: Fri, 19 Oct 2018 09:20:26 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3a9bf6aaf5a1d3b1671c17b1309f54f1728f4ffe7eb58ea9cb96f47639e8c9`  
		Last Modified: Fri, 19 Oct 2018 09:20:27 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4fa3adbdd943df30cf9c1ac5524301ee5d5effb8983340a5a0270751b51881`  
		Last Modified: Fri, 19 Oct 2018 10:58:46 GMT  
		Size: 1.8 KB (1842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d991d9d824ec074c75838141d348fd2191d9ff811e2cd528c6a8648cd57f0b7`  
		Last Modified: Fri, 19 Oct 2018 10:58:42 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:748299ed2e51661e07c828b671ba31a23ec755fb3650d38b1afe055523f7c52d`  
		Last Modified: Fri, 19 Oct 2018 10:58:44 GMT  
		Size: 1.5 MB (1545247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5111b808c0c971aaab3cfaaec25205c15eda30ad8e3246611673f75890d39da4`  
		Last Modified: Fri, 19 Oct 2018 10:58:43 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5829b0641e68d38eb99f0939b41a40f321b2ecd63193b6f03161a04bcd83bd6c`  
		Last Modified: Fri, 19 Oct 2018 10:58:44 GMT  
		Size: 4.3 MB (4286853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2c0597f39aa2ba2a14b5592ce32c05f3f10c3e3ba033a476eec2f8adf8de82`  
		Last Modified: Fri, 19 Oct 2018 10:58:40 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115c302165ca6e9fdbb73a39ce91b9997edfc91ed51f2e29f5a24a93d82288ea`  
		Last Modified: Tue, 30 Oct 2018 09:21:07 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e3d873ba86521b3981deb33c0cd5cc6e365565bb9bd920d420e28136d8704e`  
		Last Modified: Tue, 30 Oct 2018 09:21:16 GMT  
		Size: 36.2 MB (36188025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2af370196706704010a5527f496ed6438686e68e08caeec0adbfee1fe9788a2`  
		Last Modified: Tue, 30 Oct 2018 09:21:06 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9e5b5d3512dbe157c34ae24f560273496d9cbc024e8cd344c308f992adc5a3`  
		Last Modified: Tue, 30 Oct 2018 09:21:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:bionic`

```console
$ docker pull mariadb@sha256:538a775dc933fc086767010d535f2c59360eec3e1de44df3dcedea1c5724d83a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:5aaefc8d8d03139ba6976b9c4d0772b385004a183e3d789269c717c057e4570e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114945592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95d6852bba5ae4adc374fe563b8a6665032449e9b45e9f133e845fb33d2a09d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 00:47:54 GMT
ADD file:bcd068f67af2788dbd57729c0c8193f022ec5c37fefb8704390c59081152e6fc in / 
# Fri, 19 Oct 2018 00:47:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:47:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:47:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:47:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:36:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 01:36:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:36:46 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 00:26:48 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 00:26:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 00:27:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 00:27:06 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 00:27:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 00:28:37 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 16 Nov 2018 00:28:37 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 16 Nov 2018 00:28:38 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 00:29:10 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 00:29:11 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 00:29:11 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 00:29:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 00:29:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 00:29:13 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 00:29:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:473ede7ed136b710ab2dd51579af038b7d00fbbf6a1790c6294c93666203c0a6`  
		Last Modified: Fri, 19 Oct 2018 00:24:53 GMT  
		Size: 32.0 MB (32034160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46b5fa4d940569e49988515c1ea0295f56d0a16228d8f854e27613f467ec892`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ae3df89c92cb1d20e9c09f499e693d3a8a8cef161f7158f7a9a3b5d06e4ef2`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1eed27cadec5de8051d56697b0b67527e4076deedceefb41b7b2ea9b900459`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7571426e9fed20247bade7966bd042c340e3e5c3a15865b868825303e9897c4`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba27abd0643114e14441df27dcccc9843cf22ce9526fb09298d3b0d2cf48614`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 4.8 MB (4803626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5742ca02a957788e1bc150563c6ab51f425b6896eefa52d7c80648e71d5072a`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 863.2 KB (863153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c53ea2689ed6ebe83dfc20da72968667fdf229fb0b51d379209a7e2b60b5cc8`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517f1aafa332d31cbcf300b5d4d3a24d464d321ae2693a992bd99f8946f983a0`  
		Last Modified: Fri, 16 Nov 2018 00:38:38 GMT  
		Size: 3.0 MB (2956916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39158f499dbeb666441a43887192563b2096a4f945808aa9e8893c408ce28ce0`  
		Last Modified: Fri, 16 Nov 2018 00:38:35 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4368463dd531fb6ee74a2128f9f45adf6f3e7e9801cc6710bc0999b6b5491913`  
		Last Modified: Fri, 16 Nov 2018 00:40:32 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fee7414381d52d22265eb3194d0c2644c9bec509882a7d7b588005c8034118e`  
		Last Modified: Fri, 16 Nov 2018 00:40:54 GMT  
		Size: 74.3 MB (74255917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abdbc91263bba0e1de0514656a04f055208d4e42c1ab8e75bb59f26f24be0f2d`  
		Last Modified: Fri, 16 Nov 2018 00:40:32 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af85e8800b74a4bcf01ad04ca0e2417fd22360d290bcf076b176dbe4e7cc2a8e`  
		Last Modified: Fri, 16 Nov 2018 00:40:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:cafb3462e09f185dccf43fcde7df6cca8f62b4ba94ffc692c413c770a302e5ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (109981339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09aae6549ec885674cbb103553dc4161291e3bec6c6ea1b761f8fe9d905337c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 11:20:49 GMT
ADD file:110950580db69973226966e62607ac770285caf76a247ce5a8c606c65aa04b50 in / 
# Fri, 19 Oct 2018 11:20:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 11:20:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 11:20:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 11:20:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 12:56:42 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 12:57:15 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:57:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 12:57:43 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 12:57:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 12:58:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:58:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 12:58:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 12:58:15 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 19 Oct 2018 12:58:16 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 19 Oct 2018 12:58:19 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 13:00:20 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 13:00:23 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 13:00:24 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 13:00:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 13:00:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 13:00:37 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 13:00:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:71878b774cb38a9ed46024ada7a9e0634060697119a8c4c07c611646264513f3`  
		Last Modified: Fri, 19 Oct 2018 11:23:39 GMT  
		Size: 28.8 MB (28833238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1b922a83c7f524b935e8e6b9d738697762972d95fce4c7c269f5cd2c754055`  
		Last Modified: Fri, 19 Oct 2018 11:23:28 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab46b3e1d46e0d1ef143520251afe8bc630c0ab04c2dbf8ac097c7007aaa85f`  
		Last Modified: Fri, 19 Oct 2018 11:23:28 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169c13f4edfd32451d6658b4c4c8176b38f232d0a3de07d2a9ca253c2c2848ba`  
		Last Modified: Fri, 19 Oct 2018 11:23:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515fd1949dab7c46ef13b4d135db3637172d5bc7856e32cc1423fe68425d0d91`  
		Last Modified: Fri, 19 Oct 2018 13:14:00 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e017b2874c4be515a55c04d9a82029537983bbadd8ac3841eae5bd173251cd3`  
		Last Modified: Fri, 19 Oct 2018 13:14:00 GMT  
		Size: 4.4 MB (4380212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f6d036cdfc908e4c19c80a7b6df55f1727bf6ae1bad70f4507dfaa5221feae`  
		Last Modified: Fri, 19 Oct 2018 13:13:58 GMT  
		Size: 829.7 KB (829666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f0872339b3202f0e2b0fa21bf4717b18fbca80f0c689505dca20410790e42e`  
		Last Modified: Fri, 19 Oct 2018 13:13:58 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c19d59e0bda178cae23994ab09172d8894e31f39d61fcd3ac7f2649a1d0631`  
		Last Modified: Fri, 19 Oct 2018 13:13:59 GMT  
		Size: 2.7 MB (2698485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9bf97e7f7714767a7ef8fcbb779ed389f53238950cc3b2cf1236a3139ca289d`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b57c0a347944d84611e3f728fa815817782bfe00f12d3f624ca741b48b62b5`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f96205fb913d3f84e8767297ed5df17ebc172e32e2fd8852b50c605e01945b`  
		Last Modified: Fri, 19 Oct 2018 13:14:24 GMT  
		Size: 73.2 MB (73207987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6a128f8a53bcf2d62f913bf296a43e9589ffd38f1b2f686f91c98da5e21949`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864536c7189a66f207626d5a6a982cb81f3d3e6331e43afc95a4cee59a0d6fb7`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:650111bd3a11cf7e1c2710401afcf58848fe40e16ceb158d5df5d521780d3d94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121966675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e4f94370ebc945cf83d649eca667dade0a27291c2e80be3b9e37878632fd96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 09:16:11 GMT
ADD file:ff56914a9be1ea1c29222a826731c6d0c874a3d35994269352595d646a5f923c in / 
# Fri, 19 Oct 2018 09:16:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 09:16:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 09:16:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 09:16:27 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 10:37:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 10:38:02 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:38:04 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 10:38:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 10:38:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 10:39:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:39:09 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 10:39:12 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 10:39:13 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 19 Oct 2018 10:39:14 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 19 Oct 2018 10:39:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 10:40:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 10:40:44 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 10:40:46 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 10:40:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 10:40:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 10:40:53 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 10:40:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2c4fd606dee3befde0392952ad523fad88d460aed9ae927ff1037138cd79ed3f`  
		Last Modified: Fri, 19 Oct 2018 09:18:54 GMT  
		Size: 35.5 MB (35472905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:324762f962b9ba756f04453b96c926ea414b65dfdb3ef0c26f2336e60f231c5a`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f2857f1765b3e764add78aa519c6bef4827b9973650565d969b580c9bd2d82`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3aa3f305b3eedf728fcddc37359479689d1fdaadc23d2bad1e087216ac715a`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a25f8f65f53811a56b86889363b4a8e0c5d4e50cc1319ad941e35b66bd92e1b`  
		Last Modified: Fri, 19 Oct 2018 10:52:50 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f7c641dcf476450a965a769264b108fd02f3781b9339748d6860e2082804e0`  
		Last Modified: Fri, 19 Oct 2018 10:52:51 GMT  
		Size: 5.6 MB (5602718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff124325ca8aa33092324e536fdd0e3fb6876a90c36db077368eb6417f46de8a`  
		Last Modified: Fri, 19 Oct 2018 10:52:48 GMT  
		Size: 831.6 KB (831578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1b1972ff54a31f4be6c83b4786f61aa5505e789b72f20b8eb5cb9d7e13304b`  
		Last Modified: Fri, 19 Oct 2018 10:52:48 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e32b8146841fb5ed6f7ecc74f2f032b4ed0eb91ed95fb70fb14289254f1175e`  
		Last Modified: Fri, 19 Oct 2018 10:52:50 GMT  
		Size: 2.8 MB (2838872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf432a9e41120d614cbcafc06f98253ebf8abb40b6baf1eb055fbf7b5bb6e0d0`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a82b32856f4db040de7077645364ec02382e29b1a01bbab0363ad3ca7c0ffe6f`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9c36cfa8e72906b803a0631a86059c2d5bbc016ae2af298a170a998782cda3`  
		Last Modified: Fri, 19 Oct 2018 10:53:07 GMT  
		Size: 77.2 MB (77188760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7d52d49c3ae35ff562450c5322dc6faa007fec507c32681f86ba3bd1f41eb8`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 2.6 KB (2603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db69a2e3718341254f9cd986d263ff2b9cf95a4d831fbc2b2bc17c2de39ae76d`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:538a775dc933fc086767010d535f2c59360eec3e1de44df3dcedea1c5724d83a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:latest` - linux; amd64

```console
$ docker pull mariadb@sha256:5aaefc8d8d03139ba6976b9c4d0772b385004a183e3d789269c717c057e4570e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114945592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95d6852bba5ae4adc374fe563b8a6665032449e9b45e9f133e845fb33d2a09d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 00:47:54 GMT
ADD file:bcd068f67af2788dbd57729c0c8193f022ec5c37fefb8704390c59081152e6fc in / 
# Fri, 19 Oct 2018 00:47:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:47:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:47:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:47:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:36:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 01:36:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:36:46 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 00:26:48 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 00:26:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 00:27:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 00:27:06 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 00:27:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 00:28:37 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 16 Nov 2018 00:28:37 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 16 Nov 2018 00:28:38 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 00:29:10 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 00:29:11 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 00:29:11 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 00:29:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 00:29:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 00:29:13 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 00:29:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:473ede7ed136b710ab2dd51579af038b7d00fbbf6a1790c6294c93666203c0a6`  
		Last Modified: Fri, 19 Oct 2018 00:24:53 GMT  
		Size: 32.0 MB (32034160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46b5fa4d940569e49988515c1ea0295f56d0a16228d8f854e27613f467ec892`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ae3df89c92cb1d20e9c09f499e693d3a8a8cef161f7158f7a9a3b5d06e4ef2`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1eed27cadec5de8051d56697b0b67527e4076deedceefb41b7b2ea9b900459`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7571426e9fed20247bade7966bd042c340e3e5c3a15865b868825303e9897c4`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba27abd0643114e14441df27dcccc9843cf22ce9526fb09298d3b0d2cf48614`  
		Last Modified: Fri, 19 Oct 2018 01:41:52 GMT  
		Size: 4.8 MB (4803626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5742ca02a957788e1bc150563c6ab51f425b6896eefa52d7c80648e71d5072a`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 863.2 KB (863153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c53ea2689ed6ebe83dfc20da72968667fdf229fb0b51d379209a7e2b60b5cc8`  
		Last Modified: Fri, 16 Nov 2018 00:38:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517f1aafa332d31cbcf300b5d4d3a24d464d321ae2693a992bd99f8946f983a0`  
		Last Modified: Fri, 16 Nov 2018 00:38:38 GMT  
		Size: 3.0 MB (2956916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39158f499dbeb666441a43887192563b2096a4f945808aa9e8893c408ce28ce0`  
		Last Modified: Fri, 16 Nov 2018 00:38:35 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4368463dd531fb6ee74a2128f9f45adf6f3e7e9801cc6710bc0999b6b5491913`  
		Last Modified: Fri, 16 Nov 2018 00:40:32 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fee7414381d52d22265eb3194d0c2644c9bec509882a7d7b588005c8034118e`  
		Last Modified: Fri, 16 Nov 2018 00:40:54 GMT  
		Size: 74.3 MB (74255917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abdbc91263bba0e1de0514656a04f055208d4e42c1ab8e75bb59f26f24be0f2d`  
		Last Modified: Fri, 16 Nov 2018 00:40:32 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af85e8800b74a4bcf01ad04ca0e2417fd22360d290bcf076b176dbe4e7cc2a8e`  
		Last Modified: Fri, 16 Nov 2018 00:40:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:latest` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:cafb3462e09f185dccf43fcde7df6cca8f62b4ba94ffc692c413c770a302e5ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (109981339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09aae6549ec885674cbb103553dc4161291e3bec6c6ea1b761f8fe9d905337c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 11:20:49 GMT
ADD file:110950580db69973226966e62607ac770285caf76a247ce5a8c606c65aa04b50 in / 
# Fri, 19 Oct 2018 11:20:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 11:20:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 11:20:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 11:20:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 12:56:42 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 12:57:15 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:57:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 12:57:43 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 12:57:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 12:58:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:58:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 12:58:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 12:58:15 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 19 Oct 2018 12:58:16 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 19 Oct 2018 12:58:19 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 13:00:20 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 13:00:23 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 13:00:24 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 13:00:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 13:00:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 13:00:37 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 13:00:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:71878b774cb38a9ed46024ada7a9e0634060697119a8c4c07c611646264513f3`  
		Last Modified: Fri, 19 Oct 2018 11:23:39 GMT  
		Size: 28.8 MB (28833238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1b922a83c7f524b935e8e6b9d738697762972d95fce4c7c269f5cd2c754055`  
		Last Modified: Fri, 19 Oct 2018 11:23:28 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab46b3e1d46e0d1ef143520251afe8bc630c0ab04c2dbf8ac097c7007aaa85f`  
		Last Modified: Fri, 19 Oct 2018 11:23:28 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169c13f4edfd32451d6658b4c4c8176b38f232d0a3de07d2a9ca253c2c2848ba`  
		Last Modified: Fri, 19 Oct 2018 11:23:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515fd1949dab7c46ef13b4d135db3637172d5bc7856e32cc1423fe68425d0d91`  
		Last Modified: Fri, 19 Oct 2018 13:14:00 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e017b2874c4be515a55c04d9a82029537983bbadd8ac3841eae5bd173251cd3`  
		Last Modified: Fri, 19 Oct 2018 13:14:00 GMT  
		Size: 4.4 MB (4380212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f6d036cdfc908e4c19c80a7b6df55f1727bf6ae1bad70f4507dfaa5221feae`  
		Last Modified: Fri, 19 Oct 2018 13:13:58 GMT  
		Size: 829.7 KB (829666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f0872339b3202f0e2b0fa21bf4717b18fbca80f0c689505dca20410790e42e`  
		Last Modified: Fri, 19 Oct 2018 13:13:58 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c19d59e0bda178cae23994ab09172d8894e31f39d61fcd3ac7f2649a1d0631`  
		Last Modified: Fri, 19 Oct 2018 13:13:59 GMT  
		Size: 2.7 MB (2698485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9bf97e7f7714767a7ef8fcbb779ed389f53238950cc3b2cf1236a3139ca289d`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b57c0a347944d84611e3f728fa815817782bfe00f12d3f624ca741b48b62b5`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f96205fb913d3f84e8767297ed5df17ebc172e32e2fd8852b50c605e01945b`  
		Last Modified: Fri, 19 Oct 2018 13:14:24 GMT  
		Size: 73.2 MB (73207987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6a128f8a53bcf2d62f913bf296a43e9589ffd38f1b2f686f91c98da5e21949`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864536c7189a66f207626d5a6a982cb81f3d3e6331e43afc95a4cee59a0d6fb7`  
		Last Modified: Fri, 19 Oct 2018 13:13:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:latest` - linux; ppc64le

```console
$ docker pull mariadb@sha256:650111bd3a11cf7e1c2710401afcf58848fe40e16ceb158d5df5d521780d3d94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121966675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e4f94370ebc945cf83d649eca667dade0a27291c2e80be3b9e37878632fd96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 19 Oct 2018 09:16:11 GMT
ADD file:ff56914a9be1ea1c29222a826731c6d0c874a3d35994269352595d646a5f923c in / 
# Fri, 19 Oct 2018 09:16:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 09:16:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 09:16:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 09:16:27 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 10:37:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 19 Oct 2018 10:38:02 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:38:04 GMT
ENV GOSU_VERSION=1.10
# Fri, 19 Oct 2018 10:38:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 19 Oct 2018 10:38:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Oct 2018 10:39:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:39:09 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 19 Oct 2018 10:39:12 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 19 Oct 2018 10:39:13 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 19 Oct 2018 10:39:14 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 19 Oct 2018 10:39:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 10:40:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 10:40:44 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 10:40:46 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 10:40:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 10:40:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 10:40:53 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 10:40:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2c4fd606dee3befde0392952ad523fad88d460aed9ae927ff1037138cd79ed3f`  
		Last Modified: Fri, 19 Oct 2018 09:18:54 GMT  
		Size: 35.5 MB (35472905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:324762f962b9ba756f04453b96c926ea414b65dfdb3ef0c26f2336e60f231c5a`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f2857f1765b3e764add78aa519c6bef4827b9973650565d969b580c9bd2d82`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3aa3f305b3eedf728fcddc37359479689d1fdaadc23d2bad1e087216ac715a`  
		Last Modified: Fri, 19 Oct 2018 09:18:44 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a25f8f65f53811a56b86889363b4a8e0c5d4e50cc1319ad941e35b66bd92e1b`  
		Last Modified: Fri, 19 Oct 2018 10:52:50 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f7c641dcf476450a965a769264b108fd02f3781b9339748d6860e2082804e0`  
		Last Modified: Fri, 19 Oct 2018 10:52:51 GMT  
		Size: 5.6 MB (5602718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff124325ca8aa33092324e536fdd0e3fb6876a90c36db077368eb6417f46de8a`  
		Last Modified: Fri, 19 Oct 2018 10:52:48 GMT  
		Size: 831.6 KB (831578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1b1972ff54a31f4be6c83b4786f61aa5505e789b72f20b8eb5cb9d7e13304b`  
		Last Modified: Fri, 19 Oct 2018 10:52:48 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e32b8146841fb5ed6f7ecc74f2f032b4ed0eb91ed95fb70fb14289254f1175e`  
		Last Modified: Fri, 19 Oct 2018 10:52:50 GMT  
		Size: 2.8 MB (2838872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf432a9e41120d614cbcafc06f98253ebf8abb40b6baf1eb055fbf7b5bb6e0d0`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a82b32856f4db040de7077645364ec02382e29b1a01bbab0363ad3ca7c0ffe6f`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9c36cfa8e72906b803a0631a86059c2d5bbc016ae2af298a170a998782cda3`  
		Last Modified: Fri, 19 Oct 2018 10:53:07 GMT  
		Size: 77.2 MB (77188760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7d52d49c3ae35ff562450c5322dc6faa007fec507c32681f86ba3bd1f41eb8`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 2.6 KB (2603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db69a2e3718341254f9cd986d263ff2b9cf95a4d831fbc2b2bc17c2de39ae76d`  
		Last Modified: Fri, 19 Oct 2018 10:52:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
